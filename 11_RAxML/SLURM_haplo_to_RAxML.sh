#!/bin/bash
#
#SBATCH --job-name=Angsd_H_annuus
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --cpus-per-task=20
#SBATCH --mem=60GB
#SBATCH -D /global/scratch/nwales/Sunflower_paleomix/Analysis_genome/2_angsd/
#SBATCH --time=8:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH -o /global/scratch/nwales/Sunflower_paleomix/Analysis_genome/0_scripts/genome_1_quick.%j.out
#SBATCH -e /global/scratch/nwales/Sunflower_paleomix/Analysis_genome/0_scripts/genome_1_quick.%j.err
#SBATCH --mail-user=nathan.wales@berkeley.edu
#SBATCH --mail-type=All

module load bcftools
module load raxml/8.2.11/

plink_prune_in_file="Plink_Angsd_ethno_all_data_100_5_0.1.prune.in"
processing_haplo_file="Angsd_ethno_all_data.haplo"
BAMfile_in_ANGSD="/global/scratch/nwales/Sunflower_paleomix/Analysis_genome/1_data/Bam_list_2018-04-14_ethno_all_data.txt"
project_name="Ethno_all_data_for_RAxML"

# Correct haplo file for LD using previous plink run

awk 'BEGIN{OFS="\t"}$1=$1"_"$2' ${processing_haplo_file} > ${processing_haplo_file}.renamed
awk 'NR==FNR{SNPs[$1]=$1; next} $1 in SNPs' $plink_prune_in_file ${processing_haplo_file}.renamed > ${processing_haplo_file}.LDpruned

# to sub sample and keep order
cat ${processing_haplo_file}.LDpruned | awk 'BEGIN {srand()} !/^$/ { if (rand() <= .05) print $0}' > ${processing_haplo_file}.LDpruned.05

cut -f4-  ${processing_haplo_file}.LDpruned.05  > temp_data.temp


## process the LD fixed haplo file into a fasta
## Has 1 header and first 3 columns are chrom, position, and major allele. Delete all that
cut -f4- ${processing_haplo_file}.LDpruned > temp_data.temp

#columns_in_file=`awk -F'\t' '{print NF; exit}' temp_data_no_header.temp`  # this doesn't work because there are empty tabs at end of rows
cp $BAMfile_in_ANGSD temp_copy_of_bamlist.temp

sed .XRQ_nuclear.realigned.bam
sed -i -e 's/\.XRQ_nuclear\.realigned\.bam//g' temp_copy_of_bamlist.temp
sed -i -e 's/\/global\/scratch\/nwales\/Sunflower_paleomix\/Analysis_genome\/1_data\///g' temp_copy_of_bamlist.temp
sed -i -e 's/\//_/g' temp_copy_of_bamlist.temp

number_of_samples=`wc -l < temp_copy_of_bamlist.temp`

START=1
END=${number_of_samples}
 
for (( c=$START; c<=$END; c++ ))
do
	printf ">"
	head -$c temp_copy_of_bamlist.temp | tail -1
	cut  -f${c} temp_data.temp  | tr -d $'\n'
	printf "\n"

done > ${project_name}.fasta
 

rm temp_copy_of_bamlist.temp
rm temp_data_no_header.temp
rm ${processing_haplo_file}.renamed

raxmlHPC -f a -x 12345 -p 12345 -N 100 -m GTRGAMMA -s Ethno_all_data_for_RAxML.fasta -n All_ethno_test -T 20
raxmlHPC -f a -x 12345 -p 12345 -N 10 -m GTRGAMMA -s Ethno_all_data_for_RAxML.fasta -n All_ethno_test -T 20



## first run
haplo_file="Angsd_ethno_all_data.haplo"
named_SNP_vcf_file="No_outgroup_7.mappable.named_snps.MAF_0.05.vcf.gz"
plink_file="LD_5kb_0.2_No_outgroup"
LD_filtered_vcf_file="No_outgroup_8.LD_filtered"
RAxML_name="Haploids_no_outgroup"

# name all SNPs, use plink find SNPs not in LD, save them to a new vcf, 
bcftools annotate --set-id +'%CHROM\_%POS' ${gzvcf_file} | bgzip -c > ${named_SNP_vcf_file}
~/programs/plink_1.90/plink --vcf ${named_SNP_vcf_file} --indep-pairwise 5kb 1 0.2 -allow-extra-chr -out ${plink_file}
vcftools --gzvcf ${named_SNP_vcf_file} --snps ${plink_file}.prune.in --out ${LD_filtered_vcf_file} --recode
mv ${LD_filtered_vcf_file}.recode.vcf ${LD_filtered_vcf_file}.vcf
bgzip ${LD_filtered_vcf_file}.vcf

cd /global/scratch/nwales/Ustilago/Analysis_as_modern/5_phylogeny_haploid

for samp in $(bcftools query -l /global/scratch/nwales/Ustilago/Analysis_as_modern/3_VCF/${LD_filtered_vcf_file}.vcf.gz ); do
	printf '>'${samp}'\n'
	bcftools query -s ${samp} -f '[%TGT]' /global/scratch/nwales/Ustilago/Analysis_as_modern/3_VCF/${LD_filtered_vcf_file}.vcf.gz
	printf '\n'
done > ${LD_filtered_vcf_file}.fasta

sed -i -e 's/\./N/g' ${LD_filtered_vcf_file}.fasta
raxmlHPC -f a -x 12345 -p 12345 -N 100 -m GTRGAMMA -s ${LD_filtered_vcf_file}.fasta -n ${RAxML_name} -T 20
cd /global/scratch/nwales/Ustilago/Analysis_as_modern/3_VCF/

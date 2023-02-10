#!/bin/bash
#
#SBATCH --job-name=RAxML_annuus
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=12
#SBATCH --mem=124GB
#SBATCH -D /global/scratch/nwales/Sunflower_paleomix/Analysis_genome/6_RAxML
#SBATCH --time=72:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH -o /global/scratch/nwales/Sunflower_paleomix/Analysis_genome/0_scripts/5_RAxML.%j.out
#SBATCH -e /global/scratch/nwales/Sunflower_paleomix/Analysis_genome/0_scripts/5_RAxML.%j.err
#SBATCH --mail-user=nathan.wales@berkeley.edu
#SBATCH --mail-type=All

Project_name="Angsd_all_annuus"
BAM_list="Bam_list_2018-05-11_annuus.txt"
BAM_list_path="/global/scratch/nwales/Sunflower_paleomix/Analysis_genome/1_data/"
angsd_file_path="/global/scratch/nwales/Sunflower_paleomix/Analysis_genome/2_angsd/"
Plink_path="/global/scratch/nwales/Sunflower_paleomix/Analysis_genome/3_LD_corrections/Annuus_Plink_100kb_0.2/"

# Pruned with Plink 
mkdir ${Plink_path}
~/programs/plink_1.90/plink -tfile ${angsd_file_path}/${Project_name} -indep-pairwise 100kb 1 0.2  -allow-extra-chr -out ${Plink_path}Plink_${Project_name}
## Pruning complete.  29831482 of 30131587 variants removed.
## 300,105 SNPs


mkdir ${Project_name}
cd ${Project_name}
cp ${BAM_list_path}/${BAM_list} .
sed -i 's/.XRQ_nuclear.realigned.bam//g' ${BAM_list}
sed -i 's/.*\///g' ${BAM_list}

number_of_samples=`wc -l < ${BAM_list}`

## get the same haplo lines as in Plink prune in file
## Must combine two columns of haplo file to match Plink lines
zcat ${angsd_file_path}/${Project_name}.haplo.gz > ${Project_name}.haplo
head -n1 ${Project_name}.haplo > ${Project_name}_LDpruned.haplo
awk '{print $1"_"$2}' ${Project_name}.haplo > temp_merged_position.txt
cut -f 2- ${Project_name}.haplo | paste temp_merged_position.txt - > ${Project_name}.renamed.haplo
head -1 ${Project_name}.haplo > ${Project_name}_LDpruned.haplo


# was running too slow, so taking every other line from Plink file for 150K SNPs
sed -n '1~2!p' ${Plink_path}Plink_${Project_name}.prune.in > ${Project_name}_half.prune.in

awk 'NR==FNR{SNPs[$1]=$1; next} $1 in SNPs' ${Project_name}_half.prune.in ${Project_name}.renamed.haplo >> ${Project_name}_LDpruned.haplo

# Delete the header and first three columns of the pruned haplo file
cut -f4- ${Project_name}_LDpruned.haplo | tail -n +2  > ${Project_name}_cleandata.haplo

START=1
END=${number_of_samples}

for (( c=$START; c<=$END; c++ ))
do
	printf ">"
	head -$c ${BAM_list} | tail -1
	cut  -f${c} ${Project_name}_cleandata.haplo  | tr -d $'\n'
	printf "\n"

done > ${Project_name}.fasta

### must remove fasta lines with bad samples: MexCult7, MexCult14, Mex_A1517, Mex_A1574, ND1W-6, ann06-seWY, ann08-ceTN, ann44-ccCA
perl -ne 'if(/^>(\S+)/){$c=$i{$1}}$c?print:chomp;$i{$_}=1 if @ARGV' Good_samples_for_RAxML.txt ${Project_name}.fasta > ${Project_name}_noadmixed.fasta


module load raxml/8.2.11/

raxmlHPC -f a -x 12345 -p 12345 -N 100 -m GTRGAMMA -s ${Project_name}_noadmixed.fasta -n ${Project_name} -T $SLURM_CPUS_ON_NODE

rm temp_merged_position.txt
rm ${Project_name}.haplo
rm ${Project_name}.renamed.haplo

~/programs/pigz-2.4/pigz -p $SLURM_CPUS_ON_NODE ${Project_name}_LDpruned.haplo
~/programs/pigz-2.4/pigz -p $SLURM_CPUS_ON_NODE ${Project_name}_cleandata.haplo

# make a copy of the tree file with bootstraps binned into groups. < 90 -> 0. 90-94 -> 90. 95-99 -> 95. 100 stays

cp RAxML_bipartitions.${Project_name} RAxML_bipartitions.${Project_name}_90boot.tree
sed -i 's/)100:/)PERFECT:/g' RAxML_bipartitions.${Project_name}_90boot.tree
sed -i 's/)9[5-9]:/)EXCELLENT:/g' RAxML_bipartitions.${Project_name}_90boot.tree
sed -i 's/)9[0-4]:/)GOOD:/g' RAxML_bipartitions.${Project_name}_90boot.tree
sed -i 's/)[1-8][0-9]:/)TERRIBLE:/g' RAxML_bipartitions.${Project_name}_90boot.tree
sed -i 's/)[0-9]:/)TERRIBLE:/g' RAxML_bipartitions.${Project_name}_90boot.tree

sed -i 's/TERRIBLE/0/g' RAxML_bipartitions.${Project_name}_90boot.tree
sed -i 's/GOOD/90/g' RAxML_bipartitions.${Project_name}_90boot.tree
sed -i 's/EXCELLENT/95/g' RAxML_bipartitions.${Project_name}_90boot.tree
sed -i 's/PERFECT/100/g' RAxML_bipartitions.${Project_name}_90boot.tree





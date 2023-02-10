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

Project_name="Angsd_all_species"
BAM_list="Bam_list_2018-05-11_all_species.txt"
BAM_list_path="/global/scratch/nwales/Sunflower_paleomix/Analysis_genome/1_data/"
haplo_file_path="/global/scratch/nwales/Sunflower_paleomix/Analysis_genome/2_angsd/"
Plink_LD_in_file="/global/scratch/nwales/Sunflower_paleomix/Analysis_genome/3_LD_corrections/Species_Plink_100kb_0.2/Plink_Angsd_all_species.prune.in"

mkdir ${Project_name}
cd ${Project_name}
cp ${BAM_list_path}/${BAM_list} .
sed -i 's/.XRQ_nuclear.realigned.bam//g' ${BAM_list}
sed -i 's/.*\///g' ${BAM_list}
number_of_samples=`wc -l < ${BAM_list}` 

## get the same haplo lines as in Plink prune in file
## Must combine two columns of haplo file to match Plink lines
zcat ${haplo_file_path}/${Project_name}.haplo.gz > ${Project_name}.haplo
head -n1 ${Project_name}.haplo > ${Project_name}_LDpruned.haplo 
awk '{print $1"_"$2}' ${Project_name}.haplo > temp_merged_position.txt
cut -f 2- ${Project_name}.haplo | paste temp_merged_position.txt - > ${Project_name}.renamed.haplo 
head -1 ${Project_name}.haplo > ${Project_name}_LDpruned.haplo

# was running too slow, so taking every other line from Plink file for 173,013 SNPs
sed -n '1~2!p' ${Plink_LD_in_file} > ${Project_name}_half.prune.in

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


module load raxml/8.2.11/

raxmlHPC -f a -x 12345 -p 12345 -N 100 -m GTRGAMMA -s ${Project_name}.fasta -n ${Project_name} -T $SLURM_CPUS_ON_NODE

rm temp_merged_position.txt
rm ${Project_name}.haplo
rm ${Project_name}.renamed.haplo 

~/programs/pigz-2.4/pigz -p $SLURM_CPUS_ON_NODE ${Project_name}_LDpruned.haplo
~/programs/pigz-2.4/pigz -p $SLURM_CPUS_ON_NODE ${Project_name}_cleandata.haplo 





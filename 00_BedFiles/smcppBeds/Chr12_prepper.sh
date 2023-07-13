#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/vcfsToUse
#SBATCH -J Chr12_prepper
#SBATCH --account=ac_acblackman
#SBATCH --partition=savio3_htc
#SBATCH --qos=savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=24:00:00
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/Chr12_prepper.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/Chr12_prepper.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load htslib/1.6
module load bedtools/2.28.0
export PATH=/global/home/users/peter_stokes/software/bin:$PATH

vcfInput_path="/global/scratch/users/peter_stokes/Chapter1/vcfsToUse"
vcfInput_name="Chapter1_allChrom_noRR_allSamples_NF_D4"

vcfOutput_path="/global/scratch/users/peter_stokes/Chapter1/smcpp/2023/VCFs"
vcfOutput_name="Chapter1_noRR_allSamples_NF_D4"

bedOutput_path="/global/scratch/users/peter_stokes/Chapter1/smcpp/2023/masks/new/bedFiles"

Chromosome="Chr12"

#bcftools view -r HanXRQ${Chromosome} -Oz -o ${vcfOutput_path}/${vcfOutput_name}_${Chromosome}.vcf.gz ${vcfInput_path}/${vcfInput_name}.vcf.gz

#tabix -p vcf ${vcfOutput_path}/${vcfOutput_name}_${Chromosome}.vcf.gz

#bedtools complement -i ${vcfOutput_path}/${vcfOutput_name}_${Chromosome}.vcf.gz -g /global/scratch/users/peter_stokes/Chapter1/smcpp/2023/scripts/smcppPrep/ChromosomeLengths.txt > ${bedOutput_path}/${vcfOutput_name}_${Chromosome}_missingPositions.bed

#sort-bed ${bedOutput_path}/${vcfOutput_name}_${Chromosome}_missingPositions.bed > ${bedOutput_path}/${vcfOutput_name}_${Chromosome}_missingPositions_sorted.bed

awk 'BEGIN{FS=OFS="\t"} { $2 = $2 + 1; $3 = $3 + 1; print }' ${bedOutput_path}/${vcfOutput_name}_${Chromosome}_missingPositions_sorted.bed > ${bedOutput_path}/${vcfOutput_name}_${Chromosome}_missingPositions_sorted_1Based.bed

grep "HanXRQChr12" ${bedOutput_path}/${vcfOutput_name}_${Chromosome}_missingPositions_sorted_1Based.bed > ${bedOutput_path}/${vcfOutput_name}_${Chromosome}_missingPositions_sorted_1Based_fixed.bed

bgzip ${bedOutput_path}/${vcfOutput_name}_${Chromosome}_missingPositions_sorted_1Based_fixed.bed

tabix -p bed ${bedOutput_path}/${vcfOutput_name}_${Chromosome}_missingPositions_sorted_1Based_fixed.bed.gz
#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/vcfsToUse
#SBATCH -J VCFprep_2
#SBATCH --partition=savio2_htc
#SBATCH --account=co_rosalind
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --cpus-per-task=3
#SBATCH --time=72:00:00
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/VCFprep_2.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/VCFprep_2.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load htslib/1.6
module load bcftools/1.6
module load bio/vcftools/0.1.15

vcfInput="/global/scratch/users/peter_stokes/Chapter1/vcfsToUse"

vcftools --gzvcf PS_Chapter1_allChrom_VQSROutput_G6.vcf.gz --freq2 --out wED_wRR --max-alleles 2
vcftools --gzvcf PS_Chapter1_allChrom_VQSROutput_G6.vcf.gz --depth --out wED_wRR --max-alleles 2
vcftools --gzvcf PS_Chapter1_allChrom_VQSROutput_G6.vcf.gz --site-mean-depth --out wED_wRR --max-alleles 2
vcftools --gzvcf PS_Chapter1_allChrom_VQSROutput_G6.vcf.gz --site-quality --out wED_wRR --max-alleles 2
vcftools --gzvcf PS_Chapter1_allChrom_VQSROutput_G6.vcf.gz --missing-indv --out wED_wRR --max-alleles 2
vcftools --gzvcf PS_Chapter1_allChrom_VQSROutput_G6.vcf.gz --missing-site --out wED_wRR --max-alleles 2
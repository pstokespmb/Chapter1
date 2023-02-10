FIX FIX FIX when variants are finshed

#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/VariantCalling/newVC/VCF
#SBATCH -J 9_GATK_VQSR_missingVariantFix
#SBATCH --partition=savio
#SBATCH --account=co_rosalind
#SBATCH --qos=rosalind_savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=72:00:00
#SBATCH --mem=64000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/9_GATK_VQSR_missingVariantFix.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/9_GATK_VQSR_missingVariantFix.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load htslib/1.6

bcftools +setGT PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_G4.vcf.gz -- -t q -i 'FMT/DP=0' -n "./." | bgzip -c > PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_G4_missingFixed.vcf.gz

tabix -p vcf PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_G4_missingFixed.vcf.gz
#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr01
#SBATCH -J test
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2_htc
#SBATCH --qos=savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=6
#SBATCH --time=72:00:00
#SBATCH --mem=64000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/test.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/test.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load htslib/1.6

#bcftools view /global/scratch/users/peter_stokes/VariantCalling/newVC/VCF/PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_noSpanningINDELS_G4_missingFixed.vcf.gz -r HanXRQChr01 | bcftools +setGT -- -t q -i 'FMT/DP=0' -n "./." | bcftools annotate -x INFO,^FORMAT/GT > /global/scratch/users/peter_stokes/test/test_tagsRemoved_G4_Chr01.vcf
bgzip /global/scratch/users/peter_stokes/test/test_tagsRemoved_G4_Chr01.vcf
tabix -p vcf /global/scratch/users/peter_stokes/test/test_tagsRemoved_G4_Chr01.vcf
bcftools query -f '%CHROM %POS\n' /global/scratch/users/peter_stokes/test/test_tagsRemoved_G4_Chr01.vcf > /global/scratch/users/peter_stokes/test/test_tagsRemoved_G4_Chr01_positions.txt

#bcftools view /global/scratch/users/peter_stokes/VariantCalling/newVC/VCF/PS_Chapter1_allChrom_annotated_biallelicSNPSOnly.vcf.gz -r HanXRQChr01 | bcftools +setGT -- -t q -i 'FMT/DP=0' -n "./." | bcftools annotate -x INFO,^FORMAT/GT > /global/scratch/users/peter_stokes/test/test_tagsRemoved_Chr01.vcf
#bgzip /global/scratch/users/peter_stokes/test/test_tagsRemoved_Chr01.vcf
#tabix -p vcf /global/scratch/users/peter_stokes/test/test_tagsRemoved_Chr01.vcf.gz
#bcftools query -f '%CHROM %POS\n' /global/scratch/users/peter_stokes/test/test_tagsRemoved_Chr01.vcf.gz > test_tagsRemoved_Chr01_positions.txt

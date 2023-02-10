#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04
#SBATCH -J gVCF_splitting_newSamples_Chr04
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=2
#SBATCH --time=72:00:00
#SBATCH --mem=21000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/gVCF_splitting_newSamples_Chr04.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/gVCF_splitting_newSamples_Chr04.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load htslib/1.6
module load bcftools/1.6

bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA124.g.vcf.gz -r HanXRQChr04 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/HA124_Chr04.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA207.g.vcf.gz -r HanXRQChr04 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/HA207_Chr04.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA259.g.vcf.gz -r HanXRQChr04 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/HA259_Chr04.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA314.g.vcf.gz -r HanXRQChr04 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/HA314_Chr04.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA316.g.vcf.gz -r HanXRQChr04 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/HA316_Chr04.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA323.g.vcf.gz -r HanXRQChr04 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/HA323_Chr04.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA380.g.vcf.gz -r HanXRQChr04 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/HA380_Chr04.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA404.g.vcf.gz -r HanXRQChr04 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/HA404_Chr04.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA433.g.vcf.gz -r HanXRQChr04 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/HA433_Chr04.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA442.g.vcf.gz -r HanXRQChr04 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/HA442_Chr04.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA821.g.vcf.gz -r HanXRQChr04 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/HA821_Chr04.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA89.g.vcf.gz -r HanXRQChr04 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/HA89_Chr04.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA271.g.vcf.gz -r HanXRQChr04 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/RHA271_Chr04.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA309.g.vcf.gz -r HanXRQChr04 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/RHA309_Chr04.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA310.g.vcf.gz -r HanXRQChr04 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/RHA310_Chr04.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA324.g.vcf.gz -r HanXRQChr04 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/RHA324_Chr04.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA328.g.vcf.gz -r HanXRQChr04 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/RHA328_Chr04.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA354.g.vcf.gz -r HanXRQChr04 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/RHA354_Chr04.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA358.g.vcf.gz -r HanXRQChr04 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/RHA358_Chr04.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA362.g.vcf.gz -r HanXRQChr04 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/RHA362_Chr04.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA397.g.vcf.gz -r HanXRQChr04 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/RHA397_Chr04.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA408.g.vcf.gz -r HanXRQChr04 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/RHA408_Chr04.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA426.g.vcf.gz -r HanXRQChr04 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/RHA426_Chr04.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA857.g.vcf.gz -r HanXRQChr04 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/RHA857_Chr04.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/ann44-ccCA.g.vcf.gz -r HanXRQChr04 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/ann44_ccCA_Chr04.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/annND1W-6.g.vcf.gz -r HanXRQChr04 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/annND1W_6_Chr04.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/ann06-seWY.g.vcf.gz -r HanXRQChr04 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/ann06_seWY_Chr04.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/annMex_A1517.g.vcf.gz -r HanXRQChr04 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/annMex_A1517_Chr04.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/annMex_A1574.g.vcf.gz -r HanXRQChr04 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/annMex_A1574_Chr04.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/annMex_Ann261.g.vcf.gz -r HanXRQChr04 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/annMex_Ann261_Chr04.g.vcf.gz

tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/HA124_Chr04.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/HA207_Chr04.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/HA259_Chr04.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/HA314_Chr04.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/HA316_Chr04.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/HA323_Chr04.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/HA380_Chr04.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/HA404_Chr04.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/HA433_Chr04.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/HA442_Chr04.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/HA821_Chr04.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/HA89_Chr04.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/RHA271_Chr04.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/RHA309_Chr04.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/RHA310_Chr04.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/RHA324_Chr04.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/RHA328_Chr04.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/RHA354_Chr04.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/RHA358_Chr04.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/RHA362_Chr04.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/RHA397_Chr04.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/RHA408_Chr04.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/RHA426_Chr04.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/RHA857_Chr04.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/ann44_ccCA_Chr04.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/annND1W_6_Chr04.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/ann06_seWY_Chr04.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/annMex_A1517_Chr04.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/annMex_A1574_Chr04.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/annMex_Ann261_Chr04.g.vcf.gz

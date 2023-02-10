#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09
#SBATCH -J gVCF_splitting_newSamples_Chr09
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=2
#SBATCH --time=72:00:00
#SBATCH --mem=21000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/gVCF_splitting_newSamples_Chr09.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/gVCF_splitting_newSamples_Chr09.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load htslib/1.6
module load bcftools/1.6

bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA124.g.vcf.gz -r HanXRQChr09 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/HA124_Chr09.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA207.g.vcf.gz -r HanXRQChr09 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/HA207_Chr09.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA259.g.vcf.gz -r HanXRQChr09 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/HA259_Chr09.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA314.g.vcf.gz -r HanXRQChr09 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/HA314_Chr09.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA316.g.vcf.gz -r HanXRQChr09 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/HA316_Chr09.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA323.g.vcf.gz -r HanXRQChr09 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/HA323_Chr09.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA380.g.vcf.gz -r HanXRQChr09 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/HA380_Chr09.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA404.g.vcf.gz -r HanXRQChr09 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/HA404_Chr09.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA433.g.vcf.gz -r HanXRQChr09 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/HA433_Chr09.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA442.g.vcf.gz -r HanXRQChr09 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/HA442_Chr09.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA821.g.vcf.gz -r HanXRQChr09 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/HA821_Chr09.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA89.g.vcf.gz -r HanXRQChr09 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/HA89_Chr09.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA271.g.vcf.gz -r HanXRQChr09 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/RHA271_Chr09.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA309.g.vcf.gz -r HanXRQChr09 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/RHA309_Chr09.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA310.g.vcf.gz -r HanXRQChr09 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/RHA310_Chr09.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA324.g.vcf.gz -r HanXRQChr09 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/RHA324_Chr09.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA328.g.vcf.gz -r HanXRQChr09 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/RHA328_Chr09.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA354.g.vcf.gz -r HanXRQChr09 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/RHA354_Chr09.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA358.g.vcf.gz -r HanXRQChr09 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/RHA358_Chr09.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA362.g.vcf.gz -r HanXRQChr09 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/RHA362_Chr09.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA397.g.vcf.gz -r HanXRQChr09 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/RHA397_Chr09.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA408.g.vcf.gz -r HanXRQChr09 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/RHA408_Chr09.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA426.g.vcf.gz -r HanXRQChr09 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/RHA426_Chr09.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA857.g.vcf.gz -r HanXRQChr09 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/RHA857_Chr09.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/ann44-ccCA.g.vcf.gz -r HanXRQChr09 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/ann44_ccCA_Chr09.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/annND1W-6.g.vcf.gz -r HanXRQChr09 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/annND1W_6_Chr09.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/ann06-seWY.g.vcf.gz -r HanXRQChr09 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/ann06_seWY_Chr09.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/annMex_A1517.g.vcf.gz -r HanXRQChr09 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/annMex_A1517_Chr09.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/annMex_A1574.g.vcf.gz -r HanXRQChr09 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/annMex_A1574_Chr09.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/annMex_Ann261.g.vcf.gz -r HanXRQChr09 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/annMex_Ann261_Chr09.g.vcf.gz

tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/HA124_Chr09.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/HA207_Chr09.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/HA259_Chr09.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/HA314_Chr09.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/HA316_Chr09.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/HA323_Chr09.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/HA380_Chr09.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/HA404_Chr09.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/HA433_Chr09.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/HA442_Chr09.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/HA821_Chr09.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/HA89_Chr09.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/RHA271_Chr09.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/RHA309_Chr09.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/RHA310_Chr09.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/RHA324_Chr09.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/RHA328_Chr09.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/RHA354_Chr09.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/RHA358_Chr09.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/RHA362_Chr09.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/RHA397_Chr09.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/RHA408_Chr09.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/RHA426_Chr09.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/RHA857_Chr09.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/ann44_ccCA_Chr09.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/annND1W_6_Chr09.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/ann06_seWY_Chr09.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/annMex_A1517_Chr09.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/annMex_A1574_Chr09.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/annMex_Ann261_Chr09.g.vcf.gz

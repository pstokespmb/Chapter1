#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06
#SBATCH -J gVCF_splitting_newSamples_Chr06
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=2
#SBATCH --time=72:00:00
#SBATCH --mem=21000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/gVCF_splitting_newSamples_Chr06.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/gVCF_splitting_newSamples_Chr06.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load htslib/1.6
module load bcftools/1.6

bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA124.g.vcf.gz -r HanXRQChr06 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/HA124_Chr06.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA207.g.vcf.gz -r HanXRQChr06 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/HA207_Chr06.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA259.g.vcf.gz -r HanXRQChr06 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/HA259_Chr06.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA314.g.vcf.gz -r HanXRQChr06 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/HA314_Chr06.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA316.g.vcf.gz -r HanXRQChr06 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/HA316_Chr06.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA323.g.vcf.gz -r HanXRQChr06 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/HA323_Chr06.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA380.g.vcf.gz -r HanXRQChr06 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/HA380_Chr06.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA404.g.vcf.gz -r HanXRQChr06 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/HA404_Chr06.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA433.g.vcf.gz -r HanXRQChr06 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/HA433_Chr06.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA442.g.vcf.gz -r HanXRQChr06 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/HA442_Chr06.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA821.g.vcf.gz -r HanXRQChr06 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/HA821_Chr06.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA89.g.vcf.gz -r HanXRQChr06 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/HA89_Chr06.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA271.g.vcf.gz -r HanXRQChr06 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/RHA271_Chr06.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA309.g.vcf.gz -r HanXRQChr06 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/RHA309_Chr06.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA310.g.vcf.gz -r HanXRQChr06 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/RHA310_Chr06.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA324.g.vcf.gz -r HanXRQChr06 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/RHA324_Chr06.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA328.g.vcf.gz -r HanXRQChr06 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/RHA328_Chr06.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA354.g.vcf.gz -r HanXRQChr06 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/RHA354_Chr06.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA358.g.vcf.gz -r HanXRQChr06 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/RHA358_Chr06.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA362.g.vcf.gz -r HanXRQChr06 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/RHA362_Chr06.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA397.g.vcf.gz -r HanXRQChr06 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/RHA397_Chr06.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA408.g.vcf.gz -r HanXRQChr06 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/RHA408_Chr06.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA426.g.vcf.gz -r HanXRQChr06 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/RHA426_Chr06.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA857.g.vcf.gz -r HanXRQChr06 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/RHA857_Chr06.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/ann44-ccCA.g.vcf.gz -r HanXRQChr06 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/ann44_ccCA_Chr06.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/annND1W-6.g.vcf.gz -r HanXRQChr06 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/annND1W_6_Chr06.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/ann06-seWY.g.vcf.gz -r HanXRQChr06 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/ann06_seWY_Chr06.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/annMex_A1517.g.vcf.gz -r HanXRQChr06 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/annMex_A1517_Chr06.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/annMex_A1574.g.vcf.gz -r HanXRQChr06 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/annMex_A1574_Chr06.g.vcf.gz
bcftools view /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/annMex_Ann261.g.vcf.gz -r HanXRQChr06 | bgzip -c > /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/annMex_Ann261_Chr06.g.vcf.gz

tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/HA124_Chr06.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/HA207_Chr06.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/HA259_Chr06.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/HA314_Chr06.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/HA316_Chr06.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/HA323_Chr06.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/HA380_Chr06.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/HA404_Chr06.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/HA433_Chr06.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/HA442_Chr06.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/HA821_Chr06.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/HA89_Chr06.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/RHA271_Chr06.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/RHA309_Chr06.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/RHA310_Chr06.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/RHA324_Chr06.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/RHA328_Chr06.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/RHA354_Chr06.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/RHA358_Chr06.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/RHA362_Chr06.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/RHA397_Chr06.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/RHA408_Chr06.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/RHA426_Chr06.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/RHA857_Chr06.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/ann44_ccCA_Chr06.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/annND1W_6_Chr06.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/ann06_seWY_Chr06.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/annMex_A1517_Chr06.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/annMex_A1574_Chr06.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/annMex_Ann261_Chr06.g.vcf.gz

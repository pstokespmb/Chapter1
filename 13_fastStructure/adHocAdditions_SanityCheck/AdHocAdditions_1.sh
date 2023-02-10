#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/AdHocMerge/merge_input
#SBATCH -J AdHocAdditions_1
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=72:00:00
#SBATCH --mem=64000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/AdHocAdditions_1.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/AdHocAdditions_1.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load htslib/1.6
module load bcftools/1.6

#bcftools view -R /global/scratch/users/peter_stokes/Chapter1/AdHocMerge/scripts/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_extract.pos /global/scratch/users/peter_stokes/Chapter1/VCF_biallelicOnly/PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_noSpanningINDELS_G4_missingFixed.vcf.gz -Oz -o ./PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_noSpanningINDELS_G4_missingFixed_AdHocExtract.vcf.gz

#tabix -p vcf PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_noSpanningINDELS_G4_missingFixed_AdHocExtract.vcf.gz

#bcftools concat \
#/global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr01_gVCFs/ND1W_6.g.vcf.gz \
#/global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr02_gVCFs/ND1W_6.g.vcf.gz \
#/global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr03_gVCFs/ND1W_6.g.vcf.gz \
#/global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr04_gVCFs/ND1W_6.g.vcf.gz \
#/global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr05_gVCFs/ND1W_6.g.vcf.gz \
#/global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr06_gVCFs/ND1W_6.g.vcf.gz \
#/global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr07_gVCFs/ND1W_6.g.vcf.gz \
#/global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr08_gVCFs/ND1W_6.g.vcf.gz \
#/global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr09_gVCFs/ND1W_6.g.vcf.gz \
#/global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr10_gVCFs/ND1W_6.g.vcf.gz \
#/global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr11_gVCFs/ND1W_6.g.vcf.gz \
#/global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr12_gVCFs/ND1W_6.g.vcf.gz \
#/global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr13_gVCFs/ND1W_6.g.vcf.gz \
#/global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ND1W_6.g.vcf.gz \
#/global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr15_gVCFs/ND1W_6.g.vcf.gz \
#/global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr16_gVCFs/ND1W_6.g.vcf.gz \
#/global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr17_gVCFs/ND1W_6.g.vcf.gz \
#-Oz -o ./ND1W_6_all.g.vcf.gz

#tabix -p vcf ND1W_6_all.g.vcf.gz

#bcftools view -R /global/scratch/users/peter_stokes/Chapter1/AdHocMerge/scripts/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_extract.pos /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA124.g.vcf.gz -Oz -o ./HA124_AdHoc.g.vcf.gz 
#bcftools view -R /global/scratch/users/peter_stokes/Chapter1/AdHocMerge/scripts/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_extract.pos /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA207.g.vcf.gz -Oz -o ./HA207_AdHoc.g.vcf.gz 
#bcftools view -R /global/scratch/users/peter_stokes/Chapter1/AdHocMerge/scripts/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_extract.pos /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA259.g.vcf.gz -Oz -o ./HA259_AdHoc.g.vcf.gz 
#bcftools view -R /global/scratch/users/peter_stokes/Chapter1/AdHocMerge/scripts/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_extract.pos /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA314.g.vcf.gz -Oz -o ./HA314_AdHoc.g.vcf.gz 
#bcftools view -R /global/scratch/users/peter_stokes/Chapter1/AdHocMerge/scripts/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_extract.pos /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA316.g.vcf.gz -Oz -o ./HA316_AdHoc.g.vcf.gz 
#bcftools view -R /global/scratch/users/peter_stokes/Chapter1/AdHocMerge/scripts/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_extract.pos /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA323.g.vcf.gz -Oz -o ./HA323_AdHoc.g.vcf.gz 
#bcftools view -R /global/scratch/users/peter_stokes/Chapter1/AdHocMerge/scripts/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_extract.pos /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA380.g.vcf.gz -Oz -o ./HA380_AdHoc.g.vcf.gz 
#bcftools view -R /global/scratch/users/peter_stokes/Chapter1/AdHocMerge/scripts/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_extract.pos /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA404.g.vcf.gz -Oz -o ./HA404_AdHoc.g.vcf.gz 
#bcftools view -R /global/scratch/users/peter_stokes/Chapter1/AdHocMerge/scripts/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_extract.pos /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA433.g.vcf.gz -Oz -o ./HA433_AdHoc.g.vcf.gz 
#bcftools view -R /global/scratch/users/peter_stokes/Chapter1/AdHocMerge/scripts/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_extract.pos /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA442.g.vcf.gz -Oz -o ./HA442_AdHoc.g.vcf.gz 
#bcftools view -R /global/scratch/users/peter_stokes/Chapter1/AdHocMerge/scripts/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_extract.pos /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA821.g.vcf.gz -Oz -o ./HA821_AdHoc.g.vcf.gz 
#bcftools view -R /global/scratch/users/peter_stokes/Chapter1/AdHocMerge/scripts/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_extract.pos /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/HA89.g.vcf.gz -Oz -o ./HA89_AdHoc.g.vcf.gz
#bcftools view -R /global/scratch/users/peter_stokes/Chapter1/AdHocMerge/scripts/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_extract.pos /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA271.g.vcf.gz -Oz -o ./RHA271_AdHoc.g.vcf.gz
bcftools view -R /global/scratch/users/peter_stokes/Chapter1/AdHocMerge/scripts/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_extract.pos /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA309.g.vcf.gz -Oz -o ./RHA309_AdHoc.g.vcf.gz
bcftools view -R /global/scratch/users/peter_stokes/Chapter1/AdHocMerge/scripts/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_extract.pos /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA310.g.vcf.gz -Oz -o ./RHA310_AdHoc.g.vcf.gz
bcftools view -R /global/scratch/users/peter_stokes/Chapter1/AdHocMerge/scripts/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_extract.pos /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA324.g.vcf.gz -Oz -o ./RHA324_AdHoc.g.vcf.gz
bcftools view -R /global/scratch/users/peter_stokes/Chapter1/AdHocMerge/scripts/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_extract.pos /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA328.g.vcf.gz -Oz -o ./RHA328_AdHoc.g.vcf.gz
#bcftools view -R /global/scratch/users/peter_stokes/Chapter1/AdHocMerge/scripts/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_extract.pos /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA354.g.vcf.gz -Oz -o ./RHA354_AdHoc.g.vcf.gz
#bcftools view -R /global/scratch/users/peter_stokes/Chapter1/AdHocMerge/scripts/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_extract.pos /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA358.g.vcf.gz -Oz -o ./RHA358_AdHoc.g.vcf.gz
#bcftools view -R /global/scratch/users/peter_stokes/Chapter1/AdHocMerge/scripts/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_extract.pos /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA362.g.vcf.gz -Oz -o ./RHA362_AdHoc.g.vcf.gz
#bcftools view -R /global/scratch/users/peter_stokes/Chapter1/AdHocMerge/scripts/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_extract.pos /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA397.g.vcf.gz -Oz -o ./RHA397_AdHoc.g.vcf.gz
#bcftools view -R /global/scratch/users/peter_stokes/Chapter1/AdHocMerge/scripts/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_extract.pos /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA408.g.vcf.gz -Oz -o ./RHA408_AdHoc.g.vcf.gz
#bcftools view -R /global/scratch/users/peter_stokes/Chapter1/AdHocMerge/scripts/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_extract.pos /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA426.g.vcf.gz -Oz -o ./RHA426_AdHoc.g.vcf.gz
#bcftools view -R /global/scratch/users/peter_stokes/Chapter1/AdHocMerge/scripts/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_extract.pos /global/scratch/projects/fc_blackman/aDNA/cultivar_gVCFs/RHA857.g.vcf.gz -Oz -o ./RHA857_AdHoc.g.vcf.gz
bcftools view -R /global/scratch/users/peter_stokes/Chapter1/AdHocMerge/scripts/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_extract.pos ./ND1W_6_all.g.vcf.gz -Oz -o ./ND1W_6_AdHoc.g.vcf.gz

tabix -p vcf ND1W_6_AdHoc.g.vcf.gz
tabix -p vcf HA124_AdHoc.g.vcf.gz 
tabix -p vcf HA207_AdHoc.g.vcf.gz 
tabix -p vcf HA259_AdHoc.g.vcf.gz 
tabix -p vcf HA314_AdHoc.g.vcf.gz 
tabix -p vcf HA316_AdHoc.g.vcf.gz 
tabix -p vcf HA323_AdHoc.g.vcf.gz 
tabix -p vcf HA380_AdHoc.g.vcf.gz 
tabix -p vcf HA404_AdHoc.g.vcf.gz 
tabix -p vcf HA433_AdHoc.g.vcf.gz 
tabix -p vcf HA442_AdHoc.g.vcf.gz 
tabix -p vcf HA821_AdHoc.g.vcf.gz 
tabix -p vcf HA89_AdHoc.g.vcf.gz
#tabix -p vcf RHA271_AdHoc.g.vcf.gz
#tabix -p vcf RHA309_AdHoc.g.vcf.gz
#tabix -p vcf RHA310_AdHoc.g.vcf.gz
#tabix -p vcf RHA324_AdHoc.g.vcf.gz
#tabix -p vcf RHA328_AdHoc.g.vcf.gz
#tabix -p vcf RHA354_AdHoc.g.vcf.gz
#tabix -p vcf RHA358_AdHoc.g.vcf.gz
#tabix -p vcf RHA362_AdHoc.g.vcf.gz
#tabix -p vcf RHA397_AdHoc.g.vcf.gz
#tabix -p vcf RHA408_AdHoc.g.vcf.gz
#tabix -p vcf RHA426_AdHoc.g.vcf.gz
#tabix -p vcf RHA857_AdHoc.g.vcf.gz
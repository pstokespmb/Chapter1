#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/VCF_for_smcpp
#SBATCH -J 01_RAxML_vcfFiltering
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=6
#SBATCH --time=400:00:00
#SBATCH --mem=64000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/01_RAxML_vcfFiltering.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/01_RAxML_vcfFiltering.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load htslib/1.6
module load bcftools/1.6
module load bio/vcftools/0.1.15
module load python/3.7

bcftools concat PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr01_missingPosReplaced_sorted.vcf.gz PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr02_missingPosReplaced_sorted.vcf.gz PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr03_missingPosReplaced_sorted.vcf.gz PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr04_missingPosReplaced_sorted.vcf.gz PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr05_missingPosReplaced_sorted.vcf.gz PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr06_missingPosReplaced_sorted.vcf.gz PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr07_missingPosReplaced_sorted.vcf.gz PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr08_missingPosReplaced_sorted.vcf.gz PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr09_missingPosReplaced_sorted.vcf.gz PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr10_missingPosReplaced_sorted.vcf.gz PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr11_missingPosReplaced_sorted.vcf.gz PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr12_missingPosReplaced_sorted.vcf.gz PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr13_missingPosReplaced_sorted.vcf.gz PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr14_missingPosReplaced_sorted.vcf.gz PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr15_missingPosReplaced_sorted.vcf.gz PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr16_missingPosReplaced_sorted.vcf.gz PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr17_missingPosReplaced_sorted.vcf.gz  -Oz -o /global/scratch/users/peter_stokes/Chapter1/RAxML/input/PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_allChrom_missingPosReplaced_sorted.vcf.gz

cd /global/scratch/users/peter_stokes/Chapter1/RAxML/input

tabix -p vcf PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_allChrom_missingPosReplaced_sorted.vcf.gz

vcftools --gzvcf PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_allChrom_missingPosReplaced_sorted.vcf.gz --max-missing 0.5 --recode --recode-INFO-all --stdout | bgzip > PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_allChrom_missingPosReplaced_sorted_maxMissing50percent

python3 /global/scratch/users/peter_stokes/Chapter1/RAxML/scripts/vcf2phylip.py -i PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_allChrom_missingPosReplaced_sorted_maxMissing50percent.vcf

bgzip PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_allChrom_missingPosReplaced_sorted_maxMissing50percent.vcf

tabix -p vcf PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_allChrom_missingPosReplaced_sorted_maxMissing50percent.vcf.gz

#source activate RAxML_corrector

#python3 /global/scratch/users/peter_stokes/Chapter1/RAxML/scripts/ascbias.py 


#01
#02
#03
#04
#05
#06
#07
#08
#09
#10
#11
#12
#13
#14
#15
#16
#17
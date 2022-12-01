#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/VCF_for_smcpp
#SBATCH -J vcfMissingFixer_Chr15
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=6
#SBATCH --time=400:00:00
#SBATCH --mem=64000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/vcfMissingFixer_Chr15.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/vcfMissingFixer_Chr15.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load python/3.6
module load htslib/1.6
module load bcftools/1.6
export PATH=/global/home/users/peter_stokes/software/bin:$PATH

#Chromosome01 149502186	
#Chromosome02 174800439	
#Chromosome03 176490873	
#Chromosome04 208320189	
#Chromosome05 178169690	
#Chromosome06 148147350	
#Chromosome07 149542083	
#Chromosome08 167167940	
#Chromosome09 189665024	
#Chromosome10 181411567	
#Chromosome11 189830405	
#Chromosome12 163781230	
#Chromosome13 173487274	
#Chromosome14 173346949	
#Chromosome15 175671323	
#Chromosome16 206736614	
#Chromosome17 195042445	

gunzip PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr15_sorted.vcf.gz

bcftools query -f '%CHROM %POS\n' PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr15_sorted.vcf > PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr15_sorted_presentPositions.txt

bgzip PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr15_sorted.vcf

rm PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr15_sorted.vcf.gz.tbi

tabix -p vcf PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr15_sorted.vcf.gz

python3 missingFinder.py HanXRQChr15 PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr15_sorted_presentPositions.txt PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr15_sorted_missingPositions.vcf 175671323

cat VCF_header_missingData.vcf PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr15_sorted_missingPositions.vcf > PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr15_sorted_missingPositions_headerFixed.vcf

bgzip PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr15_sorted_missingPositions_headerFixed.vcf

tabix -p vcf PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr15_sorted_missingPositions_headerFixed.vcf.gz

rm PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr15_sorted_missingPositions.vcf

bcftools concat PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr15_sorted.vcf.gz PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr15_sorted_missingPositions_headerFixed.vcf.gz -Oz -o PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr15_missingPosReplaced_unsorted.vcf.gz

sort -T /global/scratch/users/peter_stokes/temp_files/Chr15 PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr15_missingPosReplaced_unsorted.vcf.gz -Oz -o PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr15_missingPosReplaced_sorted.vcf.gz

tabix -p vcf PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr15_missingPosReplaced_sorted.vcf.gz
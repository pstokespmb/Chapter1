#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr01
#SBATCH -J supplementaryMoving
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=2
#SBATCH --time=72:00:00
#SBATCH --mem=21000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/supplementaryMoving.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/supplementaryMoving.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load htslib/1.6

cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr01_gVCFs/IA2W_11.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr01
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr02_gVCFs/IA2W_11.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr02
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr03_gVCFs/IA2W_11.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr03
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr04_gVCFs/IA2W_11.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr05_gVCFs/IA2W_11.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr05
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr06_gVCFs/IA2W_11.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr07_gVCFs/IA2W_11.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr07
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr08_gVCFs/IA2W_11.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr08
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr09_gVCFs/IA2W_11.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr10_gVCFs/IA2W_11.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr10
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr11_gVCFs/IA2W_11.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr11
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr12_gVCFs/IA2W_11.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr12
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr13_gVCFs/IA2W_11.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr13
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/IA2W_11.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr15_gVCFs/IA2W_11.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr15
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr16_gVCFs/IA2W_11.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr16
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr17_gVCFs/IA2W_11.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr17

tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr01/IA2W_11.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr02/IA2W_11.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr03/IA2W_11.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr04/IA2W_11.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr05/IA2W_11.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr06/IA2W_11.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr07/IA2W_11.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr08/IA2W_11.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr09/IA2W_11.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr10/IA2W_11.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr11/IA2W_11.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr12/IA2W_11.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr13/IA2W_11.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14/IA2W_11.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr15/IA2W_11.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr16/IA2W_11.g.vcf.gz
tabix -p vcf /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr17/IA2W_11.g.vcf.gz

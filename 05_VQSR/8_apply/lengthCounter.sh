#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/VariantCalling/newVC/VCF
#SBATCH -J lengthCounter
#SBATCH --partition=savio
#SBATCH --account=co_rosalind
#SBATCH --qos=rosalind_savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=72:00:00
#SBATCH --mem=64000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/lengthCounter.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/lengthCounter.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

zcat PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_G4_missingFixed_noSpanningINDELS.vcf.gz | wc -l > PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_G4_missingFixed_noSpanningINDELS.length
zcat PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_G4_missingFixed.vcf.gz | wc -l > PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_G4_missingFixed.length

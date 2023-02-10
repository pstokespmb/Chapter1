#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/VariantCalling/newVC/VCF
#SBATCH -J 2_VQSR_biallelicOnly_Chr10
#SBATCH --partition=savio
#SBATCH --account=co_rosalind
#SBATCH --qos=rosalind_savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=72:00:00
#SBATCH --mem=64000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/2_VQSR_biallelicOnly_Chr10.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/2_VQSR_biallelicOnly_Chr10.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load java

/global/home/users/peter_stokes/software/gatk-4.3.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/users/peter_stokes/temp_files/ -Xmx64g" SelectVariants \
-R /global/scratch/users/peter_stokes/references/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V PS_Chapter1_Chr10_allChunks_annotated.vcf.gz \
--select-type-to-include SNP \
--restrict-alleles-to BIALLELIC \
-O PS_Chapter1_Chr10_allChunks_annotated_biallelicSNPSOnly.vcf.gz
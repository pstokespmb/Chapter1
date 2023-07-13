#!/bin/bash
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/VariantCalling/VCF_outs_raw
#SBATCH -J GATK_geno_Chr09_L93
#SBATCH --partition=savio3
#SBATCH --account=co_rosalind
#SBATCH --qos=savio_lowprio
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=32
#SBATCH --time=12:00:00
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/GATK_geno_Chr09_L93.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/GATK_geno_Chr09_L93.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --requeue

module load java

/global/home/users/peter_stokes/software/gatk-4.3.0.0/gatk \
--java-options \
"-Djava.io.tmpdir=/global/scratch/users/peter_stokes/temp_files/ -Xmx70g" \
GenotypeGVCFs \
-R /global/scratch/users/peter_stokes/references/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V gendb:///global/scratch/users/peter_stokes/Chapter1/VariantCalling/DBI/DBI_outs/DBI_Chr09_b \
-O /global/scratch/users/peter_stokes/Chapter1/VariantCalling/VCF_outs_raw/PS_Chapter1_Chr09_L93.vcf.gz \
-L  HanXRQChr09:138000001-139500000 \
--max-alternate-alleles 6 \
--genomicsdb-max-alternate-alleles 9 \
--include-non-variant-sites

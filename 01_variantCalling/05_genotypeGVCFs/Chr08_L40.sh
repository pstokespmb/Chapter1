#!/bin/bash
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/VariantCalling/VCF_outs_raw
#SBATCH -J GATK_geno_Chr08_L40
#SBATCH --partition=savio3_htc
#SBATCH --account=co_rosalind
#SBATCH --qos=savio_lowprio
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=10
#SBATCH --time=12:00:00
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/GATK_geno_Chr08_L40.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/GATK_geno_Chr08_L40.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --requeue

module load java

/global/home/users/peter_stokes/software/gatk-4.3.0.0/gatk \
--java-options \
"-Djava.io.tmpdir=/global/scratch/users/peter_stokes/temp_files/ -Xmx70g" \
GenotypeGVCFs \
-R /global/scratch/users/peter_stokes/references/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V gendb:///global/scratch/users/peter_stokes/Chapter1/VariantCalling/DBI/DBI_outs/DBI_Chr08_a \
-O /global/scratch/users/peter_stokes/Chapter1/VariantCalling/VCF_outs_raw/PS_Chapter1_Chr08_L40.vcf.gz \
-L  HanXRQChr08:58500001-60000000 \
--max-alternate-alleles 6 \
--genomicsdb-max-alternate-alleles 9 \
--include-non-variant-sites

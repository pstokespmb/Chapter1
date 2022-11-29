#!/bin/bash
#SBATCH -D /global/scratch/users/peter_stokes/VariantCalling/newVC/VCF
#SBATCH -J GATK_geno_Chr11_L56
#SBATCH --partition=savio3_htc
#SBATCH --account=ac_acblackman
#SBATCH --qos=savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=10
#SBATCH --time=6:00:00
#SBATCH --mem=96000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/GATK_geno_Chr11_L56.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/GATK_geno_Chr11_L56.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load java

/global/home/users/peter_stokes/software/gatk-4.3.0.0/gatk \
--java-options \
"-Djava.io.tmpdir=/global/scratch/users/peter_stokes/temp_files/ -Xmx70g" \
GenotypeGVCFs \
-R /global/scratch/users/peter_stokes/references/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V gendb:///global/scratch/users/peter_stokes/VariantCalling/newVC/DBI/DBI_Chr11 \
-O /global/scratch/users/peter_stokes/VariantCalling/newVC/VCF/PS_Chapter1_Chr11_L56.vcf.gz \
-L  HanXRQChr11:82500001-84000000 \
--max-alternate-alleles 6 \
--genomicsdb-max-alternate-alleles 9 \
--include-non-variant-sites

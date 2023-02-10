#!/bin/bash
#SBATCH -D /global/scratch/users/peter_stokes/VariantCalling/newVC/VCF
#SBATCH -J GATK_geno_Chr10_L68
#SBATCH --partition=savio
#SBATCH --account=fc_blackman
#SBATCH --qos=savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=6:00:00
#SBATCH --mem=64000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/GATK_geno_Chr10_L68.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/GATK_geno_Chr10_L68.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load java

/global/home/users/peter_stokes/software/gatk-4.3.0.0/gatk \
--java-options \
"-Djava.io.tmpdir=/global/scratch/users/peter_stokes/temp_files/ -Xmx50g" \
GenotypeGVCFs \
-R /global/scratch/users/peter_stokes/references/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V gendb:///global/scratch/users/peter_stokes/VariantCalling/newVC/DBI/DBI_Chr10 \
-O /global/scratch/users/peter_stokes/VariantCalling/newVC/VCF/PS_Chapter1_Chr10_L68.vcf.gz \
-L  HanXRQChr10:100500001-102000000 \
--max-alternate-alleles 6 \
--genomicsdb-max-alternate-alleles 9 \
--include-non-variant-sites
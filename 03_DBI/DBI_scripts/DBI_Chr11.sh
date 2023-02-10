#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr11
#SBATCH -J DBI_Chr11
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=6
#SBATCH --time=400:00:00
#SBATCH --mem=64000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/DBI_Chr11.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/DBI_Chr11.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load java

/global/home/users/peter_stokes/software/gatk-4.3.0.0/gatk \
--java-options "-Djava.io.tmpdir=/global/scratch/users/peter_stokes/temp_files/ -Xmx64g" \
GenomicsDBImport \
--genomicsdb-workspace-path /global/scratch/users/peter_stokes/Chapter1/VariantCalling/DBI/DBI_Chr11 \
--reader-threads 6 \
--batch-size 50 \
-L HanXRQChr11 \
--sample-name-map /global/scratch/users/peter_stokes/Chapter1/VariantCalling/scripts/cohortMaps/cohort_Chr11.sample_map \
-R /global/scratch/users/peter_stokes/references/HanXRQr2.0-SUNRISE-2.1.genome.fasta
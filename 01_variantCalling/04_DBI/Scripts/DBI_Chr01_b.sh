#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs_new/unsorted
#SBATCH -J DBI_Chr01_b
#SBATCH --partition=savio2_htc
#SBATCH --account=co_rosalind
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --cpus-per-task=4
#SBATCH --time=400:00:00
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/DBI_Chr01_b.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/DBI_Chr01_b.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load java

#/global/home/users/peter_stokes/software/gatk-4.3.0.0/gatk \
#--java-options "-Djava.io.tmpdir=/global/scratch/users/peter_stokes/temp_files/ -Xmx60g" \
#GenomicsDBImport \
#--genomicsdb-workspace-path /global/scratch/users/peter_stokes/Chapter1/VariantCalling/DBI/DBI_outs/DBI_Chr01_b \
#--reader-threads 6 \
#--batch-size 50 \
#-L HanXRQChr01:70500001-141000000 \
#--sample-name-map /global/scratch/users/peter_stokes/Chapter1/VariantCalling/DBI/cohortMaps/cohort_Chr01.sample_map \
#-R /global/scratch/users/peter_stokes/references/HanXRQr2.0-SUNRISE-2.1.genome.fasta

/global/home/users/peter_stokes/software/gatk-4.3.0.0/gatk \
--java-options "-Djava.io.tmpdir=/global/scratch/users/peter_stokes/temp_files/ -Xmx30g" GenomicsDBImport \
--sample-name-map /global/scratch/users/peter_stokes/Chapter1/VariantCalling/DBI/cohortMaps/Ann1238_Chr01.sample_map \
--genomicsdb-update-workspace-path /global/scratch/users/peter_stokes/Chapter1/VariantCalling/DBI/DBI_outs/DBI_Chr01_b

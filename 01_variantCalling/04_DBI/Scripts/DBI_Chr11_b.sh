#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs_new/unsorted
#SBATCH -J DBI_Chr11_b
#SBATCH --partition=savio2_htc
#SBATCH --account=ac_acblackman
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --time=72:00:00
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/DBI_Chr11_b.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/DBI_Chr11_b.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load java

#/global/home/users/peter_stokes/software/gatk-4.3.0.0/gatk \
#--java-options "-Djava.io.tmpdir=/global/scratch/users/peter_stokes/temp_files/ -Xmx50g" \
#GenomicsDBImport \
#--genomicsdb-workspace-path /global/scratch/users/peter_stokes/Chapter1/VariantCalling/DBI/DBI_outs/DBI_Chr11_b \
#--reader-threads 6 \
#--batch-size 50 \
#-L HanXRQChr11:70500001-141000000 \
#--sample-name-map /global/scratch/users/peter_stokes/Chapter1/VariantCalling/DBI/cohortMaps/cohort_Chr11.sample_map \
#-R /global/scratch/users/peter_stokes/references/HanXRQr2.0-SUNRISE-2.1.genome.fasta

/global/home/users/peter_stokes/software/gatk-4.3.0.0/gatk \
--java-options "-Djava.io.tmpdir=/global/scratch/users/peter_stokes/temp_files/ -Xmx10g" GenomicsDBImport \
--sample-name-map /global/scratch/users/peter_stokes/Chapter1/VariantCalling/DBI/cohortMaps/Ann1238_Chr11.sample_map \
--genomicsdb-update-workspace-path /global/scratch/users/peter_stokes/Chapter1/VariantCalling/DBI/DBI_outs/DBI_Chr11_b

#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool
#SBATCH -J SRA_dump_3
#SBATCH --account=ac_acblackman
#SBATCH --partition=savio2_htc
#SBATCH --qos=savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=3
#SBATCH --time=72:00:00
#SBATCH --mem=32000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/SRA_dump_3.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/SRA_dump_3.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load sra-tools/2.11.2

fastq-dump --gzip --split-files SRR8889028
fastq-dump --gzip --split-files SRR8889031
fastq-dump --gzip --split-files SRR8888809
fastq-dump --gzip --split-files SRR8888807
fastq-dump --gzip --split-files SRR8888808
fastq-dump --gzip --split-files SRR8888587
fastq-dump --gzip --split-files SRR8888860
fastq-dump --gzip --split-files SRR8889037
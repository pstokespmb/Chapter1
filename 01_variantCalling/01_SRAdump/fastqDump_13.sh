#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool
#SBATCH -J SRA_dump_13
#SBATCH --account=ac_acblackman
#SBATCH --partition=savio2_htc
#SBATCH --qos=savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=72:00:00
#SBATCH --mem=10000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/SRA_dump_13.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/SRA_dump_13.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load sra-tools/2.11.2

fastq-dump --gzip --split-files SRR8888649
fastq-dump --gzip --split-files SRR8888574
fastq-dump --gzip --split-files SRR8889024
fastq-dump --gzip --split-files SRR8888784
fastq-dump --gzip --split-files SRR8888679
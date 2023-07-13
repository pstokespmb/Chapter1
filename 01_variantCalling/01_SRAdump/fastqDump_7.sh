#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool
#SBATCH -J SRA_dump_7
#SBATCH --account=ac_acblackman
#SBATCH --partition=savio2_htc
#SBATCH --qos=savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=72:00:00
#SBATCH --mem=10000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/SRA_dump_7.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/SRA_dump_7.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load sra-tools/2.11.2

fastq-dump --gzip --split-files SRR8888601
fastq-dump --gzip --split-files SRR8888602
fastq-dump --gzip --split-files SRR8888599
fastq-dump --gzip --split-files SRR8888600
fastq-dump --gzip --split-files SRR8888914
fastq-dump --gzip --split-files SRR8888764

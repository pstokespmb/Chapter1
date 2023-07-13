#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool
#SBATCH -J SRA_dump_8
#SBATCH --account=ac_acblackman
#SBATCH --partition=savio2_htc
#SBATCH --qos=savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=72:00:00
#SBATCH --mem=10000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/SRA_dump_8.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/SRA_dump_8.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load sra-tools/2.11.2

fastq-dump --gzip --split-files SRR8888951
fastq-dump --gzip --split-files SRR8888956
fastq-dump --gzip --split-files SRR8888774
fastq-dump --gzip --split-files SRR8888613
fastq-dump --gzip --split-files SRR8888640
fastq-dump --gzip --split-files SRR8888802

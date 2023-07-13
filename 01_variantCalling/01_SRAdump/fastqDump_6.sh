#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool
#SBATCH -J SRA_dump_6
#SBATCH --account=ac_acblackman
#SBATCH --partition=savio2_htc
#SBATCH --qos=savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=3
#SBATCH --time=72:00:00
#SBATCH --mem=32000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/SRA_dump_6.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/SRA_dump_6.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load sra-tools/2.11.2

fastq-dump --gzip --split-files SRR8888708
fastq-dump --gzip --split-files SRR8888682
fastq-dump --gzip --split-files SRR8888709
fastq-dump --gzip --split-files SRR8888892
fastq-dump --gzip --split-files SRR8888895
fastq-dump --gzip --split-files SRR8888547
fastq-dump --gzip --split-files SRR8888873
fastq-dump --gzip --split-files SRR8888514

#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool
#SBATCH -J fastqDump_31_ketchupLOL_f
#SBATCH --partition=savio3_htc
#SBATCH --account=co_rosalind
#SBATCH --qos=savio_lowprio
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --time=24:00:00
#SBATCH --mem=38000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/fastqDump_31_ketchupLOL_f.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/fastqDump_31_ketchupLOL_f.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

gzip SRR8888549_2.fastq
gzip SRR8888727_2.fastq
gzip SRR8888617_2.fastq
gzip SRR8888616_2.fastq
gzip SRR8888702_2.fastq
gzip SRR8888704_2.fastq
gzip SRR8888886_2.fastq
gzip SRR8888887_2.fastq
gzip SRR8888889_2.fastq
gzip SRR8888888_2.fastq
gzip SRR8892411_2.fastq
gzip SRR8892412_2.fastq
gzip SRR8892414_2.fastq
gzip SRR8892328_2.fastq

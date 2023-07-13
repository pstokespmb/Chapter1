#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool
#SBATCH -J fastqDump_31_ketchupLOL_b
#SBATCH --partition=savio3_htc
#SBATCH --account=co_rosalind
#SBATCH --qos=savio_lowprio
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --time=24:00:00
#SBATCH --mem=38000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/fastqDump_31_ketchupLOL_b.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/fastqDump_31_ketchupLOL_b.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

#gzip SRR8888730_1.fastq
#gzip SRR8888549_1.fastq
#gzip SRR8888727_1.fastq
#gzip SRR8888617_1.fastq
#gzip SRR8888616_1.fastq
#gzip SRR8888702_1.fastq
gzip SRR8888704_1.fastq
gzip SRR8888886_1.fastq
gzip SRR8888887_1.fastq
gzip SRR8888889_1.fastq
gzip SRR8888888_1.fastq
gzip SRR8892411_1.fastq
gzip SRR8892412_1.fastq
gzip SRR8892414_1.fastq

#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool
#SBATCH -J fastqDump_31_ketchupLOL_a
#SBATCH --partition=savio3_htc
#SBATCH --account=co_rosalind
#SBATCH --qos=savio_lowprio
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --time=24:00:00
#SBATCH --mem=38000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/fastqDump_31_ketchupLOL_a.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/fastqDump_31_ketchupLOL_a.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

gzip SRR8888516_1.fastq
gzip SRR8888742_1.fastq
gzip SRR8888485_1.fastq
gzip SRR8888486_1.fastq
gzip SRR8888483_1.fastq
gzip SRR8888796_1.fastq
gzip SRR8888795_1.fastq
gzip SRR8888917_1.fastq
gzip SRR8888757_1.fastq
gzip SRR8888790_1.fastq
gzip SRR8889026_1.fastq
gzip SRR8889027_1.fastq
gzip SRR8888862_1.fastq
gzip SRR8888863_1.fastq

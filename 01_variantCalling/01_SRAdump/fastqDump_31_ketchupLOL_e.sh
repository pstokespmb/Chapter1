#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool
#SBATCH -J fastqDump_31_ketchupLOL_e
#SBATCH --partition=savio3_htc
#SBATCH --account=co_rosalind
#SBATCH --qos=savio_lowprio
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --time=24:00:00
#SBATCH --mem=38000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/fastqDump_31_ketchupLOL_e.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/fastqDump_31_ketchupLOL_e.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

gzip SRR8888516_2.fastq
gzip SRR8888742_2.fastq
gzip SRR8888485_2.fastq
gzip SRR8888486_2.fastq
gzip SRR8888483_2.fastq
gzip SRR8888796_2.fastq
gzip SRR8888795_2.fastq
gzip SRR8888917_2.fastq
gzip SRR8888757_2.fastq
gzip SRR8888790_2.fastq
gzip SRR8889026_2.fastq
gzip SRR8889027_2.fastq
gzip SRR8888862_2.fastq
gzip SRR8888863_2.fastq
gzip SRR8888730_2.fastq

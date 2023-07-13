#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool
#SBATCH -J fastqDump_31_ketchupLOL_h
#SBATCH --partition=savio3_htc
#SBATCH --account=co_rosalind
#SBATCH --qos=savio_lowprio
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --time=24:00:00
#SBATCH --mem=38000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/fastqDump_31_ketchupLOL_h.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/fastqDump_31_ketchupLOL_h.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

gzip SRR8892454_2.fastq
gzip SRR8892452_2.fastq
gzip SRR8892453_2.fastq
gzip SRR8892758_2.fastq
gzip SRR8892791_2.fastq
gzip SRR8892794_2.fastq
gzip SRR8892795_2.fastq
gzip SRR8892634_2.fastq
gzip SRR8892633_2.fastq
gzip SRR8892639_2.fastq
gzip SRR8892448_2.fastq
gzip SRR8892730_2.fastq
gzip SRR8892457_2.fastq
gzip SRR8892458_2.fastq
gzip SRR8892421_2.fastq
gzip SRR8892422_2.fastq

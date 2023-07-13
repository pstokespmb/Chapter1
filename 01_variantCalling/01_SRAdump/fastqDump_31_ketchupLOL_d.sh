#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool
#SBATCH -J fastqDump_31_ketchupLOL_d
#SBATCH --partition=savio3_htc
#SBATCH --account=co_rosalind
#SBATCH --qos=savio_lowprio
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --time=24:00:00
#SBATCH --mem=38000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/fastqDump_31_ketchupLOL_d.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/fastqDump_31_ketchupLOL_d.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

gzip SRR8892451_1.fastq
gzip SRR8892454_1.fastq
gzip SRR8892452_1.fastq
gzip SRR8892453_1.fastq
gzip SRR8892758_1.fastq
gzip SRR8892791_1.fastq
gzip SRR8892794_1.fastq
gzip SRR8892795_1.fastq
gzip SRR8892634_1.fastq
gzip SRR8892633_1.fastq
gzip SRR8892639_1.fastq
gzip SRR8892448_1.fastq
gzip SRR8892730_1.fastq
gzip SRR8892457_1.fastq
gzip SRR8892458_1.fastq
gzip SRR8892421_1.fastq
gzip SRR8892422_1.fastq

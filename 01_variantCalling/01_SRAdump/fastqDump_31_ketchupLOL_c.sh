#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool
#SBATCH -J fastqDump_31_ketchupLOL_c
#SBATCH --partition=savio3_htc
#SBATCH --account=co_rosalind
#SBATCH --qos=savio_lowprio
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --time=24:00:00
#SBATCH --mem=38000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/fastqDump_31_ketchupLOL_c.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/fastqDump_31_ketchupLOL_c.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

gzip SRR8892328_1.fastq
gzip SRR8892283_1.fastq
gzip SRR8892723_1.fastq
gzip SRR8892487_1.fastq
gzip SRR8892472_1.fastq
gzip SRR8892475_1.fastq
gzip SRR8892473_1.fastq
gzip SRR8892683_1.fastq
gzip SRR8892716_1.fastq
gzip SRR8892404_1.fastq
gzip SRR8892704_1.fastq
gzip SRR8892374_1.fastq
gzip SRR8892572_1.fastq
gzip SRR8892573_1.fastq

#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool
#SBATCH -J fastqDump_31_ketchupLOL_g
#SBATCH --partition=savio3_htc
#SBATCH --account=co_rosalind
#SBATCH --qos=savio_lowprio
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --time=24:00:00
#SBATCH --mem=38000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/fastqDump_31_ketchupLOL_g.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/fastqDump_31_ketchupLOL_g.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

gzip SRR8892283_2.fastq
gzip SRR8892723_2.fastq
gzip SRR8892487_2.fastq
gzip SRR8892472_2.fastq
gzip SRR8892475_2.fastq
gzip SRR8892473_2.fastq
gzip SRR8892683_2.fastq
gzip SRR8892716_2.fastq
gzip SRR8892404_2.fastq
gzip SRR8892704_2.fastq
gzip SRR8892374_2.fastq
gzip SRR8892572_2.fastq
gzip SRR8892573_2.fastq
gzip SRR8892451_2.fastq

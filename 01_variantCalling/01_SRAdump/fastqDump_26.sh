#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool
#SBATCH -J SRA_dump_26
#SBATCH --partition=savio3_htc
#SBATCH --account=co_rosalind
#SBATCH --qos=savio_lowprio
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --time=24:00:00
#SBATCH --mem=38000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/SRA_dump_26.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/SRA_dump_26.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

export PATH=/global/scratch/users/peter_stokes/software/sratoolkit.3.0.1-centos_linux64/bin:$PATH

fasterq-dump SRR5940318 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
fasterq-dump SRR5940427 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
fasterq-dump SRR5940376 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
fasterq-dump SRR5940113 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
fasterq-dump SRR5940190 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
fasterq-dump SRR5940306 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4

gzip SRR5940318_1.fastq
gzip SRR5940427_1.fastq
gzip SRR5940376_1.fastq
gzip SRR5940113_1.fastq
gzip SRR5940190_1.fastq
gzip SRR5940306_1.fastq
gzip SRR5940318_2.fastq
gzip SRR5940427_2.fastq
gzip SRR5940376_2.fastq
gzip SRR5940113_2.fastq
gzip SRR5940190_2.fastq
gzip SRR5940306_2.fastq

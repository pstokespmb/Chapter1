#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool
#SBATCH -J SRA_dump_21
#SBATCH --partition=savio3_htc
#SBATCH --account=co_rosalind
#SBATCH --qos=savio_lowprio
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --time=24:00:00
#SBATCH --mem=38000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/SRA_dump_21.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/SRA_dump_21.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

export PATH=/global/scratch/users/peter_stokes/software/sratoolkit.3.0.1-centos_linux64/bin:$PATH

fasterq-dump SRR5940240 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
fasterq-dump SRR5940268 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
fasterq-dump SRR5940350 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
fasterq-dump SRR5940451 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
fasterq-dump SRR5940333 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
fasterq-dump SRR5940507 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4

gzip SRR5940240_1.fastq
gzip SRR5940268_1.fastq
gzip SRR5940350_1.fastq
gzip SRR5940451_1.fastq
gzip SRR5940333_1.fastq
gzip SRR5940507_1.fastq
gzip SRR5940240_2.fastq
gzip SRR5940268_2.fastq
gzip SRR5940350_2.fastq
gzip SRR5940451_2.fastq
gzip SRR5940333_2.fastq
gzip SRR5940507_2.fastq
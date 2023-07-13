#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool
#SBATCH -J SRA_dump_15
#SBATCH --partition=savio3_htc
#SBATCH --account=co_rosalind
#SBATCH --qos=savio_lowprio
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --time=24:00:00
#SBATCH --mem=38000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/SRA_dump_15.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/SRA_dump_15.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

export PATH=/global/scratch/users/peter_stokes/software/sratoolkit.3.0.1-centos_linux64/bin:$PATH

#fasterq-dump SRR8888516 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
#fasterq-dump SRR8888742 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
#fasterq-dump SRR8888485 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
#fasterq-dump SRR8888486 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
#fasterq-dump SRR8888483 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
#fasterq-dump SRR8888796 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
#fasterq-dump SRR8888795 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
fasterq-dump SRR8888917 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
fasterq-dump SRR8888757 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4

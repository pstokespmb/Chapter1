#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool
#SBATCH -J SRA_dump_25
#SBATCH --partition=savio3_htc
#SBATCH --account=co_rosalind
#SBATCH --qos=savio_lowprio
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --time=24:00:00
#SBATCH --mem=38000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/SRA_dump_25.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/SRA_dump_25.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

export PATH=/global/scratch/users/peter_stokes/software/sratoolkit.3.0.1-centos_linux64/bin:$PATH

fasterq-dump SRR5940397 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
fasterq-dump SRR5940401 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
fasterq-dump SRR5940281 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
fasterq-dump SRR5940326 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
fasterq-dump SRR5940252 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
fasterq-dump SRR5940537 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4

gzip SRR5940397_1.fastq
gzip SRR5940401_1.fastq
gzip SRR5940281_1.fastq
gzip SRR5940326_1.fastq
gzip SRR5940252_1.fastq
gzip SRR5940537_1.fastq
gzip SRR5940397_2.fastq
gzip SRR5940401_2.fastq
gzip SRR5940281_2.fastq
gzip SRR5940326_2.fastq
gzip SRR5940252_2.fastq
gzip SRR5940537_2.fastq

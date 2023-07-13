#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool
#SBATCH -J SRA_dump_24
#SBATCH --partition=savio3_htc
#SBATCH --account=co_rosalind
#SBATCH --qos=savio_lowprio
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --time=24:00:00
#SBATCH --mem=38000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/SRA_dump_24.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/SRA_dump_24.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

export PATH=/global/scratch/users/peter_stokes/software/sratoolkit.3.0.1-centos_linux64/bin:$PATH

fasterq-dump SRR5940267 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
fasterq-dump SRR5940505 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
fasterq-dump SRR5940259 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
fasterq-dump SRR5940535 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
fasterq-dump SRR5940335 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
fasterq-dump SRR5940557 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4

gzip SRR5940267_1.fastq
gzip SRR5940505_1.fastq
gzip SRR5940259_1.fastq
gzip SRR5940535_1.fastq
gzip SRR5940335_1.fastq
gzip SRR5940557_1.fastq
gzip SRR5940267_2.fastq
gzip SRR5940505_2.fastq
gzip SRR5940259_2.fastq
gzip SRR5940535_2.fastq
gzip SRR5940335_2.fastq
gzip SRR5940557_2.fastq
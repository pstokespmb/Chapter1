#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool
#SBATCH -J SRA_dump_33
#SBATCH --partition=savio3_htc
#SBATCH --account=co_rosalind
#SBATCH --qos=savio_lowprio
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --time=24:00:00
#SBATCH --mem=38000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/SRA_dump_33.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/SRA_dump_33.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

export PATH=/global/scratch/users/peter_stokes/software/sratoolkit.3.0.1-centos_linux64/bin:$PATH

#fasterq-dump SRR8896021 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
#fasterq-dump SRR8896022 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
#fasterq-dump SRR8896078 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
#fasterq-dump SRR8896079 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
#fasterq-dump SRR8896438 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
#fasterq-dump SRR8896731 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
#fasterq-dump SRR8896763 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
fasterq-dump SRR8896699 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
fasterq-dump SRR8896694 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
fasterq-dump SRR8896652 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
fasterq-dump SRR8896651 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
fasterq-dump SRR8896553 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
fasterq-dump SRR8896552 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
fasterq-dump SRR8896588 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
#fasterq-dump SRR8896587 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
#fasterq-dump SRR8896716 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
#fasterq-dump SRR8892426 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
#fasterq-dump SRR8892425 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
#fasterq-dump SRR8892726 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4
#fasterq-dump SRR8896042 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 4

#gzip SRR8896021_1.fastq
#gzip SRR8896022_1.fastq
#gzip SRR8896078_1.fastq
#gzip SRR8896079_1.fastq
#gzip SRR8896438_1.fastq
#gzip SRR8896731_1.fastq
#gzip SRR8896763_1.fastq
gzip SRR8896699_1.fastq
gzip SRR8896694_1.fastq
gzip SRR8896652_1.fastq
gzip SRR8896651_1.fastq
gzip SRR8896553_1.fastq
gzip SRR8896552_1.fastq
gzip SRR8896588_1.fastq
#gzip SRR8896587_1.fastq
#gzip SRR8896716_1.fastq
#gzip SRR8892426_1.fastq
#gzip SRR8892425_1.fastq
#gzip SRR8892726_1.fastq
#gzip SRR8896042_1.fastq

#gzip SRR8896021_2.fastq
#gzip SRR8896022_2.fastq
#gzip SRR8896078_2.fastq
#gzip SRR8896079_2.fastq
#gzip SRR8896438_2.fastq
#gzip SRR8896731_2.fastq
#gzip SRR8896763_2.fastq
gzip SRR8896699_2.fastq
gzip SRR8896694_2.fastq
gzip SRR8896652_2.fastq
gzip SRR8896651_2.fastq
gzip SRR8896553_2.fastq
gzip SRR8896552_2.fastq
gzip SRR8896588_2.fastq
#gzip SRR8896587_2.fastq
#gzip SRR8896716_2.fastq
#gzip SRR8892426_2.fastq
#gzip SRR8892425_2.fastq
#gzip SRR8892726_2.fastq
#gzip SRR8896042_2.fastq

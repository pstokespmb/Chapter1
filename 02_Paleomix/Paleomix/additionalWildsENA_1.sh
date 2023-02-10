#!/bin/bash
#SBATCH -D /global/scratch/users/peter_stokes/additionalWildsENA/fastqs
#SBATCH -J additionalWildsENA_1
#SBATCH --partition=savio
#SBATCH --account=co_rosalind
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH --mem=64000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/additionalWildsENA_1.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/additionalWildsENA_1.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load sra-tools/2.11.2

fastq-dump --gzip --split-files SRR8892316
fastq-dump --gzip --split-files SRR8892409
fastq-dump --gzip --split-files SRR8892410
fastq-dump --gzip --split-files SRR8892485
fastq-dump --gzip --split-files SRR8892577
fastq-dump --gzip --split-files SRR8892578
#fastq-dump --gzip --split-files SRR8888484
#fastq-dump --gzip --split-files SRR8888488
#fastq-dump --gzip --split-files SRR8888489
#fastq-dump --gzip --split-files SRR8888490
#fastq-dump --gzip --split-files SRR8888523
#fastq-dump --gzip --split-files SRR8888550
#fastq-dump --gzip --split-files SRR8888551
#fastq-dump --gzip --split-files SRR8888552
#fastq-dump --gzip --split-files SRR8888584
#fastq-dump --gzip --split-files SRR8888594
#fastq-dump --gzip --split-files SRR8888595
#fastq-dump --gzip --split-files SRR8888596
#fastq-dump --gzip --split-files SRR8888615
#fastq-dump --gzip --split-files SRR8888618
#fastq-dump --gzip --split-files SRR8888619
#fastq-dump --gzip --split-files SRR8888701
#fastq-dump --gzip --split-files SRR8888726
#fastq-dump --gzip --split-files SRR8888728
#fastq-dump --gzip --split-files SRR8888729
#fastq-dump --gzip --split-files SRR8888775
#fastq-dump --gzip --split-files SRR8888842
#fastq-dump --gzip --split-files SRR8888885
#fastq-dump --gzip --split-files SRR8888913
#fastq-dump --gzip --split-files SRR8889039
#fastq-dump --gzip --split-files SRR8888487
#fastq-dump --gzip --split-files SRR8888597
#fastq-dump --gzip --split-files SRR8888614
#fastq-dump --gzip --split-files SRR8888741
#fastq-dump --gzip --split-files SRR8888767
#fastq-dump --gzip --split-files SRR8888768
#fastq-dump --gzip --split-files SRR8888906
#fastq-dump --gzip --split-files SRR8888907
#fastq-dump --gzip --split-files SRR8888909
#fastq-dump --gzip --split-files SRR8888910
#!/bin/bash
#SBATCH -D /global/scratch2/peter_stokes/additionalNonAnnuus
#SBATCH -J fastqDump1
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=400:00:00
#SBATCH --mem=64000
#SBATCH -o /global/scratch2/peter_stokes/err_outs/fastqDump1.out
#SBATCH -e /global/scratch2/peter_stokes/err_outs/fastqDump1.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load sra-tools/2.11.2

fastq-dump --gzip --split-files SRR5907739
fastq-dump --gzip --split-files SRR2155086
fastq-dump --gzip --split-files SRR5907737
#fastq-dump --gzip --split-files SRR5907736
#fastq-dump --gzip --split-files SRR5907735
#fastq-dump --gzip --split-files SRR5907762
#fastq-dump --gzip --split-files SRR5907776
#fastq-dump --gzip --split-files SRR5907775
#fastq-dump --gzip --split-files SRR5907778
#fastq-dump --gzip --split-files SRR5907777
#fastq-dump --gzip --split-files SRR5907772
#fastq-dump --gzip --split-files SRR5907771
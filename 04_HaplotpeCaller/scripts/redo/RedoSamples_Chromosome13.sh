#!/bin/bash
#SBATCH -D /global/scratch/users/peter_stokes/additionalWildsENA/gvcfs
#SBATCH -J GATK_13REDO
#SBATCH --partition=savio
#SBATCH --account=co_rosalind
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --cpus-per-task=20
#SBATCH --time=72:00:00
#SBATCH --mem=64000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/GATK_13REDO.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/GATK_13REDO.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load java

export WDIR=/global/scratch/users/peter_stokes/additionalWildsENA/scripts/GATK_vc
cd $WDIR

/global/home/users/peter_stokes/software/gatk-4.2.6.1/gatk --java-options "-Djava.io.tmpdir=/global/scratch/users/peter_stokes/temp_files/ -Xmx64G" HaplotypeCaller -R /global/scratch/users/peter_stokes/references/HanXRQr2.0-SUNRISE-2.1.genome.genomeONLY.fasta -I /global/scratch/users/peter_stokes/additionalWildsENA/bams/SK1W_36.XRQ_nuclear.bam -L HanXRQChr13 -O /global/scratch/users/peter_stokes/additionalWildsENA/gvcfs/SK1W_36_Chr13.g.vcf.gz --ERC GVCF
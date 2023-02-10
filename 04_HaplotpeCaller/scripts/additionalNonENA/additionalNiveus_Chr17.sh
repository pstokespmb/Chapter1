#!/bin/bash
#SBATCH -D /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr17_gVCFs
#SBATCH -J additionalNiveus_Chr17
#SBATCH --partition=savio2_htc
#SBATCH --account=fc_blackman
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --cpus-per-task=3
#SBATCH --time=72:00:00
#SBATCH --mem=64000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/additionalNiveus_Chr17.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/additionalNiveus_Chr17.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load java
module load gnu-parallel/2019.03.22

export WDIR=/global/scratch/users/peter_stokes/additionalNonAnnuus/scripts
cd $WDIR

cat additionalNiveus_LIST.txt | parallel --wd $WDIR --verbose --jobs 2 '/global/home/users/peter_stokes/software/gatk-4.2.6.1/gatk --java-options "-Djava.io.tmpdir=/global/scratch/users/peter_stokes/temp_files/ -Xmx32G" HaplotypeCaller -R /global/scratch/users/peter_stokes/references/HanXRQr2.0-SUNRISE-2.1.genome.genomeONLY.fasta -I /global/scratch/users/peter_stokes/additionalNonAnnuus/bamOuts/{}.XRQ_nuclear.bam -L HanXRQChr17 -O /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr17_gVCFs/{}_Chr17.g.vcf.gz --ERC GVCF'
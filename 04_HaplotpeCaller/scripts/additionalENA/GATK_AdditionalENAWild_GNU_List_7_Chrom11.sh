#!/bin/bash
#SBATCH -D /global/scratch/users/peter_stokes/additionalWildsENA/gvcfs
#SBATCH -J GATK_7_Chrom_11
#SBATCH --partition=savio
#SBATCH --account=fc_blackman
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --cpus-per-task=6
#SBATCH --time=72:00:00
#SBATCH --mem=64000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/GATK_7_Chrom_11.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/GATK_7_Chrom_11.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load java
module load gnu-parallel/2019.03.22

export WDIR=/global/scratch/users/peter_stokes/additionalWildsENA/scripts/GATK_vc
cd $WDIR

cat AdditionalENA_L7.txt | parallel --wd $WDIR --verbose --jobs 3 '/global/home/users/peter_stokes/software/gatk-4.2.6.1/gatk --java-options "-Djava.io.tmpdir=/global/scratch/users/peter_stokes/temp_files/ -Xmx21G" HaplotypeCaller -R /global/scratch/users/peter_stokes/references/HanXRQr2.0-SUNRISE-2.1.genome.genomeONLY.fasta -I /global/scratch/users/peter_stokes/additionalWildsENA/bams/{}.XRQ_nuclear.bam -L HanXRQChr11 -O /global/scratch/users/peter_stokes/additionalWildsENA/gvcfs/{}_Chr11.g.vcf.gz --ERC GVCF'
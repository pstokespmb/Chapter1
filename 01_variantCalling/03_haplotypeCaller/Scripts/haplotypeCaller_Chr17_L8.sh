#!/bin/bash
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs_new/unsorted
#SBATCH -J GATK_8_Chrom_17
#SBATCH --partition=savio3_htc
#SBATCH --account=co_rosalind
#SBATCH --qos=savio_lowprio
#SBATCH --nodes=1
#SBATCH --cpus-per-task=5
#SBATCH --time=24:00:00
#SBATCH --mem=48000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/GATK_8_Chrom_17.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/GATK_8_Chrom_17.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load java
module load gnu-parallel/2019.03.22

cd /global/scratch/users/peter_stokes/Chapter1/VariantCalling/scripts_new/01_haplotypeCalling/lists

cat SampleList_8.txt | parallel --wd /global/scratch/users/peter_stokes/Chapter1/VariantCalling/scripts_new/01_haplotypeCalling/lists --verbose --jobs 3 '/global/home/users/peter_stokes/software/gatk-4.3.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/users/peter_stokes/temp_files/ -Xmx10G" HaplotypeCaller -R /global/scratch/users/peter_stokes/references/HanXRQr2.0-SUNRISE-2.1.genome.genomeONLY.fasta -I /global/scratch/users/peter_stokes/paleomix_alignments/bamOuts/{}.XRQ_nuclear.bam -L HanXRQChr17 -O /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs_new/unsorted/{}_Chr17.g.vcf.gz --ERC GVCF'
#!/bin/bash
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs_new/unsorted
#SBATCH -J haploCaller_Ann1238_Chr01
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=2
#SBATCH --time=400:00:00
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/haploCaller_Ann1238_Chr01.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/haploCaller_Ann1238_Chr01.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load java
module load gnu-parallel/2019.03.22

cd /global/scratch/users/peter_stokes/Chapter1/VariantCalling/scripts_new/01_haplotypeCalling/lists

/global/home/users/peter_stokes/software/gatk-4.3.0.0/gatk \
--java-options "-Djava.io.tmpdir=/global/scratch/users/peter_stokes/temp_files/ -Xmx10G" \
HaplotypeCaller \
-R /global/scratch/users/peter_stokes/references/HanXRQr2.0-SUNRISE-2.1.genome.genomeONLY.fasta \
-I /global/scratch/users/peter_stokes/paleomix_alignments/bamOuts/Ann1238_AllReads.XRQ_nuclear.bam \
-L HanXRQChr01 \
-O /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs_new/unsorted/Ann1238_Chr01.g.vcf.gz --ERC GVCF
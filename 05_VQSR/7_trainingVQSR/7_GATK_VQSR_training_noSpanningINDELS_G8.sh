#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/VariantCalling/newVC/VCF
#SBATCH -J 7_GATK_VQSR_training_G8
#SBATCH --partition=savio_bigmem
#SBATCH --account=ac_acblackman
#SBATCH --qos=savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=72:00:00
#SBATCH --mem=512000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/7_GATK_VQSR_training_G8.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/7_GATK_VQSR_training_G8.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
module load bcftools/1.6
module load java
module unload r/3.4.2
module load r/3.2.5
module load r-packages/default
module load Rcpp/0.12.14
R_LIBS_USER=/global/home/users/peter_stokes/R/x86_64-pc-linux-gnu-library/3.4/

/global/home/users/peter_stokes/software/gatk-4.3.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/users/peter_stokes/temp_files/ -Xmx512g" VariantRecalibrator \
-R /global/scratch/users/peter_stokes/references/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_noSpanningINDELS.vcf.gz \
-an QD -an MQ -an MQRankSum -an ReadPosRankSum -an FS -an SOR -an DP -an InbreedingCoeff \
--max-gaussians 8 \
-mode SNP \
--resource:3callerscombined,known=false,training=true,truth=true,prior=10.0 truth_GATK.vcf \
-O PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_noSpanningINDELS_G8.recal \
-tranche 99 -tranche 95 -tranche 92 -tranche 90 \
--tranches-file PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_noSpanningINDELS_G8.tranches \
--rscript-file PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_noSpanningINDELS_G8.plots.R
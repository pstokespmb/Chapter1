#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/VariantCalling/newVC/VCF
#SBATCH -J 5_bcftoolsConcat_biallelicSNPsConcat_allChrom
#SBATCH --partition=savio2_htc
#SBATCH --account=ac_acblackman
#SBATCH --qos=savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=12
#SBATCH --time=72:00:00
#SBATCH --mem=128000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/5_bcftoolsConcat_biallelicSNPsConcat_allChrom.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/5_bcftoolsConcat_biallelicSNPsConcat_allChrom.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load htslib/1.6

#bcftools concat PS_Chapter1_Chr01_allChunks_annotated_biallelicSNPSOnly.vcf.gz PS_Chapter1_Chr02_allChunks_annotated_biallelicSNPSOnly.vcf.gz PS_Chapter1_Chr03_allChunks_annotated_biallelicSNPSOnly.vcf.gz PS_Chapter1_Chr04_allChunks_annotated_biallelicSNPSOnly.vcf.gz PS_Chapter1_Chr05_allChunks_annotated_biallelicSNPSOnly.vcf.gz PS_Chapter1_Chr06_allChunks_annotated_biallelicSNPSOnly.vcf.gz PS_Chapter1_Chr07_allChunks_annotated_biallelicSNPSOnly.vcf.gz PS_Chapter1_Chr08_allChunks_annotated_biallelicSNPSOnly.vcf.gz PS_Chapter1_Chr09_allChunks_annotated_biallelicSNPSOnly.vcf.gz PS_Chapter1_Chr10_allChunks_annotated_biallelicSNPSOnly.vcf.gz PS_Chapter1_Chr11_allChunks_annotated_biallelicSNPSOnly.vcf.gz PS_Chapter1_Chr12_allChunks_annotated_biallelicSNPSOnly.vcf.gz PS_Chapter1_Chr13_allChunks_annotated_biallelicSNPSOnly.vcf.gz PS_Chapter1_Chr14_allChunks_annotated_biallelicSNPSOnly.vcf.gz PS_Chapter1_Chr15_allChunks_annotated_biallelicSNPSOnly.vcf.gz PS_Chapter1_Chr16_allChunks_annotated_biallelicSNPSOnly.vcf.gz PS_Chapter1_Chr17_allChunks_annotated_biallelicSNPSOnly.vcf.gz -Oz -o PS_Chapter1_allChrom_annotated_biallelicSNPSOnly.vcf.gz

#tabix -p vcf PS_Chapter1_allChrom_annotated_biallelicSNPSOnly.vcf.gz

bcftools view -e'ALT="*" || type!="snp"' PS_Chapter1_allChrom_annotated_biallelicSNPSOnly.vcf.gz > PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_noSpanningINDELS.vcf.gz

tabix -p vcf PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_noSpanningINDELS.vcf.gz

export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
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
--max-gaussians 4 \
-mode SNP \
--resource:3callerscombined,known=false,training=true,truth=true,prior=10.0 truth_GATK.vcf \
-O PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_noSpanningINDELS_G4.recal \
-tranche 99 -tranche 95 -tranche 92 -tranche 90 \
--tranches-file PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_noSpanningINDELS_G4.tranches \
--rscript-file PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_noSpanningINDELS_G4.plots.R
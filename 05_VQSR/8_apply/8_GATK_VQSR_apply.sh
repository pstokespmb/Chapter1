#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/VariantCalling/newVC/VCF
#SBATCH -J 8_GATK_VQSR_apply
#SBATCH --partition=savio_bigmem
#SBATCH --account=ac_acblackman
#SBATCH --qos=savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=72:00:00
#SBATCH --mem=512000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/8_GATK_VQSR_apply.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/8_GATK_VQSR_apply.err
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

/global/home/users/peter_stokes/software/gatk-4.3.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/users/peter_stokes/temp_files/ -Xmx512g" ApplyVQSR \
-R /global/scratch/users/peter_stokes/references/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_noSpanningINDELS.vcf.gz \
-O PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_noSpanningINDELS_G4.vcf.gz \
-ts-filter-level 99.0 \
--tranches-file PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_noSpanningINDELS_G4.tranches \
--recal-file PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_noSpanningINDELS_G4.recal \
--exclude-filtered \
-mode SNP

module load htslib/1.6

bcftools +setGT PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_noSpanningINDELS_G4.vcf.gz -- -t q -i 'FMT/DP=0' -n "./." | bgzip -c > PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_noSpanningINDELS_G4_missingFixed.vcf.gz

tabix -p vcf PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_noSpanningINDELS_G4_missingFixed.vcf.gz

zcat PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_noSpanningINDELS_G4_missingFixed.vcf.gz | wc -l > PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_noSpanningINDELS_G4_missingFixed.length
zcat PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_noSpanningINDELS_G4.vcf.gz | wc -l > PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_noSpanningINDELS_G4.length
zcat PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_noSpanningINDELS.vcf.gz | wc -l > PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_noSpanningINDELS.length



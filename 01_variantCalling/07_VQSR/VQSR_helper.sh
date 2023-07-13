#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/VariantCalling/VCFprocessing
#SBATCH -J VQSR_helper
#SBATCH --partition=savio2_htc
#SBATCH --account=co_rosalind
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --cpus-per-task=12
#SBATCH --time=120:00:00
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/VQSR_helper.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/VQSR_helper.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load htslib/1.6
module load bcftools/1.6

VQSRInputPath="/global/scratch/users/peter_stokes/Chapter1/VariantCalling/VQSR/VQSR_inputVCF"
VQSROutputPath="/global/scratch/users/peter_stokes/Chapter1/VariantCalling/VQSR/VQSR_outs"
postVQSRPath="/global/scratch/users/peter_stokes/Chapter1/VariantCalling/postVQSR_VCF"
###concatenate chromosomes

#bcftools concat \
#PS_Chapter1_Chr01_concatenatedRaw_annotated_biallelicSNPS_missingFixed_spanningFixed.vcf.gz \
#PS_Chapter1_Chr02_concatenatedRaw_annotated_biallelicSNPS_missingFixed_spanningFixed.vcf.gz \
#PS_Chapter1_Chr03_concatenatedRaw_annotated_biallelicSNPS_missingFixed_spanningFixed.vcf.gz \
#PS_Chapter1_Chr04_concatenatedRaw_annotated_biallelicSNPS_missingFixed_spanningFixed.vcf.gz \
#PS_Chapter1_Chr05_concatenatedRaw_annotated_biallelicSNPS_missingFixed_spanningFixed.vcf.gz \
#PS_Chapter1_Chr06_concatenatedRaw_annotated_biallelicSNPS_missingFixed_spanningFixed.vcf.gz \
#PS_Chapter1_Chr07_concatenatedRaw_annotated_biallelicSNPS_missingFixed_spanningFixed.vcf.gz \
#PS_Chapter1_Chr08_concatenatedRaw_annotated_biallelicSNPS_missingFixed_spanningFixed.vcf.gz \
#PS_Chapter1_Chr09_concatenatedRaw_annotated_biallelicSNPS_missingFixed_spanningFixed.vcf.gz \
#PS_Chapter1_Chr10_concatenatedRaw_annotated_biallelicSNPS_missingFixed_spanningFixed.vcf.gz \
#PS_Chapter1_Chr11_concatenatedRaw_annotated_biallelicSNPS_missingFixed_spanningFixed.vcf.gz \
#PS_Chapter1_Chr12_concatenatedRaw_annotated_biallelicSNPS_missingFixed_spanningFixed.vcf.gz \
#PS_Chapter1_Chr13_concatenatedRaw_annotated_biallelicSNPS_missingFixed_spanningFixed.vcf.gz \
#PS_Chapter1_Chr14_concatenatedRaw_annotated_biallelicSNPS_missingFixed_spanningFixed.vcf.gz \
#PS_Chapter1_Chr15_concatenatedRaw_annotated_biallelicSNPS_missingFixed_spanningFixed.vcf.gz \
#PS_Chapter1_Chr16_concatenatedRaw_annotated_biallelicSNPS_missingFixed_spanningFixed.vcf.gz \
#PS_Chapter1_Chr17_concatenatedRaw_annotated_biallelicSNPS_missingFixed_spanningFixed.vcf.gz -Oz -o ${VQSRInputPath}/PS_Chapter1_allChrom_VQSRInput.vcf.gz
#
#tabix -p vcf -f ${VQSRInputPath}/PS_Chapter1_allChrom_VQSRInput.vcf.gz
#
module purge

###VQSR training

export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
module load bcftools/1.6
module load java
module unload r/3.4.2
module load r/3.2.5
module load r-packages/default
module load Rcpp/0.12.14
R_LIBS_USER=/global/home/users/peter_stokes/R/x86_64-pc-linux-gnu-library/3.4/

#/global/home/users/peter_stokes/software/gatk-4.3.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/users/peter_stokes/temp_files/ -Xmx90g" VariantRecalibrator \
#-R /global/scratch/users/peter_stokes/references/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
#-V ${VQSRInputPath}/PS_Chapter1_allChrom_VQSRInput.vcf.gz \
#-an QD -an MQ -an MQRankSum -an ReadPosRankSum -an FS -an SOR -an DP -an InbreedingCoeff \
#--max-gaussians 4 \
#-mode SNP \
#--resource:3callerscombined,known=false,training=true,truth=true,prior=10.0 /global/scratch/users/peter_stokes/Chapter1/VariantCalling/VQSR/VQSR_truth/truth_GATK.vcf \
#-O ${VQSROutputPath}/PS_Chapter1_allChrom_VQSRready_G4.recal \
#-tranche 99 -tranche 95 -tranche 92 -tranche 90 \
#--tranches-file ${VQSROutputPath}/PS_Chapter1_allChrom_VQSRready_G4.tranches \
#--rscript-file ${VQSROutputPath}/PS_Chapter1_allChrom_VQSRready_G4.plots.R

#/global/home/users/peter_stokes/software/gatk-4.3.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/users/peter_stokes/temp_files/ -Xmx90g" VariantRecalibrator \
#-R /global/scratch/users/peter_stokes/references/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
#-V ${VQSRInputPath}/PS_Chapter1_allChrom_VQSRInput.vcf.gz \
#-an QD -an MQ -an MQRankSum -an ReadPosRankSum -an FS -an SOR -an DP -an InbreedingCoeff \
#--max-gaussians 6 \
#-mode SNP \
#--resource:3callerscombined,known=false,training=true,truth=true,prior=10.0 /global/scratch/users/peter_stokes/Chapter1/VariantCalling/VQSR/VQSR_truth/truth_GATK.vcf \
#-O ${VQSROutputPath}/PS_Chapter1_allChrom_VQSRready_G6.recal \
#-tranche 99 -tranche 95 -tranche 92 -tranche 90 \
#--tranches-file ${VQSROutputPath}/PS_Chapter1_allChrom_VQSRready_G6.tranches \
#--rscript-file ${VQSROutputPath}/PS_Chapter1_allChrom_VQSRready_G6.plots.R

/global/home/users/peter_stokes/software/gatk-4.3.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/users/peter_stokes/temp_files/ -Xmx90g" VariantRecalibrator \
-R /global/scratch/users/peter_stokes/references/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V /global/scratch/users/peter_stokes/Chapter1/VariantCalling/VQSR/VQSR_inputVCF/helper/PS_Chapter1_allChrom_VQSRInput.vcf.gz \
-an QD -an MQ -an MQRankSum -an ReadPosRankSum -an FS -an SOR -an DP -an InbreedingCoeff \
--max-gaussians 8 \
-mode SNP \
--resource:3callerscombined,known=false,training=true,truth=true,prior=10.0 /global/scratch/users/peter_stokes/Chapter1/VariantCalling/VQSR/VQSR_truth/truth_GATK.vcf \
-O ${VQSROutputPath}/PS_Chapter1_allChrom_VQSRready_G8.recal \
-tranche 99 -tranche 95 -tranche 92 -tranche 90 \
--tranches-file ${VQSROutputPath}/PS_Chapter1_allChrom_VQSRready_G8.tranches \
--rscript-file ${VQSROutputPath}/PS_Chapter1_allChrom_VQSRready_G8.plots.R

###apply VQSR [edit _G when above finishes]

/global/home/users/peter_stokes/software/gatk-4.3.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/users/peter_stokes/temp_files/ -Xmx90g" ApplyVQSR \
-R /global/scratch/users/peter_stokes/references/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V /global/scratch/users/peter_stokes/Chapter1/VariantCalling/VQSR/VQSR_inputVCF/helper/PS_Chapter1_allChrom_VQSRInput.vcf.gz \
-O ${VQSROutputPath}/PS_Chapter1_allChrom_VQSROutput_G8.vcf.gz \
-ts-filter-level 99.0 \
--tranches-file ${VQSROutputPath}/PS_Chapter1_allChrom_VQSRready_G8.tranches \
--recal-file ${VQSROutputPath}/PS_Chapter1_allChrom_VQSRready_G8.recal \
--exclude-filtered \
-mode SNP

#
#tabix -p -f vcf ${VQSROutputPath}/PS_Chapter1_allChrom_VQSROutput_G.vcf.gz
#
####merge SNPs and previously hardfiltered invariants
#
#bcftools concat -a ${VQSROutputPath}/PS_Chapter1_allChrom_VQSROutput_G.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/VCFprocessing/PS_Chapter1_allChrom_invariantsOnly_hardFiltered.vcf.gz -Oz -o ${postVQSRPath}/PS_Chapter1_allChrom_VQSROutput_G_invariantsHardFiltered.vcf.gz
#
#tabix -p -f vcf ${postVQSRPath}/PS_Chapter1_allChrom_VQSROutput_G_invariantsHardFiltered.vcf.gz
#
####sort SNP-invariant set
#
#bcftools sort -T /global/scratch/users/peter_stokes/temp_files ${postVQSRPath}/PS_Chapter1_allChrom_VQSROutput_G_invariantsHardFiltered.vcf.gz -Oz -o ${postVQSRPath}/PS_Chapter1_allChrom_VQSROutput_G_invariantsHardFiltered_sorted.vcf.gz
#
#tabix -p -f vcf ${postVQSRPath}/PS_Chapter1_allChrom_VQSROutput_G_invariantsHardFiltered_sorted.vcf.gz
#
####take complement of VCF --> bed, which describes all missing positions from VCF
#
#module load bedtools/2.28.0
#module load htslib/1.6
#export PATH=/global/home/users/peter_stokes/software/bin:$PATH
#
#bedtools complement -i ${postVQSRPath}/PS_Chapter1_allChrom_VQSROutput_G_invariantsHardFiltered_sorted.vcf.gz -g /global/scratch/users/peter_stokes/Chapter1/masksBeds/ChromosomeLengths.txt > ${postVQSRPath}/PS_Chapter1_allChrom_VQSROutput_G_invariantsHardFiltered.bed
#
####sort bed output from missing positions bed
#
#sort-bed ${postVQSRPath}/PS_Chapter1_allChrom_VQSROutput_G_invariantsHardFiltered.bed > ${postVQSRPath}/PS_Chapter1_allChrom_VQSROutput_G_invariantsHardFiltered_sorted.bed
#
####merge sorted bed with InversionRegionsBed
#
#bedops --merge ${postVQSRPath}/PS_Chapter1_allChrom_VQSROutput_G_invariantsHardFiltered_sorted.bed /global/scratch/users/peter_stokes/Chapter1/masksBeds/XRQv2_MappedInversions.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_allChrom.bed
#
####sort bed output from missing positions and inversion regions bed
#
#sort-bed ${postVQSRPath}/smcppReady_allChrom.bed > ${postVQSRPath}/smcppReady_allChrom_sorted.bed
#
####split bedfile per chromosome
#
#bedextract HanXRQChr01 ${postVQSRPath}/PS_Chapter1_allChrom_VQSROutput_G_invariantsHardFiltered_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr01_sorted.bed
#bedextract HanXRQChr02 ${postVQSRPath}/PS_Chapter1_allChrom_VQSROutput_G_invariantsHardFiltered_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr02_sorted.bed
#bedextract HanXRQChr03 ${postVQSRPath}/PS_Chapter1_allChrom_VQSROutput_G_invariantsHardFiltered_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr03_sorted.bed
#bedextract HanXRQChr04 ${postVQSRPath}/PS_Chapter1_allChrom_VQSROutput_G_invariantsHardFiltered_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr04_sorted.bed
#bedextract HanXRQChr05 ${postVQSRPath}/PS_Chapter1_allChrom_VQSROutput_G_invariantsHardFiltered_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr05_sorted.bed
#bedextract HanXRQChr06 ${postVQSRPath}/PS_Chapter1_allChrom_VQSROutput_G_invariantsHardFiltered_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr06_sorted.bed
#bedextract HanXRQChr07 ${postVQSRPath}/PS_Chapter1_allChrom_VQSROutput_G_invariantsHardFiltered_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr07_sorted.bed
#bedextract HanXRQChr08 ${postVQSRPath}/PS_Chapter1_allChrom_VQSROutput_G_invariantsHardFiltered_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr08_sorted.bed
#bedextract HanXRQChr09 ${postVQSRPath}/PS_Chapter1_allChrom_VQSROutput_G_invariantsHardFiltered_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr09_sorted.bed
#bedextract HanXRQChr10 ${postVQSRPath}/PS_Chapter1_allChrom_VQSROutput_G_invariantsHardFiltered_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr10_sorted.bed
#bedextract HanXRQChr11 ${postVQSRPath}/PS_Chapter1_allChrom_VQSROutput_G_invariantsHardFiltered_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr11_sorted.bed
#bedextract HanXRQChr12 ${postVQSRPath}/PS_Chapter1_allChrom_VQSROutput_G_invariantsHardFiltered_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr12_sorted.bed
#bedextract HanXRQChr13 ${postVQSRPath}/PS_Chapter1_allChrom_VQSROutput_G_invariantsHardFiltered_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr13_sorted.bed
#bedextract HanXRQChr14 ${postVQSRPath}/PS_Chapter1_allChrom_VQSROutput_G_invariantsHardFiltered_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr14_sorted.bed
#bedextract HanXRQChr15 ${postVQSRPath}/PS_Chapter1_allChrom_VQSROutput_G_invariantsHardFiltered_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr15_sorted.bed
#bedextract HanXRQChr16 ${postVQSRPath}/PS_Chapter1_allChrom_VQSROutput_G_invariantsHardFiltered_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr16_sorted.bed
#bedextract HanXRQChr17 ${postVQSRPath}/PS_Chapter1_allChrom_VQSROutput_G_invariantsHardFiltered_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr17_sorted.bed
#
#bedextract HanXRQChr01 ${postVQSRPath}/smcppReady_missingMask_IRmask_allChrom.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr01_sorted.bed
#bedextract HanXRQChr02 ${postVQSRPath}/smcppReady_missingMask_IRmask_allChrom.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr02_sorted.bed
#bedextract HanXRQChr03 ${postVQSRPath}/smcppReady_missingMask_IRmask_allChrom.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr03_sorted.bed
#bedextract HanXRQChr04 ${postVQSRPath}/smcppReady_missingMask_IRmask_allChrom.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr04_sorted.bed
#bedextract HanXRQChr05 ${postVQSRPath}/smcppReady_missingMask_IRmask_allChrom.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr05_sorted.bed
#bedextract HanXRQChr06 ${postVQSRPath}/smcppReady_missingMask_IRmask_allChrom.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr06_sorted.bed
#bedextract HanXRQChr07 ${postVQSRPath}/smcppReady_missingMask_IRmask_allChrom.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr07_sorted.bed
#bedextract HanXRQChr08 ${postVQSRPath}/smcppReady_missingMask_IRmask_allChrom.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr08_sorted.bed
#bedextract HanXRQChr09 ${postVQSRPath}/smcppReady_missingMask_IRmask_allChrom.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr09_sorted.bed
#bedextract HanXRQChr10 ${postVQSRPath}/smcppReady_missingMask_IRmask_allChrom.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr10_sorted.bed
#bedextract HanXRQChr11 ${postVQSRPath}/smcppReady_missingMask_IRmask_allChrom.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr11_sorted.bed
#bedextract HanXRQChr12 ${postVQSRPath}/smcppReady_missingMask_IRmask_allChrom.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr12_sorted.bed
#bedextract HanXRQChr13 ${postVQSRPath}/smcppReady_missingMask_IRmask_allChrom.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr13_sorted.bed
#bedextract HanXRQChr14 ${postVQSRPath}/smcppReady_missingMask_IRmask_allChrom.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr14_sorted.bed
#bedextract HanXRQChr15 ${postVQSRPath}/smcppReady_missingMask_IRmask_allChrom.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr15_sorted.bed
#bedextract HanXRQChr16 ${postVQSRPath}/smcppReady_missingMask_IRmask_allChrom.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr16_sorted.bed
#bedextract HanXRQChr17 ${postVQSRPath}/smcppReady_missingMask_IRmask_allChrom.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr17_sorted.bed
#
#wc -l ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr01_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr01_sorted.length
#wc -l ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr02_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr02_sorted.length
#wc -l ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr03_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr03_sorted.length
#wc -l ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr04_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr04_sorted.length
#wc -l ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr05_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr05_sorted.length
#wc -l ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr06_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr06_sorted.length
#wc -l ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr07_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr07_sorted.length
#wc -l ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr08_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr08_sorted.length
#wc -l ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr09_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr09_sorted.length
#wc -l ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr10_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr10_sorted.length
#wc -l ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr11_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr11_sorted.length
#wc -l ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr12_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr12_sorted.length
#wc -l ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr13_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr13_sorted.length
#wc -l ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr14_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr14_sorted.length
#wc -l ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr15_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr15_sorted.length
#wc -l ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr16_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr16_sorted.length
#wc -l ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr17_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr17_sorted.length
#
#wc -l ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr01_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr01_sorted.length
#wc -l ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr02_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr02_sorted.length
#wc -l ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr03_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr03_sorted.length
#wc -l ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr04_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr04_sorted.length
#wc -l ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr05_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr05_sorted.length
#wc -l ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr06_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr06_sorted.length
#wc -l ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr07_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr07_sorted.length
#wc -l ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr08_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr08_sorted.length
#wc -l ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr09_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr09_sorted.length
#wc -l ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr10_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr10_sorted.length
#wc -l ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr11_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr11_sorted.length
#wc -l ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr12_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr12_sorted.length
#wc -l ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr13_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr13_sorted.length
#wc -l ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr14_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr14_sorted.length
#wc -l ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr15_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr15_sorted.length
#wc -l ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr16_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr16_sorted.length
#wc -l ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr17_sorted.bed > ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr17_sorted.length
#
####bgzip and index bedfiles
#
#bgzip ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr01_sorted.bed
#bgzip ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr02_sorted.bed
#bgzip ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr03_sorted.bed
#bgzip ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr04_sorted.bed
#bgzip ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr05_sorted.bed
#bgzip ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr06_sorted.bed
#bgzip ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr07_sorted.bed
#bgzip ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr08_sorted.bed
#bgzip ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr09_sorted.bed
#bgzip ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr10_sorted.bed
#bgzip ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr11_sorted.bed
#bgzip ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr12_sorted.bed
#bgzip ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr13_sorted.bed
#bgzip ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr14_sorted.bed
#bgzip ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr15_sorted.bed
#bgzip ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr16_sorted.bed
#bgzip ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr17_sorted.bed
#
#bgzip ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr01_sorted.bed
#bgzip ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr02_sorted.bed
#bgzip ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr03_sorted.bed
#bgzip ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr04_sorted.bed
#bgzip ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr05_sorted.bed
#bgzip ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr06_sorted.bed
#bgzip ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr07_sorted.bed
#bgzip ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr08_sorted.bed
#bgzip ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr09_sorted.bed
#bgzip ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr10_sorted.bed
#bgzip ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr11_sorted.bed
#bgzip ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr12_sorted.bed
#bgzip ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr13_sorted.bed
#bgzip ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr14_sorted.bed
#bgzip ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr15_sorted.bed
#bgzip ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr16_sorted.bed
#bgzip ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr17_sorted.bed
#
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr01_sorted.bed.gz
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr02_sorted.bed.gz
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr03_sorted.bed.gz
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr04_sorted.bed.gz
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr05_sorted.bed.gz
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr06_sorted.bed.gz
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr07_sorted.bed.gz
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr08_sorted.bed.gz
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr09_sorted.bed.gz
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr10_sorted.bed.gz
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr11_sorted.bed.gz
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr12_sorted.bed.gz
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr13_sorted.bed.gz
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr14_sorted.bed.gz
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr15_sorted.bed.gz
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr16_sorted.bed.gz
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_IRmask_Chr17_sorted.bed.gz
#
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr01_sorted.bed.gz
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr02_sorted.bed.gz
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr03_sorted.bed.gz
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr04_sorted.bed.gz
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr05_sorted.bed.gz
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr06_sorted.bed.gz
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr07_sorted.bed.gz
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr08_sorted.bed.gz
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr09_sorted.bed.gz
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr10_sorted.bed.gz
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr11_sorted.bed.gz
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr12_sorted.bed.gz
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr13_sorted.bed.gz
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr14_sorted.bed.gz
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr15_sorted.bed.gz
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr16_sorted.bed.gz
#tabix -p bed ${postVQSRPath}/smcppReady_missingMask_NoIRmask_Chr17_sorted.bed.gz
#
####get line counts for relative numbers
#
####add _G# when script finishes#
#bcftools query -f '%CHROM %POS\n' ${VQSRInputPath}/PS_Chapter1_allChrom_VQSRInput.vcf.gz > ${VQSRInputPath}/PS_Chapter1_allChrom_VQSRInput.txt
#bcftools query -f '%CHROM %POS\n' ${VQSROutputPath}/PS_Chapter1_allChrom_VQSROutput_G.vcf.gz > ${VQSROutputPath}/PS_Chapter1_allChrom_VQSROutput_G.txt
#
#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/VariantCalling/VCF_outs_raw
#SBATCH -J VCFmodifications_Chr09
#SBATCH --partition=savio2_htc
#SBATCH --account=co_rosalind
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --cpus-per-task=6
#SBATCH --time=24:00:00
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/VCFmodifications_Chr09.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/VCFmodifications_Chr09.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load htslib/1.6
module load bcftools/1.6

ChromosomeName="Chr09"
concatenatedPath="/global/scratch/users/peter_stokes/Chapter1/VariantCalling/VCFprocessing"

###concatenate chromosome chunks

#bcftools concat \
#PS_Chapter1_${ChromosomeName}_L1.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L2.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L3.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L4.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L5.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L6.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L7.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L8.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L9.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L10.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L11.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L12.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L13.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L14.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L15.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L16.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L17.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L18.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L19.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L20.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L21.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L22.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L23.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L24.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L25.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L26.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L27.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L28.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L29.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L30.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L31.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L32.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L33.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L34.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L35.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L36.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L37.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L38.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L39.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L40.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L41.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L42.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L43.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L44.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L45.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L46.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L47.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L48.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L49.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L50.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L51.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L52.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L53.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L54.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L55.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L56.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L57.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L58.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L59.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L60.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L61.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L62.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L63.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L64.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L65.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L66.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L67.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L68.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L69.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L70.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L71.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L72.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L73.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L74.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L75.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L76.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L77.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L78.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L79.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L80.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L81.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L82.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L83.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L84.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L85.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L86.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L87.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L88.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L89.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L90.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L91.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L92.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L93.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L94.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L95.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L96.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L97.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L98.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L99.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L100.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L101.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L102.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L103.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L104.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L105.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L106.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L107.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L108.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L109.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L110.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L111.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L112.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L113.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L114.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L115.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L116.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L117.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L118.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L119.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L120.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L121.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L122.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L123.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L124.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L125.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L126.vcf.gz \
#PS_Chapter1_${ChromosomeName}_L127.vcf.gz -Oz -o ${concatenatedPath}/PS_Chapter1_${ChromosomeName}_concatenatedRaw.vcf.gz
#
#tabix -p vcf -f ${concatenatedPath}/PS_Chapter1_${ChromosomeName}_concatenatedRaw.vcf.gz

###annotate newly made concatenated raw VCF

#module load java
#
#/global/home/users/peter_stokes/software/gatk-4.3.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/users/peter_stokes/temp_files/ -Xmx50g" VariantAnnotator \
#-R /global/scratch/users/peter_stokes/references/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
#-V ${concatenatedPath}/PS_Chapter1_${ChromosomeName}_concatenatedRaw.vcf.gz \
#-O ${concatenatedPath}/PS_Chapter1_${ChromosomeName}_concatenatedRaw_annotated.vcf.gz \
#-A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff
#
#tabix -p vcf -f ${concatenatedPath}/PS_Chapter1_${ChromosomeName}_concatenatedRaw_annotated.vcf.gz

###pull out SNPs

#/global/home/users/peter_stokes/software/gatk-4.3.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/users/peter_stokes/temp_files/ -Xmx50g" SelectVariants \
#-R /global/scratch/users/peter_stokes/references/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
#-V ${concatenatedPath}/PS_Chapter1_${ChromosomeName}_concatenatedRaw_annotated.vcf.gz \
#--select-type-to-include SNP \
#--restrict-alleles-to BIALLELIC \
#-O ${concatenatedPath}/PS_Chapter1_${ChromosomeName}_concatenatedRaw_annotated_biallelicSNPS.vcf.gz
#
#tabix -p vcf -f ${concatenatedPath}/PS_Chapter1_${ChromosomeName}_concatenatedRaw_annotated_biallelicSNPS.vcf.gz

###pull out invariants

#/global/home/users/peter_stokes/software/gatk-4.3.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/users/peter_stokes/temp_files/ -Xmx50g" SelectVariants \
#-R /global/scratch/users/peter_stokes/references/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
#-V ${concatenatedPath}/PS_Chapter1_${ChromosomeName}_concatenatedRaw_annotated.vcf.gz \
#--select-type-to-include NO_VARIATION \
#-O ${concatenatedPath}/PS_Chapter1_${ChromosomeName}_concatenatedRaw_annotated_invariantsOnly.vcf.gz
#
#tabix -p vcf -f ${concatenatedPath}/PS_Chapter1_${ChromosomeName}_concatenatedRaw_annotated_invariantsOnly.vcf.gz

###hardfilter invariants

#/global/home/users/peter_stokes/software/gatk-4.3.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/users/peter_stokes/temp_files/ -Xmx50g" VariantFiltration \
#-R /global/scratch/users/peter_stokes/references/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
#-V ${concatenatedPath}/PS_Chapter1_${ChromosomeName}_concatenatedRaw_annotated_invariantsOnly.vcf.gz \
#--filter-expression "QD < 2.0 || MQ < 40.0 || FS > 60.0 || SOR > 3.0 || MQRankSum < -12.5 || ReadPosRankSum < -8.0" \
#--filter-name "novar_filter" \
#-O ${concatenatedPath}/PS_Chapter1_${ChromosomeName}_concatenatedRaw_annotated_invariantsOnly_filterInfo.vcf.gz
#
#tabix -p vcf -f ${concatenatedPath}/PS_Chapter1_${ChromosomeName}_concatenatedRaw_annotated_invariantsOnly_filterInfo.vcf.gz

#/global/home/users/peter_stokes/software/gatk-4.3.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/users/peter_stokes/temp_files/ -Xmx50g" SelectVariants \
#-R /global/scratch/users/peter_stokes/references/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
#-V ${concatenatedPath}/PS_Chapter1_${ChromosomeName}_concatenatedRaw_annotated_invariantsOnly_filterInfo.vcf.gz \
#--exclude-filtered \
#-O ${concatenatedPath}/PS_Chapter1_${ChromosomeName}_concatenatedRaw_annotated_invariantsOnly_filterInfo_hardFiltered.vcf.gz
#
#tabix -p vcf -f ${concatenatedPath}/PS_Chapter1_${ChromosomeName}_concatenatedRaw_annotated_invariantsOnly_filterInfo_hardFiltered.vcf.gz

###fix missing positions

bcftools +setGT ${concatenatedPath}/PS_Chapter1_${ChromosomeName}_concatenatedRaw_annotated_biallelicSNPS.vcf.gz -- -t q -i 'FMT/DP=0' -n "./." | bgzip -c > ${concatenatedPath}/PS_Chapter1_${ChromosomeName}_concatenatedRaw_annotated_biallelicSNPS_missingFixed.vcf.gz

tabix -p vcf -f ${concatenatedPath}/PS_Chapter1_${ChromosomeName}_concatenatedRaw_annotated_biallelicSNPS_missingFixed.vcf.gz

###fix spanning indels

bcftools view -e'ALT="*" || type!="snp"' ${concatenatedPath}/PS_Chapter1_${ChromosomeName}_concatenatedRaw_annotated_biallelicSNPS_missingFixed.vcf.gz | bgzip -c > ${concatenatedPath}/PS_Chapter1_${ChromosomeName}_concatenatedRaw_annotated_biallelicSNPS_missingFixed_spanningFixed.vcf.gz

tabix -p vcf -f ${concatenatedPath}/PS_Chapter1_${ChromosomeName}_concatenatedRaw_annotated_biallelicSNPS_missingFixed_spanningFixed.vcf.gz


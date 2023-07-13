#!/bin/bash
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/haplotypeNetworks/gvcfs/plastome
#SBATCH -J DBI_genotyping_filtering_plastome
#SBATCH --account=ac_acblackman
#SBATCH --partition=savio3_htc
#SBATCH --qos=savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=3
#SBATCH --time=72:00:00
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/DBI_genotyping_filtering_plastome.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/DBI_genotyping_filtering_plastome.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load java
module load bio/vcftools/0.1.15
module load htslib/1.6

rm -r /global/scratch/users/peter_stokes/Chapter1/haplotypeNetworks/DBI/DBI_plastome_wAncient_repeat

/global/home/users/peter_stokes/software/gatk-4.3.0.0/gatk \
--java-options "-Djava.io.tmpdir=/global/scratch/users/peter_stokes/temp_files/ -Xmx15G" \
GenomicsDBImport \
--genomicsdb-workspace-path /global/scratch/users/peter_stokes/Chapter1/haplotypeNetworks/DBI/DBI_plastome_wAncient_repeat \
--reader-threads 3 \
--batch-size 75 \
-L HanXRQCP \
--sample-name-map /global/scratch/users/peter_stokes/Chapter1/haplotypeNetworks/scripts/DBI/plastome.sample_map \
-R /global/scratch/users/peter_stokes/references/HanXRQr2.0-SUNRISE-2.1.genome.CP.fasta

/global/home/users/peter_stokes/software/gatk-4.3.0.0/gatk \
--java-options "-Djava.io.tmpdir=/global/scratch/users/peter_stokes/temp_files/ -Xmx15G" \
GenotypeGVCFs \
-R /global/scratch/users/peter_stokes/references/HanXRQr2.0-SUNRISE-2.1.genome.CP.fasta \
-V gendb:////global/scratch/users/peter_stokes/Chapter1/haplotypeNetworks/DBI/DBI_plastome_wAncient_repeat \
-L HanXRQCP \
-O /global/scratch/users/peter_stokes/Chapter1/haplotypeNetworks/VCFs/Chapter1_plastome_wAncient_repeat.vcf

/global/home/users/peter_stokes/software/gatk-4.3.0.0/gatk \
--java-options "-Djava.io.tmpdir=/global/scratch/users/peter_stokes/temp_files/ -Xmx15G" \
VariantFiltration \
-R /global/scratch/users/peter_stokes/references/HanXRQr2.0-SUNRISE-2.1.genome.CP.fasta \
-O /global/scratch/users/peter_stokes/Chapter1/haplotypeNetworks/VCFs/Chapter1_plastome_wAncient_repeat_filters.vcf \
--variant /global/scratch/users/peter_stokes/Chapter1/haplotypeNetworks/VCFs/Chapter1_plastome_wAncient_repeat.vcf \
--filter-expression "QD < 2.0" \
--filter-name "GATK_recommened_QD" \
--filter-expression "MQ < 30.0" \
--filter-name "GATK_30_MQ" \
--filter-expression "FS > 60.0" \
--filter-name "GATK_recommened_FS" \
--filter-expression "SOR > 3.0" \
--filter-name "GATK_recommened_SOR"

vcftools --vcf /global/scratch/users/peter_stokes/Chapter1/haplotypeNetworks/VCFs/Chapter1_plastome_wAncient_repeat_filters.vcf --recode --remove-indels --remove-filtered-all --minQ 1000.0 --out /global/scratch/users/peter_stokes/Chapter1/haplotypeNetworks/VCFs/Chapter1_plastome_wAncient_repeat_filtered

mv /global/scratch/users/peter_stokes/Chapter1/haplotypeNetworks/VCFs/Chapter1_plastome_wAncient_repeat_filtered.recode.vcf /global/scratch/users/peter_stokes/Chapter1/haplotypeNetworks/VCFs/Chapter1_plastome_wAncient_repeat_filtered.vcf

module load bcftools/1.6

bcftools view -e'ALT="*" || type!="snp"' --max-alleles 2 /global/scratch/users/peter_stokes/Chapter1/haplotypeNetworks/VCFs/Chapter1_plastome_wAncient_repeat_filtered.vcf > /global/scratch/users/peter_stokes/Chapter1/haplotypeNetworks/VCFs/Chapter1_plastome_wAncient_repeat_filtered_spanningFixed.vcf

bcftools +setGT /global/scratch/users/peter_stokes/Chapter1/haplotypeNetworks/VCFs/Chapter1_plastome_wAncient_repeat_filtered_spanningFixed.vcf -- -t q -i 'FMT/DP<1' -n "." > /global/scratch/users/peter_stokes/Chapter1/haplotypeNetworks/VCFs/Chapter1_plastome_wAncient_repeat_filtered_spanningFixed_D1.vcf

cd /global/scratch/users/peter_stokes/Chapter1/haplotypeNetworks/VCFs

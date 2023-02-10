#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/VariantCalling/newVC/VCF
#SBATCH -J 4_VQSR_invariantsHardFiltering_Chr04
#SBATCH --partition=savio
#SBATCH --account=co_rosalind
#SBATCH --qos=rosalind_savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=72:00:00
#SBATCH --mem=64000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/4_VQSR_invariantsHardFiltering_Chr04.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/4_VQSR_invariantsHardFiltering_Chr04.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load java

/global/home/users/peter_stokes/software/gatk-4.3.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/users/peter_stokes/temp_files/ -Xmx64g" VariantFiltration \
-R /global/scratch/users/peter_stokes/references/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V PS_Chapter1_Chr04_allChunks_annotated_invariantsOnly.vcf.gz \
--filter-expression "QD < 2.0 || MQ < 40.0 || FS > 60.0 || SOR > 3.0 || MQRankSum < -12.5 || ReadPosRankSum < -8.0" \
--filter-name "novar_filter" \
-O PS_Chapter1_Chr04_allChunks_annotated_invariantsOnly_filterInfo.vcf.gz
	
/global/home/users/peter_stokes/software/gatk-4.3.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/users/peter_stokes/temp_files/ -Xmx64g" SelectVariants \
-R /global/scratch/users/peter_stokes/references/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V PS_Chapter1_Chr04_allChunks_annotated_invariantsOnly_filterInfo.vcf.gz \
--exclude-filtered \
-O PS_Chapter1_Chr04_allChunks_annotated_invariantsOnly_hardFiltered.vcf.gz
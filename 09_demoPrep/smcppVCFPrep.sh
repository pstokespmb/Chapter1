#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/smcpp/2023/VCFs
#SBATCH -J smcppVCFPrep
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=144:00:00
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/smcppVCFPrep.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/smcppVCFPrep.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load htslib/1.6
module load bedtools/2.28.0
module load bcftools/1.6
module load bio/vcftools/0.1.15
export PATH=/global/home/users/peter_stokes/software/bin:$PATH

startingVCF_path="/global/scratch/users/peter_stokes/Chapter1/VariantCalling/postVQSR_VCF"
startingVCF_name="PS_Chapter1_allChrom_VQSROutput_G6_invariantsHardFiltered_sorted"

smcppVCFs="/global/scratch/users/peter_stokes/Chapter1/smcpp/2023/VCFs"

bedPath="/global/scratch/users/peter_stokes/Chapter1/smcpp/2023/masks"

###dp3 filter smc++ input

bcftools +setGT ${startingVCF_path}/${startingVCF_name}.vcf.gz -- -t q -i 'FORMAT/DP<4' -n "./." | bgzip -c > ${startingVCF_path}/${startingVCF_name}_D4.vcf.gz

tabix -p vcf ${startingVCF_path}/${startingVCF_name}_D4.vcf.gz

cp ${startingVCF_path}/${startingVCF_name}_D4.vcf.gz ${smcppVCFs}
cp ${startingVCF_path}/${startingVCF_name}_D4.vcf.gz.tbi ${smcppVCFs}

###take complement of VCF --> bed, which describes all missing positions from VCF

#bedtools complement -i ${smcppVCFs}/${startingVCF_name}_D3.vcf.gz -g /global/scratch/users/peter_stokes/Chapter1/smcpp/2023/scripts/smcppPrep/ChromosomeLengths.txt > ${bedPath}/${startingVCF_name}_D3.bed

###sort bed output from missing positions bed

#sort-bed ${bedPath}/${startingVCF_name}_D3.bed > ${bedPath}/${startingVCF_name}_D3_sorted.bed
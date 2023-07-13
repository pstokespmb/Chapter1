#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/VariantCalling/VQSR/VQSR_outs
#SBATCH -J VCFprep_filtering
#SBATCH --partition=savio2_htc
#SBATCH --account=co_rosalind
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --cpus-per-task=12
#SBATCH --time=00:65:00
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/VCFprep_filtering.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/VCFprep_filtering.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load htslib/1.6
module load bcftools/1.6
module load bio/vcftools/0.1.15

vcfInput="/global/scratch/users/peter_stokes/Chapter1/VariantCalling/VQSR/VQSR_outs"
plinkName="PS_Chapter1_allChrom_VQSROutput_G6_allSamples_noRR_MinDepth_biallelicOnly"
plinkOuts="/global/scratch/users/peter_stokes/Chapter1/fastStructure/plink_outs"
fastStructureOuts="/global/scratch/users/peter_stokes/Chapter1/fastStructure/fastStructure_outs"

#vcftools --gzvcf ${vcfInput}/PS_Chapter1_allChrom_VQSROutput_G6_allSamples_noRR.vcf.gz --minDP 3 --recode --recode-INFO-all --out ${vcfInput}/PS_Chapter1_allChrom_VQSROutput_G6_allSamples_noRR_MinDepth
#
#mv ${vcfInput}/PS_Chapter1_allChrom_VQSROutput_G6_allSamples_noRR_MinDepth.recode.vcf  ${vcfInput}/PS_Chapter1_allChrom_VQSROutput_G6_allSamples_noRR_MinDepth.vcf
#
#bgzip ${vcfInput}/PS_Chapter1_allChrom_VQSROutput_G6_allSamples_noRR_MinDepth.vcf
#
#tabix -p vcf ${vcfInput}/PS_Chapter1_allChrom_VQSROutput_G6_allSamples_noRR_MinDepth.vcf.gz
#
#source activate plink2
#
#plink2 --recode vcf bgz --vcf ${vcfInput}/PS_Chapter1_allChrom_VQSROutput_G6_allSamples_noRR_MinDepth.vcf.gz \
#--max-alleles 2 --min-alleles 2 \
#--allow-extra-chr \
#--keep-allele-order \
#--out ${vcfInput}/${plinkName}
#
####first plink conversion
#
#plink2 --allow-extra-chr --vcf ${vcfInput}/${plinkName}.vcf.gz \
#--set-all-var-ids @_#_\$r_\$a \
#--keep-allele-order --make-bed \
#--out ${plinkOuts}/${plinkName}_plinked
#
####second plink conversion
#
#plink2 --allow-extra-chr --bfile ${plinkOuts}/${plinkName}_plinked \
#--geno 0.1 \
#--maf 0.05 \
#--indep-pairwise 50 5 0.2 \
#--out ${plinkOuts}/${plinkName}_plinked_geno_maf_LD0_2
#
####third plink conversion
#
#plink2 --allow-extra-chr --bfile ${plinkOuts}/${plinkName}_plinked \
#--extract ${plinkOuts}/${plinkName}_plinked_geno_maf_LD0_2.prune.in \
#--make-bed --out ${plinkOuts}/${plinkName}_plinked_geno_maf_LD0_2_Pruned
#
####editing .bim file for fastStructure (fastStructure gets upset about non-pure-numerical chromosome names)
#
#sed -i 's/HanXRQChr0//g' ${plinkOuts}/${plinkName}_plinked_geno_maf_LD0_2_Pruned.bim
#sed -i 's/HanXRQChr//g' ${plinkOuts}/${plinkName}_plinked_geno_maf_LD0_2_Pruned.bim
#
#conda deactivate

source activate fastStructure

#PS_Chapter1_allChrom_VQSROutput_G6_allSamples_noRR_MinDepth_biallelicOnly_plinked_geno_maf_LD0_2_Pruned

#python /global/home/users/peter_stokes/software/fastStructure/structure.py -K 1 --input=${plinkOuts}/PS_Chapter1_allChrom_VQSROutput_G6_allSamples_noRR_MinDepth_biallelicOnly_plinked_geno_maf_LD0_2_Pruned --output=/global/scratch/users/peter_stokes/Chapter1/fastStructure/fastStructure_outs/PS_Chapter1_allChrom_VQSROutput_G6_allSamples_noRR_MinDepth_biallelicOnly_plinked_geno_maf_LD0_2_Pruned --full --seed=100
#python /global/home/users/peter_stokes/software/fastStructure/structure.py -K 2 --input=${plinkOuts}/PS_Chapter1_allChrom_VQSROutput_G6_allSamples_noRR_MinDepth_biallelicOnly_plinked_geno_maf_LD0_2_Pruned --output=/global/scratch/users/peter_stokes/Chapter1/fastStructure/fastStructure_outs/PS_Chapter1_allChrom_VQSROutput_G6_allSamples_noRR_MinDepth_biallelicOnly_plinked_geno_maf_LD0_2_Pruned --full --seed=100
#python /global/home/users/peter_stokes/software/fastStructure/structure.py -K 3 --input=${plinkOuts}/PS_Chapter1_allChrom_VQSROutput_G6_allSamples_noRR_MinDepth_biallelicOnly_plinked_geno_maf_LD0_2_Pruned --output=/global/scratch/users/peter_stokes/Chapter1/fastStructure/fastStructure_outs/PS_Chapter1_allChrom_VQSROutput_G6_allSamples_noRR_MinDepth_biallelicOnly_plinked_geno_maf_LD0_2_Pruned --full --seed=100
#python /global/home/users/peter_stokes/software/fastStructure/structure.py -K 4 --input=${plinkOuts}/PS_Chapter1_allChrom_VQSROutput_G6_allSamples_noRR_MinDepth_biallelicOnly_plinked_geno_maf_LD0_2_Pruned --output=/global/scratch/users/peter_stokes/Chapter1/fastStructure/fastStructure_outs/PS_Chapter1_allChrom_VQSROutput_G6_allSamples_noRR_MinDepth_biallelicOnly_plinked_geno_maf_LD0_2_Pruned --full --seed=100
python /global/home/users/peter_stokes/software/fastStructure/structure.py -K 5 --input=${plinkOuts}/PS_Chapter1_allChrom_VQSROutput_G6_allSamples_noRR_MinDepth_biallelicOnly_plinked_geno_maf_LD0_2_Pruned --output=/global/scratch/users/peter_stokes/Chapter1/fastStructure/fastStructure_outs/PS_Chapter1_allChrom_VQSROutput_G6_allSamples_noRR_MinDepth_biallelicOnly_plinked_geno_maf_LD0_2_Pruned --full --seed=100
python /global/home/users/peter_stokes/software/fastStructure/structure.py -K 6 --input=${plinkOuts}/PS_Chapter1_allChrom_VQSROutput_G6_allSamples_noRR_MinDepth_biallelicOnly_plinked_geno_maf_LD0_2_Pruned --output=/global/scratch/users/peter_stokes/Chapter1/fastStructure/fastStructure_outs/PS_Chapter1_allChrom_VQSROutput_G6_allSamples_noRR_MinDepth_biallelicOnly_plinked_geno_maf_LD0_2_Pruned --full --seed=100
#python /global/home/users/peter_stokes/software/fastStructure/structure.py -K 7 --input=${plinkOuts}/PS_Chapter1_allChrom_VQSROutput_G6_allSamples_noRR_MinDepth_biallelicOnly_plinked_geno_maf_LD0_2_Pruned --output=/global/scratch/users/peter_stokes/Chapter1/fastStructure/fastStructure_outs/PS_Chapter1_allChrom_VQSROutput_G6_allSamples_noRR_MinDepth_biallelicOnly_plinked_geno_maf_LD0_2_Pruned --full --seed=100
#python /global/home/users/peter_stokes/software/fastStructure/structure.py -K 8 --input=${plinkOuts}/PS_Chapter1_allChrom_VQSROutput_G6_allSamples_noRR_MinDepth_biallelicOnly_plinked_geno_maf_LD0_2_Pruned --output=/global/scratch/users/peter_stokes/Chapter1/fastStructure/fastStructure_outs/PS_Chapter1_allChrom_VQSROutput_G6_allSamples_noRR_MinDepth_biallelicOnly_plinked_geno_maf_LD0_2_Pruned --full --seed=100


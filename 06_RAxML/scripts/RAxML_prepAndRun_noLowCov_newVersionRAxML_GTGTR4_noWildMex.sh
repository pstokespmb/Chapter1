#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/RAxML/VCFs
#SBATCH -J RAxML_prepAndRun_noLowCov_newVersionRAxML_GTGTR4_noWildMex
#SBATCH --account=co_rosalind
#SBATCH --partition=savio3_xlmem
#SBATCH --qos=rosalind_xlmem3_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=52
#SBATCH --time=400:00:00
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/RAxML_prepAndRun_noLowCov_newVersionRAxML_GTGTR4_noWildMex.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/RAxML_prepAndRun_noLowCov_newVersionRAxML_GTGTR4_noWildMex.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load htslib/1.6
module load bio/vcftools/0.1.15

RAxMLvcfs_path="/global/scratch/users/peter_stokes/Chapter1/RAxML/VCFs"
VCFInput_name="Chapter1_allChrom_noRR_NF_noED_noLowCov_noInterIntraAdmix_noBadMexCult_noMexWild_D4_Bi_plinked_G2_M5_LD_Pruned_forDStats_forPCA_forfastStructure"
VCFThinnedPrefix_name="Chapter1_allChrom_noRR_NF_noED_noLowCov_noInterIntraAdmix_noBadMexCult_noMexWild_D4_Bi_plinked_G2_M5_LD_Pruned_forDStats_forPCA_forfastStructure_Thinned"

RAxMLallignments_path="/global/scratch/users/peter_stokes/Chapter1/RAxML/alignments"
RAxMLInput_name="Chapter1_allChrom_noRR_NF_noED_noLowCov_noInterIntraAdmix_noBadMexCult_noMexWild_D4_Bi_plinked_G1_M5_LD_Pruned_forDStats_forPCA_forfastStructure"
RAxMLouts_path="/global/scratch/users/peter_stokes/Chapter1/RAxML/outs"

#vcftools --vcf /global/scratch/users/peter_stokes/Chapter1/vcfsToUse/${VCFInput_name}.vcf --recode --recode-INFO-all --thin 200 --out ${RAxMLvcfs_path}/${VCFThinnedPrefix_name}_200
#vcftools --vcf /global/scratch/users/peter_stokes/Chapter1/vcfsToUse/${VCFInput_name}.vcf --recode --recode-INFO-all --thin 500 --out ${RAxMLvcfs_path}/${VCFThinnedPrefix_name}_500
#vcftools --vcf /global/scratch/users/peter_stokes/Chapter1/vcfsToUse/${VCFInput_name}.vcf --recode --recode-INFO-all --thin 1000 --out ${RAxMLvcfs_path}/${VCFThinnedPrefix_name}_1k
#vcftools --vcf /global/scratch/users/peter_stokes/Chapter1/vcfsToUse/${VCFInput_name}.vcf --recode --recode-INFO-all --thin 2000 --out ${RAxMLvcfs_path}/${VCFThinnedPrefix_name}_2k
#vcftools --vcf /global/scratch/users/peter_stokes/Chapter1/vcfsToUse/${VCFInput_name}.vcf --recode --recode-INFO-all --thin 3000 --out ${RAxMLvcfs_path}/${VCFThinnedPrefix_name}_3k
#vcftools --vcf /global/scratch/users/peter_stokes/Chapter1/vcfsToUse/${VCFInput_name}.vcf --recode --recode-INFO-all --thin 4000 --out ${RAxMLvcfs_path}/${VCFThinnedPrefix_name}_4k
#vcftools --vcf /global/scratch/users/peter_stokes/Chapter1/vcfsToUse/${VCFInput_name}.vcf --recode --recode-INFO-all --thin 5000 --out ${RAxMLvcfs_path}/${VCFThinnedPrefix_name}_5k
#vcftools --vcf /global/scratch/users/peter_stokes/Chapter1/vcfsToUse/${VCFInput_name}.vcf --recode --recode-INFO-all --thin 10000 --out ${RAxMLvcfs_path}/${VCFThinnedPrefix_name}_10k
#vcftools --vcf /global/scratch/users/peter_stokes/Chapter1/vcfsToUse/${VCFInput_name}.vcf --recode --recode-INFO-all --thin 15000 --out ${RAxMLvcfs_path}/${VCFThinnedPrefix_name}_15k
#vcftools --vcf /global/scratch/users/peter_stokes/Chapter1/vcfsToUse/${VCFInput_name}.vcf --recode --recode-INFO-all --thin 20000 --out ${RAxMLvcfs_path}/${VCFThinnedPrefix_name}_20k

#mv ${RAxMLvcfs_path}/${VCFThinnedPrefix_name}_200.recode.vcf ${RAxMLvcfs_path}/${VCFThinnedPrefix_name}_200.vcf
#mv ${RAxMLvcfs_path}/${VCFThinnedPrefix_name}_500.recode.vcf ${RAxMLvcfs_path}/${VCFThinnedPrefix_name}_500.vcf
#mv ${RAxMLvcfs_path}/${VCFThinnedPrefix_name}_1k.recode.vcf ${RAxMLvcfs_path}/${VCFThinnedPrefix_name}_1k.vcf
#mv ${RAxMLvcfs_path}/${VCFThinnedPrefix_name}_2k.recode.vcf ${RAxMLvcfs_path}/${VCFThinnedPrefix_name}_2k.vcf
#mv ${RAxMLvcfs_path}/${VCFThinnedPrefix_name}_3k.recode.vcf ${RAxMLvcfs_path}/${VCFThinnedPrefix_name}_3k.vcf
#mv ${RAxMLvcfs_path}/${VCFThinnedPrefix_name}_4k.recode.vcf ${RAxMLvcfs_path}/${VCFThinnedPrefix_name}_4k.vcf
#mv ${RAxMLvcfs_path}/${VCFThinnedPrefix_name}_5k.recode.vcf ${RAxMLvcfs_path}/${VCFThinnedPrefix_name}_5k.vcf
#mv ${RAxMLvcfs_path}/${VCFThinnedPrefix_name}_10k.recode.vcf ${RAxMLvcfs_path}/${VCFThinnedPrefix_name}_10k.vcf
#mv ${RAxMLvcfs_path}/${VCFThinnedPrefix_name}_15k.recode.vcf ${RAxMLvcfs_path}/${VCFThinnedPrefix_name}_15k.vcf
#mv ${RAxMLvcfs_path}/${VCFThinnedPrefix_name}_20k.recode.vcf ${RAxMLvcfs_path}/${VCFThinnedPrefix_name}_20k.vcf

#Chapter1_allChrom_noRR_NF_noED_noLowCov_noInterIntraAdmix_noBadMexCult_noMexWild_D4_Bi_plinked_G2_M5_LD_Pruned_forDStats_forPCA_forfastStructure_Thinned_1k.vcf

#source /global/software/sl-7.x86_64/modules/langs/python/3.9/bin/activate ascCorrector

#python3 /global/scratch/users/peter_stokes/Chapter1/RAxML/scripts/vcf2phylip.py -i ${RAxMLvcfs_path}/${VCFThinnedPrefix_name}_1k.vcf --output-folder ${RAxMLallignments_path} --output-prefix ${VCFThinnedPrefix_name}_1k

#python /global/scratch/users/peter_stokes/Chapter1/RAxML/scripts/ascbias.py -p ${RAxMLallignments_path}/${VCFThinnedPrefix_name}_1k.min4.phy -o ${RAxMLallignments_path}/${VCFThinnedPrefix_name}_1k_RAxMLready.min4.phy

cd ${RAxMLouts_path}

export PATH=/global/scratch/users/peter_stokes/software/raxml_ngv2:$PATH

raxml-ng --all --msa ${RAxMLallignments_path}/Chapter1_allChrom_noRR_NF_noED_noLowCov_noInterIntraAdmix_noBadMexCult_noMexWild_D4_Bi_plinked_G2_M5_LD_Pruned_forDStats_forPCA_forfastStructure_Thinned_1k_RAxMLready.min4.phy --model GTR+G+ASC_LEWIS --tree pars{10} --bs-trees 100 --threads 52 --workers auto --seed 12345 --prefix Chapter1_allChrom_noRR_NF_noED_noLowCov_noInterIntraAdmix_noBadMexCult_noMexWild_D4_Bi_plinked_G2_M5_LD_Pruned_forDStats_forPCA_forfastStructure_Thinned_1k_RAxMLready_RAxMLout


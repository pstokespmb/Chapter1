#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/VariantCalling/VQSR/VQSR_outs
#SBATCH -J TreeMix_prepper_CAAZ
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=72:00:00
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/TreeMix_prepper_CAAZ.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/TreeMix_prepper_CAAZ.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load htslib/1.6

#Chapter1_allChrom_noRR_NF_noED_noLowCov_noInterIntraAdmix_noBadMexCult_wMexWild_wCAAZ_D4_Bi_plinked_G2_M5_LD_Pruned

plinkVCFbiallelic_name="Chapter1_allChrom_noRR_NF_noED_noLowCov_noInterIntraAdmix_noBadMexCult_wMexWild_wCAAZ_D4_Bi_plinked_G2_M5_LD_Pruned"
plinkOuts_path="/global/scratch/users/peter_stokes/Chapter1/plink_outs"
TreeMixInputPath="/global/scratch/users/peter_stokes/Chapter1/TreeMix/TreeMix_input"

source /global/software/sl-7.x86_64/modules/langs/python/3.9/bin/activate plink

plink --bfile ${plinkOuts_path}/${plinkVCFbiallelic_name} \
--freq --missing \
--within /global/scratch/users/peter_stokes/Chapter1/TreeMix/scripts/${plinkVCFbiallelic_name}.clust \
--out ${TreeMixInputPath}/${plinkVCFbiallelic_name}_plinkFreq \
--allow-no-sex --allow-extra-chr 0

gzip ${TreeMixInputPath}/${plinkVCFbiallelic_name}_plinkFreq.frq.strat

module load python/2.7

python2 /global/scratch/users/peter_stokes/Chapter1/TreeMix/scripts/plink2treemix_correct.py ${TreeMixInputPath}/${plinkVCFbiallelic_name}_plinkFreq.frq.strat.gz ${TreeMixInputPath}/${plinkVCFbiallelic_name}_TreeMixInput.frq.gz

#Chapter1_allChrom_noRR_NF_noED_noLowCov_noInterIntraAdmix_noBadMexCult_wMexWild_wCAAZ_D4_Bi_plinked_G2_M5_LD_Pruned_TreeMixInput.frq.gz
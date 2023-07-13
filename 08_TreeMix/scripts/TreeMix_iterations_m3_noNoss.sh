#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/VariantCalling/VQSR/VQSR_outs
#SBATCH -J TreeMix_GeoLoc_iterations_m3_noNoss
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=72:00:00
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/TreeMix_GeoLoc_iterations_m3_noNoss.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/TreeMix_GeoLoc_iterations_m3_noNoss.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load htslib/1.6
module load bcftools/1.6

TreeMixInputPath="/global/scratch/users/peter_stokes/Chapter1/TreeMix/TreeMix_input"
TreeMixOutputPath="/global/scratch/users/peter_stokes/Chapter1/TreeMix/TreeMix_output"
TreeMixInputName="Chapter1_allChrom_noRR_NF_noED_noLowCov_noInterIntraAdmix_noBadMexCult_wMexWild_wCAAZ_D4_Bi_plinked_G2_M5_LD_Pruned_TreeMixInput"

source activate TreeMix

for i in {1..10}; do
    s=$RANDOM
    treemix -i ${TreeMixInputPath}/${TreeMixInputName}.frq.gz -o ${TreeMixOutputPath}/${TreeMixInputName}_SampleSizeCorrection_m3_noNoss_iter_${i} -global -m 3 -root Outgroup -global -bootstrap -k 30 -seed ${s}
done

#s=$RANDOM
#treemix -i ${TreeMixInputPath}/${TreeMixInputName}.frq.gz -o ${TreeMixOutputPath}/${TreeMixInputName}_SampleSizeCorrection_m3_iter_1 -global -m 3 -root Outgroup -global -bootstrap -k 30 -seed ${s}
#
#s=$RANDOM
#treemix -i ${TreeMixInputPath}/${TreeMixInputName}.frq.gz -o ${TreeMixOutputPath}/${TreeMixInputName}_SampleSizeCorrection_m3_iter_2 -global -m 3 -root Outgroup -global -bootstrap -k 30 -seed ${s}
#
#s=$RANDOM
#treemix -i ${TreeMixInputPath}/${TreeMixInputName}.frq.gz -o ${TreeMixOutputPath}/${TreeMixInputName}_SampleSizeCorrection_m3_iter_3 -global -m 3 -root Outgroup -global -bootstrap -k 30 -seed ${s}
#
#s=$RANDOM
#treemix -i ${TreeMixInputPath}/${TreeMixInputName}.frq.gz -o ${TreeMixOutputPath}/${TreeMixInputName}_SampleSizeCorrection_m3_iter_4 -global -m 3 -root Outgroup -global -bootstrap -k 30 -seed ${s}
#
#s=$RANDOM
#treemix -i ${TreeMixInputPath}/${TreeMixInputName}.frq.gz -o ${TreeMixOutputPath}/${TreeMixInputName}_SampleSizeCorrection_m3_iter_5 -global -m 3 -root Outgroup -global -bootstrap -k 30 -seed ${s}
#
#s=$RANDOM
#treemix -i ${TreeMixInputPath}/${TreeMixInputName}.frq.gz -o ${TreeMixOutputPath}/${TreeMixInputName}_SampleSizeCorrection_m3_iter_6 -global -m 3 -root Outgroup -global -bootstrap -k 30 -seed ${s}
#
#s=$RANDOM
#treemix -i ${TreeMixInputPath}/${TreeMixInputName}.frq.gz -o ${TreeMixOutputPath}/${TreeMixInputName}_SampleSizeCorrection_m3_iter_7 -global -m 3 -root Outgroup -global -bootstrap -k 30 -seed ${s}
#
#s=$RANDOM
#treemix -i ${TreeMixInputPath}/${TreeMixInputName}.frq.gz -o ${TreeMixOutputPath}/${TreeMixInputName}_SampleSizeCorrection_m3_iter_8 -global -m 3 -root Outgroup -global -bootstrap -k 30 -seed ${s}
#
#s=$RANDOM
#treemix -i ${TreeMixInputPath}/${TreeMixInputName}.frq.gz -o ${TreeMixOutputPath}/${TreeMixInputName}_SampleSizeCorrection_m3_iter_9 -global -m 3 -root Outgroup -global -bootstrap -k 30 -seed ${s}
#
#s=$RANDOM
#treemix -i ${TreeMixInputPath}/${TreeMixInputName}.frq.gz -o ${TreeMixOutputPath}/${TreeMixInputName}_SampleSizeCorrection_m3_iter_10 -global -m 3 -root Outgroup -global -bootstrap -k 30 -seed ${s}

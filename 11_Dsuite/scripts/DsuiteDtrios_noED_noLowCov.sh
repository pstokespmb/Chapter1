#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/Dsuite/outs
#SBATCH -J DsuiteDtriosF_noED_noLowCov
#SBATCH --account=ac_acblackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=24
#SBATCH --time=72:00:00
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/DsuiteDtriosF_noED_noLowCov.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/DsuiteDtriosF_noED_noLowCov.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load htslib/1.6
module load gcc/7.4.0

VCF_name="Chapter1_allChrom_noRR_NF_noED_noLowCov_D4_Bi_plinked_G2_M5_LD_Pruned_forDStats_forPCA_forfastStructure"
startingVCF_path="/global/scratch/users/peter_stokes/Chapter1/vcfsToUse"

Dsuite_outs="/global/scratch/users/peter_stokes/Chapter1/Dsuite/outs"

PATH=/global/scratch/users/peter_stokes/software/Dsuite/Build:$PATH

module load python

cd ${Dsuite_outs}

python /global/scratch/users/peter_stokes/software/Dsuite/utils/DtriosParallel --cores 24 -n ${VCF_name}_DsuiteOut -t /global/scratch/users/peter_stokes/Chapter1/Dsuite/scripts/TreeMix_treeOut_expanded.nwk /global/scratch/users/peter_stokes/Chapter1/Dsuite/scripts/noED_noLowCov_reduced.txt ${startingVCF_path}/${VCF_name}.vcf

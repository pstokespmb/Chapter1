#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/smcpp/2023/vcf2smc_output
#SBATCH -J LRE_ENA_split_15k_wInvar_noMask_regMu
#SBATCH --account=co_rosalind
#SBATCH --partition=savio3_xlmem
#SBATCH --qos=rosalind_xlmem3_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=52
#SBATCH --time=400:00:00
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/LRE_ENA_split_15k_wInvar_noMask_regMu.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/LRE_ENA_split_15k_wInvar_noMask_regMu.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

SINGULARITY_CACHEDIR=/global/scratch/users/peter_stokes
export XDG_CACHE_HOME=/global/scratch/users/peter_stokes:$XDG_CACHE_HOME

singularity exec -B /global/scratch/users/peter_stokes /global/scratch/users/peter_stokes/smcpp_latest.sif \
smc++ split \
--cores 52 \
--base LRE_ENA_split_15k_wInvar_noMask_regMu \
--timepoints 20 15000 \
-v \
-o /global/scratch/users/peter_stokes/Chapter1/smcpp/2023/split_output \
/global/scratch/users/peter_stokes/Chapter1/smcpp/2023/estimate_output/LRE_estimate_15k_wInvar_noMask_regMu.final.json \
/global/scratch/users/peter_stokes/Chapter1/smcpp/2023/estimate_output/ENA_estimate_15k_wInvar_noMask_regMu.final.json \
LRE_ENA_Chr01_wInvar_noMask.smc.gz LRE_ENA_Chr02_wInvar_noMask.smc.gz LRE_ENA_Chr03_wInvar_noMask.smc.gz LRE_ENA_Chr04_wInvar_noMask.smc.gz LRE_ENA_Chr05_wInvar_noMask.smc.gz LRE_ENA_Chr06_wInvar_noMask.smc.gz LRE_ENA_Chr07_wInvar_noMask.smc.gz LRE_ENA_Chr08_wInvar_noMask.smc.gz LRE_ENA_Chr09_wInvar_noMask.smc.gz LRE_ENA_Chr10_wInvar_noMask.smc.gz LRE_ENA_Chr11_wInvar_noMask.smc.gz LRE_ENA_Chr12_wInvar_noMask.smc.gz LRE_ENA_Chr13_wInvar_noMask.smc.gz LRE_ENA_Chr14_wInvar_noMask.smc.gz LRE_ENA_Chr15_wInvar_noMask.smc.gz LRE_ENA_Chr16_wInvar_noMask.smc.gz LRE_ENA_Chr17_wInvar_noMask.smc.gz ENA_LRE_Chr01_wInvar_noMask.smc.gz ENA_LRE_Chr02_wInvar_noMask.smc.gz ENA_LRE_Chr03_wInvar_noMask.smc.gz ENA_LRE_Chr04_wInvar_noMask.smc.gz ENA_LRE_Chr05_wInvar_noMask.smc.gz ENA_LRE_Chr06_wInvar_noMask.smc.gz ENA_LRE_Chr07_wInvar_noMask.smc.gz ENA_LRE_Chr08_wInvar_noMask.smc.gz ENA_LRE_Chr09_wInvar_noMask.smc.gz ENA_LRE_Chr10_wInvar_noMask.smc.gz ENA_LRE_Chr11_wInvar_noMask.smc.gz ENA_LRE_Chr12_wInvar_noMask.smc.gz ENA_LRE_Chr13_wInvar_noMask.smc.gz ENA_LRE_Chr14_wInvar_noMask.smc.gz ENA_LRE_Chr15_wInvar_noMask.smc.gz ENA_LRE_Chr16_wInvar_noMask.smc.gz ENA_LRE_Chr17_wInvar_noMask.smc.gz
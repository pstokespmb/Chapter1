#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/smcpp/2023/vcf2smc_output
#SBATCH -J smcpp_split
#SBATCH --account=co_rosalind
#SBATCH --partition=savio3_xlmem
#SBATCH --qos=rosalind_xlmem3_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=52
#SBATCH --time=400:00:00
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/smcpp_split.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/smcpp_split.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

SINGULARITY_CACHEDIR=/global/scratch/users/peter_stokes
export XDG_CACHE_HOME=/global/scratch/users/peter_stokes:$XDG_CACHE_HOME

singularity exec -B /global/scratch/users/peter_stokes /global/scratch/users/peter_stokes/smcpp_latest.sif \
smc++ split \
--cores 52 \
--base test_split_15k \
-o /global/scratch/users/peter_stokes/Chapter1/smcpp/2023/split_output \
/global/scratch/users/peter_stokes/Chapter1/smcpp/2023/estimate_output/LRE_estimate_15k_oneBasedMask_updatedDI_D4.final.json \
/global/scratch/users/peter_stokes/Chapter1/smcpp/2023/estimate_output/ENA_estimate_15k_oneBasedMask_updatedDI_D4.final.json \
split_LRE_ENA_Chr01.smc.gz split_LRE_ENA_Chr02.smc.gz split_LRE_ENA_Chr03.smc.gz split_LRE_ENA_Chr04.smc.gz split_LRE_ENA_Chr05.smc.gz split_LRE_ENA_Chr06.smc.gz split_LRE_ENA_Chr07.smc.gz split_LRE_ENA_Chr08.smc.gz split_LRE_ENA_Chr09.smc.gz split_LRE_ENA_Chr10.smc.gz split_LRE_ENA_Chr11.smc.gz split_LRE_ENA_Chr12.smc.gz split_LRE_ENA_Chr13.smc.gz split_LRE_ENA_Chr14.smc.gz split_LRE_ENA_Chr15.smc.gz split_LRE_ENA_Chr16.smc.gz split_LRE_ENA_Chr17.smc.gz


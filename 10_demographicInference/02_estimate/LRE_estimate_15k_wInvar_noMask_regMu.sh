#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/smcpp/2023/vcf2smc_output
#SBATCH -J LRE_estimate_15k_wInvar_noMask_regMu
#SBATCH --account=fc_blackman
#SBATCH --partition=savio_bigmem
#SBATCH --qos=savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=24:00:00
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/LRE_estimate_15k_wInvar_noMask_regMu.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/LRE_estimate_15k_wInvar_noMask_regMu.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

SINGULARITY_CACHEDIR=/global/scratch/users/peter_stokes
export XDG_CACHE_HOME=/global/scratch/users/peter_stokes:$XDG_CACHE_HOME

singularity exec -B /global/scratch/users/peter_stokes /global/scratch/users/peter_stokes/smcpp_latest.sif smc++ estimate --base LRE_estimate_15k_wInvar_noMask_regMu --knots 20 --spline cubic 6.1e-9 --cores 20 --timepoints 20 15000 -o /global/scratch/users/peter_stokes/Chapter1/smcpp/2023/estimate_output LRE_Arikara_Chr01_wInvar_noMask.smc.gz LRE_Arikara_Chr02_wInvar_noMask.smc.gz LRE_Arikara_Chr03_wInvar_noMask.smc.gz LRE_Arikara_Chr04_wInvar_noMask.smc.gz LRE_Arikara_Chr05_wInvar_noMask.smc.gz LRE_Arikara_Chr06_wInvar_noMask.smc.gz LRE_Arikara_Chr07_wInvar_noMask.smc.gz LRE_Arikara_Chr08_wInvar_noMask.smc.gz LRE_Arikara_Chr09_wInvar_noMask.smc.gz LRE_Arikara_Chr10_wInvar_noMask.smc.gz LRE_Arikara_Chr11_wInvar_noMask.smc.gz LRE_Arikara_Chr12_wInvar_noMask.smc.gz LRE_Arikara_Chr13_wInvar_noMask.smc.gz LRE_Arikara_Chr14_wInvar_noMask.smc.gz LRE_Arikara_Chr15_wInvar_noMask.smc.gz LRE_Arikara_Chr16_wInvar_noMask.smc.gz LRE_Arikara_Chr17_wInvar_noMask.smc.gz LRE_Hopi_mapping_NEW_Chr01_wInvar_noMask.smc.gz LRE_Hopi_mapping_NEW_Chr02_wInvar_noMask.smc.gz LRE_Hopi_mapping_NEW_Chr03_wInvar_noMask.smc.gz LRE_Hopi_mapping_NEW_Chr04_wInvar_noMask.smc.gz LRE_Hopi_mapping_NEW_Chr05_wInvar_noMask.smc.gz LRE_Hopi_mapping_NEW_Chr06_wInvar_noMask.smc.gz LRE_Hopi_mapping_NEW_Chr07_wInvar_noMask.smc.gz LRE_Hopi_mapping_NEW_Chr08_wInvar_noMask.smc.gz LRE_Hopi_mapping_NEW_Chr09_wInvar_noMask.smc.gz LRE_Hopi_mapping_NEW_Chr10_wInvar_noMask.smc.gz LRE_Hopi_mapping_NEW_Chr11_wInvar_noMask.smc.gz LRE_Hopi_mapping_NEW_Chr12_wInvar_noMask.smc.gz LRE_Hopi_mapping_NEW_Chr13_wInvar_noMask.smc.gz LRE_Hopi_mapping_NEW_Chr14_wInvar_noMask.smc.gz LRE_Hopi_mapping_NEW_Chr15_wInvar_noMask.smc.gz LRE_Hopi_mapping_NEW_Chr16_wInvar_noMask.smc.gz LRE_Hopi_mapping_NEW_Chr17_wInvar_noMask.smc.gz LRE_Hopi_real_NEW_Chr01_wInvar_noMask.smc.gz LRE_Hopi_real_NEW_Chr02_wInvar_noMask.smc.gz LRE_Hopi_real_NEW_Chr03_wInvar_noMask.smc.gz LRE_Hopi_real_NEW_Chr04_wInvar_noMask.smc.gz LRE_Hopi_real_NEW_Chr05_wInvar_noMask.smc.gz LRE_Hopi_real_NEW_Chr06_wInvar_noMask.smc.gz LRE_Hopi_real_NEW_Chr07_wInvar_noMask.smc.gz LRE_Hopi_real_NEW_Chr08_wInvar_noMask.smc.gz LRE_Hopi_real_NEW_Chr09_wInvar_noMask.smc.gz LRE_Hopi_real_NEW_Chr10_wInvar_noMask.smc.gz LRE_Hopi_real_NEW_Chr11_wInvar_noMask.smc.gz LRE_Hopi_real_NEW_Chr12_wInvar_noMask.smc.gz LRE_Hopi_real_NEW_Chr13_wInvar_noMask.smc.gz LRE_Hopi_real_NEW_Chr14_wInvar_noMask.smc.gz LRE_Hopi_real_NEW_Chr15_wInvar_noMask.smc.gz LRE_Hopi_real_NEW_Chr16_wInvar_noMask.smc.gz LRE_Hopi_real_NEW_Chr17_wInvar_noMask.smc.gz LRE_Laguna_Pueblo_Chr01_wInvar_noMask.smc.gz LRE_Laguna_Pueblo_Chr02_wInvar_noMask.smc.gz LRE_Laguna_Pueblo_Chr03_wInvar_noMask.smc.gz LRE_Laguna_Pueblo_Chr04_wInvar_noMask.smc.gz LRE_Laguna_Pueblo_Chr05_wInvar_noMask.smc.gz LRE_Laguna_Pueblo_Chr06_wInvar_noMask.smc.gz LRE_Laguna_Pueblo_Chr07_wInvar_noMask.smc.gz LRE_Laguna_Pueblo_Chr08_wInvar_noMask.smc.gz LRE_Laguna_Pueblo_Chr09_wInvar_noMask.smc.gz LRE_Laguna_Pueblo_Chr10_wInvar_noMask.smc.gz LRE_Laguna_Pueblo_Chr11_wInvar_noMask.smc.gz LRE_Laguna_Pueblo_Chr12_wInvar_noMask.smc.gz LRE_Laguna_Pueblo_Chr13_wInvar_noMask.smc.gz LRE_Laguna_Pueblo_Chr14_wInvar_noMask.smc.gz LRE_Laguna_Pueblo_Chr15_wInvar_noMask.smc.gz LRE_Laguna_Pueblo_Chr16_wInvar_noMask.smc.gz LRE_Laguna_Pueblo_Chr17_wInvar_noMask.smc.gz LRE_Mandan1_PPN046_Chr01_wInvar_noMask.smc.gz LRE_Mandan1_PPN046_Chr02_wInvar_noMask.smc.gz LRE_Mandan1_PPN046_Chr03_wInvar_noMask.smc.gz LRE_Mandan1_PPN046_Chr04_wInvar_noMask.smc.gz LRE_Mandan1_PPN046_Chr05_wInvar_noMask.smc.gz LRE_Mandan1_PPN046_Chr06_wInvar_noMask.smc.gz LRE_Mandan1_PPN046_Chr07_wInvar_noMask.smc.gz LRE_Mandan1_PPN046_Chr08_wInvar_noMask.smc.gz LRE_Mandan1_PPN046_Chr09_wInvar_noMask.smc.gz LRE_Mandan1_PPN046_Chr10_wInvar_noMask.smc.gz LRE_Mandan1_PPN046_Chr11_wInvar_noMask.smc.gz LRE_Mandan1_PPN046_Chr12_wInvar_noMask.smc.gz LRE_Mandan1_PPN046_Chr13_wInvar_noMask.smc.gz LRE_Mandan1_PPN046_Chr14_wInvar_noMask.smc.gz LRE_Mandan1_PPN046_Chr15_wInvar_noMask.smc.gz LRE_Mandan1_PPN046_Chr16_wInvar_noMask.smc.gz LRE_Mandan1_PPN046_Chr17_wInvar_noMask.smc.gz LRE_Mandan2_Chr01_wInvar_noMask.smc.gz LRE_Mandan2_Chr02_wInvar_noMask.smc.gz LRE_Mandan2_Chr03_wInvar_noMask.smc.gz LRE_Mandan2_Chr04_wInvar_noMask.smc.gz LRE_Mandan2_Chr05_wInvar_noMask.smc.gz LRE_Mandan2_Chr06_wInvar_noMask.smc.gz LRE_Mandan2_Chr07_wInvar_noMask.smc.gz LRE_Mandan2_Chr08_wInvar_noMask.smc.gz LRE_Mandan2_Chr09_wInvar_noMask.smc.gz LRE_Mandan2_Chr10_wInvar_noMask.smc.gz LRE_Mandan2_Chr11_wInvar_noMask.smc.gz LRE_Mandan2_Chr12_wInvar_noMask.smc.gz LRE_Mandan2_Chr13_wInvar_noMask.smc.gz LRE_Mandan2_Chr14_wInvar_noMask.smc.gz LRE_Mandan2_Chr15_wInvar_noMask.smc.gz LRE_Mandan2_Chr16_wInvar_noMask.smc.gz LRE_Mandan2_Chr17_wInvar_noMask.smc.gz LRE_Pueblo_Chr01_wInvar_noMask.smc.gz LRE_Pueblo_Chr02_wInvar_noMask.smc.gz LRE_Pueblo_Chr03_wInvar_noMask.smc.gz LRE_Pueblo_Chr04_wInvar_noMask.smc.gz LRE_Pueblo_Chr05_wInvar_noMask.smc.gz LRE_Pueblo_Chr06_wInvar_noMask.smc.gz LRE_Pueblo_Chr07_wInvar_noMask.smc.gz LRE_Pueblo_Chr08_wInvar_noMask.smc.gz LRE_Pueblo_Chr09_wInvar_noMask.smc.gz LRE_Pueblo_Chr10_wInvar_noMask.smc.gz LRE_Pueblo_Chr11_wInvar_noMask.smc.gz LRE_Pueblo_Chr12_wInvar_noMask.smc.gz LRE_Pueblo_Chr13_wInvar_noMask.smc.gz LRE_Pueblo_Chr14_wInvar_noMask.smc.gz LRE_Pueblo_Chr15_wInvar_noMask.smc.gz LRE_Pueblo_Chr16_wInvar_noMask.smc.gz LRE_Pueblo_Chr17_wInvar_noMask.smc.gz LRE_Zuni_Chr01_wInvar_noMask.smc.gz LRE_Zuni_Chr02_wInvar_noMask.smc.gz LRE_Zuni_Chr03_wInvar_noMask.smc.gz LRE_Zuni_Chr04_wInvar_noMask.smc.gz LRE_Zuni_Chr05_wInvar_noMask.smc.gz LRE_Zuni_Chr06_wInvar_noMask.smc.gz LRE_Zuni_Chr07_wInvar_noMask.smc.gz LRE_Zuni_Chr08_wInvar_noMask.smc.gz LRE_Zuni_Chr09_wInvar_noMask.smc.gz LRE_Zuni_Chr10_wInvar_noMask.smc.gz LRE_Zuni_Chr11_wInvar_noMask.smc.gz LRE_Zuni_Chr12_wInvar_noMask.smc.gz LRE_Zuni_Chr13_wInvar_noMask.smc.gz LRE_Zuni_Chr14_wInvar_noMask.smc.gz LRE_Zuni_Chr15_wInvar_noMask.smc.gz LRE_Zuni_Chr16_wInvar_noMask.smc.gz LRE_Zuni_Chr17_wInvar_noMask.smc.gz

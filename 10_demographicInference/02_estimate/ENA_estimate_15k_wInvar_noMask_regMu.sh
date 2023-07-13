#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/smcpp/2023/vcf2smc_output
#SBATCH -J ENA_estimate_15k_wInvar_noMask_regMu
#SBATCH --account=co_rosalind
#SBATCH --partition=savio3_xlmem
#SBATCH --qos=rosalind_xlmem3_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=52
#SBATCH --time=72:00:00
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/ENA_estimate_15k_wInvar_noMask_regMu.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/ENA_estimate_15k_wInvar_noMask_regMu.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

SINGULARITY_CACHEDIR=/global/scratch/users/peter_stokes
export XDG_CACHE_HOME=/global/scratch/users/peter_stokes:$XDG_CACHE_HOME

singularity exec -B /global/scratch/users/peter_stokes /global/scratch/users/peter_stokes/smcpp_latest.sif smc++ estimate --base ENA_estimate_15k_wInvar_noMask_regMu --knots 20 --spline cubic 6.1e-9 --cores 52 --timepoints 20 15000 --em-iterations 30 -o /global/scratch/users/peter_stokes/Chapter1/smcpp/2023/estimate_output ENA_ANN1154_Chr01_wInvar_noMask.smc.gz ENA_ANN1154_Chr02_wInvar_noMask.smc.gz ENA_ANN1154_Chr03_wInvar_noMask.smc.gz ENA_ANN1154_Chr04_wInvar_noMask.smc.gz ENA_ANN1154_Chr05_wInvar_noMask.smc.gz ENA_ANN1154_Chr06_wInvar_noMask.smc.gz ENA_ANN1154_Chr07_wInvar_noMask.smc.gz ENA_ANN1154_Chr08_wInvar_noMask.smc.gz ENA_ANN1154_Chr09_wInvar_noMask.smc.gz ENA_ANN1154_Chr10_wInvar_noMask.smc.gz ENA_ANN1154_Chr11_wInvar_noMask.smc.gz ENA_ANN1154_Chr12_wInvar_noMask.smc.gz ENA_ANN1154_Chr13_wInvar_noMask.smc.gz ENA_ANN1154_Chr14_wInvar_noMask.smc.gz ENA_ANN1154_Chr15_wInvar_noMask.smc.gz ENA_ANN1154_Chr16_wInvar_noMask.smc.gz ENA_ANN1154_Chr17_wInvar_noMask.smc.gz ENA_ANN1203_Chr01_wInvar_noMask.smc.gz ENA_ANN1203_Chr02_wInvar_noMask.smc.gz ENA_ANN1203_Chr03_wInvar_noMask.smc.gz ENA_ANN1203_Chr04_wInvar_noMask.smc.gz ENA_ANN1203_Chr05_wInvar_noMask.smc.gz ENA_ANN1203_Chr06_wInvar_noMask.smc.gz ENA_ANN1203_Chr07_wInvar_noMask.smc.gz ENA_ANN1203_Chr08_wInvar_noMask.smc.gz ENA_ANN1203_Chr09_wInvar_noMask.smc.gz ENA_ANN1203_Chr10_wInvar_noMask.smc.gz ENA_ANN1203_Chr11_wInvar_noMask.smc.gz ENA_ANN1203_Chr12_wInvar_noMask.smc.gz ENA_ANN1203_Chr13_wInvar_noMask.smc.gz ENA_ANN1203_Chr14_wInvar_noMask.smc.gz ENA_ANN1203_Chr15_wInvar_noMask.smc.gz ENA_ANN1203_Chr16_wInvar_noMask.smc.gz ENA_ANN1203_Chr17_wInvar_noMask.smc.gz ENA_ANN1204_Chr01_wInvar_noMask.smc.gz ENA_ANN1204_Chr02_wInvar_noMask.smc.gz ENA_ANN1204_Chr03_wInvar_noMask.smc.gz ENA_ANN1204_Chr04_wInvar_noMask.smc.gz ENA_ANN1204_Chr05_wInvar_noMask.smc.gz ENA_ANN1204_Chr06_wInvar_noMask.smc.gz ENA_ANN1204_Chr07_wInvar_noMask.smc.gz ENA_ANN1204_Chr08_wInvar_noMask.smc.gz ENA_ANN1204_Chr09_wInvar_noMask.smc.gz ENA_ANN1204_Chr10_wInvar_noMask.smc.gz ENA_ANN1204_Chr11_wInvar_noMask.smc.gz ENA_ANN1204_Chr12_wInvar_noMask.smc.gz ENA_ANN1204_Chr13_wInvar_noMask.smc.gz ENA_ANN1204_Chr14_wInvar_noMask.smc.gz ENA_ANN1204_Chr15_wInvar_noMask.smc.gz ENA_ANN1204_Chr16_wInvar_noMask.smc.gz ENA_ANN1204_Chr17_wInvar_noMask.smc.gz ENA_IA1W_11R_Chr01_wInvar_noMask.smc.gz ENA_IA1W_11R_Chr02_wInvar_noMask.smc.gz ENA_IA1W_11R_Chr03_wInvar_noMask.smc.gz ENA_IA1W_11R_Chr04_wInvar_noMask.smc.gz ENA_IA1W_11R_Chr05_wInvar_noMask.smc.gz ENA_IA1W_11R_Chr06_wInvar_noMask.smc.gz ENA_IA1W_11R_Chr07_wInvar_noMask.smc.gz ENA_IA1W_11R_Chr08_wInvar_noMask.smc.gz ENA_IA1W_11R_Chr09_wInvar_noMask.smc.gz ENA_IA1W_11R_Chr10_wInvar_noMask.smc.gz ENA_IA1W_11R_Chr11_wInvar_noMask.smc.gz ENA_IA1W_11R_Chr12_wInvar_noMask.smc.gz ENA_IA1W_11R_Chr13_wInvar_noMask.smc.gz ENA_IA1W_11R_Chr14_wInvar_noMask.smc.gz ENA_IA1W_11R_Chr15_wInvar_noMask.smc.gz ENA_IA1W_11R_Chr16_wInvar_noMask.smc.gz ENA_IA1W_11R_Chr17_wInvar_noMask.smc.gz ENA_IA1W_5_Chr01_wInvar_noMask.smc.gz ENA_IA1W_5_Chr02_wInvar_noMask.smc.gz ENA_IA1W_5_Chr03_wInvar_noMask.smc.gz ENA_IA1W_5_Chr04_wInvar_noMask.smc.gz ENA_IA1W_5_Chr05_wInvar_noMask.smc.gz ENA_IA1W_5_Chr06_wInvar_noMask.smc.gz ENA_IA1W_5_Chr07_wInvar_noMask.smc.gz ENA_IA1W_5_Chr08_wInvar_noMask.smc.gz ENA_IA1W_5_Chr09_wInvar_noMask.smc.gz ENA_IA1W_5_Chr10_wInvar_noMask.smc.gz ENA_IA1W_5_Chr11_wInvar_noMask.smc.gz ENA_IA1W_5_Chr12_wInvar_noMask.smc.gz ENA_IA1W_5_Chr13_wInvar_noMask.smc.gz ENA_IA1W_5_Chr14_wInvar_noMask.smc.gz ENA_IA1W_5_Chr15_wInvar_noMask.smc.gz ENA_IA1W_5_Chr16_wInvar_noMask.smc.gz ENA_IA1W_5_Chr17_wInvar_noMask.smc.gz ENA_KS1W_2_Chr01_wInvar_noMask.smc.gz ENA_KS1W_2_Chr02_wInvar_noMask.smc.gz ENA_KS1W_2_Chr03_wInvar_noMask.smc.gz ENA_KS1W_2_Chr04_wInvar_noMask.smc.gz ENA_KS1W_2_Chr05_wInvar_noMask.smc.gz ENA_KS1W_2_Chr06_wInvar_noMask.smc.gz ENA_KS1W_2_Chr07_wInvar_noMask.smc.gz ENA_KS1W_2_Chr08_wInvar_noMask.smc.gz ENA_KS1W_2_Chr09_wInvar_noMask.smc.gz ENA_KS1W_2_Chr10_wInvar_noMask.smc.gz ENA_KS1W_2_Chr11_wInvar_noMask.smc.gz ENA_KS1W_2_Chr12_wInvar_noMask.smc.gz ENA_KS1W_2_Chr13_wInvar_noMask.smc.gz ENA_KS1W_2_Chr14_wInvar_noMask.smc.gz ENA_KS1W_2_Chr15_wInvar_noMask.smc.gz ENA_KS1W_2_Chr16_wInvar_noMask.smc.gz ENA_KS1W_2_Chr17_wInvar_noMask.smc.gz ENA_KS2W_32_Chr01_wInvar_noMask.smc.gz ENA_KS2W_32_Chr02_wInvar_noMask.smc.gz ENA_KS2W_32_Chr03_wInvar_noMask.smc.gz ENA_KS2W_32_Chr04_wInvar_noMask.smc.gz ENA_KS2W_32_Chr05_wInvar_noMask.smc.gz ENA_KS2W_32_Chr06_wInvar_noMask.smc.gz ENA_KS2W_32_Chr07_wInvar_noMask.smc.gz ENA_KS2W_32_Chr08_wInvar_noMask.smc.gz ENA_KS2W_32_Chr09_wInvar_noMask.smc.gz ENA_KS2W_32_Chr10_wInvar_noMask.smc.gz ENA_KS2W_32_Chr11_wInvar_noMask.smc.gz ENA_KS2W_32_Chr12_wInvar_noMask.smc.gz ENA_KS2W_32_Chr13_wInvar_noMask.smc.gz ENA_KS2W_32_Chr14_wInvar_noMask.smc.gz ENA_KS2W_32_Chr15_wInvar_noMask.smc.gz ENA_KS2W_32_Chr16_wInvar_noMask.smc.gz ENA_KS2W_32_Chr17_wInvar_noMask.smc.gz ENA_KS2W_6_Chr01_wInvar_noMask.smc.gz ENA_KS2W_6_Chr02_wInvar_noMask.smc.gz ENA_KS2W_6_Chr03_wInvar_noMask.smc.gz ENA_KS2W_6_Chr04_wInvar_noMask.smc.gz ENA_KS2W_6_Chr05_wInvar_noMask.smc.gz ENA_KS2W_6_Chr06_wInvar_noMask.smc.gz ENA_KS2W_6_Chr07_wInvar_noMask.smc.gz ENA_KS2W_6_Chr08_wInvar_noMask.smc.gz ENA_KS2W_6_Chr09_wInvar_noMask.smc.gz ENA_KS2W_6_Chr10_wInvar_noMask.smc.gz ENA_KS2W_6_Chr11_wInvar_noMask.smc.gz ENA_KS2W_6_Chr12_wInvar_noMask.smc.gz ENA_KS2W_6_Chr13_wInvar_noMask.smc.gz ENA_KS2W_6_Chr14_wInvar_noMask.smc.gz ENA_KS2W_6_Chr15_wInvar_noMask.smc.gz ENA_KS2W_6_Chr16_wInvar_noMask.smc.gz ENA_KS2W_6_Chr17_wInvar_noMask.smc.gz ENA_MO1W_38_Chr01_wInvar_noMask.smc.gz ENA_MO1W_38_Chr02_wInvar_noMask.smc.gz ENA_MO1W_38_Chr03_wInvar_noMask.smc.gz ENA_MO1W_38_Chr04_wInvar_noMask.smc.gz ENA_MO1W_38_Chr05_wInvar_noMask.smc.gz ENA_MO1W_38_Chr06_wInvar_noMask.smc.gz ENA_MO1W_38_Chr07_wInvar_noMask.smc.gz ENA_MO1W_38_Chr08_wInvar_noMask.smc.gz ENA_MO1W_38_Chr09_wInvar_noMask.smc.gz ENA_MO1W_38_Chr10_wInvar_noMask.smc.gz ENA_MO1W_38_Chr11_wInvar_noMask.smc.gz ENA_MO1W_38_Chr12_wInvar_noMask.smc.gz ENA_MO1W_38_Chr13_wInvar_noMask.smc.gz ENA_MO1W_38_Chr14_wInvar_noMask.smc.gz ENA_MO1W_38_Chr15_wInvar_noMask.smc.gz ENA_MO1W_38_Chr16_wInvar_noMask.smc.gz ENA_MO1W_38_Chr17_wInvar_noMask.smc.gz ENA_SD1W_13_Chr01_wInvar_noMask.smc.gz ENA_SD1W_13_Chr02_wInvar_noMask.smc.gz ENA_SD1W_13_Chr03_wInvar_noMask.smc.gz ENA_SD1W_13_Chr04_wInvar_noMask.smc.gz ENA_SD1W_13_Chr05_wInvar_noMask.smc.gz ENA_SD1W_13_Chr06_wInvar_noMask.smc.gz ENA_SD1W_13_Chr07_wInvar_noMask.smc.gz ENA_SD1W_13_Chr08_wInvar_noMask.smc.gz ENA_SD1W_13_Chr09_wInvar_noMask.smc.gz ENA_SD1W_13_Chr10_wInvar_noMask.smc.gz ENA_SD1W_13_Chr11_wInvar_noMask.smc.gz ENA_SD1W_13_Chr12_wInvar_noMask.smc.gz ENA_SD1W_13_Chr13_wInvar_noMask.smc.gz ENA_SD1W_13_Chr14_wInvar_noMask.smc.gz ENA_SD1W_13_Chr15_wInvar_noMask.smc.gz ENA_SD1W_13_Chr16_wInvar_noMask.smc.gz ENA_SD1W_13_Chr17_wInvar_noMask.smc.gz ENA_SD2W_27_Chr01_wInvar_noMask.smc.gz ENA_SD2W_27_Chr02_wInvar_noMask.smc.gz ENA_SD2W_27_Chr03_wInvar_noMask.smc.gz ENA_SD2W_27_Chr04_wInvar_noMask.smc.gz ENA_SD2W_27_Chr05_wInvar_noMask.smc.gz ENA_SD2W_27_Chr06_wInvar_noMask.smc.gz ENA_SD2W_27_Chr07_wInvar_noMask.smc.gz ENA_SD2W_27_Chr08_wInvar_noMask.smc.gz ENA_SD2W_27_Chr09_wInvar_noMask.smc.gz ENA_SD2W_27_Chr10_wInvar_noMask.smc.gz ENA_SD2W_27_Chr11_wInvar_noMask.smc.gz ENA_SD2W_27_Chr12_wInvar_noMask.smc.gz ENA_SD2W_27_Chr13_wInvar_noMask.smc.gz ENA_SD2W_27_Chr14_wInvar_noMask.smc.gz ENA_SD2W_27_Chr15_wInvar_noMask.smc.gz ENA_SD2W_27_Chr16_wInvar_noMask.smc.gz ENA_SD2W_27_Chr17_wInvar_noMask.smc.gz ENA_SK1W_29R_Chr01_wInvar_noMask.smc.gz ENA_SK1W_29R_Chr02_wInvar_noMask.smc.gz ENA_SK1W_29R_Chr03_wInvar_noMask.smc.gz ENA_SK1W_29R_Chr04_wInvar_noMask.smc.gz ENA_SK1W_29R_Chr05_wInvar_noMask.smc.gz ENA_SK1W_29R_Chr06_wInvar_noMask.smc.gz ENA_SK1W_29R_Chr07_wInvar_noMask.smc.gz ENA_SK1W_29R_Chr08_wInvar_noMask.smc.gz ENA_SK1W_29R_Chr09_wInvar_noMask.smc.gz ENA_SK1W_29R_Chr10_wInvar_noMask.smc.gz ENA_SK1W_29R_Chr11_wInvar_noMask.smc.gz ENA_SK1W_29R_Chr12_wInvar_noMask.smc.gz ENA_SK1W_29R_Chr13_wInvar_noMask.smc.gz ENA_SK1W_29R_Chr14_wInvar_noMask.smc.gz ENA_SK1W_29R_Chr15_wInvar_noMask.smc.gz ENA_SK1W_29R_Chr16_wInvar_noMask.smc.gz ENA_SK1W_29R_Chr17_wInvar_noMask.smc.gz

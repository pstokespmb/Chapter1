#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/smcpp/vcf2smc_output
#SBATCH -J split_test2
#SBATCH --account=co_rosalind
#SBATCH --partition=savio3_xlmem
#SBATCH --qos=rosalind_xlmem3_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --time=400:00:00
#SBATCH --mem=1500000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/split_test2.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/split_test2.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

SINGULARITY_CACHEDIR=/global/scratch/users/peter_stokes

singularity exec -B /global/scratch/users/peter_stokes /global/scratch/users/peter_stokes/smcpp_latest.sif \
smc++ split \
--cores 32 \
--timepoints 1 20000 \
--base test_split2 \
-o /global/scratch/users/peter_stokes/Chapter1/smcpp/split_output \
/global/scratch/users/peter_stokes/Chapter1/smcpp/estimate_output/ENA_estimate_20k.final.json \
/global/scratch/users/peter_stokes/Chapter1/smcpp/estimate_output/LRE_estimate_20k.final.json \
LRE_ENA_Arikara_Chr01_test.smc.gz LRE_ENA_Arikara_Chr02_test.smc.gz LRE_ENA_Arikara_Chr03_test.smc.gz LRE_ENA_Arikara_Chr04_test.smc.gz LRE_ENA_Arikara_Chr05_test.smc.gz LRE_ENA_Arikara_Chr06_test.smc.gz LRE_ENA_Arikara_Chr07_test.smc.gz LRE_ENA_Arikara_Chr08_test.smc.gz LRE_ENA_Arikara_Chr09_test.smc.gz LRE_ENA_Arikara_Chr10_test.smc.gz LRE_ENA_Arikara_Chr11_test.smc.gz LRE_ENA_Arikara_Chr12_test.smc.gz LRE_ENA_Arikara_Chr13_test.smc.gz LRE_ENA_Arikara_Chr14_test.smc.gz LRE_ENA_Arikara_Chr15_test.smc.gz LRE_ENA_Arikara_Chr16_test.smc.gz LRE_ENA_Arikara_Chr17_test.smc.gz LRE_ENA_Havasupai_Chr01_test.smc.gz LRE_ENA_Havasupai_Chr02_test.smc.gz LRE_ENA_Havasupai_Chr03_test.smc.gz LRE_ENA_Havasupai_Chr04_test.smc.gz LRE_ENA_Havasupai_Chr05_test.smc.gz LRE_ENA_Havasupai_Chr06_test.smc.gz LRE_ENA_Havasupai_Chr07_test.smc.gz LRE_ENA_Havasupai_Chr08_test.smc.gz LRE_ENA_Havasupai_Chr09_test.smc.gz LRE_ENA_Havasupai_Chr10_test.smc.gz LRE_ENA_Havasupai_Chr11_test.smc.gz LRE_ENA_Havasupai_Chr12_test.smc.gz LRE_ENA_Havasupai_Chr13_test.smc.gz LRE_ENA_Havasupai_Chr14_test.smc.gz LRE_ENA_Havasupai_Chr15_test.smc.gz LRE_ENA_Havasupai_Chr16_test.smc.gz LRE_ENA_Havasupai_Chr17_test.smc.gz LRE_ENA_Hidatsa_Chr01_test.smc.gz LRE_ENA_Hidatsa_Chr02_test.smc.gz LRE_ENA_Hidatsa_Chr03_test.smc.gz LRE_ENA_Hidatsa_Chr04_test.smc.gz LRE_ENA_Hidatsa_Chr05_test.smc.gz LRE_ENA_Hidatsa_Chr06_test.smc.gz LRE_ENA_Hidatsa_Chr07_test.smc.gz LRE_ENA_Hidatsa_Chr08_test.smc.gz LRE_ENA_Hidatsa_Chr09_test.smc.gz LRE_ENA_Hidatsa_Chr10_test.smc.gz LRE_ENA_Hidatsa_Chr11_test.smc.gz LRE_ENA_Hidatsa_Chr12_test.smc.gz LRE_ENA_Hidatsa_Chr13_test.smc.gz LRE_ENA_Hidatsa_Chr14_test.smc.gz LRE_ENA_Hidatsa_Chr15_test.smc.gz LRE_ENA_Hidatsa_Chr16_test.smc.gz LRE_ENA_Hidatsa_Chr17_test.smc.gz LRE_ENA_Hopi_real_NEW_Chr01_test.smc.gz LRE_ENA_Hopi_real_NEW_Chr02_test.smc.gz LRE_ENA_Hopi_real_NEW_Chr03_test.smc.gz LRE_ENA_Hopi_real_NEW_Chr04_test.smc.gz LRE_ENA_Hopi_real_NEW_Chr05_test.smc.gz LRE_ENA_Hopi_real_NEW_Chr06_test.smc.gz LRE_ENA_Hopi_real_NEW_Chr07_test.smc.gz LRE_ENA_Hopi_real_NEW_Chr08_test.smc.gz LRE_ENA_Hopi_real_NEW_Chr09_test.smc.gz LRE_ENA_Hopi_real_NEW_Chr10_test.smc.gz LRE_ENA_Hopi_real_NEW_Chr11_test.smc.gz LRE_ENA_Hopi_real_NEW_Chr12_test.smc.gz LRE_ENA_Hopi_real_NEW_Chr13_test.smc.gz LRE_ENA_Hopi_real_NEW_Chr14_test.smc.gz LRE_ENA_Hopi_real_NEW_Chr15_test.smc.gz LRE_ENA_Hopi_real_NEW_Chr16_test.smc.gz LRE_ENA_Hopi_real_NEW_Chr17_test.smc.gz LRE_ENA_Laguna_Pueblo_Chr01_test.smc.gz LRE_ENA_Laguna_Pueblo_Chr02_test.smc.gz LRE_ENA_Laguna_Pueblo_Chr03_test.smc.gz LRE_ENA_Laguna_Pueblo_Chr04_test.smc.gz LRE_ENA_Laguna_Pueblo_Chr05_test.smc.gz LRE_ENA_Laguna_Pueblo_Chr06_test.smc.gz LRE_ENA_Laguna_Pueblo_Chr07_test.smc.gz LRE_ENA_Laguna_Pueblo_Chr08_test.smc.gz LRE_ENA_Laguna_Pueblo_Chr09_test.smc.gz LRE_ENA_Laguna_Pueblo_Chr10_test.smc.gz LRE_ENA_Laguna_Pueblo_Chr11_test.smc.gz LRE_ENA_Laguna_Pueblo_Chr12_test.smc.gz LRE_ENA_Laguna_Pueblo_Chr13_test.smc.gz LRE_ENA_Laguna_Pueblo_Chr14_test.smc.gz LRE_ENA_Laguna_Pueblo_Chr15_test.smc.gz LRE_ENA_Laguna_Pueblo_Chr16_test.smc.gz LRE_ENA_Laguna_Pueblo_Chr17_test.smc.gz LRE_ENA_Mandan1_PPN046_Chr01_test.smc.gz LRE_ENA_Mandan1_PPN046_Chr02_test.smc.gz LRE_ENA_Mandan1_PPN046_Chr03_test.smc.gz LRE_ENA_Mandan1_PPN046_Chr04_test.smc.gz LRE_ENA_Mandan1_PPN046_Chr05_test.smc.gz LRE_ENA_Mandan1_PPN046_Chr06_test.smc.gz LRE_ENA_Mandan1_PPN046_Chr07_test.smc.gz LRE_ENA_Mandan1_PPN046_Chr08_test.smc.gz LRE_ENA_Mandan1_PPN046_Chr09_test.smc.gz LRE_ENA_Mandan1_PPN046_Chr10_test.smc.gz LRE_ENA_Mandan1_PPN046_Chr11_test.smc.gz LRE_ENA_Mandan1_PPN046_Chr12_test.smc.gz LRE_ENA_Mandan1_PPN046_Chr13_test.smc.gz LRE_ENA_Mandan1_PPN046_Chr14_test.smc.gz LRE_ENA_Mandan1_PPN046_Chr15_test.smc.gz LRE_ENA_Mandan1_PPN046_Chr16_test.smc.gz LRE_ENA_Mandan1_PPN046_Chr17_test.smc.gz

#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/smartPCA
#SBATCH -J smartPCA_Interspecific_run
#SBATCH --partition=savio_bigmem
#SBATCH --account=ac_acblackman
#SBATCH --qos=savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=72:00:00
#SBATCH --mem=512000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/smartPCA_Interspecific_run.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/smartPCA_Interspecific_run.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

source activate eigensoft

smartpca -p smartPCA_Interspecific.par > smartPCA_Interspecific.out
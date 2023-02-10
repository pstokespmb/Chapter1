#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/VariantCalling/SIP_redo/bams
#SBATCH -J SIP_redo
#SBATCH --account=ac_acblackman
#SBATCH --partition=savio2_htc
#SBATCH --qos=savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=3
#SBATCH --time=72:00:00
#SBATCH --mem=32000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/SIP_redo.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/SIP_redo.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

source activate paleomix

paleomix bam_pipeline run /global/scratch/users/peter_stokes/Chapter1/VariantCalling/SIP_redo/scripts/SIP_redo.yaml --max-threads $SLURM_CPUS_PER_TASK --jre-option=-Xmx32g --bwa-max-threads 3 --destination=/global/scratch/users/peter_stokes/Chapter1/VariantCalling/SIP_redo/bams --temp-root=/global/scratch/users/peter_stokes/ncbi_fqs
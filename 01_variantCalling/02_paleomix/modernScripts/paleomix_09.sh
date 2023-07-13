#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/paleomix_alignments/bamOuts
#SBATCH -J paleomix_09
#SBATCH --account=ac_acblackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=24
#SBATCH --time=72:00:00
#SBATCH --mem=64000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/paleomix_09.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/paleomix_09.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

source activate paleomix

paleomix bam_pipeline run /global/scratch/users/peter_stokes/paleomix_alignments/scripts/paleomix_09.yaml --max-threads $SLURM_CPUS_PER_TASK --jre-option=-Xmx32g --bwa-max-threads 3 --destination=/global/scratch/users/peter_stokes/paleomix_alignments/bamOuts --temp-root=/global/scratch/users/peter_stokes/ncbi_fqs
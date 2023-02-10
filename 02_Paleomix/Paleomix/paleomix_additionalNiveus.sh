#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/additionalNonAnnuus/bamOuts
#SBATCH -J paleomix_additionalNiveus
#SBATCH --partition=savio2_htc
#SBATCH --account=co_rosalind
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --time=72:00:00
#SBATCH --mem=128000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/paleomix_additionalNiveus.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/paleomix_additionalNiveus.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

source activate paleomix

paleomix bam_pipeline run /global/scratch/users/peter_stokes/additionalNonAnnuus/scripts/paleomix_additionalNiveus.yaml --max-threads $SLURM_CPUS_PER_TASK --jre-option=-Xmx128g --bwa-max-threads 12 --destination=/global/scratch/users/peter_stokes/additionalNonAnnuus/bamOuts --temp-root=/global/scratch/users/peter_stokes/ncbi_fqs
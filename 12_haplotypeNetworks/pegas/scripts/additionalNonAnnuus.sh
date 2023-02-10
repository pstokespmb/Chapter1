#!/bin/bash 
#SBATCH -D /global/scratch2/peter_stokes/aDNA_bams
#SBATCH -J additionalNonAnnuus
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --time=400:00:00
#SBATCH --mem=128000
#SBATCH -o /global/scratch2/peter_stokes/err_outs/additionalNonAnnuus.out
#SBATCH -e /global/scratch2/peter_stokes/err_outs/additionalNonAnnuus.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

source activate paleomix

paleomix bam_pipeline run /global/scratch2/peter_stokes/additionalNonAnnuus/scripts/additionalNonAnnuus.yaml --max-threads $SLURM_CPUS_PER_TASK --jre-option=-Xmx128g --bwa-max-threads 12 --destination=/global/scratch2/peter_stokes/additionalNonAnnuus/bamOuts --temp-root=/global/scratch2/peter_stokes/ncbi_fqs
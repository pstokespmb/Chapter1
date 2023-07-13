#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/paleomix_alignments/bamOuts
#SBATCH -J paleomix_07
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=12
#SBATCH --time=72:00:00
#SBATCH --mem=128000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/paleomix_07.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/paleomix_07.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

source activate paleomix

paleomix bam_pipeline run /global/scratch/users/peter_stokes/paleomix_alignments/scripts/paleomix_07.yaml --max-threads $SLURM_CPUS_PER_TASK --jre-option=-Xmx32g --bwa-max-threads 3 --destination=/global/scratch/users/peter_stokes/paleomix_alignments/bamOuts --temp-root=/global/scratch/users/peter_stokes/ncbi_fqs
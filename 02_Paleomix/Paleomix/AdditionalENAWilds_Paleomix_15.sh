#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/additionalWildsENA/bams
#SBATCH -J AdditionalENAWilds_Paleomix_15
#SBATCH --partition=savio
#SBATCH --account=fc_blackman
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=72:00:00
#SBATCH --mem=64000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/AdditionalENAWilds_Paleomix_15.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/AdditionalENAWilds_Paleomix_15.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

source activate paleomix

paleomix bam_pipeline run /global/scratch/users/peter_stokes/additionalWildsENA/scripts/AdditionalENAWilds_Paleomix_15.yaml --max-threads $SLURM_CPUS_PER_TASK --jre-option=-Xmx64g --bwa-max-threads 20 --destination=/global/scratch/users/peter_stokes/additionalWildsENA/bams --temp-root=/global/scratch/users/peter_stokes/ncbi_fqs
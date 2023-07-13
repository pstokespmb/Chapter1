#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/paleomix_alignments/bamOuts
#SBATCH -J paleomix_34
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=12
#SBATCH --time=400:00:00
#SBATCH --mem=128000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/paleomix_34.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/paleomix_34.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

source activate paleomix

paleomix bam_pipeline run /global/scratch/users/peter_stokes/paleomix_alignments/scripts/paleomix_34.yaml --max-threads $SLURM_CPUS_PER_TASK --jre-option=-Xmx90g --adapterremoval-max-threads 12 --bwa-max-threads 12 --destination=/global/scratch/users/peter_stokes/paleomix_alignments/bamOuts --temp-root=/global/scratch/users/peter_stokes/ncbi_fqs
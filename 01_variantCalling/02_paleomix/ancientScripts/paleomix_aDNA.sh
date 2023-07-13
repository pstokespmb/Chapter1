#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/paleomix_alignments/bamOuts
#SBATCH -J paleomix_aDNA
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=6
#SBATCH --time=400:00:00
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/paleomix_aDNA.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/paleomix_aDNA.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

source activate paleomix

paleomix bam_pipeline run /global/scratch/users/peter_stokes/paleomix_alignments/scripts/yaml_aDNA.yaml --max-threads $SLURM_CPUS_PER_TASK --jre-option=-Xmx10g --adapterremoval-max-threads 6 --bwa-max-threads 6 --destination=/global/scratch/users/peter_stokes/paleomix_alignments/bamOuts --temp-root=/global/scratch/users/peter_stokes/ncbi_fqs

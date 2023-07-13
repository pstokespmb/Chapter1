#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/paleomix_alignments/bamOuts
#SBATCH -J paleomix_44
#SBATCH --account=co_rosalind
#SBATCH --partition=savio3_xlmem
#SBATCH --qos=rosalind_xlmem3_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=32
#SBATCH --time=96:00:00
#SBATCH --mem=1500000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/paleomix_44.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/paleomix_44.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

export PATH=/global/scratch/users/peter_stokes/software/sratoolkit.3.0.1-centos_linux64/bin:$PATH

#fasterq-dump SRR5907731 -O /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool -t /global/scratch/users/peter_stokes/ncbi_fqs -e 8

#gzip /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool/SRR5907731_1.fastq
#gzip /global/scratch/users/peter_stokes/paleomix_alignments/fastq_pool/SRR5907731_2.fastq

source activate paleomix

paleomix bam_pipeline run /global/scratch/users/peter_stokes/paleomix_alignments/scripts/paleomix_44.yaml --max-threads $SLURM_CPUS_PER_TASK --jre-option=-Xmx46g  --bwa-max-threads 16 --destination=/global/scratch/users/peter_stokes/paleomix_alignments/bamOuts --temp-root=/global/scratch/users/peter_stokes/ncbi_fqs


#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/smartPCA
#SBATCH -J smartPCA_Interspecific_prep
#SBATCH --account=ac_acblackman
#SBATCH --partition=savio
#SBATCH --qos=savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=72:00:00
#SBATCH --mem=64000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/smartPCA_Interspecific_prep.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/smartPCA_Interspecific_prep.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load htslib/1.6
module load python/2.7

python ./scripts/gdc-master/vcf2eigenstrat.py -v ../VCF_biallelicOnly/PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_noSpanningINDELS_G4_missingFixed.vcf.gz -o smartPCA_Interspecific
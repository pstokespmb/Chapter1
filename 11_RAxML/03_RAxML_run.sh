#!/bin/bash 
#SBATCH -D /global/scratch2/peter_stokes/RAxML/outs
#SBATCH -J RAxML_run
#SBATCH --account=co_rosalind
#SBATCH --partition=savio3_xlmem
#SBATCH --qos=rosalind_xlmem3_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=52
#SBATCH --time=400:00:00
#SBATCH --mem=1500000
#SBATCH -o /global/scratch2/peter_stokes/err_outs/RAxML_run.out
#SBATCH -e /global/scratch2/peter_stokes/err_outs/RAxML_run.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load raxml/8.2.11

raxmlHPC -f a -x 12345 -p 12345 -N 100 -m GTRGAMMA -O -n angsd_includeMEX_noAncients_noNonAnnuus_allChrom_NewNames_thinned10k_80percent.min193.tre -s angsd_includeMEX_noAncients_noNonAnnuus_allChrom_NewNames_thinned10k_80percent.min193.phy -T 52 -w /global/scratch2/peter_stokes/RAxML/outs
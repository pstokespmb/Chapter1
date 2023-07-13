#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/Dsuite/outs
#SBATCH -J DsuiteDtrios_AZ
#SBATCH --account=ac_acblackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=24
#SBATCH --time=72:00:00
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/DsuiteDtrios_AZ.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/DsuiteDtrios_AZ.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load htslib/1.6
module load gcc/7.4.0

VCF_name="Chapter1_allChrom_noRR_NF_noED_noLowCov_D4_Bi_plinked_G2_M5_LD_Pruned_forDStats_forPCA_forfastStructure"
startingVCF_path="/global/scratch/users/peter_stokes/Chapter1/vcfsToUse"

Dsuite_outs="/global/scratch/users/peter_stokes/Chapter1/Dsuite/outs"

PATH=/global/scratch/users/peter_stokes/software/Dsuite/Build:$PATH

newick_sets_path="/global/scratch/users/peter_stokes/Chapter1/Dsuite/scripts"
GeoLoc="AZ"

Dsuite Dtrios -t ${newick_sets_path}/AdmixTesting_${GeoLoc}_t.nwk ${startingVCF_path}/${VCF_name}.vcf ${newick_sets_path}/AdmixTesting_${GeoLoc}_t.txt
Dsuite Dtrios -t ${newick_sets_path}/AdmixTesting_${GeoLoc}_c.nwk ${startingVCF_path}/${VCF_name}.vcf ${newick_sets_path}/AdmixTesting_${GeoLoc}_c.txt
#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/smcpp/2023/VCFs
#SBATCH -J 9_LRE_vcf2smc_Chr11
#SBATCH --account=fc_blackman
#SBATCH --partition=savio3_htc
#SBATCH --qos=savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=24:00:00
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/9_LRE_vcf2smc_Chr11.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/9_LRE_vcf2smc_Chr11.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

SINGULARITY_CACHEDIR=/global/scratch/users/peter_stokes
export XDG_CACHE_HOME=/global/scratch/users/peter_stokes:$XDG_CACHE_HOME

for sample in Laguna_Pueblo Mandan2;
    do singularity exec -B /global/scratch/users/peter_stokes /global/scratch/users/peter_stokes/smcpp_latest.sif \
    smc++ vcf2smc \
    --mask /global/scratch/users/peter_stokes/Chapter1/smcpp/2023/masks/new_RR_Chr11.bed.gz \
    --cores 1 \
    -d ${sample} ${sample} \
    /global/scratch/users/peter_stokes/Chapter1/smcpp/2023/VCFs/PS_Chapter1_allChrom_VQSROutput_G6_invariantsHardFiltered_sorted_D4.vcf.gz \
    /global/scratch/users/peter_stokes/Chapter1/smcpp/2023/vcf2smc_output/LRE_${sample}_Chr11_RRMask.smc.gz \
    HanXRQChr11 \
    LRE:Hopi_mapping_NEW,Hopi_dye_NEW,Havasupai,Hopi_real_NEW,Arikara,MexCult3,MexCult9,Seneca,MexCult15,MexCult1,MexCult6,Anzac_Pueblo,Pueblo,Zuni,Hidatsa,Mandan2,Laguna_Pueblo,Mandan1_PPN046,Ari_Man,Se_Strip_682a,Se_Purp,Ari_Broad,Seneca_137749,Paiute;
done
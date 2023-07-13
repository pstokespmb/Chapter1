#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/smcpp/2023/VCFs
#SBATCH -J 8_LRE_vcf2smc_Chr14_wInvar_noMask
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=24:00:00
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/8_LRE_vcf2smc_Chr14_wInvar_noMask.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/8_LRE_vcf2smc_Chr14_wInvar_noMask.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

SINGULARITY_CACHEDIR=/global/scratch/users/peter_stokes
export XDG_CACHE_HOME=/global/scratch/users/peter_stokes:$XDG_CACHE_HOME

for sample in Mandan1_PPN046 Zuni;
    do singularity exec -B /global/scratch/users/peter_stokes /global/scratch/users/peter_stokes/smcpp_latest.sif \
    smc++ vcf2smc \
    --cores 1 \
    -d ${sample} ${sample} \
    /global/scratch/users/peter_stokes/Chapter1/smcpp/2023/VCFs/PS_Chapter1_allChrom_VQSROutput_G6_invariantsHardFiltered_sorted_D4.vcf.gz \
    /global/scratch/users/peter_stokes/Chapter1/smcpp/2023/vcf2smc_output/LRE_${sample}_Chr14_wInvar_noMask.smc.gz \
    HanXRQChr14 \
    LRE:Hopi_mapping_NEW,Hopi_dye_NEW,Havasupai,Hopi_real_NEW,Arikara,MexCult3,MexCult9,Seneca,MexCult15,MexCult1,MexCult6,Anzac_Pueblo,Pueblo,Zuni,Hidatsa,Mandan2,Laguna_Pueblo,Mandan1_PPN046,Ari_Man,Se_Strip_682a,Se_Purp,Ari_Broad,Seneca_137749,Paiute;
done
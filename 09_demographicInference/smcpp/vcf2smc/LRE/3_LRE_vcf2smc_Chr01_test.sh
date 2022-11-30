#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/VCF_for_smcpp
#SBATCH -J 3_LRE_vcf2smc_Chr01_test
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --time=400:00:00
#SBATCH --mem=42000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/3_LRE_vcf2smc_Chr01_test.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/3_LRE_vcf2smc_Chr01_test.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

SINGULARITY_CACHEDIR=/global/scratch/users/peter_stokes

for sample in Arikara Hidatsa Mandan1_PPN046;
    do singularity exec -B /global/scratch/users/peter_stokes /global/scratch/users/peter_stokes/smcpp_latest.sif \
    smc++ vcf2smc \
    --cores 4 \
    -d ${sample} ${sample} \
    /global/scratch/users/peter_stokes/Chapter1/VCF_for_smcpp/PS_Chapter1_biallelicSNPS_G4_Chr01.vcf.gz \
    /global/scratch/users/peter_stokes/Chapter1/smcpp/vcf2smc_output/LRE_${sample}_Chr01_test.smc.gz \
    HanXRQChr01 \
    LRE_test:Anzac_Pueblo,Ari_Broad,Ari_Man,Arikara,Arikara_122976,Arikara_126306,Arikara_14042_874,Havasupai,Hidatsa,Hopi_dye_NEW,Hopi_mapping_NEW,Hopi_real_NEW,Laguna_Pueblo,Mandan1_PPN046,Mandan2,Paiute,Se_Purp,Se_Strip_682a,Se_Strip_682b,Seneca,Seneca_137749,Zuni,MexCult1,MexCult15,MexCult3,MexCult6,MexCult9;
done
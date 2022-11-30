#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/VCF_for_smcpp
#SBATCH -J 1_ENA_vcf2smc_Chr08_test
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --time=400:00:00
#SBATCH --mem=42000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/1_ENA_vcf2smc_Chr08_test.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/1_ENA_vcf2smc_Chr08_test.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

SINGULARITY_CACHEDIR=/global/scratch/users/peter_stokes

for sample in Ann1238_subset ANN1198 IA2W_11 MO1W_33 ann01_cwIA;
    do singularity exec -B /global/scratch/users/peter_stokes /global/scratch/users/peter_stokes/smcpp_latest.sif \
    smc++ vcf2smc \
    --cores 4 \
    --mask /global/scratch/users/peter_stokes/Chapter1/masks_for_smcpp/PS_Chapter1_mask_Chr08_FINAL.bed.gz \
    -d ${sample} ${sample} \
    /global/scratch/users/peter_stokes/Chapter1/VCF_for_smcpp/PS_Chapter1_biallelicSNPS_G4_hardFilteredInvariants_Chr08_sorted.vcf.gz \
    /global/scratch/users/peter_stokes/Chapter1/smcpp/vcf2smc_output/ENA_${sample}_Chr08_test.smc.gz \
    HanXRQChr08 \
    ENA_test:ann01_cwIA,ann04_nwAR,ann10_ccIL,ANN1171,ANN1172,ANN1173,ANN1174,ANN1175,ANN1176,ANN1177,ANN1178,ANN1179,ANN1180,ANN1181,ANN1182,ANN1183,ANN1184,ANN1185,ANN1186,ANN1187,ANN1188,ANN1189,ANN1190,ANN1191,ANN1192,ANN1193,ANN1194,ANN1195,ANN1196,ANN1197,ANN1198,ANN1199,ANN1200,ANN1201,ANN1202,ANN1203,ANN1204,ANN1205,ANN1206,ANN1207,ANN1208,ANN1209,ANN1210,Ann1238_subset,ANN1419,ANN1420,ANN1439,ann29_neSD,ann34_cwKS,ann39_ncNE,IA1W_1,IA1W_11,IA1W_11R,IA1W_15,IA1W_2,IA1W_21,IA1W_28,IA1W_33,IA1W_39,IA1W_4,IA1W_5,IA1W1_6_308,IA2W_11,IA2W_14,IA2W_16,IA2W_17,IA2W_29,IA2W_37,IA2W_37R,IA2W_38,IA2W_39,IA2W_6,IA2W_7,KS1W_19,KS1W_2,KS1W_24,KS1W_26,KS1W_27,KS1W_29,KS1W_3,KS1W_32,KS1W_35,KS1W_40,KS1W_9,KS1W9_3_342,KS2E_6,KS2W_12,KS2W_14,KS2W_15,KS2W_15R,KS2W_24,KS2W_32,KS2W_35,KS2W_6_1R,KS2W_8,KS2W_9,KS2W24_7_43,MO1W_11,MO1W_15,MO1W_16,MO1W_2,MO1W_2R,MO1W_3,MO1W_33,MO1W_38,MO1W_39,MO1W_7,MO1W30_1_114,ND1W_12,ND1W_20,ND1W_22,ND1W_25,ND1W_27,ND1W_31,ND1W_33,ND1W_36,ND1W_38,ND1W27_2_288,SD1W_13,SD1W_14,SD1W_15,SD1W_20,SD1W_21,SD1W_35,SD1W_4,SD1W_6,SD1W11_7_237,SD2W_14,SD2W_15,SD2W_18,SD2W_19,SD2W_21,SD2W_23,SD2W_23R,SD2W_27,SD2W_30,SD2W_38,SD2W_40,SD2W_5,SD2W30_3_360;
done
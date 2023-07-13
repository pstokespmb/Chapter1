#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/smcpp/2023/VCFs
#SBATCH -J split_vcf2smc_Chr15
#SBATCH --account=ac_acblackman
#SBATCH --partition=savio3_htc
#SBATCH --qos=savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=2
#SBATCH --time=72:00:00
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/split_vcf2smc_Chr15.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/split_vcf2smc_Chr15.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

SINGULARITY_CACHEDIR=/global/scratch/users/peter_stokes

singularity exec -B /global/scratch/users/peter_stokes /global/scratch/users/peter_stokes/smcpp_latest.sif \
smc++ vcf2smc \
--cores 1 \
--mask /global/scratch/users/peter_stokes/Chapter1/smcpp/2023/masks/smcppReady_missingMask_Chr15_vcf2smcReady.bed.gz \
/global/scratch/users/peter_stokes/Chapter1/smcpp/2023/VCFs/PS_Chapter1_allChrom_VQSROutput_G6_invariantsHardFiltered_sorted_D4.vcf.gz \
/global/scratch/users/peter_stokes/Chapter1/smcpp/2023/vcf2smc_output/split_ENA_LRE_Chr15.smc.gz \
HanXRQChr15 \
ENA:Ann1238,IA1W_5,SK1W_29R,MO1W_38,IA1W_11R,KS2W_6,KS2W_32,KS1W_2,ANN1198,IA1W_39,KS1W_32,KS2W_35,IA1W_2,KS1W_35,ANN1195,KS1W_3,IA1W_4,SD1W_13,SD2W_27,KS2W_8,ANN1187,IA1W_33,ANN1188,KS2W_15,ANN1203,ANN1204,MO1W_3,KS1W_27,IA1W_15,ANN1154,ANN1174,SK1W_22R,KS2W_24,KS1W_24,KS1W_9,ANN1172,ANN1152,ANN1177,ANN1151,ANN1178,ANN1183,MB1W_40,ANN1160,ANN1197,ANN1193,ANN1173,IA2W_7,ANN1209,ANN1199,ANN1176,ANN1202,ND1W_38,IA2W_38,IA1W_21,ANN1205,ANN1206,KS2W_6_1R,ANN1184,ANN1419,ANN1182,ANN1171,ANN1180,MB1W_16B,ANN1190,ANN1153,ANN1181,ANN1207,ANN1191,SD1W_4,ANN1179,ANN1185,SD2W_23,SK1W_22,SD2W_18,ANN1420,ANN1155,ANN1175,IA2W_16,ANN1201,ANN1208,ANN1189,SD1W_20,MO1W_16,ANN1196,ND1W_27,ANN1156,ANN1200,ANN1439,ANN1186,SK1W_37,MO1W_33,ANN1210,KS1W_29,IA2W_39,ANN1159,MB1W_8,ANN1192,MB1W_16,ANN1157,SD2W_15,SD1W_35,SK1W_29,ANN1194,KS1W_19,IA2W_29,SD2W_21,ND1W_12,SK1W_15,IA1W_1,ND1W_20,SD1W_6,SD2W_14,SK1W_1,SD1W_14,MB1W_39,MB1W_31,SK1W_36,KS2W_12,KS2W_14,SK1W_Q,MB1W_20,KS2W_9,MO1W_7,ND1W_31,KS1W_26,SD2W_19,SD2W_23R,IA2W_37R,SD2W_30,MO1W_2,MO1W_39,SD2W_40,ND1W_33,SD1W_21,MB1W_30,ND1W_25,IA2W_6,ANN1501,MO1W_11,ED_IA2W_17,IA2W_37,SD2W_5,ann01_cwIA,KS1W_40,MO1W_2R,MB1W_14,ND1W_36,SD1W_21B,MO1W_15,SK1W_25,KS2W_15R,IA2W_14,ann29_neSD,ann10_ccIL,ann34_cwKS,ann04_nwAR,IA1W_28,MB1W_11,ann39_ncNE,ND1W_22,ann28_swSK LRE:Hopi_mapping_NEW,Hopi_dye_NEW,Havasupai,Hopi_real_NEW,Arikara,MexCult3,MexCult9,Seneca,MexCult15,MexCult1,MexCult6,Anzac_Pueblo,Pueblo,Zuni,Hidatsa,Mandan2,Laguna_Pueblo,Mandan1_PPN046,Ari_Man,Se_Strip_682a,Se_Purp,Ari_Broad,Seneca_137749,Paiute;

singularity exec -B /global/scratch/users/peter_stokes /global/scratch/users/peter_stokes/smcpp_latest.sif \
smc++ vcf2smc \
--cores 1 \
--mask /global/scratch/users/peter_stokes/Chapter1/smcpp/2023/masks/smcppReady_missingMask_Chr15_vcf2smcReady.bed.gz \
/global/scratch/users/peter_stokes/Chapter1/smcpp/2023/VCFs/PS_Chapter1_allChrom_VQSROutput_G6_invariantsHardFiltered_sorted_D4.vcf.gz \
/global/scratch/users/peter_stokes/Chapter1/smcpp/2023/vcf2smc_output/split_LRE_ENA_Chr15.smc.gz \
HanXRQChr15 \
LRE:Hopi_mapping_NEW,Hopi_dye_NEW,Havasupai,Hopi_real_NEW,Arikara,MexCult3,MexCult9,Seneca,MexCult15,MexCult1,MexCult6,Anzac_Pueblo,Pueblo,Zuni,Hidatsa,Mandan2,Laguna_Pueblo,Mandan1_PPN046,Ari_Man,Se_Strip_682a,Se_Purp,Ari_Broad,Seneca_137749,Paiute ENA:Ann1238,IA1W_5,SK1W_29R,MO1W_38,IA1W_11R,KS2W_6,KS2W_32,KS1W_2,ANN1198,IA1W_39,KS1W_32,KS2W_35,IA1W_2,KS1W_35,ANN1195,KS1W_3,IA1W_4,SD1W_13,SD2W_27,KS2W_8,ANN1187,IA1W_33,ANN1188,KS2W_15,ANN1203,ANN1204,MO1W_3,KS1W_27,IA1W_15,ANN1154,ANN1174,SK1W_22R,KS2W_24,KS1W_24,KS1W_9,ANN1172,ANN1152,ANN1177,ANN1151,ANN1178,ANN1183,MB1W_40,ANN1160,ANN1197,ANN1193,ANN1173,IA2W_7,ANN1209,ANN1199,ANN1176,ANN1202,ND1W_38,IA2W_38,IA1W_21,ANN1205,ANN1206,KS2W_6_1R,ANN1184,ANN1419,ANN1182,ANN1171,ANN1180,MB1W_16B,ANN1190,ANN1153,ANN1181,ANN1207,ANN1191,SD1W_4,ANN1179,ANN1185,SD2W_23,SK1W_22,SD2W_18,ANN1420,ANN1155,ANN1175,IA2W_16,ANN1201,ANN1208,ANN1189,SD1W_20,MO1W_16,ANN1196,ND1W_27,ANN1156,ANN1200,ANN1439,ANN1186,SK1W_37,MO1W_33,ANN1210,KS1W_29,IA2W_39,ANN1159,MB1W_8,ANN1192,MB1W_16,ANN1157,SD2W_15,SD1W_35,SK1W_29,ANN1194,KS1W_19,IA2W_29,SD2W_21,ND1W_12,SK1W_15,IA1W_1,ND1W_20,SD1W_6,SD2W_14,SK1W_1,SD1W_14,MB1W_39,MB1W_31,SK1W_36,KS2W_12,KS2W_14,SK1W_Q,MB1W_20,KS2W_9,MO1W_7,ND1W_31,KS1W_26,SD2W_19,SD2W_23R,IA2W_37R,SD2W_30,MO1W_2,MO1W_39,SD2W_40,ND1W_33,SD1W_21,MB1W_30,ND1W_25,IA2W_6,ANN1501,MO1W_11,ED_IA2W_17,IA2W_37,SD2W_5,ann01_cwIA,KS1W_40,MO1W_2R,MB1W_14,ND1W_36,SD1W_21B,MO1W_15,SK1W_25,KS2W_15R,IA2W_14,ann29_neSD,ann10_ccIL,ann34_cwKS,ann04_nwAR,IA1W_28,MB1W_11,ann39_ncNE,ND1W_22,ann28_swSK;

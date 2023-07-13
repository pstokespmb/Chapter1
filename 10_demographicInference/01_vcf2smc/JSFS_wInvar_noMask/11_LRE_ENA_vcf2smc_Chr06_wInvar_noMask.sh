#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/smcpp/2023/VCFs
#SBATCH -J 11_LRE_ENA_vcf2smc_Chr06_wInvar_noMask
#SBATCH --account=fc_blackman
#SBATCH --partition=savio3_htc
#SBATCH --qos=savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=24:00:00
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/11_LRE_ENA_vcf2smc_Chr06_wInvar_noMask.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/11_LRE_ENA_vcf2smc_Chr06_wInvar_noMask.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

SINGULARITY_CACHEDIR=/global/scratch/users/peter_stokes

singularity exec -B /global/scratch/users/peter_stokes /global/scratch/users/peter_stokes/smcpp_latest.sif \
smc++ vcf2smc \
--cores 1 \
/global/scratch/users/peter_stokes/Chapter1/smcpp/2023/VCFs/PS_Chapter1_allChrom_VQSROutput_G6_invariantsHardFiltered_sorted_D4.vcf.gz \
/global/scratch/users/peter_stokes/Chapter1/smcpp/2023/vcf2smc_output/LRE_ENA_Chr06_wInvar_noMask.smc.gz \
HanXRQChr06 \
LRE:Hopi_mapping_NEW,Hopi_dye_NEW,Havasupai,Hopi_real_NEW,Arikara,MexCult3,MexCult9,Seneca,MexCult15,MexCult1,MexCult6,Anzac_Pueblo,Pueblo,Zuni,Hidatsa,Mandan2,Laguna_Pueblo,Mandan1_PPN046,Ari_Man,Se_Strip_682a,Se_Purp,Ari_Broad,Seneca_137749,Paiute ENA:Ann1238,IA1W_5,SK1W_29R,MO1W_38,IA1W_11R,KS2W_6,KS2W_32,KS1W_2,ANN1198,IA1W_39,KS1W_32,KS2W_35,IA1W_2,KS1W_35,ANN1195,KS1W_3,IA1W_4,SD1W_13,SD2W_27,KS2W_8,ANN1187,IA1W_33,ANN1188,KS2W_15,ANN1203,ANN1204,MO1W_3,KS1W_27,IA1W_15,ANN1154,ANN1174,SK1W_22R,KS2W_24,KS1W_24,KS1W_9,ANN1172,ANN1152,ANN1177,ANN1151,ANN1178,ANN1183,MB1W_40,ANN1160,ANN1197,ANN1193,ANN1173,IA2W_7,ANN1209,ANN1199,ANN1176,ANN1202,ND1W_38,IA2W_38,IA1W_21,ANN1205,ANN1206,KS2W_6_1R,ANN1184,ANN1419,ANN1182,ANN1171,ANN1180,MB1W_16B,ANN1190,ANN1153,ANN1181,ANN1207,ANN1191,SD1W_4,ANN1179;

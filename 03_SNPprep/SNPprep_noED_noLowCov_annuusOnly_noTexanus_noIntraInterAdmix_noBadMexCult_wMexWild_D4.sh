#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/vcfsToUse
#SBATCH -J SNPprep_noED_noLowCov_annuusOnly_noTexanus_noIntraInterAdmix_noBadMexCult_wMexWild
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=72:00:00
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/SNPprep_noED_noLowCov_annuusOnly_noTexanus_noIntraInterAdmix_noBadMexCult_wMexWild.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/SNPprep_noED_noLowCov_annuusOnly_noTexanus_noIntraInterAdmix_noBadMexCult_wMexWild.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load htslib/1.6
module load bcftools/1.6
module load bio/vcftools/0.1.15

startingVCF_name="Chapter1_allChrom_noRR_NF_noED_noLowCov_D4"
samplesRemovedVCF_name="Chapter1_allChrom_noRR_NF_noED_noLowCov_annuusOnly_noTexanus_noIntraInterAdmix_noBadMexCult_wMexWild_D4"
startingVCF_path="/global/scratch/users/peter_stokes/Chapter1/vcfsToUse"

samplesToKeep="ann01_cwIA,ann04_nwAR,ann05_ccNM,ANN0810,ANN0820,ANN0830,ANN0835,ANN0849,ANN0854,ANN0867,ANN0874,ANN0880,ANN0882,ANN0898,ANN0908,ANN0918,ANN0927,ANN0931,ANN0946,ANN0956,ANN0957,ANN0959,ANN0962,ANN0963,ANN0964,ANN0972,ANN0975,ANN0978,ANN0981,ANN0985,ANN0986,ANN0992,ANN0996,ANN0997,ann10_ccIL,ANN1002,ANN1003,ANN1004,ANN1011,ANN1012,ANN1019,ANN1029,ANN1040,ANN1053,ANN1062,ANN1073,ANN1083,ANN1095,ANN1106,ANN1115,ANN1127,ANN1134,ANN1143,ANN1151,ANN1152,ANN1153,ANN1154,ANN1155,ANN1156,ANN1157,ANN1159,ANN1160,ANN1162,ANN1164,ANN1169,ANN1171,ANN1172,ANN1173,ANN1174,ANN1175,ANN1176,ANN1177,ANN1178,ANN1179,ANN1180,ANN1181,ANN1182,ANN1183,ANN1184,ANN1185,ANN1186,ANN1187,ANN1188,ANN1189,ANN1190,ANN1191,ANN1192,ANN1193,ANN1194,ANN1195,ANN1196,ANN1197,ANN1198,ANN1199,ANN1200,ANN1201,ANN1202,ANN1203,ANN1204,ANN1205,ANN1206,ANN1207,ANN1208,ANN1209,ANN1210,ANN1216,ANN1218,ANN1219,Ann1238,ANN1260,ANN1268,ANN1273,ANN1284,ANN1296,ANN1297,ANN1300,ANN1301,ANN1309,ANN1310,ANN1311,ANN1316,ANN1319,ANN1322,ANN1328,ANN1330,ANN1419,ANN1420,ANN1439,ANN1501,ann28_swSK,ann29_neSD,ann34_cwKS,ann39_ncNE,annMex_A1516,annMex_A1517,annMex_A1572,annMex_A1574,annMex_Ann261,Anzac_Pueblo,Ari_Broad,Ari_Man,Arikara,HA124,HA207,HA259,HA314,HA316,HA323,HA380,HA404,HA433,HA442,HA821,HA89,Havasupai,Hidatsa,Hopi_dye_NEW,Hopi_mapping_NEW,Hopi_real_NEW,IA1W_1,IA1W_11R,IA1W_15,IA1W_2,IA1W_21,IA1W_28,IA1W_33,IA1W_39,IA1W_4,IA1W_5,IA2W_14,IA2W_16,IA2W_17,IA2W_29,IA2W_37,IA2W_37R,IA2W_38,IA2W_39,IA2W_6,IA2W_7,KS1W_19,KS1W_2,KS1W_24,KS1W_26,KS1W_27,KS1W_29,KS1W_3,KS1W_32,KS1W_35,KS1W_40,KS1W_9,KS2W_12,KS2W_14,KS2W_15,KS2W_15R,KS2W_24,KS2W_32,KS2W_35,KS2W_6,KS2W_6_1R,KS2W_8,KS2W_9,Laguna_Pueblo,Mandan1_PPN046,Mandan2,MB1W_11,MB1W_14,MB1W_16,MB1W_16B,MB1W_20,MB1W_30,MB1W_31,MB1W_39,MB1W_40,MB1W_8,MexCult1,MexCult15,MexCult3,MexCult6,MexCult9,MO1W_11,MO1W_15,MO1W_16,MO1W_2,MO1W_2R,MO1W_3,MO1W_33,MO1W_38,MO1W_39,MO1W_7,ND1W_12,ND1W_20,ND1W_22,ND1W_25,ND1W_27,ND1W_31,ND1W_33,ND1W_36,ND1W_38,Paiute,Pueblo,RHA271,RHA309,RHA310,RHA324,RHA328,RHA354,RHA358,RHA362,RHA397,RHA408,RHA426,RHA857,SD1W_13,SD1W_14,SD1W_20,SD1W_21,SD1W_21B,SD1W_35,SD1W_4,SD1W_6,SD2W_14,SD2W_15,SD2W_18,SD2W_19,SD2W_21,SD2W_23,SD2W_23R,SD2W_27,SD2W_30,SD2W_40,SD2W_5,Se_Purp,Se_Strip_682a,Seneca,Seneca_137749,SK1W_1,SK1W_15,SK1W_22,SK1W_22R,SK1W_25,SK1W_29,SK1W_29R,SK1W_36,SK1W_37,SK1W_Q,Zuni"

plinkOuts_path="/global/scratch/users/peter_stokes/Chapter1/plink_outs"

#NF == namesFixed
#D3 == minDepth3
#Bi == biallelic
#G1 == geno 0.1
#M5 == mAF 0.5
#LD == LD 50 5 0.2

###########
###########

#Chapter1_allChrom_noRR_NF_noED_noLowCov_D4.vcf.gz

bcftools view -s ${samplesToKeep} ${startingVCF_path}/${startingVCF_name}.vcf.gz -Oz -o ${startingVCF_path}/${samplesRemovedVCF_name}.vcf.gz

tabix -p vcf ${startingVCF_path}/${samplesRemovedVCF_name}.vcf.gz

###########
###########

source activate plink2

plink2 --recode vcf bgz --vcf ${startingVCF_path}/${samplesRemovedVCF_name}.vcf.gz \
--max-alleles 2 --min-alleles 2 \
--allow-extra-chr \
--keep-allele-order \
--out ${startingVCF_path}/${samplesRemovedVCF_name}_Bi

###first plink conversion

plink2 --allow-extra-chr --vcf ${startingVCF_path}/${samplesRemovedVCF_name}_Bi.vcf.gz \
--set-all-var-ids @_#_\$r_\$a \
--keep-allele-order --make-bed \
--out ${plinkOuts_path}/${samplesRemovedVCF_name}_Bi_plinked

###second plink conversion

plink2 --allow-extra-chr --bfile ${plinkOuts_path}/${samplesRemovedVCF_name}_Bi_plinked \
--geno 0.2 \
--maf 0.05 \
--indep-pairwise 50 5 0.2 \
--out ${plinkOuts_path}/${samplesRemovedVCF_name}_Bi_plinked_G2_M5_LD

###third plink conversion

plink2 --allow-extra-chr --bfile ${plinkOuts_path}/${samplesRemovedVCF_name}_Bi_plinked \
--extract ${plinkOuts_path}/${samplesRemovedVCF_name}_Bi_plinked_G2_M5_LD.prune.in \
--make-bed --out ${plinkOuts_path}/${samplesRemovedVCF_name}_Bi_plinked_G2_M5_LD_Pruned

###editing .bim file for fastStructure (fastStructure gets upset about non-pure-numerical chromosome names)

sed -i 's/HanXRQChr0//g' ${plinkOuts_path}/${samplesRemovedVCF_name}_Bi_plinked_G2_M5_LD_Pruned.bim
sed -i 's/HanXRQChr//g' ${plinkOuts_path}/${samplesRemovedVCF_name}_Bi_plinked_G2_M5_LD_Pruned.bim

###########
###########

#producing RAxML formatted VCF

plink2 --bfile ${plinkOuts_path}/${samplesRemovedVCF_name}_Bi_plinked_G2_M5_LD_Pruned --recode vcf --allow-extra-chr --out ${startingVCF_path}/${samplesRemovedVCF_name}_Bi_plinked_G2_M5_LD_Pruned_forDStats_forPCA_forfastStructure

##gotta change the VCF header version. Same difference, except VCFtools throws an error for v4.3

sed -i 's/VCFv4.3/VCFv4.2/g' ${startingVCF_path}/${samplesRemovedVCF_name}_Bi_plinked_G2_M5_LD_Pruned_forDStats_forPCA_forfastStructure.vcf

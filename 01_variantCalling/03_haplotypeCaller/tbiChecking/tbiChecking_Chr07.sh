#!/bin/bash
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs_new/unsorted
#SBATCH -J tbiChecking_Chr07
#SBATCH --account=ac_acblackman
#SBATCH --partition=savio2_htc
#SBATCH --qos=savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=72:00:00
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/tbiChecking_Chr07.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/tbiChecking_Chr07.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load htslib/1.6

bgzip ANN0810_Chr07.g.vcf
bgzip ANN0820_Chr07.g.vcf
bgzip ANN0830_Chr07.g.vcf
bgzip ANN0835_Chr07.g.vcf
bgzip ANN0849_Chr07.g.vcf
bgzip ANN0854_Chr07.g.vcf
bgzip ANN0867_Chr07.g.vcf
bgzip ANN0874_Chr07.g.vcf
bgzip ANN0880_Chr07.g.vcf
bgzip ANN0882_Chr07.g.vcf
bgzip ANN0898_Chr07.g.vcf
bgzip ANN0908_Chr07.g.vcf
bgzip ANN0918_Chr07.g.vcf
bgzip ANN0927_Chr07.g.vcf
bgzip ANN0931_Chr07.g.vcf
bgzip ANN0946_Chr07.g.vcf
bgzip ANN0956_Chr07.g.vcf
bgzip ANN0957_Chr07.g.vcf
bgzip ANN0959_Chr07.g.vcf
bgzip ANN0962_Chr07.g.vcf
bgzip ANN0963_Chr07.g.vcf
bgzip ANN0964_Chr07.g.vcf
bgzip ANN0972_Chr07.g.vcf
bgzip ANN0975_Chr07.g.vcf
bgzip ANN0978_Chr07.g.vcf
bgzip ANN0981_Chr07.g.vcf
bgzip ANN0985_Chr07.g.vcf
bgzip ANN0986_Chr07.g.vcf
bgzip ANN0992_Chr07.g.vcf
bgzip ANN0996_Chr07.g.vcf
bgzip ANN0997_Chr07.g.vcf
bgzip ANN1002_Chr07.g.vcf
bgzip ANN1003_Chr07.g.vcf
bgzip ANN1004_Chr07.g.vcf
bgzip ANN1011_Chr07.g.vcf
bgzip ANN1012_Chr07.g.vcf
bgzip ANN1019_Chr07.g.vcf
bgzip ANN1029_Chr07.g.vcf
bgzip ANN1040_Chr07.g.vcf
bgzip ANN1046_Chr07.g.vcf
bgzip ANN1053_Chr07.g.vcf
bgzip ANN1062_Chr07.g.vcf
bgzip ANN1073_Chr07.g.vcf
bgzip ANN1083_Chr07.g.vcf
bgzip ANN1095_Chr07.g.vcf
bgzip ANN1106_Chr07.g.vcf
bgzip ANN1115_Chr07.g.vcf
bgzip ANN1127_Chr07.g.vcf
bgzip ANN1134_Chr07.g.vcf
bgzip ANN1143_Chr07.g.vcf
bgzip ANN1151_Chr07.g.vcf
bgzip ANN1152_Chr07.g.vcf
bgzip ANN1153_Chr07.g.vcf
bgzip ANN1154_Chr07.g.vcf
bgzip ANN1155_Chr07.g.vcf
bgzip ANN1156_Chr07.g.vcf
bgzip ANN1157_Chr07.g.vcf
bgzip ANN1159_Chr07.g.vcf
bgzip ANN1160_Chr07.g.vcf
bgzip ANN1162_Chr07.g.vcf
bgzip ANN1164_Chr07.g.vcf
bgzip ANN1169_Chr07.g.vcf
bgzip ANN1171_Chr07.g.vcf
bgzip ANN1172_Chr07.g.vcf
bgzip ANN1173_Chr07.g.vcf
bgzip ANN1174_Chr07.g.vcf
bgzip ANN1175_Chr07.g.vcf
bgzip ANN1176_Chr07.g.vcf
bgzip ANN1177_Chr07.g.vcf
bgzip ANN1178_Chr07.g.vcf
bgzip ANN1179_Chr07.g.vcf
bgzip ANN1180_Chr07.g.vcf
bgzip ANN1181_Chr07.g.vcf
bgzip ANN1182_Chr07.g.vcf
bgzip ANN1183_Chr07.g.vcf
bgzip ANN1184_Chr07.g.vcf
bgzip ANN1185_Chr07.g.vcf
bgzip ANN1186_Chr07.g.vcf
bgzip ANN1187_Chr07.g.vcf
bgzip ANN1188_Chr07.g.vcf
bgzip ANN1189_Chr07.g.vcf
bgzip ANN1190_Chr07.g.vcf
bgzip ANN1191_Chr07.g.vcf
bgzip ANN1192_Chr07.g.vcf
bgzip ANN1193_Chr07.g.vcf
bgzip ANN1194_Chr07.g.vcf
bgzip ANN1195_Chr07.g.vcf
bgzip ANN1196_Chr07.g.vcf
bgzip ANN1197_Chr07.g.vcf
bgzip ANN1198_Chr07.g.vcf
bgzip ANN1199_Chr07.g.vcf
bgzip ANN1200_Chr07.g.vcf
bgzip ANN1201_Chr07.g.vcf
bgzip ANN1202_Chr07.g.vcf
bgzip ANN1203_Chr07.g.vcf
bgzip ANN1204_Chr07.g.vcf
bgzip ANN1205_Chr07.g.vcf
bgzip ANN1206_Chr07.g.vcf
bgzip ANN1207_Chr07.g.vcf
bgzip ANN1208_Chr07.g.vcf
bgzip ANN1209_Chr07.g.vcf
bgzip ANN1210_Chr07.g.vcf
bgzip ANN1216_Chr07.g.vcf
bgzip ANN1218_Chr07.g.vcf
bgzip ANN1219_Chr07.g.vcf
bgzip ANN1260_Chr07.g.vcf
bgzip ANN1268_Chr07.g.vcf
bgzip ANN1273_Chr07.g.vcf
bgzip ANN1284_Chr07.g.vcf
bgzip ANN1296_Chr07.g.vcf
bgzip ANN1297_Chr07.g.vcf
bgzip ANN1300_Chr07.g.vcf
bgzip ANN1301_Chr07.g.vcf
bgzip ANN1309_Chr07.g.vcf
bgzip ANN1310_Chr07.g.vcf
bgzip ANN1311_Chr07.g.vcf
bgzip ANN1316_Chr07.g.vcf
bgzip ANN1319_Chr07.g.vcf
bgzip ANN1322_Chr07.g.vcf
bgzip ANN1328_Chr07.g.vcf
bgzip ANN1330_Chr07.g.vcf
bgzip ANN1331_Chr07.g.vcf
bgzip ANN1341_Chr07.g.vcf
bgzip ANN1407_Chr07.g.vcf
bgzip ANN1419_Chr07.g.vcf
bgzip ANN1420_Chr07.g.vcf
bgzip ANN1439_Chr07.g.vcf
bgzip ANN1501_Chr07.g.vcf
bgzip ARG0054_Chr07.g.vcf
bgzip ARG0169_Chr07.g.vcf
bgzip ARG0204_Chr07.g.vcf
bgzip Anzac_Pueblo_Chr07.g.vcf
bgzip Ari_Broad_Chr07.g.vcf
bgzip Ari_Man_Chr07.g.vcf
bgzip Arikara_122976_Chr07.g.vcf
bgzip Arikara_126306_Chr07.g.vcf
bgzip Arikara_14042_874_Chr07.g.vcf
bgzip Arikara_Chr07.g.vcf
bgzip ED_IA1W1_6_308_Chr07.g.vcf
bgzip ED_IA2W_17_Chr07.g.vcf
bgzip ED_KS1W9_3_342_Chr07.g.vcf
bgzip ED_KS2W24_7_43_Chr07.g.vcf
bgzip ED_MB1W16_2_283_Chr07.g.vcf
bgzip ED_MO1W30-1_114_Chr07.g.vcf
bgzip ED_ND1W27_2_288_Chr07.g.vcf
bgzip ED_SD1W11_7_237_Chr07.g.vcf
bgzip ED_SD2W30_3_360_Chr07.g.vcf
bgzip ED_SK1W15-3_300_Chr07.g.vcf
bgzip HA124_Chr07.g.vcf
bgzip HA207_Chr07.g.vcf
bgzip HA259_Chr07.g.vcf
bgzip HA314_Chr07.g.vcf
bgzip HA316_Chr07.g.vcf
bgzip HA323_Chr07.g.vcf
bgzip HA380_Chr07.g.vcf
bgzip HA404_Chr07.g.vcf
bgzip HA433_Chr07.g.vcf
bgzip HA442_Chr07.g.vcf
bgzip HA821_Chr07.g.vcf
bgzip HA89_Chr07.g.vcf
bgzip Havasupai_Chr07.g.vcf
bgzip Hidatsa_Chr07.g.vcf
bgzip Hopi_dye_NEW_Chr07.g.vcf
bgzip Hopi_mapping_NEW_Chr07.g.vcf
bgzip Hopi_real_NEW_Chr07.g.vcf
bgzip IA1W_11R_Chr07.g.vcf
bgzip IA1W_11_Chr07.g.vcf
bgzip IA1W_15_Chr07.g.vcf
bgzip IA1W_1_Chr07.g.vcf
bgzip IA1W_21_Chr07.g.vcf
bgzip IA1W_28_Chr07.g.vcf
bgzip IA1W_2_Chr07.g.vcf
bgzip IA1W_33_Chr07.g.vcf
bgzip IA1W_39_Chr07.g.vcf
bgzip IA1W_4_Chr07.g.vcf
bgzip IA1W_5_Chr07.g.vcf
bgzip IA2W_11_Chr07.g.vcf
bgzip IA2W_14_Chr07.g.vcf
bgzip IA2W_16_Chr07.g.vcf
bgzip IA2W_29_Chr07.g.vcf
bgzip IA2W_37R_Chr07.g.vcf
bgzip IA2W_37_Chr07.g.vcf
bgzip IA2W_38_Chr07.g.vcf
bgzip IA2W_39_Chr07.g.vcf
bgzip IA2W_6_Chr07.g.vcf
bgzip IA2W_7_Chr07.g.vcf
bgzip KS1W_19_Chr07.g.vcf
bgzip KS1W_24_Chr07.g.vcf
bgzip KS1W_26_Chr07.g.vcf
bgzip KS1W_27_Chr07.g.vcf
bgzip KS1W_29_Chr07.g.vcf
bgzip KS1W_2_Chr07.g.vcf
bgzip KS1W_32_Chr07.g.vcf
bgzip KS1W_35_Chr07.g.vcf
bgzip KS1W_3_Chr07.g.vcf
bgzip KS1W_40_Chr07.g.vcf
bgzip KS1W_9_Chr07.g.vcf
bgzip KS2W_12_Chr07.g.vcf
bgzip KS2W_14_Chr07.g.vcf
bgzip KS2W_15R_Chr07.g.vcf
bgzip KS2W_15_Chr07.g.vcf
bgzip KS2W_24_Chr07.g.vcf
bgzip KS2W_32_Chr07.g.vcf
bgzip KS2W_35_Chr07.g.vcf
bgzip KS2W_6_1R_Chr07.g.vcf
bgzip KS2W_6_Chr07.g.vcf
bgzip KS2W_8_Chr07.g.vcf
bgzip KS2W_9_Chr07.g.vcf
bgzip Laguna_Pueblo_Chr07.g.vcf
bgzip MB1W_11_Chr07.g.vcf
bgzip MB1W_14_Chr07.g.vcf
bgzip MB1W_16B_Chr07.g.vcf
bgzip MB1W_16_Chr07.g.vcf
bgzip MB1W_20_Chr07.g.vcf
bgzip MB1W_30_Chr07.g.vcf
bgzip MB1W_31_Chr07.g.vcf
bgzip MB1W_39_Chr07.g.vcf
bgzip MB1W_40_Chr07.g.vcf
bgzip MB1W_8_Chr07.g.vcf
bgzip MO1W_11_Chr07.g.vcf
bgzip MO1W_15_Chr07.g.vcf
bgzip MO1W_16_Chr07.g.vcf
bgzip MO1W_2R_Chr07.g.vcf
bgzip MO1W_2_Chr07.g.vcf
bgzip MO1W_33_Chr07.g.vcf
bgzip MO1W_38_Chr07.g.vcf
bgzip MO1W_39_Chr07.g.vcf
bgzip MO1W_3_Chr07.g.vcf
bgzip MO1W_7_Chr07.g.vcf
bgzip Mandan1_PPN046_Chr07.g.vcf
bgzip Mandan2_Chr07.g.vcf
bgzip MexCult14_Chr07.g.vcf
bgzip MexCult15_Chr07.g.vcf
bgzip MexCult1_Chr07.g.vcf
bgzip MexCult3_Chr07.g.vcf
bgzip MexCult6_Chr07.g.vcf
bgzip MexCult7_Chr07.g.vcf
bgzip MexCult9_Chr07.g.vcf
bgzip ND1W_12_Chr07.g.vcf
bgzip ND1W_20_Chr07.g.vcf
bgzip ND1W_22_Chr07.g.vcf
bgzip ND1W_25_Chr07.g.vcf
bgzip ND1W_27_Chr07.g.vcf
bgzip ND1W_31_Chr07.g.vcf
bgzip ND1W_33_Chr07.g.vcf
bgzip ND1W_36_Chr07.g.vcf
bgzip ND1W_38_Chr07.g.vcf
bgzip ND1W_6_Chr07.g.vcf
bgzip NIV1468_Chr07.g.vcf
bgzip NIV1487_Chr07.g.vcf
bgzip PET0316_Chr07.g.vcf
bgzip PET0372_Chr07.g.vcf
bgzip PET0473N_Chr07.g.vcf
bgzip PET0532_Chr07.g.vcf
bgzip PET0580_Chr07.g.vcf
bgzip PET0636_Chr07.g.vcf
bgzip PET0654_Chr07.g.vcf
bgzip PET0712_Chr07.g.vcf
bgzip PET0732_Chr07.g.vcf
bgzip Paiute_Chr07.g.vcf
bgzip Pueblo_Chr07.g.vcf
bgzip RHA271_Chr07.g.vcf
bgzip RHA309_Chr07.g.vcf
bgzip RHA310_Chr07.g.vcf
bgzip RHA324_Chr07.g.vcf
bgzip RHA328_Chr07.g.vcf
bgzip RHA354_Chr07.g.vcf
bgzip RHA358_Chr07.g.vcf
bgzip RHA362_Chr07.g.vcf
bgzip RHA397_Chr07.g.vcf
bgzip RHA408_Chr07.g.vcf
bgzip RHA426_Chr07.g.vcf
bgzip RHA857_Chr07.g.vcf
bgzip SD1W_13_Chr07.g.vcf
bgzip SD1W_14_Chr07.g.vcf
bgzip SD1W_15_Chr07.g.vcf
bgzip SD1W_20_Chr07.g.vcf
bgzip SD1W_21B_Chr07.g.vcf
bgzip SD1W_21_Chr07.g.vcf
bgzip SD1W_35_Chr07.g.vcf
bgzip SD1W_4_Chr07.g.vcf
bgzip SD1W_6_Chr07.g.vcf
bgzip SD2W_14_Chr07.g.vcf
bgzip SD2W_15_Chr07.g.vcf
bgzip SD2W_18_Chr07.g.vcf
bgzip SD2W_19_Chr07.g.vcf
bgzip SD2W_21_Chr07.g.vcf
bgzip SD2W_23R_Chr07.g.vcf
bgzip SD2W_23_Chr07.g.vcf
bgzip SD2W_27_Chr07.g.vcf
bgzip SD2W_30_Chr07.g.vcf
bgzip SD2W_38_Chr07.g.vcf
bgzip SD2W_40_Chr07.g.vcf
bgzip SD2W_5_Chr07.g.vcf
bgzip SIP_Chr07.g.vcf
bgzip SK1W_15_Chr07.g.vcf
bgzip SK1W_1_Chr07.g.vcf
bgzip SK1W_22R_Chr07.g.vcf
bgzip SK1W_22_Chr07.g.vcf
bgzip SK1W_25_Chr07.g.vcf
bgzip SK1W_29R_Chr07.g.vcf
bgzip SK1W_29_Chr07.g.vcf
bgzip SK1W_36_Chr07.g.vcf
bgzip SK1W_37_Chr07.g.vcf
bgzip SK1W_Q_Chr07.g.vcf
bgzip Se_Purp_Chr07.g.vcf
bgzip Se_Strip_682a_Chr07.g.vcf
bgzip Se_Strip_682b_Chr07.g.vcf
bgzip Seneca_137749_Chr07.g.vcf
bgzip Seneca_Chr07.g.vcf
bgzip Zuni_Chr07.g.vcf
bgzip ann01_cwIA_Chr07.g.vcf
bgzip ann04_nwAR_Chr07.g.vcf
bgzip ann05_ccNM_Chr07.g.vcf
bgzip ann06_seWY_Chr07.g.vcf
bgzip ann10_ccIL_Chr07.g.vcf
bgzip ann20_seAZ_Chr07.g.vcf
bgzip ann28_swSK_Chr07.g.vcf
bgzip ann29_neSD_Chr07.g.vcf
bgzip ann34_cwKS_Chr07.g.vcf
bgzip ann39_ncNE_Chr07.g.vcf
bgzip ann44_ccCA_Chr07.g.vcf
bgzip annMex_A1516_Chr07.g.vcf
bgzip annMex_A1517_Chr07.g.vcf
bgzip annMex_A1572_Chr07.g.vcf
bgzip annMex_A1574_Chr07.g.vcf
bgzip annMex_Ann261_Chr07.g.vcf

tabix -p vcf -f ANN0810_Chr07.g.vcf.gz
tabix -p vcf -f ANN0820_Chr07.g.vcf.gz
tabix -p vcf -f ANN0830_Chr07.g.vcf.gz
tabix -p vcf -f ANN0835_Chr07.g.vcf.gz
tabix -p vcf -f ANN0849_Chr07.g.vcf.gz
tabix -p vcf -f ANN0854_Chr07.g.vcf.gz
tabix -p vcf -f ANN0867_Chr07.g.vcf.gz
tabix -p vcf -f ANN0874_Chr07.g.vcf.gz
tabix -p vcf -f ANN0880_Chr07.g.vcf.gz
tabix -p vcf -f ANN0882_Chr07.g.vcf.gz
tabix -p vcf -f ANN0898_Chr07.g.vcf.gz
tabix -p vcf -f ANN0908_Chr07.g.vcf.gz
tabix -p vcf -f ANN0918_Chr07.g.vcf.gz
tabix -p vcf -f ANN0927_Chr07.g.vcf.gz
tabix -p vcf -f ANN0931_Chr07.g.vcf.gz
tabix -p vcf -f ANN0946_Chr07.g.vcf.gz
tabix -p vcf -f ANN0956_Chr07.g.vcf.gz
tabix -p vcf -f ANN0957_Chr07.g.vcf.gz
tabix -p vcf -f ANN0959_Chr07.g.vcf.gz
tabix -p vcf -f ANN0962_Chr07.g.vcf.gz
tabix -p vcf -f ANN0963_Chr07.g.vcf.gz
tabix -p vcf -f ANN0964_Chr07.g.vcf.gz
tabix -p vcf -f ANN0972_Chr07.g.vcf.gz
tabix -p vcf -f ANN0975_Chr07.g.vcf.gz
tabix -p vcf -f ANN0978_Chr07.g.vcf.gz
tabix -p vcf -f ANN0981_Chr07.g.vcf.gz
tabix -p vcf -f ANN0985_Chr07.g.vcf.gz
tabix -p vcf -f ANN0986_Chr07.g.vcf.gz
tabix -p vcf -f ANN0992_Chr07.g.vcf.gz
tabix -p vcf -f ANN0996_Chr07.g.vcf.gz
tabix -p vcf -f ANN0997_Chr07.g.vcf.gz
tabix -p vcf -f ANN1002_Chr07.g.vcf.gz
tabix -p vcf -f ANN1003_Chr07.g.vcf.gz
tabix -p vcf -f ANN1004_Chr07.g.vcf.gz
tabix -p vcf -f ANN1011_Chr07.g.vcf.gz
tabix -p vcf -f ANN1012_Chr07.g.vcf.gz
tabix -p vcf -f ANN1019_Chr07.g.vcf.gz
tabix -p vcf -f ANN1029_Chr07.g.vcf.gz
tabix -p vcf -f ANN1040_Chr07.g.vcf.gz
tabix -p vcf -f ANN1046_Chr07.g.vcf.gz
tabix -p vcf -f ANN1053_Chr07.g.vcf.gz
tabix -p vcf -f ANN1062_Chr07.g.vcf.gz
tabix -p vcf -f ANN1073_Chr07.g.vcf.gz
tabix -p vcf -f ANN1083_Chr07.g.vcf.gz
tabix -p vcf -f ANN1095_Chr07.g.vcf.gz
tabix -p vcf -f ANN1106_Chr07.g.vcf.gz
tabix -p vcf -f ANN1115_Chr07.g.vcf.gz
tabix -p vcf -f ANN1127_Chr07.g.vcf.gz
tabix -p vcf -f ANN1134_Chr07.g.vcf.gz
tabix -p vcf -f ANN1143_Chr07.g.vcf.gz
tabix -p vcf -f ANN1151_Chr07.g.vcf.gz
tabix -p vcf -f ANN1152_Chr07.g.vcf.gz
tabix -p vcf -f ANN1153_Chr07.g.vcf.gz
tabix -p vcf -f ANN1154_Chr07.g.vcf.gz
tabix -p vcf -f ANN1155_Chr07.g.vcf.gz
tabix -p vcf -f ANN1156_Chr07.g.vcf.gz
tabix -p vcf -f ANN1157_Chr07.g.vcf.gz
tabix -p vcf -f ANN1159_Chr07.g.vcf.gz
tabix -p vcf -f ANN1160_Chr07.g.vcf.gz
tabix -p vcf -f ANN1162_Chr07.g.vcf.gz
tabix -p vcf -f ANN1164_Chr07.g.vcf.gz
tabix -p vcf -f ANN1169_Chr07.g.vcf.gz
tabix -p vcf -f ANN1171_Chr07.g.vcf.gz
tabix -p vcf -f ANN1172_Chr07.g.vcf.gz
tabix -p vcf -f ANN1173_Chr07.g.vcf.gz
tabix -p vcf -f ANN1174_Chr07.g.vcf.gz
tabix -p vcf -f ANN1175_Chr07.g.vcf.gz
tabix -p vcf -f ANN1176_Chr07.g.vcf.gz
tabix -p vcf -f ANN1177_Chr07.g.vcf.gz
tabix -p vcf -f ANN1178_Chr07.g.vcf.gz
tabix -p vcf -f ANN1179_Chr07.g.vcf.gz
tabix -p vcf -f ANN1180_Chr07.g.vcf.gz
tabix -p vcf -f ANN1181_Chr07.g.vcf.gz
tabix -p vcf -f ANN1182_Chr07.g.vcf.gz
tabix -p vcf -f ANN1183_Chr07.g.vcf.gz
tabix -p vcf -f ANN1184_Chr07.g.vcf.gz
tabix -p vcf -f ANN1185_Chr07.g.vcf.gz
tabix -p vcf -f ANN1186_Chr07.g.vcf.gz
tabix -p vcf -f ANN1187_Chr07.g.vcf.gz
tabix -p vcf -f ANN1188_Chr07.g.vcf.gz
tabix -p vcf -f ANN1189_Chr07.g.vcf.gz
tabix -p vcf -f ANN1190_Chr07.g.vcf.gz
tabix -p vcf -f ANN1191_Chr07.g.vcf.gz
tabix -p vcf -f ANN1192_Chr07.g.vcf.gz
tabix -p vcf -f ANN1193_Chr07.g.vcf.gz
tabix -p vcf -f ANN1194_Chr07.g.vcf.gz
tabix -p vcf -f ANN1195_Chr07.g.vcf.gz
tabix -p vcf -f ANN1196_Chr07.g.vcf.gz
tabix -p vcf -f ANN1197_Chr07.g.vcf.gz
tabix -p vcf -f ANN1198_Chr07.g.vcf.gz
tabix -p vcf -f ANN1199_Chr07.g.vcf.gz
tabix -p vcf -f ANN1200_Chr07.g.vcf.gz
tabix -p vcf -f ANN1201_Chr07.g.vcf.gz
tabix -p vcf -f ANN1202_Chr07.g.vcf.gz
tabix -p vcf -f ANN1203_Chr07.g.vcf.gz
tabix -p vcf -f ANN1204_Chr07.g.vcf.gz
tabix -p vcf -f ANN1205_Chr07.g.vcf.gz
tabix -p vcf -f ANN1206_Chr07.g.vcf.gz
tabix -p vcf -f ANN1207_Chr07.g.vcf.gz
tabix -p vcf -f ANN1208_Chr07.g.vcf.gz
tabix -p vcf -f ANN1209_Chr07.g.vcf.gz
tabix -p vcf -f ANN1210_Chr07.g.vcf.gz
tabix -p vcf -f ANN1216_Chr07.g.vcf.gz
tabix -p vcf -f ANN1218_Chr07.g.vcf.gz
tabix -p vcf -f ANN1219_Chr07.g.vcf.gz
tabix -p vcf -f ANN1260_Chr07.g.vcf.gz
tabix -p vcf -f ANN1268_Chr07.g.vcf.gz
tabix -p vcf -f ANN1273_Chr07.g.vcf.gz
tabix -p vcf -f ANN1284_Chr07.g.vcf.gz
tabix -p vcf -f ANN1296_Chr07.g.vcf.gz
tabix -p vcf -f ANN1297_Chr07.g.vcf.gz
tabix -p vcf -f ANN1300_Chr07.g.vcf.gz
tabix -p vcf -f ANN1301_Chr07.g.vcf.gz
tabix -p vcf -f ANN1309_Chr07.g.vcf.gz
tabix -p vcf -f ANN1310_Chr07.g.vcf.gz
tabix -p vcf -f ANN1311_Chr07.g.vcf.gz
tabix -p vcf -f ANN1316_Chr07.g.vcf.gz
tabix -p vcf -f ANN1319_Chr07.g.vcf.gz
tabix -p vcf -f ANN1322_Chr07.g.vcf.gz
tabix -p vcf -f ANN1328_Chr07.g.vcf.gz
tabix -p vcf -f ANN1330_Chr07.g.vcf.gz
tabix -p vcf -f ANN1331_Chr07.g.vcf.gz
tabix -p vcf -f ANN1341_Chr07.g.vcf.gz
tabix -p vcf -f ANN1407_Chr07.g.vcf.gz
tabix -p vcf -f ANN1419_Chr07.g.vcf.gz
tabix -p vcf -f ANN1420_Chr07.g.vcf.gz
tabix -p vcf -f ANN1439_Chr07.g.vcf.gz
tabix -p vcf -f ANN1501_Chr07.g.vcf.gz
tabix -p vcf -f ARG0054_Chr07.g.vcf.gz
tabix -p vcf -f ARG0169_Chr07.g.vcf.gz
tabix -p vcf -f ARG0204_Chr07.g.vcf.gz
tabix -p vcf -f Anzac_Pueblo_Chr07.g.vcf.gz
tabix -p vcf -f Ari_Broad_Chr07.g.vcf.gz
tabix -p vcf -f Ari_Man_Chr07.g.vcf.gz
tabix -p vcf -f Arikara_122976_Chr07.g.vcf.gz
tabix -p vcf -f Arikara_126306_Chr07.g.vcf.gz
tabix -p vcf -f Arikara_14042_874_Chr07.g.vcf.gz
tabix -p vcf -f Arikara_Chr07.g.vcf.gz
tabix -p vcf -f ED_IA1W1_6_308_Chr07.g.vcf.gz
tabix -p vcf -f ED_IA2W_17_Chr07.g.vcf.gz
tabix -p vcf -f ED_KS1W9_3_342_Chr07.g.vcf.gz
tabix -p vcf -f ED_KS2W24_7_43_Chr07.g.vcf.gz
tabix -p vcf -f ED_MB1W16_2_283_Chr07.g.vcf.gz
tabix -p vcf -f ED_MO1W30-1_114_Chr07.g.vcf.gz
tabix -p vcf -f ED_ND1W27_2_288_Chr07.g.vcf.gz
tabix -p vcf -f ED_SD1W11_7_237_Chr07.g.vcf.gz
tabix -p vcf -f ED_SD2W30_3_360_Chr07.g.vcf.gz
tabix -p vcf -f ED_SK1W15-3_300_Chr07.g.vcf.gz
tabix -p vcf -f HA124_Chr07.g.vcf.gz
tabix -p vcf -f HA207_Chr07.g.vcf.gz
tabix -p vcf -f HA259_Chr07.g.vcf.gz
tabix -p vcf -f HA314_Chr07.g.vcf.gz
tabix -p vcf -f HA316_Chr07.g.vcf.gz
tabix -p vcf -f HA323_Chr07.g.vcf.gz
tabix -p vcf -f HA380_Chr07.g.vcf.gz
tabix -p vcf -f HA404_Chr07.g.vcf.gz
tabix -p vcf -f HA433_Chr07.g.vcf.gz
tabix -p vcf -f HA442_Chr07.g.vcf.gz
tabix -p vcf -f HA821_Chr07.g.vcf.gz
tabix -p vcf -f HA89_Chr07.g.vcf.gz
tabix -p vcf -f Havasupai_Chr07.g.vcf.gz
tabix -p vcf -f Hidatsa_Chr07.g.vcf.gz
tabix -p vcf -f Hopi_dye_NEW_Chr07.g.vcf.gz
tabix -p vcf -f Hopi_mapping_NEW_Chr07.g.vcf.gz
tabix -p vcf -f Hopi_real_NEW_Chr07.g.vcf.gz
tabix -p vcf -f IA1W_11R_Chr07.g.vcf.gz
tabix -p vcf -f IA1W_11_Chr07.g.vcf.gz
tabix -p vcf -f IA1W_15_Chr07.g.vcf.gz
tabix -p vcf -f IA1W_1_Chr07.g.vcf.gz
tabix -p vcf -f IA1W_21_Chr07.g.vcf.gz
tabix -p vcf -f IA1W_28_Chr07.g.vcf.gz
tabix -p vcf -f IA1W_2_Chr07.g.vcf.gz
tabix -p vcf -f IA1W_33_Chr07.g.vcf.gz
tabix -p vcf -f IA1W_39_Chr07.g.vcf.gz
tabix -p vcf -f IA1W_4_Chr07.g.vcf.gz
tabix -p vcf -f IA1W_5_Chr07.g.vcf.gz
tabix -p vcf -f IA2W_11_Chr07.g.vcf.gz
tabix -p vcf -f IA2W_14_Chr07.g.vcf.gz
tabix -p vcf -f IA2W_16_Chr07.g.vcf.gz
tabix -p vcf -f IA2W_29_Chr07.g.vcf.gz
tabix -p vcf -f IA2W_37R_Chr07.g.vcf.gz
tabix -p vcf -f IA2W_37_Chr07.g.vcf.gz
tabix -p vcf -f IA2W_38_Chr07.g.vcf.gz
tabix -p vcf -f IA2W_39_Chr07.g.vcf.gz
tabix -p vcf -f IA2W_6_Chr07.g.vcf.gz
tabix -p vcf -f IA2W_7_Chr07.g.vcf.gz
tabix -p vcf -f KS1W_19_Chr07.g.vcf.gz
tabix -p vcf -f KS1W_24_Chr07.g.vcf.gz
tabix -p vcf -f KS1W_26_Chr07.g.vcf.gz
tabix -p vcf -f KS1W_27_Chr07.g.vcf.gz
tabix -p vcf -f KS1W_29_Chr07.g.vcf.gz
tabix -p vcf -f KS1W_2_Chr07.g.vcf.gz
tabix -p vcf -f KS1W_32_Chr07.g.vcf.gz
tabix -p vcf -f KS1W_35_Chr07.g.vcf.gz
tabix -p vcf -f KS1W_3_Chr07.g.vcf.gz
tabix -p vcf -f KS1W_40_Chr07.g.vcf.gz
tabix -p vcf -f KS1W_9_Chr07.g.vcf.gz
tabix -p vcf -f KS2W_12_Chr07.g.vcf.gz
tabix -p vcf -f KS2W_14_Chr07.g.vcf.gz
tabix -p vcf -f KS2W_15R_Chr07.g.vcf.gz
tabix -p vcf -f KS2W_15_Chr07.g.vcf.gz
tabix -p vcf -f KS2W_24_Chr07.g.vcf.gz
tabix -p vcf -f KS2W_32_Chr07.g.vcf.gz
tabix -p vcf -f KS2W_35_Chr07.g.vcf.gz
tabix -p vcf -f KS2W_6_1R_Chr07.g.vcf.gz
tabix -p vcf -f KS2W_6_Chr07.g.vcf.gz
tabix -p vcf -f KS2W_8_Chr07.g.vcf.gz
tabix -p vcf -f KS2W_9_Chr07.g.vcf.gz
tabix -p vcf -f Laguna_Pueblo_Chr07.g.vcf.gz
tabix -p vcf -f MB1W_11_Chr07.g.vcf.gz
tabix -p vcf -f MB1W_14_Chr07.g.vcf.gz
tabix -p vcf -f MB1W_16B_Chr07.g.vcf.gz
tabix -p vcf -f MB1W_16_Chr07.g.vcf.gz
tabix -p vcf -f MB1W_20_Chr07.g.vcf.gz
tabix -p vcf -f MB1W_30_Chr07.g.vcf.gz
tabix -p vcf -f MB1W_31_Chr07.g.vcf.gz
tabix -p vcf -f MB1W_39_Chr07.g.vcf.gz
tabix -p vcf -f MB1W_40_Chr07.g.vcf.gz
tabix -p vcf -f MB1W_8_Chr07.g.vcf.gz
tabix -p vcf -f MO1W_11_Chr07.g.vcf.gz
tabix -p vcf -f MO1W_15_Chr07.g.vcf.gz
tabix -p vcf -f MO1W_16_Chr07.g.vcf.gz
tabix -p vcf -f MO1W_2R_Chr07.g.vcf.gz
tabix -p vcf -f MO1W_2_Chr07.g.vcf.gz
tabix -p vcf -f MO1W_33_Chr07.g.vcf.gz
tabix -p vcf -f MO1W_38_Chr07.g.vcf.gz
tabix -p vcf -f MO1W_39_Chr07.g.vcf.gz
tabix -p vcf -f MO1W_3_Chr07.g.vcf.gz
tabix -p vcf -f MO1W_7_Chr07.g.vcf.gz
tabix -p vcf -f Mandan1_PPN046_Chr07.g.vcf.gz
tabix -p vcf -f Mandan2_Chr07.g.vcf.gz
tabix -p vcf -f MexCult14_Chr07.g.vcf.gz
tabix -p vcf -f MexCult15_Chr07.g.vcf.gz
tabix -p vcf -f MexCult1_Chr07.g.vcf.gz
tabix -p vcf -f MexCult3_Chr07.g.vcf.gz
tabix -p vcf -f MexCult6_Chr07.g.vcf.gz
tabix -p vcf -f MexCult7_Chr07.g.vcf.gz
tabix -p vcf -f MexCult9_Chr07.g.vcf.gz
tabix -p vcf -f ND1W_12_Chr07.g.vcf.gz
tabix -p vcf -f ND1W_20_Chr07.g.vcf.gz
tabix -p vcf -f ND1W_22_Chr07.g.vcf.gz
tabix -p vcf -f ND1W_25_Chr07.g.vcf.gz
tabix -p vcf -f ND1W_27_Chr07.g.vcf.gz
tabix -p vcf -f ND1W_31_Chr07.g.vcf.gz
tabix -p vcf -f ND1W_33_Chr07.g.vcf.gz
tabix -p vcf -f ND1W_36_Chr07.g.vcf.gz
tabix -p vcf -f ND1W_38_Chr07.g.vcf.gz
tabix -p vcf -f ND1W_6_Chr07.g.vcf.gz
tabix -p vcf -f NIV1468_Chr07.g.vcf.gz
tabix -p vcf -f NIV1487_Chr07.g.vcf.gz
tabix -p vcf -f PET0316_Chr07.g.vcf.gz
tabix -p vcf -f PET0372_Chr07.g.vcf.gz
tabix -p vcf -f PET0473N_Chr07.g.vcf.gz
tabix -p vcf -f PET0532_Chr07.g.vcf.gz
tabix -p vcf -f PET0580_Chr07.g.vcf.gz
tabix -p vcf -f PET0636_Chr07.g.vcf.gz
tabix -p vcf -f PET0654_Chr07.g.vcf.gz
tabix -p vcf -f PET0712_Chr07.g.vcf.gz
tabix -p vcf -f PET0732_Chr07.g.vcf.gz
tabix -p vcf -f Paiute_Chr07.g.vcf.gz
tabix -p vcf -f Pueblo_Chr07.g.vcf.gz
tabix -p vcf -f RHA271_Chr07.g.vcf.gz
tabix -p vcf -f RHA309_Chr07.g.vcf.gz
tabix -p vcf -f RHA310_Chr07.g.vcf.gz
tabix -p vcf -f RHA324_Chr07.g.vcf.gz
tabix -p vcf -f RHA328_Chr07.g.vcf.gz
tabix -p vcf -f RHA354_Chr07.g.vcf.gz
tabix -p vcf -f RHA358_Chr07.g.vcf.gz
tabix -p vcf -f RHA362_Chr07.g.vcf.gz
tabix -p vcf -f RHA397_Chr07.g.vcf.gz
tabix -p vcf -f RHA408_Chr07.g.vcf.gz
tabix -p vcf -f RHA426_Chr07.g.vcf.gz
tabix -p vcf -f RHA857_Chr07.g.vcf.gz
tabix -p vcf -f SD1W_13_Chr07.g.vcf.gz
tabix -p vcf -f SD1W_14_Chr07.g.vcf.gz
tabix -p vcf -f SD1W_15_Chr07.g.vcf.gz
tabix -p vcf -f SD1W_20_Chr07.g.vcf.gz
tabix -p vcf -f SD1W_21B_Chr07.g.vcf.gz
tabix -p vcf -f SD1W_21_Chr07.g.vcf.gz
tabix -p vcf -f SD1W_35_Chr07.g.vcf.gz
tabix -p vcf -f SD1W_4_Chr07.g.vcf.gz
tabix -p vcf -f SD1W_6_Chr07.g.vcf.gz
tabix -p vcf -f SD2W_14_Chr07.g.vcf.gz
tabix -p vcf -f SD2W_15_Chr07.g.vcf.gz
tabix -p vcf -f SD2W_18_Chr07.g.vcf.gz
tabix -p vcf -f SD2W_19_Chr07.g.vcf.gz
tabix -p vcf -f SD2W_21_Chr07.g.vcf.gz
tabix -p vcf -f SD2W_23R_Chr07.g.vcf.gz
tabix -p vcf -f SD2W_23_Chr07.g.vcf.gz
tabix -p vcf -f SD2W_27_Chr07.g.vcf.gz
tabix -p vcf -f SD2W_30_Chr07.g.vcf.gz
tabix -p vcf -f SD2W_38_Chr07.g.vcf.gz
tabix -p vcf -f SD2W_40_Chr07.g.vcf.gz
tabix -p vcf -f SD2W_5_Chr07.g.vcf.gz
tabix -p vcf -f SIP_Chr07.g.vcf.gz
tabix -p vcf -f SK1W_15_Chr07.g.vcf.gz
tabix -p vcf -f SK1W_1_Chr07.g.vcf.gz
tabix -p vcf -f SK1W_22R_Chr07.g.vcf.gz
tabix -p vcf -f SK1W_22_Chr07.g.vcf.gz
tabix -p vcf -f SK1W_25_Chr07.g.vcf.gz
tabix -p vcf -f SK1W_29R_Chr07.g.vcf.gz
tabix -p vcf -f SK1W_29_Chr07.g.vcf.gz
tabix -p vcf -f SK1W_36_Chr07.g.vcf.gz
tabix -p vcf -f SK1W_37_Chr07.g.vcf.gz
tabix -p vcf -f SK1W_Q_Chr07.g.vcf.gz
tabix -p vcf -f Se_Purp_Chr07.g.vcf.gz
tabix -p vcf -f Se_Strip_682a_Chr07.g.vcf.gz
tabix -p vcf -f Se_Strip_682b_Chr07.g.vcf.gz
tabix -p vcf -f Seneca_137749_Chr07.g.vcf.gz
tabix -p vcf -f Seneca_Chr07.g.vcf.gz
tabix -p vcf -f Zuni_Chr07.g.vcf.gz
tabix -p vcf -f ann01_cwIA_Chr07.g.vcf.gz
tabix -p vcf -f ann04_nwAR_Chr07.g.vcf.gz
tabix -p vcf -f ann05_ccNM_Chr07.g.vcf.gz
tabix -p vcf -f ann06_seWY_Chr07.g.vcf.gz
tabix -p vcf -f ann10_ccIL_Chr07.g.vcf.gz
tabix -p vcf -f ann20_seAZ_Chr07.g.vcf.gz
tabix -p vcf -f ann28_swSK_Chr07.g.vcf.gz
tabix -p vcf -f ann29_neSD_Chr07.g.vcf.gz
tabix -p vcf -f ann34_cwKS_Chr07.g.vcf.gz
tabix -p vcf -f ann39_ncNE_Chr07.g.vcf.gz
tabix -p vcf -f ann44_ccCA_Chr07.g.vcf.gz
tabix -p vcf -f annMex_A1516_Chr07.g.vcf.gz
tabix -p vcf -f annMex_A1517_Chr07.g.vcf.gz
tabix -p vcf -f annMex_A1572_Chr07.g.vcf.gz
tabix -p vcf -f annMex_A1574_Chr07.g.vcf.gz
tabix -p vcf -f annMex_Ann261_Chr07.g.vcf.gz
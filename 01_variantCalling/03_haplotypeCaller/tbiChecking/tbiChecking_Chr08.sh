#!/bin/bash
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs_new/unsorted
#SBATCH -J tbiChecking_Chr08
#SBATCH --account=ac_acblackman
#SBATCH --partition=savio2_htc
#SBATCH --qos=savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=72:00:00
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/tbiChecking_Chr08.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/tbiChecking_Chr08.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load htslib/1.6

bgzip ANN0810_Chr08.g.vcf
bgzip ANN0820_Chr08.g.vcf
bgzip ANN0830_Chr08.g.vcf
bgzip ANN0835_Chr08.g.vcf
bgzip ANN0849_Chr08.g.vcf
bgzip ANN0854_Chr08.g.vcf
bgzip ANN0867_Chr08.g.vcf
bgzip ANN0874_Chr08.g.vcf
bgzip ANN0880_Chr08.g.vcf
bgzip ANN0882_Chr08.g.vcf
bgzip ANN0898_Chr08.g.vcf
bgzip ANN0908_Chr08.g.vcf
bgzip ANN0918_Chr08.g.vcf
bgzip ANN0927_Chr08.g.vcf
bgzip ANN0931_Chr08.g.vcf
bgzip ANN0946_Chr08.g.vcf
bgzip ANN0956_Chr08.g.vcf
bgzip ANN0957_Chr08.g.vcf
bgzip ANN0959_Chr08.g.vcf
bgzip ANN0962_Chr08.g.vcf
bgzip ANN0963_Chr08.g.vcf
bgzip ANN0964_Chr08.g.vcf
bgzip ANN0972_Chr08.g.vcf
bgzip ANN0975_Chr08.g.vcf
bgzip ANN0978_Chr08.g.vcf
bgzip ANN0981_Chr08.g.vcf
bgzip ANN0985_Chr08.g.vcf
bgzip ANN0986_Chr08.g.vcf
bgzip ANN0992_Chr08.g.vcf
bgzip ANN0996_Chr08.g.vcf
bgzip ANN0997_Chr08.g.vcf
bgzip ANN1002_Chr08.g.vcf
bgzip ANN1003_Chr08.g.vcf
bgzip ANN1004_Chr08.g.vcf
bgzip ANN1011_Chr08.g.vcf
bgzip ANN1012_Chr08.g.vcf
bgzip ANN1019_Chr08.g.vcf
bgzip ANN1029_Chr08.g.vcf
bgzip ANN1040_Chr08.g.vcf
bgzip ANN1046_Chr08.g.vcf
bgzip ANN1053_Chr08.g.vcf
bgzip ANN1062_Chr08.g.vcf
bgzip ANN1073_Chr08.g.vcf
bgzip ANN1083_Chr08.g.vcf
bgzip ANN1095_Chr08.g.vcf
bgzip ANN1106_Chr08.g.vcf
bgzip ANN1115_Chr08.g.vcf
bgzip ANN1127_Chr08.g.vcf
bgzip ANN1134_Chr08.g.vcf
bgzip ANN1143_Chr08.g.vcf
bgzip ANN1151_Chr08.g.vcf
bgzip ANN1152_Chr08.g.vcf
bgzip ANN1153_Chr08.g.vcf
bgzip ANN1154_Chr08.g.vcf
bgzip ANN1155_Chr08.g.vcf
bgzip ANN1156_Chr08.g.vcf
bgzip ANN1157_Chr08.g.vcf
bgzip ANN1159_Chr08.g.vcf
bgzip ANN1160_Chr08.g.vcf
bgzip ANN1162_Chr08.g.vcf
bgzip ANN1164_Chr08.g.vcf
bgzip ANN1169_Chr08.g.vcf
bgzip ANN1171_Chr08.g.vcf
bgzip ANN1172_Chr08.g.vcf
bgzip ANN1173_Chr08.g.vcf
bgzip ANN1174_Chr08.g.vcf
bgzip ANN1175_Chr08.g.vcf
bgzip ANN1176_Chr08.g.vcf
bgzip ANN1177_Chr08.g.vcf
bgzip ANN1178_Chr08.g.vcf
bgzip ANN1179_Chr08.g.vcf
bgzip ANN1180_Chr08.g.vcf
bgzip ANN1181_Chr08.g.vcf
bgzip ANN1182_Chr08.g.vcf
bgzip ANN1183_Chr08.g.vcf
bgzip ANN1184_Chr08.g.vcf
bgzip ANN1185_Chr08.g.vcf
bgzip ANN1186_Chr08.g.vcf
bgzip ANN1187_Chr08.g.vcf
bgzip ANN1188_Chr08.g.vcf
bgzip ANN1189_Chr08.g.vcf
bgzip ANN1190_Chr08.g.vcf
bgzip ANN1191_Chr08.g.vcf
bgzip ANN1192_Chr08.g.vcf
bgzip ANN1193_Chr08.g.vcf
bgzip ANN1194_Chr08.g.vcf
bgzip ANN1195_Chr08.g.vcf
bgzip ANN1196_Chr08.g.vcf
bgzip ANN1197_Chr08.g.vcf
bgzip ANN1198_Chr08.g.vcf
bgzip ANN1199_Chr08.g.vcf
bgzip ANN1200_Chr08.g.vcf
bgzip ANN1201_Chr08.g.vcf
bgzip ANN1202_Chr08.g.vcf
bgzip ANN1203_Chr08.g.vcf
bgzip ANN1204_Chr08.g.vcf
bgzip ANN1205_Chr08.g.vcf
bgzip ANN1206_Chr08.g.vcf
bgzip ANN1207_Chr08.g.vcf
bgzip ANN1208_Chr08.g.vcf
bgzip ANN1209_Chr08.g.vcf
bgzip ANN1210_Chr08.g.vcf
bgzip ANN1216_Chr08.g.vcf
bgzip ANN1218_Chr08.g.vcf
bgzip ANN1219_Chr08.g.vcf
bgzip ANN1260_Chr08.g.vcf
bgzip ANN1268_Chr08.g.vcf
bgzip ANN1273_Chr08.g.vcf
bgzip ANN1284_Chr08.g.vcf
bgzip ANN1296_Chr08.g.vcf
bgzip ANN1297_Chr08.g.vcf
bgzip ANN1300_Chr08.g.vcf
bgzip ANN1301_Chr08.g.vcf
bgzip ANN1309_Chr08.g.vcf
bgzip ANN1310_Chr08.g.vcf
bgzip ANN1311_Chr08.g.vcf
bgzip ANN1316_Chr08.g.vcf
bgzip ANN1319_Chr08.g.vcf
bgzip ANN1322_Chr08.g.vcf
bgzip ANN1328_Chr08.g.vcf
bgzip ANN1330_Chr08.g.vcf
bgzip ANN1331_Chr08.g.vcf
bgzip ANN1341_Chr08.g.vcf
bgzip ANN1407_Chr08.g.vcf
bgzip ANN1419_Chr08.g.vcf
bgzip ANN1420_Chr08.g.vcf
bgzip ANN1439_Chr08.g.vcf
bgzip ANN1501_Chr08.g.vcf
bgzip ARG0054_Chr08.g.vcf
bgzip ARG0169_Chr08.g.vcf
bgzip ARG0204_Chr08.g.vcf
bgzip Anzac_Pueblo_Chr08.g.vcf
bgzip Ari_Broad_Chr08.g.vcf
bgzip Ari_Man_Chr08.g.vcf
bgzip Arikara_122976_Chr08.g.vcf
bgzip Arikara_126306_Chr08.g.vcf
bgzip Arikara_14042_874_Chr08.g.vcf
bgzip Arikara_Chr08.g.vcf
bgzip ED_IA1W1_6_308_Chr08.g.vcf
bgzip ED_IA2W_17_Chr08.g.vcf
bgzip ED_KS1W9_3_342_Chr08.g.vcf
bgzip ED_KS2W24_7_43_Chr08.g.vcf
bgzip ED_MB1W16_2_283_Chr08.g.vcf
bgzip ED_MO1W30-1_114_Chr08.g.vcf
bgzip ED_ND1W27_2_288_Chr08.g.vcf
bgzip ED_SD1W11_7_237_Chr08.g.vcf
bgzip ED_SD2W30_3_360_Chr08.g.vcf
bgzip ED_SK1W15-3_300_Chr08.g.vcf
bgzip HA124_Chr08.g.vcf
bgzip HA207_Chr08.g.vcf
bgzip HA259_Chr08.g.vcf
bgzip HA314_Chr08.g.vcf
bgzip HA316_Chr08.g.vcf
bgzip HA323_Chr08.g.vcf
bgzip HA380_Chr08.g.vcf
bgzip HA404_Chr08.g.vcf
bgzip HA433_Chr08.g.vcf
bgzip HA442_Chr08.g.vcf
bgzip HA821_Chr08.g.vcf
bgzip HA89_Chr08.g.vcf
bgzip Havasupai_Chr08.g.vcf
bgzip Hidatsa_Chr08.g.vcf
bgzip Hopi_dye_NEW_Chr08.g.vcf
bgzip Hopi_mapping_NEW_Chr08.g.vcf
bgzip Hopi_real_NEW_Chr08.g.vcf
bgzip IA1W_11R_Chr08.g.vcf
bgzip IA1W_11_Chr08.g.vcf
bgzip IA1W_15_Chr08.g.vcf
bgzip IA1W_1_Chr08.g.vcf
bgzip IA1W_21_Chr08.g.vcf
bgzip IA1W_28_Chr08.g.vcf
bgzip IA1W_2_Chr08.g.vcf
bgzip IA1W_33_Chr08.g.vcf
bgzip IA1W_39_Chr08.g.vcf
bgzip IA1W_4_Chr08.g.vcf
bgzip IA1W_5_Chr08.g.vcf
bgzip IA2W_11_Chr08.g.vcf
bgzip IA2W_14_Chr08.g.vcf
bgzip IA2W_16_Chr08.g.vcf
bgzip IA2W_29_Chr08.g.vcf
bgzip IA2W_37R_Chr08.g.vcf
bgzip IA2W_37_Chr08.g.vcf
bgzip IA2W_38_Chr08.g.vcf
bgzip IA2W_39_Chr08.g.vcf
bgzip IA2W_6_Chr08.g.vcf
bgzip IA2W_7_Chr08.g.vcf
bgzip KS1W_19_Chr08.g.vcf
bgzip KS1W_24_Chr08.g.vcf
bgzip KS1W_26_Chr08.g.vcf
bgzip KS1W_27_Chr08.g.vcf
bgzip KS1W_29_Chr08.g.vcf
bgzip KS1W_2_Chr08.g.vcf
bgzip KS1W_32_Chr08.g.vcf
bgzip KS1W_35_Chr08.g.vcf
bgzip KS1W_3_Chr08.g.vcf
bgzip KS1W_40_Chr08.g.vcf
bgzip KS1W_9_Chr08.g.vcf
bgzip KS2W_12_Chr08.g.vcf
bgzip KS2W_14_Chr08.g.vcf
bgzip KS2W_15R_Chr08.g.vcf
bgzip KS2W_15_Chr08.g.vcf
bgzip KS2W_24_Chr08.g.vcf
bgzip KS2W_32_Chr08.g.vcf
bgzip KS2W_35_Chr08.g.vcf
bgzip KS2W_6_1R_Chr08.g.vcf
bgzip KS2W_6_Chr08.g.vcf
bgzip KS2W_8_Chr08.g.vcf
bgzip KS2W_9_Chr08.g.vcf
bgzip Laguna_Pueblo_Chr08.g.vcf
bgzip MB1W_11_Chr08.g.vcf
bgzip MB1W_14_Chr08.g.vcf
bgzip MB1W_16B_Chr08.g.vcf
bgzip MB1W_16_Chr08.g.vcf
bgzip MB1W_20_Chr08.g.vcf
bgzip MB1W_30_Chr08.g.vcf
bgzip MB1W_31_Chr08.g.vcf
bgzip MB1W_39_Chr08.g.vcf
bgzip MB1W_40_Chr08.g.vcf
bgzip MB1W_8_Chr08.g.vcf
bgzip MO1W_11_Chr08.g.vcf
bgzip MO1W_15_Chr08.g.vcf
bgzip MO1W_16_Chr08.g.vcf
bgzip MO1W_2R_Chr08.g.vcf
bgzip MO1W_2_Chr08.g.vcf
bgzip MO1W_33_Chr08.g.vcf
bgzip MO1W_38_Chr08.g.vcf
bgzip MO1W_39_Chr08.g.vcf
bgzip MO1W_3_Chr08.g.vcf
bgzip MO1W_7_Chr08.g.vcf
bgzip Mandan1_PPN046_Chr08.g.vcf
bgzip Mandan2_Chr08.g.vcf
bgzip MexCult14_Chr08.g.vcf
bgzip MexCult15_Chr08.g.vcf
bgzip MexCult1_Chr08.g.vcf
bgzip MexCult3_Chr08.g.vcf
bgzip MexCult6_Chr08.g.vcf
bgzip MexCult7_Chr08.g.vcf
bgzip MexCult9_Chr08.g.vcf
bgzip ND1W_12_Chr08.g.vcf
bgzip ND1W_20_Chr08.g.vcf
bgzip ND1W_22_Chr08.g.vcf
bgzip ND1W_25_Chr08.g.vcf
bgzip ND1W_27_Chr08.g.vcf
bgzip ND1W_31_Chr08.g.vcf
bgzip ND1W_33_Chr08.g.vcf
bgzip ND1W_36_Chr08.g.vcf
bgzip ND1W_38_Chr08.g.vcf
bgzip ND1W_6_Chr08.g.vcf
bgzip NIV1468_Chr08.g.vcf
bgzip NIV1487_Chr08.g.vcf
bgzip PET0316_Chr08.g.vcf
bgzip PET0372_Chr08.g.vcf
bgzip PET0473N_Chr08.g.vcf
bgzip PET0532_Chr08.g.vcf
bgzip PET0580_Chr08.g.vcf
bgzip PET0636_Chr08.g.vcf
bgzip PET0654_Chr08.g.vcf
bgzip PET0712_Chr08.g.vcf
bgzip PET0732_Chr08.g.vcf
bgzip Paiute_Chr08.g.vcf
bgzip Pueblo_Chr08.g.vcf
bgzip RHA271_Chr08.g.vcf
bgzip RHA309_Chr08.g.vcf
bgzip RHA310_Chr08.g.vcf
bgzip RHA324_Chr08.g.vcf
bgzip RHA328_Chr08.g.vcf
bgzip RHA354_Chr08.g.vcf
bgzip RHA358_Chr08.g.vcf
bgzip RHA362_Chr08.g.vcf
bgzip RHA397_Chr08.g.vcf
bgzip RHA408_Chr08.g.vcf
bgzip RHA426_Chr08.g.vcf
bgzip RHA857_Chr08.g.vcf
bgzip SD1W_13_Chr08.g.vcf
bgzip SD1W_14_Chr08.g.vcf
bgzip SD1W_15_Chr08.g.vcf
bgzip SD1W_20_Chr08.g.vcf
bgzip SD1W_21B_Chr08.g.vcf
bgzip SD1W_21_Chr08.g.vcf
bgzip SD1W_35_Chr08.g.vcf
bgzip SD1W_4_Chr08.g.vcf
bgzip SD1W_6_Chr08.g.vcf
bgzip SD2W_14_Chr08.g.vcf
bgzip SD2W_15_Chr08.g.vcf
bgzip SD2W_18_Chr08.g.vcf
bgzip SD2W_19_Chr08.g.vcf
bgzip SD2W_21_Chr08.g.vcf
bgzip SD2W_23R_Chr08.g.vcf
bgzip SD2W_23_Chr08.g.vcf
bgzip SD2W_27_Chr08.g.vcf
bgzip SD2W_30_Chr08.g.vcf
bgzip SD2W_38_Chr08.g.vcf
bgzip SD2W_40_Chr08.g.vcf
bgzip SD2W_5_Chr08.g.vcf
bgzip SIP_Chr08.g.vcf
bgzip SK1W_15_Chr08.g.vcf
bgzip SK1W_1_Chr08.g.vcf
bgzip SK1W_22R_Chr08.g.vcf
bgzip SK1W_22_Chr08.g.vcf
bgzip SK1W_25_Chr08.g.vcf
bgzip SK1W_29R_Chr08.g.vcf
bgzip SK1W_29_Chr08.g.vcf
bgzip SK1W_36_Chr08.g.vcf
bgzip SK1W_37_Chr08.g.vcf
bgzip SK1W_Q_Chr08.g.vcf
bgzip Se_Purp_Chr08.g.vcf
bgzip Se_Strip_682a_Chr08.g.vcf
bgzip Se_Strip_682b_Chr08.g.vcf
bgzip Seneca_137749_Chr08.g.vcf
bgzip Seneca_Chr08.g.vcf
bgzip Zuni_Chr08.g.vcf
bgzip ann01_cwIA_Chr08.g.vcf
bgzip ann04_nwAR_Chr08.g.vcf
bgzip ann05_ccNM_Chr08.g.vcf
bgzip ann06_seWY_Chr08.g.vcf
bgzip ann10_ccIL_Chr08.g.vcf
bgzip ann20_seAZ_Chr08.g.vcf
bgzip ann28_swSK_Chr08.g.vcf
bgzip ann29_neSD_Chr08.g.vcf
bgzip ann34_cwKS_Chr08.g.vcf
bgzip ann39_ncNE_Chr08.g.vcf
bgzip ann44_ccCA_Chr08.g.vcf
bgzip annMex_A1516_Chr08.g.vcf
bgzip annMex_A1517_Chr08.g.vcf
bgzip annMex_A1572_Chr08.g.vcf
bgzip annMex_A1574_Chr08.g.vcf
bgzip annMex_Ann261_Chr08.g.vcf

tabix -p vcf -f ANN0810_Chr08.g.vcf.gz
tabix -p vcf -f ANN0820_Chr08.g.vcf.gz
tabix -p vcf -f ANN0830_Chr08.g.vcf.gz
tabix -p vcf -f ANN0835_Chr08.g.vcf.gz
tabix -p vcf -f ANN0849_Chr08.g.vcf.gz
tabix -p vcf -f ANN0854_Chr08.g.vcf.gz
tabix -p vcf -f ANN0867_Chr08.g.vcf.gz
tabix -p vcf -f ANN0874_Chr08.g.vcf.gz
tabix -p vcf -f ANN0880_Chr08.g.vcf.gz
tabix -p vcf -f ANN0882_Chr08.g.vcf.gz
tabix -p vcf -f ANN0898_Chr08.g.vcf.gz
tabix -p vcf -f ANN0908_Chr08.g.vcf.gz
tabix -p vcf -f ANN0918_Chr08.g.vcf.gz
tabix -p vcf -f ANN0927_Chr08.g.vcf.gz
tabix -p vcf -f ANN0931_Chr08.g.vcf.gz
tabix -p vcf -f ANN0946_Chr08.g.vcf.gz
tabix -p vcf -f ANN0956_Chr08.g.vcf.gz
tabix -p vcf -f ANN0957_Chr08.g.vcf.gz
tabix -p vcf -f ANN0959_Chr08.g.vcf.gz
tabix -p vcf -f ANN0962_Chr08.g.vcf.gz
tabix -p vcf -f ANN0963_Chr08.g.vcf.gz
tabix -p vcf -f ANN0964_Chr08.g.vcf.gz
tabix -p vcf -f ANN0972_Chr08.g.vcf.gz
tabix -p vcf -f ANN0975_Chr08.g.vcf.gz
tabix -p vcf -f ANN0978_Chr08.g.vcf.gz
tabix -p vcf -f ANN0981_Chr08.g.vcf.gz
tabix -p vcf -f ANN0985_Chr08.g.vcf.gz
tabix -p vcf -f ANN0986_Chr08.g.vcf.gz
tabix -p vcf -f ANN0992_Chr08.g.vcf.gz
tabix -p vcf -f ANN0996_Chr08.g.vcf.gz
tabix -p vcf -f ANN0997_Chr08.g.vcf.gz
tabix -p vcf -f ANN1002_Chr08.g.vcf.gz
tabix -p vcf -f ANN1003_Chr08.g.vcf.gz
tabix -p vcf -f ANN1004_Chr08.g.vcf.gz
tabix -p vcf -f ANN1011_Chr08.g.vcf.gz
tabix -p vcf -f ANN1012_Chr08.g.vcf.gz
tabix -p vcf -f ANN1019_Chr08.g.vcf.gz
tabix -p vcf -f ANN1029_Chr08.g.vcf.gz
tabix -p vcf -f ANN1040_Chr08.g.vcf.gz
tabix -p vcf -f ANN1046_Chr08.g.vcf.gz
tabix -p vcf -f ANN1053_Chr08.g.vcf.gz
tabix -p vcf -f ANN1062_Chr08.g.vcf.gz
tabix -p vcf -f ANN1073_Chr08.g.vcf.gz
tabix -p vcf -f ANN1083_Chr08.g.vcf.gz
tabix -p vcf -f ANN1095_Chr08.g.vcf.gz
tabix -p vcf -f ANN1106_Chr08.g.vcf.gz
tabix -p vcf -f ANN1115_Chr08.g.vcf.gz
tabix -p vcf -f ANN1127_Chr08.g.vcf.gz
tabix -p vcf -f ANN1134_Chr08.g.vcf.gz
tabix -p vcf -f ANN1143_Chr08.g.vcf.gz
tabix -p vcf -f ANN1151_Chr08.g.vcf.gz
tabix -p vcf -f ANN1152_Chr08.g.vcf.gz
tabix -p vcf -f ANN1153_Chr08.g.vcf.gz
tabix -p vcf -f ANN1154_Chr08.g.vcf.gz
tabix -p vcf -f ANN1155_Chr08.g.vcf.gz
tabix -p vcf -f ANN1156_Chr08.g.vcf.gz
tabix -p vcf -f ANN1157_Chr08.g.vcf.gz
tabix -p vcf -f ANN1159_Chr08.g.vcf.gz
tabix -p vcf -f ANN1160_Chr08.g.vcf.gz
tabix -p vcf -f ANN1162_Chr08.g.vcf.gz
tabix -p vcf -f ANN1164_Chr08.g.vcf.gz
tabix -p vcf -f ANN1169_Chr08.g.vcf.gz
tabix -p vcf -f ANN1171_Chr08.g.vcf.gz
tabix -p vcf -f ANN1172_Chr08.g.vcf.gz
tabix -p vcf -f ANN1173_Chr08.g.vcf.gz
tabix -p vcf -f ANN1174_Chr08.g.vcf.gz
tabix -p vcf -f ANN1175_Chr08.g.vcf.gz
tabix -p vcf -f ANN1176_Chr08.g.vcf.gz
tabix -p vcf -f ANN1177_Chr08.g.vcf.gz
tabix -p vcf -f ANN1178_Chr08.g.vcf.gz
tabix -p vcf -f ANN1179_Chr08.g.vcf.gz
tabix -p vcf -f ANN1180_Chr08.g.vcf.gz
tabix -p vcf -f ANN1181_Chr08.g.vcf.gz
tabix -p vcf -f ANN1182_Chr08.g.vcf.gz
tabix -p vcf -f ANN1183_Chr08.g.vcf.gz
tabix -p vcf -f ANN1184_Chr08.g.vcf.gz
tabix -p vcf -f ANN1185_Chr08.g.vcf.gz
tabix -p vcf -f ANN1186_Chr08.g.vcf.gz
tabix -p vcf -f ANN1187_Chr08.g.vcf.gz
tabix -p vcf -f ANN1188_Chr08.g.vcf.gz
tabix -p vcf -f ANN1189_Chr08.g.vcf.gz
tabix -p vcf -f ANN1190_Chr08.g.vcf.gz
tabix -p vcf -f ANN1191_Chr08.g.vcf.gz
tabix -p vcf -f ANN1192_Chr08.g.vcf.gz
tabix -p vcf -f ANN1193_Chr08.g.vcf.gz
tabix -p vcf -f ANN1194_Chr08.g.vcf.gz
tabix -p vcf -f ANN1195_Chr08.g.vcf.gz
tabix -p vcf -f ANN1196_Chr08.g.vcf.gz
tabix -p vcf -f ANN1197_Chr08.g.vcf.gz
tabix -p vcf -f ANN1198_Chr08.g.vcf.gz
tabix -p vcf -f ANN1199_Chr08.g.vcf.gz
tabix -p vcf -f ANN1200_Chr08.g.vcf.gz
tabix -p vcf -f ANN1201_Chr08.g.vcf.gz
tabix -p vcf -f ANN1202_Chr08.g.vcf.gz
tabix -p vcf -f ANN1203_Chr08.g.vcf.gz
tabix -p vcf -f ANN1204_Chr08.g.vcf.gz
tabix -p vcf -f ANN1205_Chr08.g.vcf.gz
tabix -p vcf -f ANN1206_Chr08.g.vcf.gz
tabix -p vcf -f ANN1207_Chr08.g.vcf.gz
tabix -p vcf -f ANN1208_Chr08.g.vcf.gz
tabix -p vcf -f ANN1209_Chr08.g.vcf.gz
tabix -p vcf -f ANN1210_Chr08.g.vcf.gz
tabix -p vcf -f ANN1216_Chr08.g.vcf.gz
tabix -p vcf -f ANN1218_Chr08.g.vcf.gz
tabix -p vcf -f ANN1219_Chr08.g.vcf.gz
tabix -p vcf -f ANN1260_Chr08.g.vcf.gz
tabix -p vcf -f ANN1268_Chr08.g.vcf.gz
tabix -p vcf -f ANN1273_Chr08.g.vcf.gz
tabix -p vcf -f ANN1284_Chr08.g.vcf.gz
tabix -p vcf -f ANN1296_Chr08.g.vcf.gz
tabix -p vcf -f ANN1297_Chr08.g.vcf.gz
tabix -p vcf -f ANN1300_Chr08.g.vcf.gz
tabix -p vcf -f ANN1301_Chr08.g.vcf.gz
tabix -p vcf -f ANN1309_Chr08.g.vcf.gz
tabix -p vcf -f ANN1310_Chr08.g.vcf.gz
tabix -p vcf -f ANN1311_Chr08.g.vcf.gz
tabix -p vcf -f ANN1316_Chr08.g.vcf.gz
tabix -p vcf -f ANN1319_Chr08.g.vcf.gz
tabix -p vcf -f ANN1322_Chr08.g.vcf.gz
tabix -p vcf -f ANN1328_Chr08.g.vcf.gz
tabix -p vcf -f ANN1330_Chr08.g.vcf.gz
tabix -p vcf -f ANN1331_Chr08.g.vcf.gz
tabix -p vcf -f ANN1341_Chr08.g.vcf.gz
tabix -p vcf -f ANN1407_Chr08.g.vcf.gz
tabix -p vcf -f ANN1419_Chr08.g.vcf.gz
tabix -p vcf -f ANN1420_Chr08.g.vcf.gz
tabix -p vcf -f ANN1439_Chr08.g.vcf.gz
tabix -p vcf -f ANN1501_Chr08.g.vcf.gz
tabix -p vcf -f ARG0054_Chr08.g.vcf.gz
tabix -p vcf -f ARG0169_Chr08.g.vcf.gz
tabix -p vcf -f ARG0204_Chr08.g.vcf.gz
tabix -p vcf -f Anzac_Pueblo_Chr08.g.vcf.gz
tabix -p vcf -f Ari_Broad_Chr08.g.vcf.gz
tabix -p vcf -f Ari_Man_Chr08.g.vcf.gz
tabix -p vcf -f Arikara_122976_Chr08.g.vcf.gz
tabix -p vcf -f Arikara_126306_Chr08.g.vcf.gz
tabix -p vcf -f Arikara_14042_874_Chr08.g.vcf.gz
tabix -p vcf -f Arikara_Chr08.g.vcf.gz
tabix -p vcf -f ED_IA1W1_6_308_Chr08.g.vcf.gz
tabix -p vcf -f ED_IA2W_17_Chr08.g.vcf.gz
tabix -p vcf -f ED_KS1W9_3_342_Chr08.g.vcf.gz
tabix -p vcf -f ED_KS2W24_7_43_Chr08.g.vcf.gz
tabix -p vcf -f ED_MB1W16_2_283_Chr08.g.vcf.gz
tabix -p vcf -f ED_MO1W30-1_114_Chr08.g.vcf.gz
tabix -p vcf -f ED_ND1W27_2_288_Chr08.g.vcf.gz
tabix -p vcf -f ED_SD1W11_7_237_Chr08.g.vcf.gz
tabix -p vcf -f ED_SD2W30_3_360_Chr08.g.vcf.gz
tabix -p vcf -f ED_SK1W15-3_300_Chr08.g.vcf.gz
tabix -p vcf -f HA124_Chr08.g.vcf.gz
tabix -p vcf -f HA207_Chr08.g.vcf.gz
tabix -p vcf -f HA259_Chr08.g.vcf.gz
tabix -p vcf -f HA314_Chr08.g.vcf.gz
tabix -p vcf -f HA316_Chr08.g.vcf.gz
tabix -p vcf -f HA323_Chr08.g.vcf.gz
tabix -p vcf -f HA380_Chr08.g.vcf.gz
tabix -p vcf -f HA404_Chr08.g.vcf.gz
tabix -p vcf -f HA433_Chr08.g.vcf.gz
tabix -p vcf -f HA442_Chr08.g.vcf.gz
tabix -p vcf -f HA821_Chr08.g.vcf.gz
tabix -p vcf -f HA89_Chr08.g.vcf.gz
tabix -p vcf -f Havasupai_Chr08.g.vcf.gz
tabix -p vcf -f Hidatsa_Chr08.g.vcf.gz
tabix -p vcf -f Hopi_dye_NEW_Chr08.g.vcf.gz
tabix -p vcf -f Hopi_mapping_NEW_Chr08.g.vcf.gz
tabix -p vcf -f Hopi_real_NEW_Chr08.g.vcf.gz
tabix -p vcf -f IA1W_11R_Chr08.g.vcf.gz
tabix -p vcf -f IA1W_11_Chr08.g.vcf.gz
tabix -p vcf -f IA1W_15_Chr08.g.vcf.gz
tabix -p vcf -f IA1W_1_Chr08.g.vcf.gz
tabix -p vcf -f IA1W_21_Chr08.g.vcf.gz
tabix -p vcf -f IA1W_28_Chr08.g.vcf.gz
tabix -p vcf -f IA1W_2_Chr08.g.vcf.gz
tabix -p vcf -f IA1W_33_Chr08.g.vcf.gz
tabix -p vcf -f IA1W_39_Chr08.g.vcf.gz
tabix -p vcf -f IA1W_4_Chr08.g.vcf.gz
tabix -p vcf -f IA1W_5_Chr08.g.vcf.gz
tabix -p vcf -f IA2W_11_Chr08.g.vcf.gz
tabix -p vcf -f IA2W_14_Chr08.g.vcf.gz
tabix -p vcf -f IA2W_16_Chr08.g.vcf.gz
tabix -p vcf -f IA2W_29_Chr08.g.vcf.gz
tabix -p vcf -f IA2W_37R_Chr08.g.vcf.gz
tabix -p vcf -f IA2W_37_Chr08.g.vcf.gz
tabix -p vcf -f IA2W_38_Chr08.g.vcf.gz
tabix -p vcf -f IA2W_39_Chr08.g.vcf.gz
tabix -p vcf -f IA2W_6_Chr08.g.vcf.gz
tabix -p vcf -f IA2W_7_Chr08.g.vcf.gz
tabix -p vcf -f KS1W_19_Chr08.g.vcf.gz
tabix -p vcf -f KS1W_24_Chr08.g.vcf.gz
tabix -p vcf -f KS1W_26_Chr08.g.vcf.gz
tabix -p vcf -f KS1W_27_Chr08.g.vcf.gz
tabix -p vcf -f KS1W_29_Chr08.g.vcf.gz
tabix -p vcf -f KS1W_2_Chr08.g.vcf.gz
tabix -p vcf -f KS1W_32_Chr08.g.vcf.gz
tabix -p vcf -f KS1W_35_Chr08.g.vcf.gz
tabix -p vcf -f KS1W_3_Chr08.g.vcf.gz
tabix -p vcf -f KS1W_40_Chr08.g.vcf.gz
tabix -p vcf -f KS1W_9_Chr08.g.vcf.gz
tabix -p vcf -f KS2W_12_Chr08.g.vcf.gz
tabix -p vcf -f KS2W_14_Chr08.g.vcf.gz
tabix -p vcf -f KS2W_15R_Chr08.g.vcf.gz
tabix -p vcf -f KS2W_15_Chr08.g.vcf.gz
tabix -p vcf -f KS2W_24_Chr08.g.vcf.gz
tabix -p vcf -f KS2W_32_Chr08.g.vcf.gz
tabix -p vcf -f KS2W_35_Chr08.g.vcf.gz
tabix -p vcf -f KS2W_6_1R_Chr08.g.vcf.gz
tabix -p vcf -f KS2W_6_Chr08.g.vcf.gz
tabix -p vcf -f KS2W_8_Chr08.g.vcf.gz
tabix -p vcf -f KS2W_9_Chr08.g.vcf.gz
tabix -p vcf -f Laguna_Pueblo_Chr08.g.vcf.gz
tabix -p vcf -f MB1W_11_Chr08.g.vcf.gz
tabix -p vcf -f MB1W_14_Chr08.g.vcf.gz
tabix -p vcf -f MB1W_16B_Chr08.g.vcf.gz
tabix -p vcf -f MB1W_16_Chr08.g.vcf.gz
tabix -p vcf -f MB1W_20_Chr08.g.vcf.gz
tabix -p vcf -f MB1W_30_Chr08.g.vcf.gz
tabix -p vcf -f MB1W_31_Chr08.g.vcf.gz
tabix -p vcf -f MB1W_39_Chr08.g.vcf.gz
tabix -p vcf -f MB1W_40_Chr08.g.vcf.gz
tabix -p vcf -f MB1W_8_Chr08.g.vcf.gz
tabix -p vcf -f MO1W_11_Chr08.g.vcf.gz
tabix -p vcf -f MO1W_15_Chr08.g.vcf.gz
tabix -p vcf -f MO1W_16_Chr08.g.vcf.gz
tabix -p vcf -f MO1W_2R_Chr08.g.vcf.gz
tabix -p vcf -f MO1W_2_Chr08.g.vcf.gz
tabix -p vcf -f MO1W_33_Chr08.g.vcf.gz
tabix -p vcf -f MO1W_38_Chr08.g.vcf.gz
tabix -p vcf -f MO1W_39_Chr08.g.vcf.gz
tabix -p vcf -f MO1W_3_Chr08.g.vcf.gz
tabix -p vcf -f MO1W_7_Chr08.g.vcf.gz
tabix -p vcf -f Mandan1_PPN046_Chr08.g.vcf.gz
tabix -p vcf -f Mandan2_Chr08.g.vcf.gz
tabix -p vcf -f MexCult14_Chr08.g.vcf.gz
tabix -p vcf -f MexCult15_Chr08.g.vcf.gz
tabix -p vcf -f MexCult1_Chr08.g.vcf.gz
tabix -p vcf -f MexCult3_Chr08.g.vcf.gz
tabix -p vcf -f MexCult6_Chr08.g.vcf.gz
tabix -p vcf -f MexCult7_Chr08.g.vcf.gz
tabix -p vcf -f MexCult9_Chr08.g.vcf.gz
tabix -p vcf -f ND1W_12_Chr08.g.vcf.gz
tabix -p vcf -f ND1W_20_Chr08.g.vcf.gz
tabix -p vcf -f ND1W_22_Chr08.g.vcf.gz
tabix -p vcf -f ND1W_25_Chr08.g.vcf.gz
tabix -p vcf -f ND1W_27_Chr08.g.vcf.gz
tabix -p vcf -f ND1W_31_Chr08.g.vcf.gz
tabix -p vcf -f ND1W_33_Chr08.g.vcf.gz
tabix -p vcf -f ND1W_36_Chr08.g.vcf.gz
tabix -p vcf -f ND1W_38_Chr08.g.vcf.gz
tabix -p vcf -f ND1W_6_Chr08.g.vcf.gz
tabix -p vcf -f NIV1468_Chr08.g.vcf.gz
tabix -p vcf -f NIV1487_Chr08.g.vcf.gz
tabix -p vcf -f PET0316_Chr08.g.vcf.gz
tabix -p vcf -f PET0372_Chr08.g.vcf.gz
tabix -p vcf -f PET0473N_Chr08.g.vcf.gz
tabix -p vcf -f PET0532_Chr08.g.vcf.gz
tabix -p vcf -f PET0580_Chr08.g.vcf.gz
tabix -p vcf -f PET0636_Chr08.g.vcf.gz
tabix -p vcf -f PET0654_Chr08.g.vcf.gz
tabix -p vcf -f PET0712_Chr08.g.vcf.gz
tabix -p vcf -f PET0732_Chr08.g.vcf.gz
tabix -p vcf -f Paiute_Chr08.g.vcf.gz
tabix -p vcf -f Pueblo_Chr08.g.vcf.gz
tabix -p vcf -f RHA271_Chr08.g.vcf.gz
tabix -p vcf -f RHA309_Chr08.g.vcf.gz
tabix -p vcf -f RHA310_Chr08.g.vcf.gz
tabix -p vcf -f RHA324_Chr08.g.vcf.gz
tabix -p vcf -f RHA328_Chr08.g.vcf.gz
tabix -p vcf -f RHA354_Chr08.g.vcf.gz
tabix -p vcf -f RHA358_Chr08.g.vcf.gz
tabix -p vcf -f RHA362_Chr08.g.vcf.gz
tabix -p vcf -f RHA397_Chr08.g.vcf.gz
tabix -p vcf -f RHA408_Chr08.g.vcf.gz
tabix -p vcf -f RHA426_Chr08.g.vcf.gz
tabix -p vcf -f RHA857_Chr08.g.vcf.gz
tabix -p vcf -f SD1W_13_Chr08.g.vcf.gz
tabix -p vcf -f SD1W_14_Chr08.g.vcf.gz
tabix -p vcf -f SD1W_15_Chr08.g.vcf.gz
tabix -p vcf -f SD1W_20_Chr08.g.vcf.gz
tabix -p vcf -f SD1W_21B_Chr08.g.vcf.gz
tabix -p vcf -f SD1W_21_Chr08.g.vcf.gz
tabix -p vcf -f SD1W_35_Chr08.g.vcf.gz
tabix -p vcf -f SD1W_4_Chr08.g.vcf.gz
tabix -p vcf -f SD1W_6_Chr08.g.vcf.gz
tabix -p vcf -f SD2W_14_Chr08.g.vcf.gz
tabix -p vcf -f SD2W_15_Chr08.g.vcf.gz
tabix -p vcf -f SD2W_18_Chr08.g.vcf.gz
tabix -p vcf -f SD2W_19_Chr08.g.vcf.gz
tabix -p vcf -f SD2W_21_Chr08.g.vcf.gz
tabix -p vcf -f SD2W_23R_Chr08.g.vcf.gz
tabix -p vcf -f SD2W_23_Chr08.g.vcf.gz
tabix -p vcf -f SD2W_27_Chr08.g.vcf.gz
tabix -p vcf -f SD2W_30_Chr08.g.vcf.gz
tabix -p vcf -f SD2W_38_Chr08.g.vcf.gz
tabix -p vcf -f SD2W_40_Chr08.g.vcf.gz
tabix -p vcf -f SD2W_5_Chr08.g.vcf.gz
tabix -p vcf -f SIP_Chr08.g.vcf.gz
tabix -p vcf -f SK1W_15_Chr08.g.vcf.gz
tabix -p vcf -f SK1W_1_Chr08.g.vcf.gz
tabix -p vcf -f SK1W_22R_Chr08.g.vcf.gz
tabix -p vcf -f SK1W_22_Chr08.g.vcf.gz
tabix -p vcf -f SK1W_25_Chr08.g.vcf.gz
tabix -p vcf -f SK1W_29R_Chr08.g.vcf.gz
tabix -p vcf -f SK1W_29_Chr08.g.vcf.gz
tabix -p vcf -f SK1W_36_Chr08.g.vcf.gz
tabix -p vcf -f SK1W_37_Chr08.g.vcf.gz
tabix -p vcf -f SK1W_Q_Chr08.g.vcf.gz
tabix -p vcf -f Se_Purp_Chr08.g.vcf.gz
tabix -p vcf -f Se_Strip_682a_Chr08.g.vcf.gz
tabix -p vcf -f Se_Strip_682b_Chr08.g.vcf.gz
tabix -p vcf -f Seneca_137749_Chr08.g.vcf.gz
tabix -p vcf -f Seneca_Chr08.g.vcf.gz
tabix -p vcf -f Zuni_Chr08.g.vcf.gz
tabix -p vcf -f ann01_cwIA_Chr08.g.vcf.gz
tabix -p vcf -f ann04_nwAR_Chr08.g.vcf.gz
tabix -p vcf -f ann05_ccNM_Chr08.g.vcf.gz
tabix -p vcf -f ann06_seWY_Chr08.g.vcf.gz
tabix -p vcf -f ann10_ccIL_Chr08.g.vcf.gz
tabix -p vcf -f ann20_seAZ_Chr08.g.vcf.gz
tabix -p vcf -f ann28_swSK_Chr08.g.vcf.gz
tabix -p vcf -f ann29_neSD_Chr08.g.vcf.gz
tabix -p vcf -f ann34_cwKS_Chr08.g.vcf.gz
tabix -p vcf -f ann39_ncNE_Chr08.g.vcf.gz
tabix -p vcf -f ann44_ccCA_Chr08.g.vcf.gz
tabix -p vcf -f annMex_A1516_Chr08.g.vcf.gz
tabix -p vcf -f annMex_A1517_Chr08.g.vcf.gz
tabix -p vcf -f annMex_A1572_Chr08.g.vcf.gz
tabix -p vcf -f annMex_A1574_Chr08.g.vcf.gz
tabix -p vcf -f annMex_Ann261_Chr08.g.vcf.gz
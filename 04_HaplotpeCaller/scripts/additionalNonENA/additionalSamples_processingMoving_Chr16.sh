#!/bin/bash
#SBATCH -D /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr16_gVCFs
#SBATCH -J additionalSamples_processingMoving_Chr16
#SBATCH --partition=savio2_htc
#SBATCH --account=fc_blackman
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=3
#SBATCH --time=72:00:00
#SBATCH --mem=32000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/additionalSamples_processingMoving_Chr16.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/additionalSamples_processingMoving_Chr16.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load htslib/1.6

ChrNum="Chr16"

tabix -f -p vcf ann04_nwAR.g.vcf.gz
tabix -f -p vcf ann20_seAZ.g.vcf.gz
tabix -f -p vcf ANN0946.g.vcf.gz
tabix -f -p vcf ANN0931.g.vcf.gz
tabix -f -p vcf ANN0927.g.vcf.gz
tabix -f -p vcf ANN0918.g.vcf.gz
tabix -f -p vcf ANN0908.g.vcf.gz
tabix -f -p vcf ANN1284.g.vcf.gz
tabix -f -p vcf ANN1268.g.vcf.gz
tabix -f -p vcf ANN1273.g.vcf.gz
tabix -f -p vcf ANN0898.g.vcf.gz
tabix -f -p vcf ANN0880.g.vcf.gz
tabix -f -p vcf ANN0882.g.vcf.gz
tabix -f -p vcf ANN0874.g.vcf.gz
tabix -f -p vcf ANN0867.g.vcf.gz
tabix -f -p vcf ANN0854.g.vcf.gz
tabix -f -p vcf ANN0849.g.vcf.gz
tabix -f -p vcf ANN0835.g.vcf.gz
tabix -f -p vcf ANN0830.g.vcf.gz
tabix -f -p vcf ANN0820.g.vcf.gz
tabix -f -p vcf ANN0810.g.vcf.gz
tabix -f -p vcf ANN1260.g.vcf.gz
tabix -f -p vcf ANN0992.g.vcf.gz
tabix -f -p vcf ANN0996.g.vcf.gz
tabix -f -p vcf ANN0997.g.vcf.gz
tabix -f -p vcf ANN1002.g.vcf.gz
tabix -f -p vcf ANN1003.g.vcf.gz
tabix -f -p vcf ANN1004.g.vcf.gz
tabix -f -p vcf ANN1011.g.vcf.gz
tabix -f -p vcf ANN1012.g.vcf.gz
tabix -f -p vcf ANN1019.g.vcf.gz
tabix -f -p vcf ANN1162.g.vcf.gz
tabix -f -p vcf ANN1164.g.vcf.gz
tabix -f -p vcf ANN1169.g.vcf.gz
tabix -f -p vcf IA1W_1.g.vcf.gz
tabix -f -p vcf IA1W_11R.g.vcf.gz
tabix -f -p vcf IA1W_2.g.vcf.gz
tabix -f -p vcf IA1W_5.g.vcf.gz
tabix -f -p vcf IA2W_11.g.vcf.gz
tabix -f -p vcf IA2W_17.g.vcf.gz
tabix -f -p vcf IA2W_38.g.vcf.gz
tabix -f -p vcf IA2W_7.g.vcf.gz
tabix -f -p vcf ann01_cwIA.g.vcf.gz
tabix -f -p vcf IA1W1_6_308_${ChrNum}.g.vcf.gz
tabix -f -p vcf IA1W_33_${ChrNum}.g.vcf.gz
tabix -f -p vcf IA1W_15_${ChrNum}.g.vcf.gz
tabix -f -p vcf IA1W_39_${ChrNum}.g.vcf.gz
tabix -f -p vcf IA1W_4_${ChrNum}.g.vcf.gz
tabix -f -p vcf IA1W_11_${ChrNum}.g.vcf.gz
tabix -f -p vcf IA1W_21_${ChrNum}.g.vcf.gz
tabix -f -p vcf IA1W_28_${ChrNum}.g.vcf.gz
tabix -f -p vcf IA2W_37_${ChrNum}.g.vcf.gz
tabix -f -p vcf IA2W_16_${ChrNum}.g.vcf.gz
tabix -f -p vcf IA2W_39_${ChrNum}.g.vcf.gz
tabix -f -p vcf IA2W_29_${ChrNum}.g.vcf.gz
tabix -f -p vcf IA2W_14_${ChrNum}.g.vcf.gz
tabix -f -p vcf IA2W_17_${ChrNum}.g.vcf.gz
tabix -f -p vcf IA2W_37R_${ChrNum}.g.vcf.gz
tabix -f -p vcf IA2W_6_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1419_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1420_${ChrNum}.g.vcf.gz
tabix -f -p vcf ann10_ccIL.g.vcf.gz
tabix -f -p vcf ANN1172.g.vcf.gz
tabix -f -p vcf ANN1174.g.vcf.gz
tabix -f -p vcf ANN1178.g.vcf.gz
tabix -f -p vcf ANN1183.g.vcf.gz
tabix -f -p vcf ANN1187.g.vcf.gz
tabix -f -p vcf ANN1188.g.vcf.gz
tabix -f -p vcf ANN1195.g.vcf.gz
tabix -f -p vcf ANN1197.g.vcf.gz
tabix -f -p vcf ANN1198.g.vcf.gz
tabix -f -p vcf KS1W_2.g.vcf.gz
tabix -f -p vcf KS1W_27.g.vcf.gz
tabix -f -p vcf KS1W_32.g.vcf.gz
tabix -f -p vcf KS1W_35.g.vcf.gz
tabix -f -p vcf KS2W_15.g.vcf.gz
tabix -f -p vcf KS2W_24.g.vcf.gz
tabix -f -p vcf KS2W_32.g.vcf.gz
tabix -f -p vcf KS2W_35.g.vcf.gz
tabix -f -p vcf ann34_cwKS.g.vcf.gz
tabix -f -p vcf KS1W9_3_342_${ChrNum}.g.vcf.gz
tabix -f -p vcf KS1W_29_${ChrNum}.g.vcf.gz
tabix -f -p vcf KS1W_3_${ChrNum}.g.vcf.gz
tabix -f -p vcf KS1W_40_${ChrNum}.g.vcf.gz
tabix -f -p vcf KS1W_19_${ChrNum}.g.vcf.gz
tabix -f -p vcf KS1W_24_${ChrNum}.g.vcf.gz
tabix -f -p vcf KS1W_26_${ChrNum}.g.vcf.gz
tabix -f -p vcf KS1W_9_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1439_${ChrNum}.g.vcf.gz
tabix -f -p vcf KS2W24_7_43_${ChrNum}.g.vcf.gz
tabix -f -p vcf KS2W_15R_${ChrNum}.g.vcf.gz
tabix -f -p vcf KS2W_9_${ChrNum}.g.vcf.gz
tabix -f -p vcf KS2W_12_${ChrNum}.g.vcf.gz
tabix -f -p vcf KS2E_6_${ChrNum}.g.vcf.gz
tabix -f -p vcf KS2W_6_1R_${ChrNum}.g.vcf.gz
tabix -f -p vcf KS2W_14_${ChrNum}.g.vcf.gz
tabix -f -p vcf KS2W_8_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1184_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1200_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1175_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1193_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1192_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1191_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1189_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1186_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1185_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1194_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1182_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1180_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1181_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1179_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1196_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1171_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1176_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1190_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1177_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1199_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1173_${ChrNum}.g.vcf.gz
tabix -f -p vcf MB1W_16.g.vcf.gz
tabix -f -p vcf MB1W_16B.g.vcf.gz
tabix -f -p vcf MB1W_39.g.vcf.gz
tabix -f -p vcf MB1W_40.g.vcf.gz
tabix -f -p vcf MB1W_8.g.vcf.gz
tabix -f -p vcf MB1W16_2_283_${ChrNum}.g.vcf.gz
tabix -f -p vcf MB1W_20_${ChrNum}.g.vcf.gz
tabix -f -p vcf MB1W_11_${ChrNum}.g.vcf.gz
tabix -f -p vcf MB1W_14_${ChrNum}.g.vcf.gz
tabix -f -p vcf MB1W_30_${ChrNum}.g.vcf.gz
tabix -f -p vcf MB1W_31_${ChrNum}.g.vcf.gz
tabix -f -p vcf MO1W_3.g.vcf.gz
tabix -f -p vcf MO1W_33.g.vcf.gz
tabix -f -p vcf MO1W_38.g.vcf.gz
tabix -f -p vcf MO1W30_1_114_${ChrNum}.g.vcf.gz
tabix -f -p vcf MO1W_2R_${ChrNum}.g.vcf.gz
tabix -f -p vcf MO1W_11_${ChrNum}.g.vcf.gz
tabix -f -p vcf MO1W_15_${ChrNum}.g.vcf.gz
tabix -f -p vcf MO1W_16_${ChrNum}.g.vcf.gz
tabix -f -p vcf MO1W_39_${ChrNum}.g.vcf.gz
tabix -f -p vcf MO1W_2_${ChrNum}.g.vcf.gz
tabix -f -p vcf MO1W_7_${ChrNum}.g.vcf.gz
tabix -f -p vcf ND1W_31.g.vcf.gz
tabix -f -p vcf ND1W_38.g.vcf.gz
tabix -f -p vcf ND1W27_2_288_${ChrNum}.g.vcf.gz
tabix -f -p vcf ND1W_20_${ChrNum}.g.vcf.gz
tabix -f -p vcf ND1W_27_${ChrNum}.g.vcf.gz
tabix -f -p vcf ND1W_12_${ChrNum}.g.vcf.gz
tabix -f -p vcf ND1W_36_${ChrNum}.g.vcf.gz
tabix -f -p vcf ND1W_22_${ChrNum}.g.vcf.gz
tabix -f -p vcf ND1W_33_${ChrNum}.g.vcf.gz
tabix -f -p vcf ND1W_25_${ChrNum}.g.vcf.gz
tabix -f -p vcf Ann1238_subset.g.vcf.gz
tabix -f -p vcf ann39_ncNE.g.vcf.gz
tabix -f -p vcf ANN0956.g.vcf.gz
tabix -f -p vcf ANN0957.g.vcf.gz
tabix -f -p vcf ANN0959.g.vcf.gz
tabix -f -p vcf ANN0962.g.vcf.gz
tabix -f -p vcf ANN0963.g.vcf.gz
tabix -f -p vcf ANN0964.g.vcf.gz
tabix -f -p vcf ANN0972.g.vcf.gz
tabix -f -p vcf ANN0975.g.vcf.gz
tabix -f -p vcf ANN0978.g.vcf.gz
tabix -f -p vcf ANN0981.g.vcf.gz
tabix -f -p vcf ANN0985.g.vcf.gz
tabix -f -p vcf ANN0986.g.vcf.gz
tabix -f -p vcf ANN1296.g.vcf.gz
tabix -f -p vcf ANN1297.g.vcf.gz
tabix -f -p vcf ANN1300.g.vcf.gz
tabix -f -p vcf ANN1301.g.vcf.gz
tabix -f -p vcf ANN1309.g.vcf.gz
tabix -f -p vcf ANN1310.g.vcf.gz
tabix -f -p vcf ann05_ccNM.g.vcf.gz
tabix -f -p vcf ANN1046.g.vcf.gz
tabix -f -p vcf ANN1040.g.vcf.gz
tabix -f -p vcf ANN1029.g.vcf.gz
tabix -f -p vcf ANN1202.g.vcf.gz
tabix -f -p vcf ANN1203.g.vcf.gz
tabix -f -p vcf ANN1204.g.vcf.gz
tabix -f -p vcf ANN1210_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1206_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1205_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1209_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1208_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1207_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1201_${ChrNum}.g.vcf.gz
tabix -f -p vcf SD1W_13.g.vcf.gz
tabix -f -p vcf SD1W_15.g.vcf.gz
tabix -f -p vcf SD1W_35.g.vcf.gz
tabix -f -p vcf SD1W_4.g.vcf.gz
tabix -f -p vcf SD2W_18.g.vcf.gz
tabix -f -p vcf SD2W_23.g.vcf.gz
tabix -f -p vcf SD2W_23R.g.vcf.gz
tabix -f -p vcf SD2W_27.g.vcf.gz
tabix -f -p vcf ann29_neSD.g.vcf.gz
tabix -f -p vcf SD1W11_7_237_${ChrNum}.g.vcf.gz
tabix -f -p vcf SD1W_20_${ChrNum}.g.vcf.gz
tabix -f -p vcf SD1W_21_${ChrNum}.g.vcf.gz
tabix -f -p vcf SD1W_6_${ChrNum}.g.vcf.gz
tabix -f -p vcf SD1W_14_${ChrNum}.g.vcf.gz
tabix -f -p vcf SD2W30_3_360_${ChrNum}.g.vcf.gz
tabix -f -p vcf SD2W_19_${ChrNum}.g.vcf.gz
tabix -f -p vcf SD2W_5_${ChrNum}.g.vcf.gz
tabix -f -p vcf SD2W_14_${ChrNum}.g.vcf.gz
tabix -f -p vcf SD2W_15_${ChrNum}.g.vcf.gz
tabix -f -p vcf SD2W_21_${ChrNum}.g.vcf.gz
tabix -f -p vcf SD2W_30_${ChrNum}.g.vcf.gz
tabix -f -p vcf SD2W_38_${ChrNum}.g.vcf.gz
tabix -f -p vcf SD2W_40_${ChrNum}.g.vcf.gz
tabix -f -p vcf SK1W_22R.g.vcf.gz
tabix -f -p vcf SK1W_29R.g.vcf.gz
tabix -f -p vcf SK1W_37.g.vcf.gz
tabix -f -p vcf SK1W_Q.g.vcf.gz
tabix -f -p vcf ann28_swSK.g.vcf.gz
tabix -f -p vcf ANN1501_${ChrNum}.g.vcf.gz
tabix -f -p vcf SK1W15_3_300_${ChrNum}.g.vcf.gz
tabix -f -p vcf SK1W_29_${ChrNum}.g.vcf.gz
tabix -f -p vcf SK1W_36_${ChrNum}.g.vcf.gz
tabix -f -p vcf SK1W_1_${ChrNum}.g.vcf.gz
tabix -f -p vcf SK1W_15_${ChrNum}.g.vcf.gz
tabix -f -p vcf SK1W_25_${ChrNum}.g.vcf.gz
tabix -f -p vcf SK1W_22_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1216.g.vcf.gz
tabix -f -p vcf ANN1218.g.vcf.gz
tabix -f -p vcf ANN1219.g.vcf.gz
tabix -f -p vcf ANN1311.g.vcf.gz
tabix -f -p vcf ANN1316.g.vcf.gz
tabix -f -p vcf ANN1319.g.vcf.gz
tabix -f -p vcf ANN1322.g.vcf.gz
tabix -f -p vcf ANN1328.g.vcf.gz
tabix -f -p vcf ANN1330.g.vcf.gz
tabix -f -p vcf ANN1143.g.vcf.gz
tabix -f -p vcf ANN1134.g.vcf.gz
tabix -f -p vcf ANN1127.g.vcf.gz
tabix -f -p vcf ANN1115.g.vcf.gz
tabix -f -p vcf ANN1106.g.vcf.gz
tabix -f -p vcf ANN1095.g.vcf.gz
tabix -f -p vcf ANN1083.g.vcf.gz
tabix -f -p vcf ANN1073.g.vcf.gz
tabix -f -p vcf ANN1062.g.vcf.gz
tabix -f -p vcf ANN1053.g.vcf.gz
tabix -f -p vcf ANN1152.g.vcf.gz
tabix -f -p vcf ANN1154.g.vcf.gz
tabix -f -p vcf ANN1160.g.vcf.gz
tabix -f -p vcf ANN1155_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1159_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1157_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1156_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1151_${ChrNum}.g.vcf.gz
tabix -f -p vcf ANN1153_${ChrNum}.g.vcf.gz
tabix -f -p vcf Mex_A1516.g.vcf.gz
tabix -f -p vcf Mex_A1572.g.vcf.gz
tabix -f -p vcf Mex_Ann261.g.vcf.gz
tabix -f -p vcf Ari_Man.g.vcf.gz
tabix -f -p vcf Ari_Broad.g.vcf.gz
tabix -f -p vcf Arikara_122976.g.vcf.gz
tabix -f -p vcf Arikara_126306.g.vcf.gz
tabix -f -p vcf Arikara_14042_874.g.vcf.gz
tabix -f -p vcf Paiute.g.vcf.gz
tabix -f -p vcf Se_Purp.g.vcf.gz
tabix -f -p vcf Se_Strip_682.g.vcf.gz
tabix -f -p vcf Se_Strip_682.g.vcf.gz
tabix -f -p vcf Seneca_137749.g.vcf.gz
tabix -f -p vcf San_Ildefonso_Pueblo.g.vcf.gz
tabix -f -p vcf Anzac_Pueblo.g.vcf.gz
tabix -f -p vcf Arikara.g.vcf.gz
tabix -f -p vcf Havasupai.g.vcf.gz
tabix -f -p vcf Hidatsa.g.vcf.gz
tabix -f -p vcf Hopi_dye_NEW.g.vcf.gz
tabix -f -p vcf Hopi_mapping_NEW.g.vcf.gz
tabix -f -p vcf Hopi_real_NEW.g.vcf.gz
tabix -f -p vcf Laguna_Pueblo.g.vcf.gz
tabix -f -p vcf Mandan1_PPN046.g.vcf.gz
tabix -f -p vcf Mandan2.g.vcf.gz
tabix -f -p vcf MexCult1.g.vcf.gz
tabix -f -p vcf MexCult15.g.vcf.gz
tabix -f -p vcf MexCult3.g.vcf.gz
tabix -f -p vcf MexCult6.g.vcf.gz
tabix -f -p vcf MexCult9.g.vcf.gz
tabix -f -p vcf Seneca.g.vcf.gz
tabix -f -p vcf Zuni.g.vcf.gz
tabix -f -p vcf ARG0054.g.vcf.gz
tabix -f -p vcf ARG0169.g.vcf.gz
tabix -f -p vcf ARG0204.g.vcf.gz
tabix -f -p vcf PET0654.g.vcf.gz
tabix -f -p vcf PET0712.g.vcf.gz
tabix -f -p vcf PET0732.g.vcf.gz
tabix -f -p vcf PET0316.g.vcf.gz
tabix -f -p vcf PET0372.g.vcf.gz
tabix -f -p vcf PET0636.g.vcf.gz
tabix -f -p vcf PET0473N.g.vcf.gz
tabix -f -p vcf PET0531.g.vcf.gz
tabix -f -p vcf PET0580.g.vcf.gz
tabix -f -p vcf NIV1487_${ChrNum}.g.vcf.gz
tabix -f -p vcf NIV1468_${ChrNum}.g.vcf.gz
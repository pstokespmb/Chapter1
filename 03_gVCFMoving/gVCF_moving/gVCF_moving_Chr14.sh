#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
#SBATCH -J gVCF_moving_Chr14
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=2
#SBATCH --time=72:00:00
#SBATCH --mem=21000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/gVCF_moving_Chr14.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/gVCF_moving_Chr14.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load htslib/1.6

cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ann01_cwIA.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ann04_nwAR.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ann05_ccNM.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN0810.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN0820.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN0830.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN0835.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN0849.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN0854.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN0867.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN0874.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN0880.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN0882.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN0898.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN0908.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN0918.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN0927.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN0931.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN0946.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN0956.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN0957.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN0959.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN0962.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN0963.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN0964.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN0972.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN0975.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN0978.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN0981.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN0985.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN0986.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN0992.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN0996.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN0997.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ann10_ccIL.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1002.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1003.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1004.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1011.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1012.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1019.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1029.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1040.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1046.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1053.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1062.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1073.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1083.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1095.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1106.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1115.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1127.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1134.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1143.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1151_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1152.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1153_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1154.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1155_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1156_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1157_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1159_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1160.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1162.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1164.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1169.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1171_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1172.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1173_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1174.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1175_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1176_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1177_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1178.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1179_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1180_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1181_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1182_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1183.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1184_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1185_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1186_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1187.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1188.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1189_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1190_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1191_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1192_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1193_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1194_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1195.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1196_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1197.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1198.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1199_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1200_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1201_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1202.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1203.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1204.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1205_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1206_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1207_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1208_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1209_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1210_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1216.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1218.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1219.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/Ann1238_AllReads.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1260.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1268.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1273.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1284.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1296.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1297.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1300.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1301.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1309.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1310.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1311.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1316.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1319.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1322.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1328.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1330.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1419_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1420_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1439_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1501_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ann20_seAZ.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ann28_swSK.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ann29_neSD.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ann34_cwKS.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ann39_ncNE.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/Anzac_Pueblo.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ARG0054.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ARG0169.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ARG0204.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/Ari_broad.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/Ari_Man.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/Arikara.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/Arikara_122976.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/Arikara_126306.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/Arikara_14042_874.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/Havasupai.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/Hidatsa.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/Hopi_dye_NEW.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/Hopi_mapping_NEW.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/Hopi_real_NEW.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/IA1W_11_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/IA1W_15_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/IA1W_21_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/IA1W_28_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/IA1W_33_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/IA1W_39_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/IA1W_4_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/IA1W_1.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/IA1W_11R.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/IA1W_2.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/IA1W_5.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/IA1W1_6_308_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/IA2W_14_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/IA2W_16_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/IA2W_29_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/IA2W_37_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/IA2W_37R_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/IA2W_39_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/IA2W_6_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/IA1W_11_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/IA2W_17_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/IA2W_38.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/IA2W_7.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/KS1W_19_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/KS1W_24_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/KS1W_26_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/KS1W_29_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/KS1W_3_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/KS1W_40_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/KS1W_9_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/KS1W_2.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/KS1W_27.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/KS1W_32.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/KS1W_35.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/KS1W9_3_342_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/KS2E_6_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/KS2W_12_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/KS2W_14_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/KS2W_15R_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/KS2W_6_1R_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/KS2W_8_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/KS2W_9_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/KS2W_15.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/KS2W_24.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/KS2W_32.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/KS2W_35.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/KS2W24_7_43_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/Laguna_Pueblo.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/Mandan1_PPN046.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/Mandan2.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/MB1W_11_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/MB1W_14_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/MB1W_20_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/MB1W_30_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/MB1W_31_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/MB1W_16.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/MB1W_16B.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/MB1W_39.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/MB1W_40.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/MB1W_8.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/MB1W16_2_283_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/annMex_A1516.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/annMex_A1572.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/MexCult1.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/MexCult15.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/MexCult3.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/MexCult6.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/MexCult9.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/MO1W_11_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/MO1W_15_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/MO1W_16_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/MO1W_2_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/MO1W_2R_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/MO1W_39_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/MO1W_7_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/MO1W_3.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/MO1W_33.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/MO1W_38.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/MO1W30_1_114_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ND1W_12_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ND1W_20_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ND1W_22_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ND1W_25_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ND1W_27_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ND1W_33_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ND1W_36_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ND1W_31.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ND1W_38.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ND1W27_2_288_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/NIV1468_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/NIV1487_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/Paiute.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/PET0316.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/PET0372.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/PET0473N.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/PET0531.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/PET0580.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/PET0636.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/PET0654.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/PET0712.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/PET0732.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/San_Ildefonso_Pueblo.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SD1W_14_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SD1W_20_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SD1W_21_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SD1W_6_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SD1W_13.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SD1W_15.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SD1W_35.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SD1W_4.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SD1W11_7_237_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SD2W_14_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SD2W_15_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SD2W_19_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SD2W_21_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SD2W_30_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SD2W_38_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SD2W_40_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SD2W_5_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SD2W_18.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SD2W_23.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SD2W_23R.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SD2W_27.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SD2W30_3_360_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/Se_Purp.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/Se_Strip_682a.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/Se_Strip_682b.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/Seneca.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/Seneca_137749.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SK1W_1_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SK1W_15_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SK1W_22_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SK1W_25_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SK1W_29_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SK1W_36_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SK1W_22R.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SK1W_29R.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SK1W_37.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SK1W_Q.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/SK1W15_3_300_Chr14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/Zuni.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1331.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1341.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/ANN1407.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/MexCult14.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14
cp /global/scratch/users/peter_stokes/VariantCalling/gVCFs/Chr14_gVCFs/MexCult7.g.vcf.gz /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14

cd /global/scratch/users/peter_stokes/Chapter1/VariantCalling/gVCFs/Chr14

tabix -p vcf ann01_cwIA.g.vcf.gz
tabix -p vcf ann04_nwAR.g.vcf.gz
tabix -p vcf ann05_ccNM.g.vcf.gz
tabix -p vcf ANN0810.g.vcf.gz
tabix -p vcf ANN0820.g.vcf.gz
tabix -p vcf ANN0830.g.vcf.gz
tabix -p vcf ANN0835.g.vcf.gz
tabix -p vcf ANN0849.g.vcf.gz
tabix -p vcf ANN0854.g.vcf.gz
tabix -p vcf ANN0867.g.vcf.gz
tabix -p vcf ANN0874.g.vcf.gz
tabix -p vcf ANN0880.g.vcf.gz
tabix -p vcf ANN0882.g.vcf.gz
tabix -p vcf ANN0898.g.vcf.gz
tabix -p vcf ANN0908.g.vcf.gz
tabix -p vcf ANN0918.g.vcf.gz
tabix -p vcf ANN0927.g.vcf.gz
tabix -p vcf ANN0931.g.vcf.gz
tabix -p vcf ANN0946.g.vcf.gz
tabix -p vcf ANN0956.g.vcf.gz
tabix -p vcf ANN0957.g.vcf.gz
tabix -p vcf ANN0959.g.vcf.gz
tabix -p vcf ANN0962.g.vcf.gz
tabix -p vcf ANN0963.g.vcf.gz
tabix -p vcf ANN0964.g.vcf.gz
tabix -p vcf ANN0972.g.vcf.gz
tabix -p vcf ANN0975.g.vcf.gz
tabix -p vcf ANN0978.g.vcf.gz
tabix -p vcf ANN0981.g.vcf.gz
tabix -p vcf ANN0985.g.vcf.gz
tabix -p vcf ANN0986.g.vcf.gz
tabix -p vcf ANN0992.g.vcf.gz
tabix -p vcf ANN0996.g.vcf.gz
tabix -p vcf ANN0997.g.vcf.gz
tabix -p vcf ann10_ccIL.g.vcf.gz
tabix -p vcf ANN1002.g.vcf.gz
tabix -p vcf ANN1003.g.vcf.gz
tabix -p vcf ANN1004.g.vcf.gz
tabix -p vcf ANN1011.g.vcf.gz
tabix -p vcf ANN1012.g.vcf.gz
tabix -p vcf ANN1019.g.vcf.gz
tabix -p vcf ANN1029.g.vcf.gz
tabix -p vcf ANN1040.g.vcf.gz
tabix -p vcf ANN1046.g.vcf.gz
tabix -p vcf ANN1053.g.vcf.gz
tabix -p vcf ANN1062.g.vcf.gz
tabix -p vcf ANN1073.g.vcf.gz
tabix -p vcf ANN1083.g.vcf.gz
tabix -p vcf ANN1095.g.vcf.gz
tabix -p vcf ANN1106.g.vcf.gz
tabix -p vcf ANN1115.g.vcf.gz
tabix -p vcf ANN1127.g.vcf.gz
tabix -p vcf ANN1134.g.vcf.gz
tabix -p vcf ANN1143.g.vcf.gz
tabix -p vcf ANN1151_Chr14.g.vcf.gz
tabix -p vcf ANN1152.g.vcf.gz
tabix -p vcf ANN1153_Chr14.g.vcf.gz
tabix -p vcf ANN1154.g.vcf.gz
tabix -p vcf ANN1155_Chr14.g.vcf.gz
tabix -p vcf ANN1156_Chr14.g.vcf.gz
tabix -p vcf ANN1157_Chr14.g.vcf.gz
tabix -p vcf ANN1159_Chr14.g.vcf.gz
tabix -p vcf ANN1160.g.vcf.gz
tabix -p vcf ANN1162.g.vcf.gz
tabix -p vcf ANN1164.g.vcf.gz
tabix -p vcf ANN1169.g.vcf.gz
tabix -p vcf ANN1171_Chr14.g.vcf.gz
tabix -p vcf ANN1172.g.vcf.gz
tabix -p vcf ANN1173_Chr14.g.vcf.gz
tabix -p vcf ANN1174.g.vcf.gz
tabix -p vcf ANN1175_Chr14.g.vcf.gz
tabix -p vcf ANN1176_Chr14.g.vcf.gz
tabix -p vcf ANN1177_Chr14.g.vcf.gz
tabix -p vcf ANN1178.g.vcf.gz
tabix -p vcf ANN1179_Chr14.g.vcf.gz
tabix -p vcf ANN1180_Chr14.g.vcf.gz
tabix -p vcf ANN1181_Chr14.g.vcf.gz
tabix -p vcf ANN1182_Chr14.g.vcf.gz
tabix -p vcf ANN1183.g.vcf.gz
tabix -p vcf ANN1184_Chr14.g.vcf.gz
tabix -p vcf ANN1185_Chr14.g.vcf.gz
tabix -p vcf ANN1186_Chr14.g.vcf.gz
tabix -p vcf ANN1187.g.vcf.gz
tabix -p vcf ANN1188.g.vcf.gz
tabix -p vcf ANN1189_Chr14.g.vcf.gz
tabix -p vcf ANN1190_Chr14.g.vcf.gz
tabix -p vcf ANN1191_Chr14.g.vcf.gz
tabix -p vcf ANN1192_Chr14.g.vcf.gz
tabix -p vcf ANN1193_Chr14.g.vcf.gz
tabix -p vcf ANN1194_Chr14.g.vcf.gz
tabix -p vcf ANN1195.g.vcf.gz
tabix -p vcf ANN1196_Chr14.g.vcf.gz
tabix -p vcf ANN1197.g.vcf.gz
tabix -p vcf ANN1198.g.vcf.gz
tabix -p vcf ANN1199_Chr14.g.vcf.gz
tabix -p vcf ANN1200_Chr14.g.vcf.gz
tabix -p vcf ANN1201_Chr14.g.vcf.gz
tabix -p vcf ANN1202.g.vcf.gz
tabix -p vcf ANN1203.g.vcf.gz
tabix -p vcf ANN1204.g.vcf.gz
tabix -p vcf ANN1205_Chr14.g.vcf.gz
tabix -p vcf ANN1206_Chr14.g.vcf.gz
tabix -p vcf ANN1207_Chr14.g.vcf.gz
tabix -p vcf ANN1208_Chr14.g.vcf.gz
tabix -p vcf ANN1209_Chr14.g.vcf.gz
tabix -p vcf ANN1210_Chr14.g.vcf.gz
tabix -p vcf ANN1216.g.vcf.gz
tabix -p vcf ANN1218.g.vcf.gz
tabix -p vcf ANN1219.g.vcf.gz
tabix -p vcf Ann1238_AllReads.g.vcf.gz
tabix -p vcf ANN1260.g.vcf.gz
tabix -p vcf ANN1268.g.vcf.gz
tabix -p vcf ANN1273.g.vcf.gz
tabix -p vcf ANN1284.g.vcf.gz
tabix -p vcf ANN1296.g.vcf.gz
tabix -p vcf ANN1297.g.vcf.gz
tabix -p vcf ANN1300.g.vcf.gz
tabix -p vcf ANN1301.g.vcf.gz
tabix -p vcf ANN1309.g.vcf.gz
tabix -p vcf ANN1310.g.vcf.gz
tabix -p vcf ANN1311.g.vcf.gz
tabix -p vcf ANN1316.g.vcf.gz
tabix -p vcf ANN1319.g.vcf.gz
tabix -p vcf ANN1322.g.vcf.gz
tabix -p vcf ANN1328.g.vcf.gz
tabix -p vcf ANN1330.g.vcf.gz
tabix -p vcf ANN1419_Chr14.g.vcf.gz
tabix -p vcf ANN1420_Chr14.g.vcf.gz
tabix -p vcf ANN1439_Chr14.g.vcf.gz
tabix -p vcf ANN1501_Chr14.g.vcf.gz
tabix -p vcf ann20_seAZ.g.vcf.gz
tabix -p vcf ann28_swSK.g.vcf.gz
tabix -p vcf ann29_neSD.g.vcf.gz
tabix -p vcf ann34_cwKS.g.vcf.gz
tabix -p vcf ann39_ncNE.g.vcf.gz
tabix -p vcf Anzac_Pueblo.g.vcf.gz
tabix -p vcf ARG0054.g.vcf.gz
tabix -p vcf ARG0169.g.vcf.gz
tabix -p vcf ARG0204.g.vcf.gz
tabix -p vcf Ari_broad.g.vcf.gz
tabix -p vcf Ari_Man.g.vcf.gz
tabix -p vcf Arikara.g.vcf.gz
tabix -p vcf Arikara_122976.g.vcf.gz
tabix -p vcf Arikara_126306.g.vcf.gz
tabix -p vcf Arikara_14042_874.g.vcf.gz
tabix -p vcf Havasupai.g.vcf.gz
tabix -p vcf Hidatsa.g.vcf.gz
tabix -p vcf Hopi_dye_NEW.g.vcf.gz
tabix -p vcf Hopi_mapping_NEW.g.vcf.gz
tabix -p vcf Hopi_real_NEW.g.vcf.gz
tabix -p vcf IA1W_11_Chr14.g.vcf.gz
tabix -p vcf IA1W_15_Chr14.g.vcf.gz
tabix -p vcf IA1W_21_Chr14.g.vcf.gz
tabix -p vcf IA1W_28_Chr14.g.vcf.gz
tabix -p vcf IA1W_33_Chr14.g.vcf.gz
tabix -p vcf IA1W_39_Chr14.g.vcf.gz
tabix -p vcf IA1W_4_Chr14.g.vcf.gz
tabix -p vcf IA1W_1.g.vcf.gz
tabix -p vcf IA1W_11R.g.vcf.gz
tabix -p vcf IA1W_2.g.vcf.gz
tabix -p vcf IA1W_5.g.vcf.gz
tabix -p vcf IA1W1_6_308_Chr14.g.vcf.gz
tabix -p vcf IA2W_14_Chr14.g.vcf.gz
tabix -p vcf IA2W_16_Chr14.g.vcf.gz
tabix -p vcf IA2W_29_Chr14.g.vcf.gz
tabix -p vcf IA2W_37_Chr14.g.vcf.gz
tabix -p vcf IA2W_37R_Chr14.g.vcf.gz
tabix -p vcf IA2W_39_Chr14.g.vcf.gz
tabix -p vcf IA2W_6_Chr14.g.vcf.gz
tabix -p vcf IA1W_11_Chr14.g.vcf.gz
tabix -p vcf IA2W_17_Chr14.g.vcf.gz
tabix -p vcf IA2W_38.g.vcf.gz
tabix -p vcf IA2W_7.g.vcf.gz
tabix -p vcf KS1W_19_Chr14.g.vcf.gz
tabix -p vcf KS1W_24_Chr14.g.vcf.gz
tabix -p vcf KS1W_26_Chr14.g.vcf.gz
tabix -p vcf KS1W_29_Chr14.g.vcf.gz
tabix -p vcf KS1W_3_Chr14.g.vcf.gz
tabix -p vcf KS1W_40_Chr14.g.vcf.gz
tabix -p vcf KS1W_9_Chr14.g.vcf.gz
tabix -p vcf KS1W_2.g.vcf.gz
tabix -p vcf KS1W_27.g.vcf.gz
tabix -p vcf KS1W_32.g.vcf.gz
tabix -p vcf KS1W_35.g.vcf.gz
tabix -p vcf KS1W9_3_342_Chr14.g.vcf.gz
tabix -p vcf KS2E_6_Chr14.g.vcf.gz
tabix -p vcf KS2W_12_Chr14.g.vcf.gz
tabix -p vcf KS2W_14_Chr14.g.vcf.gz
tabix -p vcf KS2W_15R_Chr14.g.vcf.gz
tabix -p vcf KS2W_6_1R_Chr14.g.vcf.gz
tabix -p vcf KS2W_8_Chr14.g.vcf.gz
tabix -p vcf KS2W_9_Chr14.g.vcf.gz
tabix -p vcf KS2W_15.g.vcf.gz
tabix -p vcf KS2W_24.g.vcf.gz
tabix -p vcf KS2W_32.g.vcf.gz
tabix -p vcf KS2W_35.g.vcf.gz
tabix -p vcf KS2W24_7_43_Chr14.g.vcf.gz
tabix -p vcf Laguna_Pueblo.g.vcf.gz
tabix -p vcf Mandan1_PPN046.g.vcf.gz
tabix -p vcf Mandan2.g.vcf.gz
tabix -p vcf MB1W_11_Chr14.g.vcf.gz
tabix -p vcf MB1W_14_Chr14.g.vcf.gz
tabix -p vcf MB1W_20_Chr14.g.vcf.gz
tabix -p vcf MB1W_30_Chr14.g.vcf.gz
tabix -p vcf MB1W_31_Chr14.g.vcf.gz
tabix -p vcf MB1W_16.g.vcf.gz
tabix -p vcf MB1W_16B.g.vcf.gz
tabix -p vcf MB1W_39.g.vcf.gz
tabix -p vcf MB1W_40.g.vcf.gz
tabix -p vcf MB1W_8.g.vcf.gz
tabix -p vcf MB1W16_2_283_Chr14.g.vcf.gz
tabix -p vcf annMex_A1516.g.vcf.gz
tabix -p vcf annMex_A1572.g.vcf.gz
tabix -p vcf MexCult1.g.vcf.gz
tabix -p vcf MexCult15.g.vcf.gz
tabix -p vcf MexCult3.g.vcf.gz
tabix -p vcf MexCult6.g.vcf.gz
tabix -p vcf MexCult9.g.vcf.gz
tabix -p vcf MO1W_11_Chr14.g.vcf.gz
tabix -p vcf MO1W_15_Chr14.g.vcf.gz
tabix -p vcf MO1W_16_Chr14.g.vcf.gz
tabix -p vcf MO1W_2_Chr14.g.vcf.gz
tabix -p vcf MO1W_2R_Chr14.g.vcf.gz
tabix -p vcf MO1W_39_Chr14.g.vcf.gz
tabix -p vcf MO1W_7_Chr14.g.vcf.gz
tabix -p vcf MO1W_3.g.vcf.gz
tabix -p vcf MO1W_33.g.vcf.gz
tabix -p vcf MO1W_38.g.vcf.gz
tabix -p vcf MO1W30_1_114_Chr14.g.vcf.gz
tabix -p vcf ND1W_12_Chr14.g.vcf.gz
tabix -p vcf ND1W_20_Chr14.g.vcf.gz
tabix -p vcf ND1W_22_Chr14.g.vcf.gz
tabix -p vcf ND1W_25_Chr14.g.vcf.gz
tabix -p vcf ND1W_27_Chr14.g.vcf.gz
tabix -p vcf ND1W_33_Chr14.g.vcf.gz
tabix -p vcf ND1W_36_Chr14.g.vcf.gz
tabix -p vcf ND1W_31.g.vcf.gz
tabix -p vcf ND1W_38.g.vcf.gz
tabix -p vcf ND1W27_2_288_Chr14.g.vcf.gz
tabix -p vcf NIV1468_Chr14.g.vcf.gz
tabix -p vcf NIV1487_Chr14.g.vcf.gz
tabix -p vcf Paiute.g.vcf.gz
tabix -p vcf PET0316.g.vcf.gz
tabix -p vcf PET0372.g.vcf.gz
tabix -p vcf PET0473N.g.vcf.gz
tabix -p vcf PET0531.g.vcf.gz
tabix -p vcf PET0580.g.vcf.gz
tabix -p vcf PET0636.g.vcf.gz
tabix -p vcf PET0654.g.vcf.gz
tabix -p vcf PET0712.g.vcf.gz
tabix -p vcf PET0732.g.vcf.gz
tabix -p vcf San_Ildefonso_Pueblo.g.vcf.gz
tabix -p vcf SD1W_14_Chr14.g.vcf.gz
tabix -p vcf SD1W_20_Chr14.g.vcf.gz
tabix -p vcf SD1W_21_Chr14.g.vcf.gz
tabix -p vcf SD1W_6_Chr14.g.vcf.gz
tabix -p vcf SD1W_13.g.vcf.gz
tabix -p vcf SD1W_15.g.vcf.gz
tabix -p vcf SD1W_35.g.vcf.gz
tabix -p vcf SD1W_4.g.vcf.gz
tabix -p vcf SD1W11_7_237_Chr14.g.vcf.gz
tabix -p vcf SD2W_14_Chr14.g.vcf.gz
tabix -p vcf SD2W_15_Chr14.g.vcf.gz
tabix -p vcf SD2W_19_Chr14.g.vcf.gz
tabix -p vcf SD2W_21_Chr14.g.vcf.gz
tabix -p vcf SD2W_30_Chr14.g.vcf.gz
tabix -p vcf SD2W_38_Chr14.g.vcf.gz
tabix -p vcf SD2W_40_Chr14.g.vcf.gz
tabix -p vcf SD2W_5_Chr14.g.vcf.gz
tabix -p vcf SD2W_18.g.vcf.gz
tabix -p vcf SD2W_23.g.vcf.gz
tabix -p vcf SD2W_23R.g.vcf.gz
tabix -p vcf SD2W_27.g.vcf.gz
tabix -p vcf SD2W30_3_360_Chr14.g.vcf.gz
tabix -p vcf Se_Purp.g.vcf.gz
tabix -p vcf Se_Strip_682a.g.vcf.gz
tabix -p vcf Se_Strip_682b.g.vcf.gz
tabix -p vcf Seneca.g.vcf.gz
tabix -p vcf Seneca_137749.g.vcf.gz
tabix -p vcf SK1W_1_Chr14.g.vcf.gz
tabix -p vcf SK1W_15_Chr14.g.vcf.gz
tabix -p vcf SK1W_22_Chr14.g.vcf.gz
tabix -p vcf SK1W_25_Chr14.g.vcf.gz
tabix -p vcf SK1W_29_Chr14.g.vcf.gz
tabix -p vcf SK1W_36_Chr14.g.vcf.gz
tabix -p vcf SK1W_22R.g.vcf.gz
tabix -p vcf SK1W_29R.g.vcf.gz
tabix -p vcf SK1W_37.g.vcf.gz
tabix -p vcf SK1W_Q.g.vcf.gz
tabix -p vcf SK1W15_3_300_Chr14.g.vcf.gz
tabix -p vcf Zuni.g.vcf.gz
tabix -p vcf ANN1331.g.vcf.gz
tabix -p vcf ANN1341.g.vcf.gz
tabix -p vcf ANN1407.g.vcf.gz
tabix -p vcf MexCult14.g.vcf.gz
tabix -p vcf MexCult7.g.vcf.gz
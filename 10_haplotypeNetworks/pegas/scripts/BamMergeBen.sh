#!/bin/bash
#SBATCH -D /global/scratch2/peter_stokes/additionalAnnuusBen/bams
#SBATCH -J BamMergeBen
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=3
#SBATCH --time=400:00:00
#SBATCH --mem=32000
#SBATCH -o /global/scratch2/peter_stokes/err_outs/BamMergeBen.out
#SBATCH -e /global/scratch2/peter_stokes/err_outs/BamMergeBen.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load samtools

#3 lanes merge: samtools merge merged.bam bam1 bam2 bam3

samtools merge Hopi_real_NEW_merged.bam Hopi_real_NEW_Lane1_sorted.bam Hopi_real_NEW_Lane2_sorted.bam Hopi_real_NEW_lane3_sorted.bam


#samtools merge Mandan2_merged.bam Mandan2_Lane1_sorted.bam Mandan2_Lane2.bam Mandan2_lane3.bam
#samtools merge Laguna_Pueblo_merged.bam Laguna_Pueblo_Lane1_sorted.bam Laguna_Pueblo_Lane2_sorted.bam Laguna_Pueblo_lane3_sorted.bam
#samtools merge Hidatsa_merged.bam Hidatsa_Lane1_sorted.bam Hidatsa_Lane2_sorted.bam Hidatsa_lane3_sorted.bam
#samtools merge Zuni_merged.bam Zuni_Lane1_sorted.bam Zuni_Lane2_sorted.bam Zuni_lane3_sorted.bam
#samtools merge Anzac_Pueblo_merged.bam Anzac_Pueblo_Lane1_sorted.bam Anzac_Pueblo_Lane2_sorted.bam Anzac_Pueblo_lane3_sorted.bam

#samtools merge _merged.bam _lane1.bam _lane2.bam _lane3.bam
#samtools merge _merged.bam _lane1.bam _lane2.bam _lane3.bam
#samtools merge _merged.bam _lane1.bam _lane2.bam _lane3.bam

#2 lanes merge: samtools merge merged.bam bam1 bam2

samtools merge HT259_KS2W_6_merged.bam HT259_KS2W_6_lane1.bam HT259_KS2W_6_lane2.bam
samtools merge Q017B_KS2W_6_1R_merged.bam Q017B_KS2W_6_1R_lane1.bam Q017B_KS2W_6_1R_lane2.bam
samtools merge Q083_KS2W_14_merged.bam Q083_KS2W_14_lane1.bam Q083_KS2W_14_lane2.bam
samtools merge QPA2_KS2W_8_merged.bam QPA2_KS2W_8_lane1.bam QPA2_KS2W_8_lane2.bam
samtools merge HT60_MB1W_30_merged.bam HT60_MB1W_30_lane1.bam HT60_MB1W_30_lane2.bam
samtools merge HT165_MO1W_16_merged.bam HT165_MO1W_16_lane1.bam HT165_MO1W_16_lane2.bam

#samtools merge HT56_IA2W_37_merged.bam HT56_IA2W_37_lane1_sorted.bam HT56_IA2W_37_lane2_sorted.bam
#samtools merge Q036B_KS1W_19_merged.bam Q036B_KS1W_19_lane1_sorted.bam Q036B_KS1W_19_lane2_sorted.bam
#samtools merge Q041_KS1W_24_merged.bam Q041_KS1W_24_lane1_sorted.bam Q041_KS1W_24_lane2_sorted.bam
#samtools merge QPF4_KS1W_9_merged.bam QPF4_KS1W_9_lane1_sorted.bam QPF4_KS1W_9_lane2_sorted.bam
#samtools merge HT227_KS2W_9_merged.bam HT227_KS2W_9_lane1_sorted.bam HT227_KS2W_9_lane2_sorted.bam
#samtools merge HT228_KS2W_12_merged.bam HT228_KS2W_12_lane1_sorted.bam HT228_KS2W_12_lane2_sorted.bam
#samtools merge HT211_MO1W_39_merged.bam HT211_MO1W_39_lane1_sorted.bam HT211_MO1W_39_lane2_sorted.bam
#samtools merge HT213_ND1W_20_merged.bam HT213_ND1W_20_lane1_sorted.bam HT213_ND1W_20_lane2_sorted.bam
#samtools merge HT93_ND1W_33_merged.bam HT93_ND1W_33_lane1_sorted.bam HT93_ND1W_33_lane2_sorted.bam
#samtools merge HT118_SD2W_19_merged.bam HT118_SD2W_19_lane1_sorted.bam HT118_SD2W_19_lane2_sorted.bam
#samtools merge HT170_SD2W_14_merged.bam HT170_SD2W_14_lane1_sorted.bam HT170_SD2W_14_lane2_sorted.bam
#samtools merge HT194_SD2W_15_merged.bam HT194_SD2W_15_lane1_sorted.bam HT194_SD2W_15_lane2_sorted.bam
#samtools merge HT217_SD2W_21_merged.bam HT217_SD2W_21_lane1_sorted.bam HT217_SD2W_21_lane2_sorted.bam
#samtools merge HT218_SD2W_30_merged.bam HT218_SD2W_30_lane1_sorted.bam HT218_SD2W_30_lane2_sorted.bam
#samtools merge HT219_SD2W_38_merged.bam HT219_SD2W_38_lane1_sorted.bam HT219_SD2W_38_lane2_sorted.bam
#samtools merge HT196_SK1W_1_merged.bam HT196_SK1W_1_lane1_sorted.bam HT196_SK1W_1_lane2_sorted.bam
#samtools merge HT220_SK1W_15_merged.bam HT220_SK1W_15_lane1_sorted.bam HT220_SK1W_15_lane2_sorted.bam
#samtools merge -f Hopi_dye_NEW_merged.bam Hopi_dye_NEW_Lane1_sorted.bam Hopi_dye_NEW_Lane2_sorted.bam
#samtools merge Havasupai_merged.bam Havasupai_Lane1_sorted.bam Havasupai_Lane2_sorted.bam
#samtools merge Arikara_merged.bam Arikara_Lane1_sorted.bam Arikara_Lane2_sorted.bam
#samtools merge HT271_IA1W_15_lane1_merged.bam HT271_IA1W_15_lane1_sorted.bam HT271_IA1W_15_lane2_sorted.bam
#samtools merge HT272_IA1W_39_lane1_merged.bam HT272_IA1W_39_lane1_sorted.bam HT272_IA1W_39_lane2_sorted.bam
#samtools merge HT317_IA1W_4_lane1_merged.bam HT317_IA1W_4_lane1_sorted.bam HT317_IA1W_4_lane2_sorted.bam
#samtools merge Q076_IA1W_11_lane1_merged.bam Q076_IA1W_11_lane1_sorted.bam Q076_IA1W_11_lane2_sorted.bam
#samtools merge Q077_IA1W_21_lane1_merged.bam Q077_IA1W_21_lane1_sorted.bam Q077_IA1W_21_lane2_sorted.bam
#samtools merge Q33_IA1W_28_lane1_merged.bam Q33_IA1W_28_lane1_sorted.bam Q33_IA1W_28_lane2_sorted.bam

#samtools merge _merged.bam _lane1_sorted.bam _lane2_sorted.bam
#samtools merge _merged.bam _lane1_sorted.bam _lane2_sorted.bam
#samtools merge _merged.bam _lane1_sorted.bam _lane2_sorted.bam
#samtools merge _merged.bam _lane1_sorted.bam _lane2_sorted.bam
#samtools merge _merged.bam _lane1_sorted.bam _lane2_sorted.bam
#samtools merge _merged.bam _lane1_sorted.bam _lane2_sorted.bam
#samtools merge _merged.bam _lane1_sorted.bam _lane2_sorted.bam
#samtools merge _merged.bam _lane1_sorted.bam _lane2_sorted.bam
#samtools merge _merged.bam _lane1_sorted.bam _lane2_sorted.bam
#samtools merge _merged.bam _lane1_sorted.bam _lane2_sorted.bam
#samtools merge _merged.bam _lane1_sorted.bam _lane2_sorted.bam
#samtools merge _merged.bam _lane1_sorted.bam _lane2_sorted.bam
#samtools merge _merged.bam _lane1_sorted.bam _lane2_sorted.bam
#samtools merge _merged.bam _lane1_sorted.bam _lane2_sorted.bam
#samtools merge _merged.bam _lane1_sorted.bam _lane2_sorted.bam
#samtools merge _merged.bam _lane1_sorted.bam _lane2_sorted.bam
#samtools merge _merged.bam _lane1_sorted.bam _lane2_sorted.bam
#samtools merge _merged.bam _lane1_sorted.bam _lane2_sorted.bam
#samtools merge _merged.bam _lane1_sorted.bam _lane2_sorted.bam
#samtools merge _merged.bam _lane1_sorted.bam _lane2_sorted.bam
#samtools merge _merged.bam _lane1_sorted.bam _lane2_sorted.bam
#samtools merge _merged.bam _lane1_sorted.bam _lane2_sorted.bam

#3 lanes cp

#cp Mandan2_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp Laguna_Pueblo_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp Hidatsa_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp Zuni_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp Anzac_Pueblo_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen

#2 lanes cp

#cp HT56_IA2W_37_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp Q036B_KS1W_19_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp Q041_KS1W_24_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp QPF4_KS1W_9_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp HT227_KS2W_9_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp HT228_KS2W_12_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp HT211_MO1W_39_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp HT213_ND1W_20_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp HT93_ND1W_33_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp HT118_SD2W_19_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp HT170_SD2W_14_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp HT194_SD2W_15_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp HT217_SD2W_21_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp HT218_SD2W_30_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp HT219_SD2W_38_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp HT196_SK1W_1_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp HT220_SK1W_15_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp Hopi_dye_NEW_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp Havasupai_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp Arikara_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp HT271_IA1W_15_lane1_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp HT272_IA1W_39_lane1_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp HT317_IA1W_4_lane1_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp Q076_IA1W_11_lane1_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp Q077_IA1W_21_lane1_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp Q33_IA1W_28_lane1_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen

#cp  /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp  /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp  /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp  /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp  /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp  /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp  /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp  /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp  /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp  /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp  /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp  /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp  /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp  /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp  /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen


#1 lane cp: _sorted.bam

cp Hopi_real_NEW_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp Seneca_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp HT259_KS2W_6_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp Q017B_KS2W_6_1R_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp Q083_KS2W_14_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp QPA2_KS2W_8_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp HT60_MB1W_30_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp HT165_MO1W_16_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp ED20_SD1W11_7_237_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp HT290_SD1W_20_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp HT6_SD1W_21_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp Q097_SD1W_6_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp Q098_SD1W_14_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp Q099_SD1W_21B_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp ED10_SD2W30_3_360_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp ED13_IA1W1_6_308_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp HT247_IA1W_33_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp HT011_IA2W_37R_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp HT014_IA2W_16_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp HT103_IA2W_39_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp HT149_IA2W_29_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp HT24_IA2W_14_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp HT55_IA2W_17_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp QPC2_IA2W_6_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp ED16_KS1W9_3_342_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp HT255_KS1W_29_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp HT274_KS1W_3_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp HT277_KS1W_40_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp QPE2_KS1W_26_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp ANN1419_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp ANN1420_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp ANN1439_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp ED2_KS2W24_7_43_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp HT146_SD2W_5_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp HT51_SD2W_40_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp ANN1501_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp ED12_SK1W15_3_300_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp HT100_SK1W_29_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp HT124_SK1W_36_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp HT242_SK1W_25_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
cp HT378_SK1W_22_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen

#cp HT104_KS2W_15R_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp ED7_MB1W16_2_283_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp HT125_MB1W_20_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp HT232_MB1W_11_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp HT233_MB1W_14_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp HT61_MB1W_31_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp ED8_MO1W30_1_114_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp HT140_MO1W_2R_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp HT141_MO1W_11_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp HT142_MO1W_15_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp HT236_MO1W_2_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp HT68_MO1W_7_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp ED18_ND1W27_2_288_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp HT305_ND1W_27_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp HT44_ND1W_12_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp HT45_ND1W_36_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp HT5_ND1W_22_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp Q166B_ND1W_25_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp Hopi_mapping_NEW_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp Mandan1_PPN046_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp Ari_Man_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp Ari_broad_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp Arikara_122976_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp Arikara_126306_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp Arikara_14042_874_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp Paiute_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp Se_Purp_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp Se_Strip_682a_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp Se_Strip_682b_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp Seneca_137749_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp SanIldefonsoPueblo_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen

#cp _sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp _sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp _sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp _sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp _sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp _sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp _sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp _sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp _sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp _sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp _sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp _sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp _sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp _sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp _sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp _sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp _sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp _sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp _sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp _sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp _sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp _sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp _sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp _sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp _sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp _sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp _sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp _sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp _sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen
#cp _sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen

#index bams

cd /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen

#samtools index Mandan2_merged.bam
#samtools index Laguna_Pueblo_merged.bam
#samtools index Hidatsa_merged.bam
#samtools index Zuni_merged.bam
#samtools index Anzac_Pueblo_merged.bam
#samtools index HT56_IA2W_37_merged.bam
#samtools index Q036B_KS1W_19_merged.bam
#samtools index Q041_KS1W_24_merged.bam
#samtools index QPF4_KS1W_9_merged.bam
#samtools index HT227_KS2W_9_merged.bam
#samtools index HT228_KS2W_12_merged.bam
#samtools index HT211_MO1W_39_merged.bam
#samtools index HT213_ND1W_20_merged.bam
#samtools index HT93_ND1W_33_merged.bam
#samtools index HT118_SD2W_19_merged.bam
#samtools index HT170_SD2W_14_merged.bam
#samtools index HT194_SD2W_15_merged.bam
#samtools index HT217_SD2W_21_merged.bam
#samtools index HT218_SD2W_30_merged.bam
#samtools index HT219_SD2W_38_merged.bam
#samtools index HT196_SK1W_1_merged.bam
#samtools index HT220_SK1W_15_merged.bam
#samtools index Hopi_dye_NEW_merged.bam
#samtools index Havasupai_merged.bam
#samtools index Arikara_merged.bam
#samtools index HT271_IA1W_15_lane1_merged.bam
#samtools index HT272_IA1W_39_lane1_merged.bam
#samtools index HT317_IA1W_4_lane1_merged.bam
#samtools index Q076_IA1W_11_lane1_merged.bam
#samtools index Q077_IA1W_21_lane1_merged.bam
#samtools index Q33_IA1W_28_lane1_merged.bam
#samtools index HT104_KS2W_15R_sorted.bam
#samtools index ED7_MB1W16_2_283_sorted.bam
#samtools index HT125_MB1W_20_sorted.bam
#samtools index HT232_MB1W_11_sorted.bam
#samtools index HT233_MB1W_14_sorted.bam
#samtools index HT61_MB1W_31_sorted.bam
#samtools index ED8_MO1W30_1_114_sorted.bam
#samtools index HT140_MO1W_2R_sorted.bam
#samtools index HT141_MO1W_11_sorted.bam
#samtools index HT142_MO1W_15_sorted.bam
#samtools index HT236_MO1W_2_sorted.bam
#samtools index HT68_MO1W_7_sorted.bam
#samtools index ED18_ND1W27_2_288_sorted.bam
#samtools index HT305_ND1W_27_sorted.bam
#samtools index HT44_ND1W_12_sorted.bam
#samtools index HT45_ND1W_36_sorted.bam
#samtools index HT5_ND1W_22_sorted.bam
#samtools index Q166B_ND1W_25_sorted.bam
#samtools index Hopi_mapping_NEW_sorted.bam
#samtools index Mandan1_PPN046_sorted.bam
#samtools index Ari_Man_sorted.bam
#samtools index Ari_broad_sorted.bam
#samtools index Arikara_122976_sorted.bam
#samtools index Arikara_126306_sorted.bam
#samtools index Arikara_14042_874_sorted.bam
#samtools index Paiute_sorted.bam
#samtools index Se_Purp_sorted.bam
#samtools index Se_Strip_682a_sorted.bam
#samtools index Se_Strip_682b_sorted.bam
#samtools index Seneca_137749_sorted.bam
#samtools index SanIldefonsoPueblo_sorted.bam

samtools index Hopi_real_NEW_merged.bam
samtools index Seneca_merged.bam
samtools index HT259_KS2W_6_merged.bam
samtools index Q017B_KS2W_6_1R_merged.bam
samtools index Q083_KS2W_14_merged.bam
samtools index QPA2_KS2W_8_merged.bam
samtools index HT60_MB1W_30_merged.bam
samtools index HT165_MO1W_16_merged.bam
samtools index ED20_SD1W11_7_237_sorted.bam
samtools index HT290_SD1W_20_sorted.bam
samtools index HT6_SD1W_21_sorted.bam
samtools index Q097_SD1W_6_sorted.bam
samtools index Q098_SD1W_14_sorted.bam
samtools index Q099_SD1W_21B_sorted.bam
samtools index ED10_SD2W30_3_360_sorted.bam
samtools index ED13_IA1W1_6_308_sorted.bam
samtools index HT247_IA1W_33_sorted.bam
samtools index HT011_IA2W_37R_sorted.bam
samtools index HT014_IA2W_16_sorted.bam
samtools index HT103_IA2W_39_sorted.bam
samtools index HT149_IA2W_29_sorted.bam
samtools index HT24_IA2W_14_sorted.bam
samtools index HT55_IA2W_17_sorted.bam
samtools index QPC2_IA2W_6_sorted.bam
samtools index ED16_KS1W9_3_342_sorted.bam
samtools index HT255_KS1W_29_sorted.bam
samtools index HT274_KS1W_3_sorted.bam
samtools index HT277_KS1W_40_sorted.bam
samtools index QPE2_KS1W_26_sorted.bam
samtools index ANN1419_sorted.bam
samtools index ANN1420_sorted.bam
samtools index ANN1439_sorted.bam
samtools index ED2_KS2W24_7_43_sorted.bam
samtools index HT146_SD2W_5_sorted.bam
samtools index HT51_SD2W_40_sorted.bam
samtools index ANN1501_sorted.bam
samtools index ED12_SK1W15_3_300_sorted.bam
samtools index HT100_SK1W_29_sorted.bam
samtools index HT124_SK1W_36_sorted.bam
samtools index HT242_SK1W_25_sorted.bam
samtools index HT378_SK1W_22_sorted.bam

cp Hopi_real_NEW_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp Seneca_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT259_KS2W_6_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp Q017B_KS2W_6_1R_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp Q083_KS2W_14_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp QPA2_KS2W_8_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT60_MB1W_30_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT165_MO1W_16_merged.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp ED20_SD1W11_7_237_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT290_SD1W_20_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT6_SD1W_21_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp Q097_SD1W_6_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp Q098_SD1W_14_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp Q099_SD1W_21B_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp ED10_SD2W30_3_360_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp ED13_IA1W1_6_308_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT247_IA1W_33_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT011_IA2W_37R_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT014_IA2W_16_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT103_IA2W_39_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT149_IA2W_29_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT24_IA2W_14_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT55_IA2W_17_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp QPC2_IA2W_6_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp ED16_KS1W9_3_342_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT255_KS1W_29_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT274_KS1W_3_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT277_KS1W_40_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp QPE2_KS1W_26_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp ANN1419_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp ANN1420_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp ANN1439_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp ED2_KS2W24_7_43_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT146_SD2W_5_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT51_SD2W_40_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp ANN1501_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp ED12_SK1W15_3_300_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT100_SK1W_29_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT124_SK1W_36_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT242_SK1W_25_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT378_SK1W_22_sorted.bam /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2

cp Hopi_real_NEW_merged.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp Seneca_merged.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT259_KS2W_6_merged.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp Q017B_KS2W_6_1R_merged.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp Q083_KS2W_14_merged.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp QPA2_KS2W_8_merged.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT60_MB1W_30_merged.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT165_MO1W_16_merged.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp ED20_SD1W11_7_237_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT290_SD1W_20_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT6_SD1W_21_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp Q097_SD1W_6_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp Q098_SD1W_14_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp Q099_SD1W_21B_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp ED10_SD2W30_3_360_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp ED13_IA1W1_6_308_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT247_IA1W_33_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT011_IA2W_37R_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT014_IA2W_16_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT103_IA2W_39_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT149_IA2W_29_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT24_IA2W_14_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT55_IA2W_17_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp QPC2_IA2W_6_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp ED16_KS1W9_3_342_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT255_KS1W_29_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT274_KS1W_3_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT277_KS1W_40_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp QPE2_KS1W_26_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp ANN1419_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp ANN1420_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp ANN1439_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp ED2_KS2W24_7_43_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT146_SD2W_5_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT51_SD2W_40_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp ANN1501_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp ED12_SK1W15_3_300_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT100_SK1W_29_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT124_SK1W_36_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT242_SK1W_25_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2
cp HT378_SK1W_22_sorted.bam.bai /global/scratch2/peter_stokes/additionalAnnuusBen/finalBamsForBen/movedBams_2

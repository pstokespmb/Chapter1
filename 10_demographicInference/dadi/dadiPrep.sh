#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/vcfsToUse
#SBATCH -J dadiPrep
#SBATCH --account=ac_acblackman
#SBATCH --partition=savio3_htc
#SBATCH --qos=savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=3
#SBATCH --time=24:00:00
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/dadiPrep.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/dadiPrep.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6

samplesToKeep="Ann1238,IA1W_5,SK1W_29R,MO1W_38,IA1W_11R,KS2W_6,KS2W_32,KS1W_2,ANN1198,IA1W_39,KS1W_32,KS2W_35,IA1W_2,KS1W_35,ANN1195,KS1W_3,IA1W_4,SD1W_13,SD2W_27,KS2W_8,ANN1187,IA1W_33,ANN1188,KS2W_15,ANN1203,ANN1204,MO1W_3,KS1W_27,IA1W_15,ANN1154,ANN1174,SK1W_22R,KS2W_24,KS1W_24,KS1W_9,ANN1172,ANN1152,ANN1177,ANN1151,ANN1178,ANN1183,MB1W_40,ANN1160,ANN1197,ANN1193,ANN1173,IA2W_7,ANN1209,ANN1199,ANN1176,ANN1202,ND1W_38,IA2W_38,IA1W_21,ANN1205,ANN1206,KS2W_6_1R,ANN1184,ANN1419,ANN1182,ANN1171,ANN1180,MB1W_16B,ANN1190,ANN1153,ANN1181,ANN1207,ANN1191,SD1W_4,ANN1179,Hopi_mapping_NEW,Hopi_dye_NEW,Havasupai,Hopi_real_NEW,Arikara,MexCult3,MexCult9,Seneca,MexCult15,MexCult1,MexCult6,Anzac_Pueblo,Pueblo,Zuni,Hidatsa,Mandan2,Laguna_Pueblo,Mandan1_PPN046,Ari_Man,Se_Strip_682a,Se_Purp,Ari_Broad,Seneca_137749,Paiute"

#bcftools annotate -x INFO,FORMAT /global/scratch/users/peter_stokes/Chapter1/vcfsToUse/Chapter1_allChrom_noRR_allSamples_NF_D4.vcf.gz -Oz -o /global/scratch/users/peter_stokes/Chapter1/dadi/dadi_VCFs/Chapter1_allChrom_noRR_allSamples_NF_D4_GTOnly.vcf.gz

#bcftools view -T ^/global/scratch/users/peter_stokes/Chapter1/dadi/masks/genic_allChrom_PlusMinus5k_sorted_collapsed.bed -Oz -o /global/scratch/users/peter_stokes/Chapter1/dadi/dadi_VCFs/Chapter1_allChrom_noRR_allSamples_NF_D4_GTOnly_noGenic.vcf.gz /global/scratch/users/peter_stokes/Chapter1/dadi/dadi_VCFs/Chapter1_allChrom_noRR_allSamples_NF_D4_GTOnly.vcf.gz

#bcftools view -s ${samplesToKeep} /global/scratch/users/peter_stokes/Chapter1/dadi/dadi_VCFs/Chapter1_allChrom_noRR_allSamples_NF_D4_GTOnly_noGenic.vcf -Oz -o /global/scratch/users/peter_stokes/Chapter1/dadi/dadi_VCFs/Chapter1_allChrom_noRR_allSamples_NF_D4_GTOnly_noGenic_testSubset.vcf.gz

source activate plink2

plink2 --recode vcf bgz --vcf /global/scratch/users/peter_stokes/Chapter1/dadi/dadi_VCFs/Chapter1_allChrom_noRR_allSamples_NF_D4_GTOnly_noGenic_testSubset.vcf.gz \
--max-alleles 2 --min-alleles 2 \
--allow-extra-chr \
--keep-allele-order \
--out /global/scratch/users/peter_stokes/Chapter1/dadi/dadi_VCFs/Chapter1_allChrom_noRR_allSamples_NF_D4_GTOnly_noGenic_testSubset_Bi

###first plink conversion

plink2 --allow-extra-chr --vcf /global/scratch/users/peter_stokes/Chapter1/dadi/dadi_VCFs/Chapter1_allChrom_noRR_allSamples_NF_D4_GTOnly_noGenic_testSubset_Bi.vcf.gz \
--set-all-var-ids @_#_\$r_\$a \
--keep-allele-order --make-bed \
--out /global/scratch/users/peter_stokes/Chapter1/dadi/dadi_VCFs/Chapter1_allChrom_noRR_allSamples_NF_D4_GTOnly_noGenic_testSubset_Bi_plinked

###second plink conversion

plink2 --allow-extra-chr --bfile /global/scratch/users/peter_stokes/Chapter1/dadi/dadi_VCFs/Chapter1_allChrom_noRR_allSamples_NF_D4_GTOnly_noGenic_testSubset_Bi_plinked \
--geno 0.1 \
--indep-pairwise 50 5 0.2 \
--out /global/scratch/users/peter_stokes/Chapter1/dadi/dadi_VCFs/Chapter1_allChrom_noRR_allSamples_NF_D4_GTOnly_noGenic_testSubset_Bi_plinked_G1_LD

###third plink conversion

plink2 --allow-extra-chr --bfile /global/scratch/users/peter_stokes/Chapter1/dadi/dadi_VCFs/Chapter1_allChrom_noRR_allSamples_NF_D4_GTOnly_noGenic_testSubset_Bi_plinked \
--extract /global/scratch/users/peter_stokes/Chapter1/dadi/dadi_VCFs/Chapter1_allChrom_noRR_allSamples_NF_D4_GTOnly_noGenic_testSubset_Bi_plinked_G1_LD.prune.in \
--make-bed --out /global/scratch/users/peter_stokes/Chapter1/dadi/dadi_VCFs/Chapter1_allChrom_noRR_allSamples_NF_D4_GTOnly_noGenic_testSubset_Bi_plinked_G1_LD_Pruned

###########
###########

#producing RAxML formatted VCF

plink2 --bfile /global/scratch/users/peter_stokes/Chapter1/dadi/dadi_VCFs/Chapter1_allChrom_noRR_allSamples_NF_D4_GTOnly_noGenic_testSubset_Bi_plinked_G1_LD_Pruned --recode vcf --allow-extra-chr --out /global/scratch/users/peter_stokes/Chapter1/dadi/dadi_VCFs/Chapter1_allChrom_noRR_allSamples_NF_D4_GTOnly_noGenic_testSubset_Bi_plinked_G1_LD_Pruned_forEasySFS


#python /Users/peterstokes/Documents/Science/Software/easySFS/easySFS.py -i /Users/peterstokes/Documents/Science/Chapter1/10_demographicInference/dadi/vcfs/Chapter1_allChrom_noRR_allSamples_NF_D4_GTOnly_noGenic_testSubset.vcf -p ../../Chapter1/10_demographicInference/dadi/pops_test.txt -a --preview

#python /Users/peterstokes/Documents/Science/Software/easySFS/easySFS.py -i /Users/peterstokes/Documents/Science/Chapter1/10_demographicInference/dadi/vcfs/Chapter1_allChrom_noRR_allSamples_NF_D4_GTOnly_noGenic_testSubset.vcf -p ../../Chapter1/10_demographicInference/dadi/pops_test.txt -a --proj=74,14


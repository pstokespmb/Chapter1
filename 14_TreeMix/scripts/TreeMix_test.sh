#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/fastStructure/plink
#SBATCH -J TreeMix_test
#SBATCH --account=ac_acblackman
#SBATCH --partition=savio_bigmem
#SBATCH --qos=savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=72:00:00
#SBATCH --mem=512000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/TreeMix_test.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/TreeMix_test.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

#source activate plink2

module load htslib/1.6
module load bcftools/1.6
module load stacks/1.47

#1 raw VCF
#2 vcf filter missingnes
#3 plink conversions and LD filtering and mAC filtering
#4 
#5 
#6 


###### change plinkName when fastStructure finishes

plinkPath="/global/scratch/users/peter_stokes/Chapter1/fastStructure/plink"
plinkName="fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned"

AdHocPath="/global/scratch/users/peter_stokes/Chapter1/AdHocMerge/merge_input"
AdHocName="AdHocTest_merge_fixed_plinked"

TreeMixInputPath="/global/scratch/users/peter_stokes/Chapter1/TreeMix/VCFs"

#plink was already used to thin LD and mAC, filtered data as input for here. May need to edit scripts to add this in for total pipeline

# convert bedfile format back to VCF. We produced this bedfile (mAC and LD filtered) for fastStructure

#plink2 --bfile ${AdHocPath}/${AdHocName} --recode vcf --out ${TreeMixInputPath}/${AdHocName}_TreeMixPrepReady
#plink2 --bfile ${plinkPath}/${plinkName} --recode vcf --out ${TreeMixInputPath}/${plinkName}_TreeMixPrepReady
#
#mv ${TreeMixInputPath}/${AdHocName}_TreeMixPrepReady.recode.vcf ${TreeMixInputPath}/${AdHocName}_TreeMixPrepReady.vcf
#mv ${TreeMixInputPath}/${plinkName}_TreeMixPrepReady.recode.vcf ${TreeMixInputPath}/${plinkName}_TreeMixPrepReady.vcf
#
#bgzip ${TreeMixInputPath}/${AdHocName}_TreeMixPrepReady.vcf
#bgzip ${TreeMixInputPath}/${plinkName}_TreeMixPrepReady.vcf
#
#tabix -p vcf ${TreeMixInputPath}/${AdHocName}_TreeMixPrepReady.vcf.gz
#tabix -p vcf ${TreeMixInputPath}/${plinkName}_TreeMixPrepReady.vcf.gz
#
#bcftools query -l ${TreeMixInputPath}/${AdHocName}_TreeMixPrepReady.vcf.gz | awk '{split($1,pop,"."); print $1"\t"$1"\t"pop[2]}' > ${TreeMixInputPath}/${AdHocName}_TreeMixPrepReady.clust
#bcftools query -l ${TreeMixInputPath}/${plinkName}_TreeMixPrepReady.vcf.gz | awk '{split($1,pop,"."); print $1"\t"$1"\t"pop[2]}' > ${TreeMixInputPath}/${plinkName}_TreeMixPrepReady.clust

#######edit cluster files to have third column reflect population asignments
#### maybe edit them ahead of time to have one fluid dataset

#first plink conversion

#plink2 --allow-extra-chr --vcf ../VCFs/${newVCF_maxMissing}.vcf.gz \
#--set-all-var-ids @_#_\$r_\$a \
#--keep-allele-order --make-bed \
#--out ./${plinkName}_plinked

#second plink conversion

#plink2 --allow-extra-chr --bfile ./${plinkName}_plinked \
#--mac 1 \
#--indep-pairwise 500kb 1 0.1 \
#--out ./${plinkName}_plinked_mac_1_LD0_1

#third plink conversion

#plink2 --allow-extra-chr --bfile ./${plinkName}_plinked \
#--extract ./${plinkName}_plinked_mac_1_LD0_1.prune.in \
#--make-bed --out ./${plinkName}_plinked_mac_1_LD0_1_Pruned

######## adjust above pipeline to account for plink bed --> VCF for the creation of the .clust OR extract from .fam to start .clust and ignore the vcf creation step

#fourth plink conversion for TreeMix format

#rm /global/scratch/users/peter_stokes/Chapter1/TreeMix/VCFs/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_TreeMixReady.frq.strat.gz

#plink2 --bfile fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned \
#--freq --missing \
#--within /global/scratch/users/peter_stokes/Chapter1/TreeMix/VCFs/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_TreeMixPrepReady.clust \
#--out /global/scratch/users/peter_stokes/Chapter1/TreeMix/VCFs/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_TreeMixReady

#mv /global/scratch/users/peter_stokes/Chapter1/TreeMix/VCFs/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_TreeMixReady.afreq /global/scratch/users/peter_stokes/Chapter1/TreeMix/VCFs/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_TreeMixReady.frq.strat

#gzip /global/scratch/users/peter_stokes/Chapter1/TreeMix/VCFs/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_TreeMixReady.frq.strat

#conda deactivate

#module load python

#gunzip /global/scratch/users/peter_stokes/Chapter1/TreeMix/VCFs/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_TreeMixPrepReady.vcf.gz

populations --in_vcf /global/scratch/users/peter_stokes/Chapter1/TreeMix/VCFs/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_TreeMixPrepReady.vcf --treemix -O /global/scratch/users/peter_stokes/Chapter1/TreeMix/VCFs/testOUT3 -M /global/scratch/users/peter_stokes/Chapter1/TreeMix/VCFs/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_TreeMixPrepReady_biggerGroups.pop

sed -i '1d' /global/scratch/users/peter_stokes/Chapter1/TreeMix/VCFs/testOUT2/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_TreeMixPrepReady.treemix

bgzip /global/scratch/users/peter_stokes/Chapter1/TreeMix/VCFs/testOUT2/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_TreeMixPrepReady.treemix

source activate TreeMix

treemix -i /global/scratch/users/peter_stokes/Chapter1/TreeMix/VCFs/testOUT2/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_TreeMixPrepReady.treemix.gz -m 1 -o /global/scratch/users/peter_stokes/Chapter1/TreeMix/TreeMix_output/treemix_test_biggerGroups.1 -root petiolaris,niveus,argophyllus -bootstrap -k 1000 -noss
treemix -i /global/scratch/users/peter_stokes/Chapter1/TreeMix/VCFs/testOUT2/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_TreeMixPrepReady.treemix.gz -m 2 -o /global/scratch/users/peter_stokes/Chapter1/TreeMix/TreeMix_output/treemix_test_biggerGroups.2 -root petiolaris,niveus,argophyllus -bootstrap -k 1000 -noss
treemix -i /global/scratch/users/peter_stokes/Chapter1/TreeMix/VCFs/testOUT2/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_TreeMixPrepReady.treemix.gz -m 3 -o /global/scratch/users/peter_stokes/Chapter1/TreeMix/TreeMix_output/treemix_test_biggerGroups.3 -root petiolaris,niveus,argophyllus -bootstrap -k 1000 -noss
treemix -i /global/scratch/users/peter_stokes/Chapter1/TreeMix/VCFs/testOUT2/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_TreeMixPrepReady.treemix.gz -m 4 -o /global/scratch/users/peter_stokes/Chapter1/TreeMix/TreeMix_output/treemix_test_biggerGroups.4 -root petiolaris,niveus,argophyllus -bootstrap -k 1000 -noss
treemix -i /global/scratch/users/peter_stokes/Chapter1/TreeMix/VCFs/testOUT2/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_TreeMixPrepReady.treemix.gz -m 5 -o /global/scratch/users/peter_stokes/Chapter1/TreeMix/TreeMix_output/treemix_test_biggerGroups.5 -root petiolaris,niveus,argophyllus -bootstrap -k 1000 -noss
treemix -i /global/scratch/users/peter_stokes/Chapter1/TreeMix/VCFs/testOUT2/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_TreeMixPrepReady.treemix.gz -m 6 -o /global/scratch/users/peter_stokes/Chapter1/TreeMix/TreeMix_output/treemix_test_biggerGroups.6 -root petiolaris,niveus,argophyllus -bootstrap -k 1000 -noss
treemix -i /global/scratch/users/peter_stokes/Chapter1/TreeMix/VCFs/testOUT2/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_TreeMixPrepReady.treemix.gz -m 7 -o /global/scratch/users/peter_stokes/Chapter1/TreeMix/TreeMix_output/treemix_test_biggerGroups.7 -root petiolaris,niveus,argophyllus -bootstrap -k 1000 -noss
treemix -i /global/scratch/users/peter_stokes/Chapter1/TreeMix/VCFs/testOUT2/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_TreeMixPrepReady.treemix.gz -m 8 -o /global/scratch/users/peter_stokes/Chapter1/TreeMix/TreeMix_output/treemix_test_biggerGroups.8 -root petiolaris,niveus,argophyllus -bootstrap -k 1000 -noss
treemix -i /global/scratch/users/peter_stokes/Chapter1/TreeMix/VCFs/testOUT2/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_TreeMixPrepReady.treemix.gz -m 9 -o /global/scratch/users/peter_stokes/Chapter1/TreeMix/TreeMix_output/treemix_test_biggerGroups.9 -root petiolaris,niveus,argophyllus -bootstrap -k 1000 -noss
treemix -i /global/scratch/users/peter_stokes/Chapter1/TreeMix/VCFs/testOUT2/fastStructure_allHelianthus_suspiciousRemoved_maxMissing0_9_plinked_mac_1_LD0_1_Pruned_TreeMixPrepReady.treemix.gz -m 10 -o /global/scratch/users/peter_stokes/Chapter1/TreeMix/TreeMix_output/treemix_test_biggerGroups.10 -root petiolaris,niveus,argophyllus -bootstrap -k 1000 -noss

#
####### we are now going to convert the new VCF + .clust to the correct format for TreeMix
#
#vcf2treemix.sh $FILE.vcf.gz $FILE.clust
#
#conda activate TreeMix

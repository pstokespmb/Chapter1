#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/tests/VCF
#SBATCH -J test_prep
#SBATCH --account=ac_acblackman
#SBATCH --partition=savio2_htc
#SBATCH --qos=savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=3
#SBATCH --time=72:00:00
#SBATCH --mem=32000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/test_prep.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/test_prep.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load htslib/1.6
module load bcftools/1.6

originalVCFPath="/global/scratch/users/peter_stokes/Chapter1/AdHocMerge/merge_input"
originalVCF="AdHocTest_merge_fixed.vcf.gz"

newVCFPath="/global/scratch/users/peter_stokes/Chapter1/tests/VCF"
newVCF_unaltered="maskTestingVCF_unaltered.vcf.gz"
newVCF_noRR="maskTestingVCF_noRR.vcf.gz"
newVCF_noInversions="maskTestingVCF_noInversions.vcf.gz"
newVCF_noRR_noInversions="maskTestingVCF_noRR_noInversions.vcf.gz"

bedPath="/global/scratch/users/peter_stokes/Chapter1/tests/beds"
testOutputPath="/global/scratch/users/peter_stokes/Chapter1/tests/output"
plinkOut_1="maskTestingVCF_unaltered"
plinkOut_2="maskTestingVCF_noRR"
plinkOut_3="maskTestingVCF_noInversions"
plinkOut_4="maskTestingVCF_noRR_noInversions"

: '

######## This section serves to modify the VCFs according to positions that fall into RR and/or inversion regions

###Original VCF - mAC and LD filtered already

cp ${originalVCFPath}/${originalVCF} ${newVCFPath}/${newVCF_unaltered}
tabix -p vcf ${newVCFPath}/${newVCF_unaltered}

###Original VCF + no RR

bcftools view -T ^${bedPath}/RR.bed ${newVCFPath}/${newVCF_unaltered} | bgzip -c > ${newVCFPath}/${newVCF_noRR}
tabix -p vcf ${newVCFPath}/${newVCF_noRR}

###Original VCF + no inversions

bcftools view -T ^${bedPath}/InversionRegions.bed ${newVCFPath}/${newVCF_unaltered} | bgzip -c > ${newVCFPath}/${newVCF_noInversions}
tabix -p vcf ${newVCFPath}/${newVCF_noInversions}

###Original VCF + no RR + no inversions
bcftools view -T ^${bedPath}/InversionRegions.bed ${newVCFPath}/${newVCF_noRR} | bgzip -c > ${newVCFPath}/${newVCF_noRR_noInversions}
tabix -p vcf ${newVCFPath}/${newVCF_noRR_noInversions}



######## Collecting data about how many positions are present before/after filtering

bcftools query -f '%CHROM %POS\n' ${newVCFPath}/${newVCF_unaltered} > unaltered.txt
bcftools query -f '%CHROM %POS\n' ${newVCFPath}/${newVCF_noRR} > noRR.txt
bcftools query -f '%CHROM %POS\n' ${newVCFPath}/${newVCF_noInversions} > noInversions.txt
bcftools query -f '%CHROM %POS\n' ${newVCFPath}/${newVCF_noRR_noInversions} > noRR_noInversions.txt

wc -l unaltered.txt
wc -l noRR.txt
wc -l noInversions.txt
wc -l noRR_noInversions.txt

######## Plink prep for fastStructure
'

source activate plink2
: '
#unaltered

plink2 --allow-extra-chr --vcf ${newVCFPath}/${newVCF_unaltered} \
--set-all-var-ids @_#_\$r_\$a \
--new-id-max-allele-len 363 \
--keep-allele-order --make-bed \
--out ${testOutputPath}/${plinkOut_1}

sed -i 's/HanXRQChr0//g' ${testOutputPath}/${plinkOut_1}.bim
sed -i 's/HanXRQChr//g' ${testOutputPath}/${plinkOut_1}.bim

#noRR

plink2 --allow-extra-chr --vcf ${newVCFPath}/${newVCF_noRR} \
--set-all-var-ids @_#_\$r_\$a \
--new-id-max-allele-len 363 \
--keep-allele-order --make-bed \
--out ${testOutputPath}/${plinkOut_2}

sed -i 's/HanXRQChr0//g' ${testOutputPath}/${plinkOut_2}.bim
sed -i 's/HanXRQChr//g' ${testOutputPath}/${plinkOut_2}.bim

#noInversions

plink2 --allow-extra-chr --vcf ${newVCFPath}/${newVCF_noInversions} \
--set-all-var-ids @_#_\$r_\$a \
--new-id-max-allele-len 363 \
--keep-allele-order --make-bed \
--out ${testOutputPath}/${plinkOut_3}

sed -i 's/HanXRQChr0//g' ${testOutputPath}/${plinkOut_3}.bim
sed -i 's/HanXRQChr//g' ${testOutputPath}/${plinkOut_3}.bim

#noRR_noInversions
'
plink2 --allow-extra-chr --vcf ${newVCFPath}/${newVCF_noRR_noInversions} \
--set-all-var-ids @_#_\$r_\$a \
--new-id-max-allele-len 363 \
--keep-allele-order --make-bed \
--out ${testOutputPath}/${plinkOut_4}

sed -i 's/HanXRQChr0//g' ${testOutputPath}/${plinkOut_4}.bim
sed -i 's/HanXRQChr//g' ${testOutputPath}/${plinkOut_4}.bim

######## Perform fastStructure

conda deactivate

fastStructureSoftwarePath="/global/home/users/peter_stokes/software/fastStructure"
fastStructureOutput="/global/scratch/users/peter_stokes/Chapter1/tests/fastStructureOutput"

source activate fastStructure

#unaltered

python ${fastStructureSoftwarePath}/structure.py -K 1 --input=${testOutputPath}/${plinkOut_1} --output=${fastStructureOutput}/${plinkOut_1} --full --seed=100
python ${fastStructureSoftwarePath}/structure.py -K 2 --input=${testOutputPath}/${plinkOut_1} --output=${fastStructureOutput}/${plinkOut_1} --full --seed=100
python ${fastStructureSoftwarePath}/structure.py -K 3 --input=${testOutputPath}/${plinkOut_1} --output=${fastStructureOutput}/${plinkOut_1} --full --seed=100
python ${fastStructureSoftwarePath}/structure.py -K 4 --input=${testOutputPath}/${plinkOut_1} --output=${fastStructureOutput}/${plinkOut_1} --full --seed=100
python ${fastStructureSoftwarePath}/structure.py -K 5 --input=${testOutputPath}/${plinkOut_1} --output=${fastStructureOutput}/${plinkOut_1} --full --seed=100
python ${fastStructureSoftwarePath}/structure.py -K 6 --input=${testOutputPath}/${plinkOut_1} --output=${fastStructureOutput}/${plinkOut_1} --full --seed=100

python ${fastStructureSoftwarePath}/chooseK.py --input=${fastStructureOutput}/${plinkOut_1}

#noRR

python ${fastStructureSoftwarePath}/structure.py -K 1 --input=${testOutputPath}/${plinkOut_2} --output=${fastStructureOutput}/${plinkOut_2} --full --seed=100
python ${fastStructureSoftwarePath}/structure.py -K 2 --input=${testOutputPath}/${plinkOut_2} --output=${fastStructureOutput}/${plinkOut_2} --full --seed=100
python ${fastStructureSoftwarePath}/structure.py -K 3 --input=${testOutputPath}/${plinkOut_2} --output=${fastStructureOutput}/${plinkOut_2} --full --seed=100
python ${fastStructureSoftwarePath}/structure.py -K 4 --input=${testOutputPath}/${plinkOut_2} --output=${fastStructureOutput}/${plinkOut_2} --full --seed=100
python ${fastStructureSoftwarePath}/structure.py -K 5 --input=${testOutputPath}/${plinkOut_2} --output=${fastStructureOutput}/${plinkOut_2} --full --seed=100
python ${fastStructureSoftwarePath}/structure.py -K 6 --input=${testOutputPath}/${plinkOut_2} --output=${fastStructureOutput}/${plinkOut_2} --full --seed=100

python ${fastStructureSoftwarePath}/chooseK.py --input=${fastStructureOutput}/${plinkOut_2}

#noInversions

python ${fastStructureSoftwarePath}/structure.py -K 1 --input=${testOutputPath}/${plinkOut_3} --output=${fastStructureOutput}/${plinkOut_3} --full --seed=100
python ${fastStructureSoftwarePath}/structure.py -K 2 --input=${testOutputPath}/${plinkOut_3} --output=${fastStructureOutput}/${plinkOut_3} --full --seed=100
python ${fastStructureSoftwarePath}/structure.py -K 3 --input=${testOutputPath}/${plinkOut_3} --output=${fastStructureOutput}/${plinkOut_3} --full --seed=100
python ${fastStructureSoftwarePath}/structure.py -K 4 --input=${testOutputPath}/${plinkOut_3} --output=${fastStructureOutput}/${plinkOut_3} --full --seed=100
python ${fastStructureSoftwarePath}/structure.py -K 5 --input=${testOutputPath}/${plinkOut_3} --output=${fastStructureOutput}/${plinkOut_3} --full --seed=100
python ${fastStructureSoftwarePath}/structure.py -K 6 --input=${testOutputPath}/${plinkOut_3} --output=${fastStructureOutput}/${plinkOut_3} --full --seed=100

python ${fastStructureSoftwarePath}/chooseK.py --input=${fastStructureOutput}/${plinkOut_3}

#noRR_noInversions

python ${fastStructureSoftwarePath}/structure.py -K 1 --input=${testOutputPath}/${plinkOut_4} --output=${fastStructureOutput}/${plinkOut_4} --full --seed=100
python ${fastStructureSoftwarePath}/structure.py -K 2 --input=${testOutputPath}/${plinkOut_4} --output=${fastStructureOutput}/${plinkOut_4} --full --seed=100
python ${fastStructureSoftwarePath}/structure.py -K 3 --input=${testOutputPath}/${plinkOut_4} --output=${fastStructureOutput}/${plinkOut_4} --full --seed=100
python ${fastStructureSoftwarePath}/structure.py -K 4 --input=${testOutputPath}/${plinkOut_4} --output=${fastStructureOutput}/${plinkOut_4} --full --seed=100
python ${fastStructureSoftwarePath}/structure.py -K 5 --input=${testOutputPath}/${plinkOut_4} --output=${fastStructureOutput}/${plinkOut_4} --full --seed=100
python ${fastStructureSoftwarePath}/structure.py -K 6 --input=${testOutputPath}/${plinkOut_4} --output=${fastStructureOutput}/${plinkOut_4} --full --seed=100

python ${fastStructureSoftwarePath}/chooseK.py --input=${fastStructureOutput}/${plinkOut_4}













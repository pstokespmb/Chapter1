#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/fastStructure/fastStructure_outs
#SBATCH -J fastSTRUCTURE_RUN_noED_noLowCov
#SBATCH --account=ac_acblackman
#SBATCH --partition=savio3_htc
#SBATCH --qos=savio_normal
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=3
#SBATCH --time=72:00:00
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/fastSTRUCTURE_RUN_noED_noLowCov.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/fastSTRUCTURE_RUN_noED_noLowCov.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15
module load htslib/1.6
module load bcftools/1.6

plinkOuts_path="/global/scratch/users/peter_stokes/Chapter1/plink_outs"
fastStructureOuts_path="/global/scratch/users/peter_stokes/Chapter1/fastStructure/fastStructure_outs"
fastStructureName_fromPlink="Chapter1_allChrom_noRR_NF_noED_noLowCov_D3_Bi_plinked_G1_M5_LD_Pruned"
fastStructureOut_name="Chapter1_allChrom_noRR_NF_noED_noLowCov_D3_Bi_plinked_G1_M5_LD_Pruned"

source activate fastStructure

python /global/home/users/peter_stokes/software/fastStructure/structure.py -K 2 --input=${plinkOuts_path}/${fastStructureName_fromPlink} --output=${fastStructureOuts_path}/${fastStructureOut_name} --full --seed=100
python /global/home/users/peter_stokes/software/fastStructure/structure.py -K 3 --input=${plinkOuts_path}/${fastStructureName_fromPlink} --output=${fastStructureOuts_path}/${fastStructureOut_name} --full --seed=100
python /global/home/users/peter_stokes/software/fastStructure/structure.py -K 4 --input=${plinkOuts_path}/${fastStructureName_fromPlink} --output=${fastStructureOuts_path}/${fastStructureOut_name} --full --seed=100
python /global/home/users/peter_stokes/software/fastStructure/structure.py -K 5 --input=${plinkOuts_path}/${fastStructureName_fromPlink} --output=${fastStructureOuts_path}/${fastStructureOut_name} --full --seed=100
python /global/home/users/peter_stokes/software/fastStructure/structure.py -K 6 --input=${plinkOuts_path}/${fastStructureName_fromPlink} --output=${fastStructureOuts_path}/${fastStructureOut_name} --full --seed=100
python /global/home/users/peter_stokes/software/fastStructure/structure.py -K 7 --input=${plinkOuts_path}/${fastStructureName_fromPlink} --output=${fastStructureOuts_path}/${fastStructureOut_name} --full --seed=100
python /global/home/users/peter_stokes/software/fastStructure/structure.py -K 8 --input=${plinkOuts_path}/${fastStructureName_fromPlink} --output=${fastStructureOuts_path}/${fastStructureOut_name} --full --seed=100
python /global/home/users/peter_stokes/software/fastStructure/structure.py -K 9 --input=${plinkOuts_path}/${fastStructureName_fromPlink} --output=${fastStructureOuts_path}/${fastStructureOut_name} --full --seed=100
python /global/home/users/peter_stokes/software/fastStructure/structure.py -K 10 --input=${plinkOuts_path}/${fastStructureName_fromPlink} --output=${fastStructureOuts_path}/${fastStructureOut_name} --full --seed=100

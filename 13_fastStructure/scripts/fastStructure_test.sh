#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/Chapter1/ADMIXTURE/plink
#SBATCH -J fastStructure_test
#SBATCH --partition=savio
#SBATCH --account=co_rosalind 
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=72:00:00
#SBATCH --mem=64000
#SBATCH -o /global/scratch/users/peter_stokes/err_outs/fastStructure_test.out
#SBATCH -e /global/scratch/users/peter_stokes/err_outs/fastStructure_test.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

source activate fastStructure

python /global/home/users/peter_stokes/software/fastStructure/structure.py -K 1 --input=ADIXTURE_allHelianthus_maxMissing0_9_plinked_mac_1_LD0_1_Pruned --output=/global/scratch/users/peter_stokes/Chapter1/ADMIXTURE/fastStructure_output/allHelianthus_test --full --seed=100
python /global/home/users/peter_stokes/software/fastStructure/structure.py -K 2 --input=ADIXTURE_allHelianthus_maxMissing0_9_plinked_mac_1_LD0_1_Pruned --output=/global/scratch/users/peter_stokes/Chapter1/ADMIXTURE/fastStructure_output/allHelianthus_test --full --seed=100
python /global/home/users/peter_stokes/software/fastStructure/structure.py -K 3 --input=ADIXTURE_allHelianthus_maxMissing0_9_plinked_mac_1_LD0_1_Pruned --output=/global/scratch/users/peter_stokes/Chapter1/ADMIXTURE/fastStructure_output/allHelianthus_test --full --seed=100
python /global/home/users/peter_stokes/software/fastStructure/structure.py -K 4 --input=ADIXTURE_allHelianthus_maxMissing0_9_plinked_mac_1_LD0_1_Pruned --output=/global/scratch/users/peter_stokes/Chapter1/ADMIXTURE/fastStructure_output/allHelianthus_test --full --seed=100
python /global/home/users/peter_stokes/software/fastStructure/structure.py -K 5 --input=ADIXTURE_allHelianthus_maxMissing0_9_plinked_mac_1_LD0_1_Pruned --output=/global/scratch/users/peter_stokes/Chapter1/ADMIXTURE/fastStructure_output/allHelianthus_test --full --seed=100
python /global/home/users/peter_stokes/software/fastStructure/structure.py -K 6 --input=ADIXTURE_allHelianthus_maxMissing0_9_plinked_mac_1_LD0_1_Pruned --output=/global/scratch/users/peter_stokes/Chapter1/ADMIXTURE/fastStructure_output/allHelianthus_test --full --seed=100

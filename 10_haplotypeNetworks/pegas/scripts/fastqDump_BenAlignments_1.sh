#!/bin/bash
#SBATCH -D /global/scratch2/peter_stokes/additionalAnnuusBen/fastq
#SBATCH -J fastqDump_BenAlignments_1
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=3
#SBATCH --time=400:00:00
#SBATCH --mem=32000
#SBATCH -o /global/scratch2/peter_stokes/err_outs/fastqDump_BenAlignments_1.out
#SBATCH -e /global/scratch2/peter_stokes/err_outs/fastqDump_BenAlignments_1.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load sra-tools/2.11.2

#samples with more than one lane (all 2 lanes)

fastq-dump --gzip --split-files SRR5940219
fastq-dump --gzip --split-files SRR5940344
fastq-dump --gzip --split-files SRR5940351
fastq-dump --gzip --split-files SRR5940221
fastq-dump --gzip --split-files SRR5940355
fastq-dump --gzip --split-files SRR5940449
#fastq-dump --gzip --split-files SRR5940415
#fastq-dump --gzip --split-files SRR5940260
#fastq-dump --gzip --split-files SRR5940255
#fastq-dump --gzip --split-files SRR5940536
#fastq-dump --gzip --split-files SRR5940315
#fastq-dump --gzip --split-files SRR5940284
#fastq-dump --gzip --split-files SRR5940242
#fastq-dump --gzip --split-files SRR5940437
#fastq-dump --gzip --split-files SRR5940261
#fastq-dump --gzip --split-files SRR5940418
#fastq-dump --gzip --split-files SRR5940324
#fastq-dump --gzip --split-files SRR5940509
#fastq-dump --gzip --split-files SRR5940331
#fastq-dump --gzip --split-files SRR5940551
#fastq-dump --gzip --split-files SRR5940283
#fastq-dump --gzip --split-files SRR5940410
#fastq-dump --gzip --split-files SRR5940177
#fastq-dump --gzip --split-files SRR5940500
#fastq-dump --gzip --split-files SRR5940213
#fastq-dump --gzip --split-files SRR5940522
#fastq-dump --gzip --split-files SRR5940262
#fastq-dump --gzip --split-files SRR5940243
#fastq-dump --gzip --split-files SRR5940265
#fastq-dump --gzip --split-files SRR5940412
#fastq-dump --gzip --split-files SRR5940334
#fastq-dump --gzip --split-files SRR5940506
#fastq-dump --gzip --split-files SRR5940462
#fastq-dump --gzip --split-files SRR5940545
#fastq-dump --gzip --split-files SRR5940225
#fastq-dump --gzip --split-files SRR5940111
#fastq-dump --gzip --split-files SRR5940482
#fastq-dump --gzip --split-files SRR5940403
#fastq-dump --gzip --split-files SRR5940542
#fastq-dump --gzip --split-files SRR5940407
#fastq-dump --gzip --split-files SRR5940363
#fastq-dump --gzip --split-files SRR5940275
#fastq-dump --gzip --split-files SRR5940109
#fastq-dump --gzip --split-files SRR5940387
#fastq-dump --gzip --split-files SRR5940224
#fastq-dump --gzip --split-files SRR5940433
#fastq-dump --gzip --split-files SRR5940496
#fastq-dump --gzip --split-files SRR5940249
#fastq-dump --gzip --split-files SRR5940548
#fastq-dump --gzip --split-files SRR5940405
#fastq-dump --gzip --split-files SRR5940494
#fastq-dump --gzip --split-files SRR5940402
#fastq-dump --gzip --split-files SRR5940491
#fastq-dump --gzip --split-files SRR5940399
#fastq-dump --gzip --split-files SRR5940112
#fastq-dump --gzip --split-files SRR5940244
#fastq-dump --gzip --split-files SRR5940171
#fastq-dump --gzip --split-files SRR5940544

#samples with one lane

#fastq-dump --gzip --split-files SRR5940165
#fastq-dump --gzip --split-files SRR5940523
#fastq-dump --gzip --split-files SRR5940371
#fastq-dump --gzip --split-files SRR5940368
#fastq-dump --gzip --split-files SRR5940141
#fastq-dump --gzip --split-files SRR5940563
#fastq-dump --gzip --split-files SRR5940202
#fastq-dump --gzip --split-files SRR5940237
#fastq-dump --gzip --split-files SRR5940100
#fastq-dump --gzip --split-files SRR5940155
#fastq-dump --gzip --split-files SRR5940520
#fastq-dump --gzip --split-files SRR5940483
#fastq-dump --gzip --split-files SRR5940102
#fastq-dump --gzip --split-files SRR5940320
#fastq-dump --gzip --split-files SRR10069438
#fastq-dump --gzip --split-files SRR10069437
#fastq-dump --gzip --split-files SRR10069436
#fastq-dump --gzip --split-files SRR5940152
#fastq-dump --gzip --split-files SRR5940386
#fastq-dump --gzip --split-files SRR5940154
#fastq-dump --gzip --split-files SRR5940129
#fastq-dump --gzip --split-files SRR5940316
#fastq-dump --gzip --split-files SRR5940323
#fastq-dump --gzip --split-files SRR5940319
#fastq-dump --gzip --split-files SRR5940156
#fastq-dump --gzip --split-files SRR5940274
#fastq-dump --gzip --split-files SRR5940564
#fastq-dump --gzip --split-files SRR5940567
#fastq-dump --gzip --split-files SRR5940178
#fastq-dump --gzip --split-files SRR5940529
#fastq-dump --gzip --split-files SRR5940159
#fastq-dump --gzip --split-files SRR5940398
#fastq-dump --gzip --split-files SRR5940469
#fastq-dump --gzip --split-files SRR5940472
#fastq-dump --gzip --split-files SRR5940489
#fastq-dump --gzip --split-files SRR5940311
#fastq-dump --gzip --split-files SRR5940158
#fastq-dump --gzip --split-files SRR5940391
#fastq-dump --gzip --split-files SRR5940492
#fastq-dump --gzip --split-files SRR5940092
#fastq-dump --gzip --split-files SRR5940103
#fastq-dump --gzip --split-files SRR5940093
#fastq-dump --gzip --split-files SRR5940153
#fastq-dump --gzip --split-files SRR5940565
#fastq-dump --gzip --split-files SRR5940471
#fastq-dump --gzip --split-files SRR10069435
#fastq-dump --gzip --split-files SRR5940157
#fastq-dump --gzip --split-files SRR5940145
#fastq-dump --gzip --split-files SRR5940123
#fastq-dump --gzip --split-files SRR5940179
#fastq-dump --gzip --split-files SRR5940215
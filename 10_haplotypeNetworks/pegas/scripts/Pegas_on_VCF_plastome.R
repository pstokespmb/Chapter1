library(pegas)
library(vcfR)
library(xlsx)

setwd("~/Dropbox/Main/Papers/Ongoing/2018 Sunflower Dating PNAS/Analysis/2_plastome")

file_to_use <- "No_ancient_5.named.vcf"   
Sample_matrix_for_popart <- read.xlsx("Plastome_naming.xlsx", sheetName = "Popart_import_no_ancient")

# Reading in the VCF file and storing info on it
gene_investigated_info <- VCFloci(file_to_use)
gene_investigated <- read.vcf(file_to_use)
names(gene_investigated) <- paste0(gene_investigated_info$POS)

# Figuring out how many SNPs are covered in the samples
table_SNP_characterized <- as.data.frame(!gene_investigated[,]==".")
Number_SNPs_per_sample <- as.data.frame(rowSums(table_SNP_characterized))
write.csv(Number_SNPs_per_sample, "Plastome_SNPs_covered.csv")

Only_perfect_data <- gene_investigated[which(Number_SNPs_per_sample$`rowSums(table_SNP_characterized)` == length(table_SNP_characterized)),]
Only_perfect_data_SNP <- as.data.frame(!Only_perfect_data[,]==".")
Only_perfect_data_SNP_filtered <- apply(Only_perfect_data_SNP, 2, function(x)(all(x)))
Only_perfect_data_cleaned <- Only_perfect_data[,which(Only_perfect_data_SNP_filtered == TRUE)]
Matrix_haplotypes_perfect <- haplotype(Only_perfect_data_cleaned, locus = 1:length(Only_perfect_data_cleaned), compress = FALSE,  check.phase = TRUE)
Matrix_haplotypes_perfect <- t(Matrix_haplotypes_perfect)
row.names(Matrix_haplotypes_perfect) <- rownames(Only_perfect_data_cleaned)
write.dna(Matrix_haplotypes_perfect, file = "Plastome_100.fasta", format = "fasta", colsep = "", nbcol = -1)
Only_perfect_data_popart <- Sample_matrix_for_popart[Sample_matrix_for_popart$Name %in% rownames(Only_perfect_data_cleaned), ]
write.csv(Only_perfect_data_popart, file = "Plastome_100_traits.csv", row.names = FALSE)

Good_data <- gene_investigated[which(Number_SNPs_per_sample$`rowSums(table_SNP_characterized)` > (0.85 * length(table_SNP_characterized))) ,]
Good_data_SNP <- as.data.frame(!Good_data[,]==".")
Good_data_SNP_filtered <- apply(Good_data_SNP, 2, function(x)(all(x)))
Good_data_cleaned <- Good_data[,which(Good_data_SNP_filtered == TRUE)]
Matrix_haplotypes_good <- haplotype(Good_data_cleaned, locus = 1:length(Good_data_cleaned), compress = FALSE,  check.phase = TRUE)
Matrix_haplotypes_good <- t(Matrix_haplotypes_good)
row.names(Matrix_haplotypes_good) <- rownames(Good_data_cleaned)
write.dna(Matrix_haplotypes_good, file = "Plastome_85.fasta", format = "fasta", colsep = "", nbcol = -1)
Good_data_popart <- Sample_matrix_for_popart[Sample_matrix_for_popart$Name %in% rownames(Good_data_cleaned), ]
write.csv(Good_data_popart, file = "Plastome_85_traits.csv", row.names = FALSE)


### with archaeological 


file_to_use <- "Plastome_for_Pegas_Q30.vcf"   
Sample_matrix_for_popart <- read.xlsx("Plastome_naming.xlsx", sheetName = "Popart_import_ancient")

# Reading in the VCF file and storing info on it
gene_investigated_info <- VCFloci(file_to_use)
gene_investigated <- read.vcf(file_to_use)
names(gene_investigated) <- paste0(gene_investigated_info$POS)

# Figuring out how many SNPs are covered in the samples
table_SNP_characterized <- as.data.frame(!gene_investigated[,]==".")
Number_SNPs_per_sample <- as.data.frame(rowSums(table_SNP_characterized))
write.csv(Number_SNPs_per_sample, "Plastome_SNPs_covered_ancient.csv")

Good_data <- gene_investigated[which(Number_SNPs_per_sample$`rowSums(table_SNP_characterized)` > (0.98 * length(table_SNP_characterized))) ,]
Good_data_SNP <- as.data.frame(!Good_data[,]==".")
Good_data_SNP_filtered <- apply(Good_data_SNP, 2, function(x)(all(x)))
Good_data_cleaned <- Good_data[,which(Good_data_SNP_filtered == TRUE)]
Matrix_haplotypes_good <- haplotype(Good_data_cleaned, locus = 1:length(Good_data_cleaned), compress = FALSE,  check.phase = TRUE)
Matrix_haplotypes_good <- t(Matrix_haplotypes_good)
row.names(Matrix_haplotypes_good) <- rownames(Good_data_cleaned)
write.dna(Matrix_haplotypes_good, file = "Plastome_98_ancient.fasta", format = "fasta", colsep = "", nbcol = -1)
Good_data_popart <- Sample_matrix_for_popart[Sample_matrix_for_popart$Name %in% rownames(Good_data_cleaned), ]
write.csv(Good_data_popart, file = "Plastome_98_ancient_traits.csv", row.names = FALSE)

Medium_data <- gene_investigated[which(Number_SNPs_per_sample$`rowSums(table_SNP_characterized)` > (0.9 * length(table_SNP_characterized))) ,]
Medium_data_SNP <- as.data.frame(!Medium_data[,]==".")
Medium_data_SNP_filtered <- apply(Medium_data_SNP, 2, function(x)(all(x)))
Medium_data_cleaned <- Medium_data[,which(Medium_data_SNP_filtered == TRUE)]
Matrix_haplotypes_good <- haplotype(Medium_data_cleaned, locus = 1:length(Medium_data_cleaned), compress = FALSE,  check.phase = TRUE)
Matrix_haplotypes_good <- t(Matrix_haplotypes_good)
row.names(Matrix_haplotypes_good) <- rownames(Medium_data_cleaned)
write.dna(Matrix_haplotypes_good, file = "Plastome_90_ancient.fasta", format = "fasta", colsep = "", nbcol = -1)
Medium_data_popart <- Sample_matrix_for_popart[Sample_matrix_for_popart$Name %in% rownames(Medium_data_cleaned), ]
write.csv(Medium_data_popart, file = "Plastome_90_ancient_traits.csv", row.names = FALSE)

Fair_data <- gene_investigated[which(Number_SNPs_per_sample$`rowSums(table_SNP_characterized)` > (0.75 * length(table_SNP_characterized))) ,]
Fair_data_SNP <- as.data.frame(!Fair_data[,]==".")
Fair_data_SNP_filtered <- apply(Fair_data_SNP, 2, function(x)(all(x)))
Fair_data_cleaned <- Fair_data[,which(Fair_data_SNP_filtered == TRUE)]
Matrix_haplotypes_good <- haplotype(Fair_data_cleaned, locus = 1:length(Fair_data_cleaned), compress = FALSE,  check.phase = TRUE)
Matrix_haplotypes_good <- t(Matrix_haplotypes_good)
row.names(Matrix_haplotypes_good) <- rownames(Fair_data_cleaned)
write.dna(Matrix_haplotypes_good, file = "Plastome_75_ancient.fasta", format = "fasta", colsep = "", nbcol = -1)
Fair_data_popart <- Sample_matrix_for_popart[Sample_matrix_for_popart$Name %in% rownames(Fair_data_cleaned), ]
write.csv(Fair_data_popart, file = "Plastome_75_ancient_traits.csv", row.names = FALSE)


library(pegas)
library(vcfR)
library(xlsx)
library(msa)

#where to find pegas-produced intermediates

setwd("/Users/peterstokes/Documents/Science/Chapter1/02_haplotypeNetworks/05_pegasIntermediates/")
setwd("/Users/peterstokes/Documents/Science/Chapter1/03_organellarPhylogenetics/")

######################
######################
#######PLASTOME#######
######################
######################

file_to_use <- "/Users/peterstokes/Documents/Science/Chapter1/02_haplotypeNetworks/03_pegasInput/Chapter1_plastome_noAdmix_noTexanus_noArch_filtered_pegasReady_spanningFixed.vcf"  
file_to_use <- "/Users/peterstokes/Documents/Science/Chapter1/03_organellarPhylogenetics/Chapter1_plastome_TESTPhylo_noAdmix_noTexanus_noArch_filtered_spanningFixed.vcf"   

#Sample_matrix_for_popart <- read.xlsx("/Users/peterstokes/Documents/Science/Chapter1/12_haplotypeNetworks/intermediates/HaploNaming_Chapter1.xlsx", sheetName = "Pop_art_import")

# Reading in the VCF file and storing info on it
gene_investigated_info <- VCFloci(file_to_use)
gene_investigated <- read.vcf(file_to_use)
names(gene_investigated) <- paste0(gene_investigated_info$POS)

# Figuring out how many SNPs are covered in the samples
table_SNP_characterized <- as.data.frame(!gene_investigated[,]==".")
Number_SNPs_per_sample <- as.data.frame(rowSums(table_SNP_characterized))
write.csv(Number_SNPs_per_sample, "Chapter1_plastome_TESTPhylo_noAdmix_noTexanus_noArch_filtered_spanningFixed_SNPs_covered.csv")

Good_data <- gene_investigated[which(Number_SNPs_per_sample$`rowSums(table_SNP_characterized)` > (.93 * length(table_SNP_characterized))) ,]
Good_data_SNP <- as.data.frame(!Good_data[,]==".")
Good_data_SNP_filtered <- apply(Good_data_SNP, 2, function(x)(all(x)))
Good_data_cleaned <- Good_data[,which(Good_data_SNP_filtered == TRUE)]
Matrix_haplotypes_good <- haplotype(Good_data_cleaned, locus = 1:length(Good_data_cleaned), compress = FALSE,  check.phase = TRUE)
Matrix_haplotypes_good <- t(Matrix_haplotypes_good)
row.names(Matrix_haplotypes_good) <- rownames(Good_data_cleaned)
write.dna(Matrix_haplotypes_good, file = "Chapter1_plastome_TESTPhylo_noAdmix_noTexanus_noArch_filtered_spanningFixed.fasta", format = "fasta", colsep = "", nbcol = -1)
#Good_data_popart <- Sample_matrix_for_popart[Sample_matrix_for_popart$Name %in% rownames(Good_data_cleaned), ]
write.csv(Good_data_popart, file = "mito_80.csv", row.names = FALSE)

data<-read.dna("/Users/peterstokes/Documents/Science/Chapter1/12_haplotypeNetworks/intermediates/mito_MQ1k_85.fasta", format="fasta")
dataAli<-clustal(data)
checkAlignment(dataAli)


#done already Matrix_haplotypes <- haplotype(cleaned_gene_investigated, locus = 1:length(cleaned_gene_investigated), compress = FALSE,  check.phase = TRUE)
#done already Matrix_haplotypes <- t(Matrix_haplotypes)
#done already row.names(Matrix_haplotypes) <- rownames(cleaned_gene_investigated)
DNAbin_individuals <- as.DNAbin(Matrix_haplotypes_good)
Individual_haplotypes <- haplotype(DNAbin_individuals)
Freq_by_type <- haploFreq(x = DNAbin_individuals, split = "\t", what = 1,  haplo = Individual_haplotypes)      

summary(Individual_haplotypes)

Network <- haploNet(h = Individual_haplotypes)
print.default(Network)
Frequencies <- attr(Network, "freq")

# Save Fasta file to take to Geneious, save as alignment, then import into popart
write.dna(Matrix_haplotypes_good, file = "plastome_SNPs_99.fasta", format = "fasta", colsep = "", nbcol = -1)


if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("SNPRelate")

library(SNPRelate)

setwd("/Users/peterstokes/Documents/Science/Chapter1/10_SNPRelate")

##################
#Interspecific PCA
##################

#Reading in VCF and convertint to the genofile format requred to generate the PCA

biallelic_vcf.fn = "/Users/peterstokes/Desktop/PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_noSpanningINDELS_G4_missingFixed.vcf.gz"
snpgdsVCF2GDS(biallelic_vcf.fn, "interspecific_pass1.gds", method="biallelic.only")
snpgdsSummary("interspecific_pass1.gds")
genofile_interspecific <- snpgdsOpen("interspecific_pass1.gds")
head(genofile_interspecific)

#LD filtering

set.seed(1000)
#LD Threshold 0.2
snpset <- snpgdsLDpruning(genofile_interspecific, ld.threshold=0.2, autosome.only=FALSE)
#LD Threshold 0.1
snpset2 <- snpgdsLDpruning(genofile_interspecific, ld.threshold=0.1, autosome.only=FALSE)
#edit based on above selection of LD threshold
snpset.id <- unlist(unname(snpset))
snpset2.id <- unlist(unname(snpset2))
####
sample.id <- read.gdsn(index.gdsn(genofile_interspecific, "sample.id"))

#Principal Component Analysis (Change snpset.id if using different LD filtering threshold)

pca_interspecific <- snpgdsPCA(genofile_interspecific, snp.id=snpset.id, autosome.only=FALSE, num.thread=4)
pc_interspecific.percent <- pca_interspecific$varprop*100
head(round(pc_interspecific.percent, 2))
tab_interspecific <- data.frame(sample.id = pca_interspecific$sample.id, PC1 = pca_interspecific$eigenvect[,1],    # the first eigenvector
                  PC2 = pca_interspecific$eigenvect[,2],    # the second eigenvector
                  PC3 = pca_interspecific$eigenvect[,3],
                  PC4 = pca_interspecific$eigenvect[,4],
                  PC5 = pca_interspecific$eigenvect[,5],
                  PC6 = pca_interspecific$eigenvect[,6],
                  PC7 = pca_interspecific$eigenvect[,7],
                  stringsAsFactors = FALSE)
head(tab_interspecific)

write.table(tab_interspecific, file = "interspecific_PCA.csv")

#Plotting the PCA

#Edit interspecific_PCA.csv to add column for population identifiers

library(ggplot2)

interspecific_PCA$Pop_broad <- factor(interspecific_PCA$Pop_broad, levels = c("Wild", "Ethnographic", "Landrace", "MexWild", "EthnoWild", "Arg", "Niveus", "PetFal", "PetPet"))

colors_interspecific <- scale_color_manual(values = c("green", "red", "blue", "pink", "orange", "black", "black", "black", "black"))

PC1PC2_interspecific <- ggplot(interspecific_PCA, aes(x = PC1, y = PC2, colour = Pop_broad)) + 
  geom_point() + colors_interspecific

PC1PC2_interspecific






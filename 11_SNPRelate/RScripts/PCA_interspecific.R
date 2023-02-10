if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("SNPRelate")

library(SNPRelate)

setwd("/Users/peterstokes/Documents/Science/Chapter1/10_SNPRelate")

##################
#Interspecific PCA
##################

#Reading in VCF and convertint to the genofile format requred to generate the PCA

interspecific_biallelic_vcf.fn = "/Users/peterstokes/Desktop/PS_Chapter1_allChrom_annotated_biallelicSNPSOnly_noSpanningINDELS_G4_missingFixed.vcf.gz"
snpgdsVCF2GDS(interspecific_biallelic_vcf.fn, "interspecific_pass1.gds", method="biallelic.only")
snpgdsSummary("interspecific_pass1.gds")
genofile_interspecific <- snpgdsOpen("interspecific_pass1.gds")
head(genofile_interspecific)

#LD filtering

set.seed(1000)
#LD Threshold 0.2
snpset_interspecific <- snpgdsLDpruning(genofile_interspecific, ld.threshold=0.2, autosome.only=FALSE)
#LD Threshold 0.1
snpset2_interspecific <- snpgdsLDpruning(genofile_interspecific, ld.threshold=0.1, autosome.only=FALSE)
#edit based on above selection of LD threshold
snpset_interspecific.id <- unlist(unname(snpset_interspecific))
snpset2_interspecific.id <- unlist(unname(snpset2_interspecific))
####
sample.id <- read.gdsn(index.gdsn(genofile_interspecific, "sample.id"))

#Principal Component Analysis (Change snpset.id if using different LD filtering threshold)

pca_interspecific <- snpgdsPCA(genofile_interspecific, snp.id=snpset_interspecific.id, autosome.only=FALSE, num.thread=4)
pc_interspecific.percent <- pca_interspecific$varprop*100
head(round(pc_interspecific.percent, 2))
tab_interspecific <- data.frame(sample_interspecific.id = pca_interspecific$sample.id, PC1 = pca_interspecific$eigenvect[,1],    # the first eigenvector
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

interspecific_PCA$Pop_geoLoc2 <- factor(interspecific_PCA$Pop_geoLoc2, levels = c("Ethnographic", "Landrace", "MexWild", "ethnoWild", "IA", "AR", "KS", "NB", "ND_SD", "OK", "IL", "MO", "TX", "WY", "SK_MB", "CO_UT_NM", "CA_NV_AZ", "Argophyllus", "Niveus", "PetFal", "PetPet"))

colors_interspecific <- scale_color_manual(values = c("#eb2f06", "#3867d6", "#ff8608", "#000000", "#8868a8", "#c18530", "#75ecff", "#FF8E9E", "#5dd3b7", "#C147E9", "#8a8a8c", "#a8175b", "#8ab0db", "#825c61", "#f5f97c", "#4cdb13", "#db34b9", "#6c757d", "#adb5bd", "#ced4da", "#dee2e6"))

PC1PC2_interspecific <- ggplot(interspecific_PCA, aes(x = PC1, y = PC2, colour = Pop_geoLoc2)) + 
  geom_point(size = 2.75) + colors_interspecific + theme_classic()
PC1PC2_interspecific

PC1PC3_interspecific <- ggplot(interspecific_PCA, aes(x = PC1, y = PC3, colour = Pop_geoLoc2)) + 
  geom_point(size = 2.75) + colors_interspecific + theme_classic()
PC1PC3_interspecific

PC2PC3_interspecific <- ggplot(interspecific_PCA, aes(x = PC2, y = PC3, colour = Pop_geoLoc2)) + 
  geom_point(size = 2.75) + colors_interspecific + theme_classic()
PC2PC3_interspecific

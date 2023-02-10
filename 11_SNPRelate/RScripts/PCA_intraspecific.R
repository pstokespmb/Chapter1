if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("SNPRelate")

library(SNPRelate)

setwd("/Users/peterstokes/Desktop/maskingTests")

##################
#Interspecific PCA
##################

#Reading in VCF and convertint to the genofile format requred to generate the PCA

intraspecific_biallelic_vcf_unaltered.fn = "/Users/peterstokes/Desktop/maskingTests/maskTestingVCF_unaltered.vcf.gz"
snpgdsVCF2GDS(intraspecific_biallelic_vcf_unaltered.fn, "intraspecific_unaltered.gds", method="biallelic.only")
snpgdsSummary("intraspecific_unaltered.gds")
genofile_intraspecific_unaltered <- snpgdsOpen("intraspecific_unaltered.gds")
head(genofile_intraspecific_unaltered)

#LD filtering

set.seed(1000)

#LD Threshold 1.5 (we already LD filtered this set of SNPS, set high LD to make sure nothing is removed)
snpset_intraspecific_unaltered <- snpgdsLDpruning(genofile_intraspecific_unaltered, ld.threshold=1.5, autosome.only=FALSE)
snpset_intraspecific_unaltered.id <- unlist(unname(snpset_intraspecific_unaltered))

####
sample_unaltered.id <- read.gdsn(index.gdsn(genofile_intraspecific_unaltered, "sample.id"))

#Principal Component Analysis (Change snpset.id if using different LD filtering threshold)

pca_intraspecific <- snpgdsPCA(genofile_intraspecific, snp.id=snpset_intraspecific.id, autosome.only=FALSE, num.thread=4)
pc_intraspecific.percent <- pca_intraspecific$varprop*100
head(round(pc_intraspecific.percent, 2))
tab_intraspecific <- data.frame(sample_intraspecific.id = pca_intraspecific$sample.id, PC1 = pca_intraspecific$eigenvect[,1],    # the first eigenvector
                  PC2 = pca_intraspecific$eigenvect[,2],    # the second eigenvector
                  PC3 = pca_intraspecific$eigenvect[,3],
                  PC4 = pca_intraspecific$eigenvect[,4],
                  PC5 = pca_intraspecific$eigenvect[,5],
                  PC6 = pca_intraspecific$eigenvect[,6],
                  PC7 = pca_intraspecific$eigenvect[,7],
                  stringsAsFactors = FALSE)
head(tab_intraspecific)

write.table(tab_intraspecific, file = "intraspecific_PCA.csv")

#Plotting the PCA

#Edit intraspecific_PCA.csv to add column for population identifiers

library(ggplot2)

intraspecific_PCA$Pop_geoLoc2 <- factor(intraspecific_PCA$Pop_geoLoc2, levels = c("Ethnographic", "Landrace", "MexWild", "ethnoWild", "IA", "AR", "KS", "NB", "ND_SD", "OK", "IL", "MO", "TX", "WY", "SK_MB", "CO_UT_NM", "CA_NV_AZ"))

colors_intraspecific <- scale_color_manual(values = c("#eb2f06", "#3867d6", "#ff8608", "#000000", "#8868a8", "#c18530", "#75ecff", "#FF8E9E", "#5dd3b7", "#C147E9", "#8a8a8c", "#a8175b", "#8ab0db", "#825c61", "#f5f97c", "#4cdb13", "#db34b9"))

PC1PC2_intraspecific <- ggplot(intraspecific_PCA, aes(x = PC1, y = PC2, colour = Pop_geoLoc2)) + 
  geom_point(size = 2.75) + colors_intraspecific + theme_classic()
PC1PC2_intraspecific

PC1PC3_intraspecific <- ggplot(intraspecific_PCA, aes(x = PC1, y = PC3, colour = Pop_geoLoc2)) + 
  geom_point(size = 2.75) + colors_intraspecific + theme_classic()
PC1PC3_intraspecific

PC2PC3_intraspecific <- ggplot(intraspecific_PCA, aes(x = PC2, y = PC3, colour = Pop_geoLoc2)) + 
  geom_point(size = 2.75) + colors_intraspecific + theme_classic()
PC2PC3_intraspecific

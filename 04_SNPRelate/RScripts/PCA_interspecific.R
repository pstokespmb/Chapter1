if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("SNPRelate")

library(SNPRelate)

setwd("/Users/peterstokes/Documents/Science/Chapter1/05_SNPRelate/csv")

##################
#interspecific PCA
##################

#Reading in VCF and convertint to the genofile format requred to generate the PCA

interspecific_biallelic_vcf.fn = "/Users/peterstokes/Documents/Science/Chapter1/05_SNPRelate/vcfs/Chapter1_allChrom_noRR_NF_noED_noLowCov_D4_Bi_plinked_G2_M5_LD_Pruned_forDStats_forPCA_forfastStructure.vcf"
snpgdsVCF2GDS(interspecific_biallelic_vcf.fn, "/Users/peterstokes/Documents/Science/Chapter1/05_SNPRelate/outs/Chapter1_allChrom_noRR_NF_noED_noLowCov_D4_Bi_plinked_G2_M5_LD_Pruned_forDStats_forPCA_forfastStructure.gds", method="biallelic.only")
snpgdsSummary("/Users/peterstokes/Documents/Science/Chapter1/05_SNPRelate/outs/Chapter1_allChrom_noRR_NF_noED_noLowCov_D4_Bi_plinked_G2_M5_LD_Pruned_forDStats_forPCA_forfastStructure.gds")
genofile_interspecific <- snpgdsOpen("/Users/peterstokes/Documents/Science/Chapter1/05_SNPRelate/outs/Chapter1_allChrom_noRR_NF_noED_noLowCov_D4_Bi_plinked_G2_M5_LD_Pruned_forDStats_forPCA_forfastStructure.gds")
head(genofile_interspecific)

#LD filtering

set.seed(1000)

#LD Threshold 0.2
snpset_interspecific <- snpgdsLDpruning(genofile_interspecific, ld.threshold=0.9999, autosome.only=FALSE)

#edit based on above selection of LD threshold
snpset_interspecific.id <- unlist(unname(snpset_interspecific))
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

plot(tab_interspecific$PC1, tab_interspecific$PC2, xlab="PC1", ylab="PC2")

write.table(tab_interspecific, file = "Chapter1_allChrom_noRR_NF_noED_noLowCov_D4_Bi_plinked_G2_M3_LD_Pruned_forDStats_forPCA_forfastStructure.csv")

#Plotting the PCA

library(ggplot2)
library(ggrepel)


Chapter1_interspecific <- read.csv("Chapter1_allChrom_noRR_NF_noED_noLowCov_D4_Bi_plinked_G2_M5_LD_Pruned_forDStats_forPCA_forfastStructure.csv",as.is=T,header=T)

###PopBasic
#"Cultivar","TV","TV_ethnographic","Wild","mexWild","TX_texanus","argophyllus","niveus","petiolaris"
#"#9f7eae","#1d4cc7","#E4102e","#4ba75a","#66aab8","#cdeb1e","#1e1e1e","#5e6060","#C3c3c3"

###PopReduced
#"Cultivar","TV","TV_ethnographic","IA_KS","ND_SD","MB_SK","AR_IL_NB","MO","OK","WY","TX","CO_UT_NM","CA_AZ_NV","mexWild","TX_texanus","argophyllus","niveus","petiolaris"
#"#9f7eae","#1d4cc7","#E4102e","#4ba75a","#D6BA73","#89c7fa","#F3D3BD","#563471","#Df698f","#Be855f","#E59123","#f138f5","#F5e24e","#66aab8","#cdeb1e","#1e1e1e","#5e6060","#C3c3c3"

###PopReducedReduced
#"Cultivar","TV","TV_ethnographic","ENA","CO_UT_NM_TX","CA_AZ_NV","mexWild","TX_texanus","argophyllus","niveus","petiolaris"
#"#9f7eae","#1d4cc7","#E4102e","#4ba75a","#E59123","#F5e24e","#66aab8","#cdeb1e","#1e1e1e","#5e6060","#C3c3c3"

###adjusting dataframes to reflect population coloring

###PopBasic:

Chapter1_interspecific$PopBasic <- factor(Chapter1_interspecific$PopBasic, levels = c("Cultivar","TV","TV_ethnographic","Wild","mexWild","TX_texanus","argophyllus","niveus","petiolaris"))

colors_interspecific <- scale_color_manual(values = c("#9f7eae","#1d4cc7","#E4102e","#4ba75a","#66aab8","#cdeb1e","#1e1e1e","#5e6060","#C3c3c3"))

PC1PC2_interspecific <- ggplot(Chapter1_interspecific, aes(x = PC1, y = PC2, colour = PopBasic)) + 
  geom_point(size = 2.75) + colors_interspecific + theme_classic()

PC1PC2_interspecific

PC1PC3_interspecific <- ggplot(Chapter1_interspecific, aes(x = PC1, y = PC3, colour = PopBasic)) + 
  geom_point(size = 2.75) + colors_interspecific + theme_classic()

PC1PC3_interspecific

PC2PC3_interspecific <- ggplot(Chapter1_interspecific, aes(x = PC2, y = PC3, colour = PopBasic)) + 
  geom_point(size = 2.75) + colors_interspecific + theme_classic()

PC2PC3_interspecific

###PopReduced:

Chapter1_interspecific$PopReduced <- factor(Chapter1_interspecific$PopReduced, levels = c("Cultivar","TV","TV_ethnographic","IA_KS","ND_SD","MB_SK","AR_IL_NB","MO","OK","WY","TX","CO_UT_NM","CA_AZ_NV","mexWild","TX_texanus","argophyllus","niveus","petiolaris"))

colors_interspecific <- scale_color_manual(values = c("#9f7eae","#1d4cc7","#E4102e","#4ba75a","#D6BA73","#89c7fa","#F3D3BD","#563471","#Df698f","#Be855f","#E59123","#f138f5","#F5e24e","#66aab8","#cdeb1e","#1e1e1e","#5e6060","#C3c3c3"))

PC1PC2_interspecific <- ggplot(Chapter1_interspecific, aes(x = PC1, y = PC2, colour = PopReduced)) + 
  geom_point(size = 2.75) + colors_interspecific + theme_classic()

PC1PC2_interspecific

PC1PC3_interspecific <- ggplot(Chapter1_interspecific, aes(x = PC1, y = PC3, colour = PopReduced)) + 
  geom_point(size = 2.75) + colors_interspecific + theme_classic()

PC1PC3_interspecific

PC2PC3_interspecific <- ggplot(Chapter1_interspecific, aes(x = PC2, y = PC3, colour = PopReduced)) + 
  geom_point(size = 2.75) + colors_interspecific + theme_classic()

PC2PC3_interspecific

###PopReducedReduced:

Chapter1_interspecific$PopReducedReduced <- factor(Chapter1_interspecific$PopReducedReduced, levels = c("Cultivar","TV","TV_ethnographic","ENA","CO_UT_NM_TX","CA_AZ_NV","mexWild","TX_texanus","argophyllus","niveus","petiolaris"))

colors_interspecific <- scale_color_manual(values = c("#9f7eae","#1d4cc7","#E4102e","#4ba75a","#E59123","#F5e24e","#66aab8","#cdeb1e","#1e1e1e","#5e6060","#C3c3c3"))

PC1PC2_interspecific <- ggplot(Chapter1_interspecific, aes(x = PC1, y = PC2, colour = PopReducedReduced)) + 
  geom_point(size = 2.75) + colors_interspecific + theme_classic()

PC1PC2_interspecific

PC1PC3_interspecific <- ggplot(Chapter1_interspecific, aes(x = PC1, y = PC3, colour = PopReducedReduced)) + 
  geom_point(size = 2.75) + colors_interspecific + theme_classic()

PC1PC3_interspecific

PC2PC3_interspecific <- ggplot(Chapter1_interspecific, aes(x = PC2, y = PC3, colour = PopReducedReduced)) + 
  geom_point(size = 2.75) + colors_interspecific + theme_classic()

PC2PC3_interspecific

#####

PC1PC2_interspecific <- ggplot(Chapter1_interspecific, aes(x = PC1, y = PC2, colour = PopReducedReduced)) + 
  geom_point(size = 2.75) + colors_interspecific + theme_classic() +
  geom_label_repel(aes(label = sampleName),data = ~ subset(., sampleName == "ND1W_6"), color = "black", fill= "light blue", box.padding = 1) +
  geom_label_repel(aes(label = sampleName),data = ~ subset(., sampleName == "ND1W_6"), color = "black", fill= "light blue", box.padding = 1) +
  geom_label_repel(aes(label = sampleName),data = ~ subset(., sampleName == "ND1W_6"), color = "black", fill= "light blue", box.padding = 1)



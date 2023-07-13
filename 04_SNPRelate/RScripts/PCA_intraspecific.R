if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("SNPRelate")

library(SNPRelate)

setwd("/Users/peterstokes/Documents/Science/Chapter1/05_SNPRelate/csv")

##################
#intraspecific PCA
##################

#Reading in VCF and convertint to the genofile format requred to generate the PCA

intraspecific_biallelic_vcf.fn = "/Users/peterstokes/Documents/Science/Chapter1/05_SNPRelate/vcfs/Chapter1_allChrom_noRR_NF_noED_noLowCov_annuusOnly_noTexanus_noIntraInterAdmix_noBadMexCult_wMexWild_D4_Bi_plinked_G2_M5_LD_Pruned_forDStats_forPCA_forfastStructure.vcf"
snpgdsVCF2GDS(intraspecific_biallelic_vcf.fn, "/Users/peterstokes/Documents/Science/Chapter1/05_SNPRelate/outs/Chapter1_allChrom_noRR_NF_noED_noLowCov_annuusOnly_noTexanus_noIntraInterAdmix_noBadMexCult_wMexWild_D4_Bi_plinked_G2_M5_LD_Pruned_forDStats_forPCA_forfastStructure.gds", method="biallelic.only")
snpgdsSummary("/Users/peterstokes/Documents/Science/Chapter1/05_SNPRelate/outs/Chapter1_allChrom_noRR_NF_noED_noLowCov_annuusOnly_noTexanus_noIntraInterAdmix_noBadMexCult_wMexWild_D4_Bi_plinked_G2_M5_LD_Pruned_forDStats_forPCA_forfastStructure.gds")
genofile_intraspecific <- snpgdsOpen("/Users/peterstokes/Documents/Science/Chapter1/05_SNPRelate/outs/Chapter1_allChrom_noRR_NF_noED_noLowCov_annuusOnly_noTexanus_noIntraInterAdmix_noBadMexCult_wMexWild_D4_Bi_plinked_G2_M5_LD_Pruned_forDStats_forPCA_forfastStructure.gds")
head(genofile_intraspecific)

#LD filtering

set.seed(1000)

#LD Threshold 0.2
snpset_intraspecific <- snpgdsLDpruning(genofile_intraspecific, ld.threshold=0.9999, autosome.only=FALSE)

#edit based on above selection of LD threshold
snpset_intraspecific.id <- unlist(unname(snpset_intraspecific))
####
sample.id <- read.gdsn(index.gdsn(genofile_intraspecific, "sample.id"))

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

plot(tab_intraspecific$PC1, tab_intraspecific$PC2, xlab="PC1", ylab="PC2")

write.table(tab_intraspecific, file = "Chapter1_allChrom_noRR_NF_noED_noLowCov_annuusOnly_noTexanus_noIntraInterAdmix_noBadMexCult_wMexWild_D4_Bi_plinked_G2_M5_LD_Pruned_forDStats_forPCA_forfastStructure.csv")

#Plotting the PCA

library(ggplot2)
library(ggrepel)

#### PopReducedReduced coloring:

setwd("/Users/peterstokes/Documents/Science/Chapter1/05_SNPRelate/csv")

Chapter1_intraspecific <- read.csv("Chapter1_allChrom_noRR_NF_noED_noLowCov_annuusOnly_noTexanus_noIntraInterAdmix_noBadMexCult_wMexWild_D4_Bi_plinked_G2_M5_LD_Pruned_forDStats_forPCA_forfastStructure.csv",as.is=T,header=T)

###PopBasic
#"Cultivar","TV","TV_ethnographic","Wild","mexWild"
#"#9f7eae","#1d4cc7","#E4102e","#4ba75a","#66aab8"

###PopReduced
#"Cultivar","TV","TV_ethnographic","IA_KS","ND_SD","MB_SK","AR_IL_NB","MO","OK","WY","TX","CO_UT_NM","CA_AZ_NV","mexWild"
#"#9f7eae","#1d4cc7","#E4102e","#4ba75a","#D6BA73","#89c7fa","#F3D3BD","#563471","#Df698f","#Be855f","#E59123","#f138f5","#F5e24e","#66aab8"

###PopReducedReduced
#"Cultivar","TV","TV_ethnographic","ENA","CO_UT_NM_TX","CA_AZ_NV","mexWild"
#"#9f7eae","#1d4cc7","#E4102e","#4ba75a","#E59123","#F5e24e","#66aab8"

###adjusting dataframes to reflect population coloring

###PopBasic:

Chapter1_intraspecific$PopBasic <- factor(Chapter1_intraspecific$PopBasic, levels = c("Cultivar","TV","TV_ethnographic","Wild","mexWild"))

colors_intraspecific <- scale_color_manual(values = c("#9f7eae","#1d4cc7","#E4102e","#4ba75a","#66aab8"))

PC1PC2_intraspecific <- ggplot(Chapter1_intraspecific, aes(x = PC1, y = PC2, colour = PopBasic)) + 
  geom_point(size = 2.75) + colors_intraspecific + theme_classic()

PC1PC2_intraspecific

PC1PC3_intraspecific <- ggplot(Chapter1_intraspecific, aes(x = PC1, y = PC3, colour = PopBasic)) + 
  geom_point(size = 2.75) + colors_intraspecific + theme_classic()

PC1PC3_intraspecific

PC2PC3_intraspecific <- ggplot(Chapter1_intraspecific, aes(x = PC2, y = PC3, colour = PopBasic)) + 
  geom_point(size = 2.75) + colors_intraspecific + theme_classic()

PC2PC3_intraspecific

###PopReduced:

Chapter1_intraspecific$PopReduced <- factor(Chapter1_intraspecific$PopReduced, levels = c("Cultivar","TV","TV_ethnographic","IA_KS","ND_SD","MB_SK","AR_IL_NB","MO","OK","WY","TX","CO_UT_NM","CA_AZ_NV","mexWild"))

colors_intraspecific <- scale_color_manual(values = c("#9f7eae","#1d4cc7","#E4102e","#4ba75a","#D6BA73","#89c7fa","#F3D3BD","#563471","#Df698f","#Be855f","#E59123","#f138f5","#F5e24e","#66aab8"))

PC1PC2_intraspecific <- ggplot(Chapter1_intraspecific, aes(x = PC1, y = PC2, colour = PopReduced)) + 
  geom_point(size = 2.75) + colors_intraspecific + theme_classic()

PC1PC2_intraspecific

PC1PC3_intraspecific <- ggplot(Chapter1_intraspecific, aes(x = PC1, y = PC3, colour = PopReduced)) + 
  geom_point(size = 2.75) + colors_intraspecific + theme_classic()

PC1PC3_intraspecific

PC2PC3_intraspecific <- ggplot(Chapter1_intraspecific, aes(x = PC2, y = PC3, colour = PopReduced)) + 
  geom_point(size = 2.75) + colors_intraspecific + theme_classic()

PC2PC3_intraspecific

###PopReducedReduced:

Chapter1_intraspecific$PopReducedReduced <- factor(Chapter1_intraspecific$PopReducedReduced, levels = c("Cultivar","TV","TV_ethnographic","ENA","CO_UT_NM_TX","CA_AZ_NV","mexWild"))

colors_intraspecific <- scale_color_manual(values = c("#9f7eae","#1d4cc7","#E4102e","#4ba75a","#E59123","#F5e24e","#66aab8"))

PC1PC2_intraspecific <- ggplot(Chapter1_intraspecific, aes(x = PC1, y = PC2, colour = PopReducedReduced)) + 
  geom_point(size = 2.75) + colors_intraspecific + theme_classic()

PC1PC2_intraspecific

PC1PC3_intraspecific <- ggplot(Chapter1_intraspecific, aes(x = PC1, y = PC3, colour = PopReducedReduced)) + 
  geom_point(size = 2.75) + colors_intraspecific + theme_classic()

PC1PC3_intraspecific

PC2PC3_intraspecific <- ggplot(Chapter1_intraspecific, aes(x = PC2, y = PC3, colour = PopReducedReduced)) + 
  geom_point(size = 2.75) + colors_intraspecific + theme_classic()

PC2PC3_intraspecific

#####

PC1PC2_intraspecific <- ggplot(Chapter1_intraspecific, aes(x = PC1, y = PC2, colour = PopReducedReduced)) + 
  geom_point(size = 2.75) + colors_intraspecific + theme_classic() +
  geom_label_repel(aes(label = sampleName),data = ~ subset(., sampleName == "ND1W_6"), color = "black", fill= "light blue", box.padding = 1) +
  geom_label_repel(aes(label = sampleName),data = ~ subset(., sampleName == "ND1W_6"), color = "black", fill= "light blue", box.padding = 1) +
  geom_label_repel(aes(label = sampleName),data = ~ subset(., sampleName == "ND1W_6"), color = "black", fill= "light blue", box.padding = 1)
  
  

install.packages("SiZer")
install.packages("OptM")





setwd("/Users/peterstokes/Documents/Science/Chapter1/06_TreeMix/TreeMixOutput/TreeMixTar2") # of course this needs to be adjusted

library(OptM)
annuus.out = optM("/Users/peterstokes/Documents/Science/Chapter1/06_TreeMix/TreeMixOutput/TreeMixTar2")
plot_optM(annuus.out)


library(RColorBrewer)
library(R.utils)
source("/Users/peterstokes/Documents/Science/Chapter1/06_TreeMix/scripts/plotting_funcs.R") # here you need to add the path

plot_tree("noRR_GeoLoc_UPDATEDassignment_TreeMix_SampleSizeCorrection_m1_inter_1")
plot_tree("noRR_GeoLoc_UPDATEDassignment_TreeMix_SampleSizeCorrection_m1_inter_2")
plot_tree("noRR_GeoLoc_UPDATEDassignment_TreeMix_SampleSizeCorrection_m1_inter_3")
plot_tree("noRR_GeoLoc_UPDATEDassignment_TreeMix_SampleSizeCorrection_m1_inter_4")
plot_tree("noRR_GeoLoc_UPDATEDassignment_TreeMix_SampleSizeCorrection_m1_inter_5")
plot_tree("noRR_GeoLoc_UPDATEDassignment_TreeMix_SampleSizeCorrection_m1_inter_6")
plot_tree("noRR_GeoLoc_UPDATEDassignment_TreeMix_SampleSizeCorrection_m1_inter_7")
plot_tree("noRR_GeoLoc_UPDATEDassignment_TreeMix_SampleSizeCorrection_m1_inter_8")
plot_tree("noRR_GeoLoc_UPDATEDassignment_TreeMix_SampleSizeCorrection_m1_inter_9")
plot_tree("noRR_GeoLoc_UPDATEDassignment_TreeMix_SampleSizeCorrection_m1_inter_10")

plot_tree("noRR_GeoLoc_UPDATEDassignment_TreeMix_SampleSizeCorrection_m8_inter_1")
plot_tree("noRR_GeoLoc_UPDATEDassignment_TreeMix_SampleSizeCorrection_m8_inter_2")
plot_tree("noRR_GeoLoc_UPDATEDassignment_TreeMix_SampleSizeCorrection_m8_inter_3")
plot_tree("noRR_GeoLoc_UPDATEDassignment_TreeMix_SampleSizeCorrection_m8_inter_4")
plot_tree("noRR_GeoLoc_UPDATEDassignment_TreeMix_SampleSizeCorrection_m8_inter_5")
plot_tree("noRR_GeoLoc_UPDATEDassignment_TreeMix_SampleSizeCorrection_m8_inter_6")
plot_tree("noRR_GeoLoc_UPDATEDassignment_TreeMix_SampleSizeCorrection_m8_inter_7")
plot_tree("noRR_GeoLoc_UPDATEDassignment_TreeMix_SampleSizeCorrection_m8_inter_8")
plot_tree("noRR_GeoLoc_UPDATEDassignment_TreeMix_SampleSizeCorrection_m8_inter_9")
plot_tree("noRR_GeoLoc_UPDATEDassignment_TreeMix_SampleSizeCorrection_m8_inter_10")






install.packages("SiZer")
install.packages("OptM")
library(OptM)


test.optM = optM("/Users/peterstokes/Documents/Science/Chapter1/06_TreeMix/TreeMixOutput")




prefix="treemix_test_biggerGroups.3"
plot_tree(prefix)

prefix="treemix_test_biggerGroups.4"
plot_tree(prefix)

prefix="treemix_test_biggerGroups2.1"
plot_tree(prefix)

prefix="treemix_test_biggerGroups2.2"
plot_tree(prefix)

prefix="treemix_test_biggerGroups2.3"
plot_tree(prefix)

prefix="treemix_test_biggerGroups2.4"
plot_tree(prefix)

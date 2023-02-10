

setwd("/Users/peterstokes/Documents/Science/Chapter1/14_TreeMix") # of course this needs to be adjusted
prefix="treemix_test.2"

library(RColorBrewer)
library(R.utils)
source("./plotting_funcs.R") # here you need to add the path

prefix="treemix_test_biggerGroups.1"
plot_tree(prefix)

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

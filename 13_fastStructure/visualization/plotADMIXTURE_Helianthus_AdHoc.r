#!/usr/bin/Rscript

# Usage: plotADMIXTURE.r -p <prefix> -i <info file, 2-column file with ind name and population/species name> 
#                        -k <max K value> -l <comma-separated list of populations/species in the order to be plotted>
# This R script makes barplots for K=2 and all other K values until max K (specified with -k). It labels the individuals 
# and splits them into populations or species according to the individual and population/species names in the 2-column file specified with -i.
# The order of populations/species follows the list of populations/species given with -l.
# Usage example: plotADMIXTURE.r -p fileXY -i file.ind.pop.txt -k 4 -pop pop1,pop2,pop3
# In this example, the script would use the files fileXY.2.Q, fileXY.3.Q, fileXY.4.Q to make barplots for the three populations.
# file.ind.pop.txt should contain one line for each individual in the same order as in the admixture files e.g.
# ind1 pop1
# ind2 pop1
# ind3 pop2
# ind4 pop3

# Author: Joana Meier, September 2019

# Read in the arguments
library("optparse")
option_list = list(
  make_option(c("-p", "--prefix"), type="character", default=NULL, 
              help="prefix name (with path if not in the current directory)", metavar="character"),
  make_option(c("-i", "--infofile"), type="character", default=NULL, 
              help="info text file containing for each individual the population/species information", metavar="character"),
  make_option(c("-k", "--maxK"), type="integer", default=NULL, 
              help="maximum K value", metavar="integer"),
  make_option(c("-m", "--minK"), type="integer", default=2, 
              help="minimum K value", metavar="integer"),
  make_option(c("-l", "--populations"), type="character", default=NULL, 
              help="comma-separated list of populations/species in the order to be plotted", metavar="character"),
  make_option(c("-o", "--outPrefix"), type="character", default="default", 
              help="output prefix (default: name provided with prefix)", metavar="character")
) 
opt_parser = OptionParser(option_list=option_list)
opt = parse_args(opt_parser)

# Check that all required arguments are provided
if (is.null(opt$prefix)){
  print_help(opt_parser)
  stop("Please provide the prefix", call.=FALSE)
}else if (is.null(opt$infofile)){
  print_help(opt_parser)
  stop("Please provide the info file", call.=FALSE)
}else if (is.null(opt$maxK)){
  print_help(opt_parser)
  stop("Please provide the maximum K value to plot", call.=FALSE)
}else if (is.null(opt$populations)){
  print_help(opt_parser)
  stop("Please provide a comma-separated list of populations/species", call.=FALSE)
}

# If no output prefix is given, use the input prefix
if(opt$outPrefix=="default") opt$outPrefix=opt$prefix

# Assign the first argument to prefix
prefix=opt$prefix

# Get individual names in the correct order
labels<-read.table(opt$infofile)

# Name the columns
names(labels)<-c("ind","pop")

# Add a column with population indices to order the barplots
# Use the order of populations provided as the fourth argument (list separated by commas)
labels$n<-factor(labels$pop,levels=unlist(strsplit(opt$populations,",")))
levels(labels$n)<-c(1:length(levels(labels$n)))
labels$n<-as.integer(as.character(labels$n))

# read in the different admixture output files
minK=opt$minK
maxK=opt$maxK
tbl<-lapply(minK:maxK, function(x) read.table(paste0(prefix,".",x,".meanQ")))

# Prepare spaces to separate the populations/species
rep<-as.vector(table(labels$n))
spaces<-0
for(i in 1:length(rep)){spaces=c(spaces,rep(0,rep[i]-1),0.5)}
spaces<-spaces[-length(spaces)]

# Plot the cluster assignments as a single bar for each individual for each K as a separate row
tiff(file=paste0(opt$outPrefix,".tiff"),width = 8000, height = 2000,res=200)
 par(mfrow=c(maxK-1,1),mar=c(0,1,0,0),oma=c(2,1,9,1),mgp=c(0,0.2,0),xaxs="i",cex.lab=1.2,cex.axis=1.2)
 # Plot minK
 bp<-barplot(t(as.matrix(tbl[[1]][order(labels$n),])), col=rainbow(n=minK),xaxt="n", border="black",ylab=paste0("K=",minK),yaxt="n",space=spaces)
 axis(3,at=bp,labels=labels$ind[order(labels$n)],las=2,tick=F,cex=0.6)
 
x_spacing <- c(which(spaces==0.5),bp[length(bp)])-diff(c(1,which(spaces==0.5),bp[length(bp)]))/2

x_spacing[1] <- 5
x_spacing[2] <- 16
x_spacing[3] <- 29
x_spacing[4] <- 42
x_spacing[5] <- 48.5
x_spacing[6] <- 50
x_spacing[7] <- 53.5
x_spacing[8] <- 58
x_spacing[9] <- 73
x_spacing[10] <- 118
x_spacing[11] <- 144
x_spacing[12] <- 151
x_spacing[13] <- 169
x_spacing[14] <- 185
x_spacing[15] <- 196
x_spacing[16] <- 202
x_spacing[17] <- 208
x_spacing[18] <- 213
x_spacing[19] <- 220
x_spacing[20] <- 233
x_spacing[21] <- 240.5
x_spacing[22] <- 245
x_spacing[23] <- 249.5
x_spacing[24] <- 253
x_spacing[25] <- 264
x_spacing[26] <- 276
x_spacing[27] <- 282
x_spacing[28] <- 292
x_spacing[29] <- 303
x_spacing[30] <- 315
x_spacing[31] <- 326
 
 # Plot higher K values
if(maxK>minK)lapply(2:(maxK-1), function(x) barplot(t(as.matrix(tbl[[x]][order(labels$n),])), col=rainbow(n=x+1),xaxt="n", border="black",ylab=paste0("K=",x+1),yaxt="n",space=spaces))
axis(1,at=x_spacing,
    labels=unlist(strsplit(opt$populations,",")))
 
 
dev.off()	
write.csv(opt$populations, "populations.csv")
write.csv(labels$n, "labels.csv")


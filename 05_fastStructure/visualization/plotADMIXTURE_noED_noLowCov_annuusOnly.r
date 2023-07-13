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

# example usage: rscript plotADMIXTURE_noED_noLowCov.r -p input/Chapter1_allChrom_noRR_NF_noED_noLowCov_D3_Bi_plinked_G1_M5_LD_Pruned -i noED_noLowCov.info -k 6 -l Cultivar_HA,Cultivar_RHA,TV_MX,TV_SW,TV_other,TV_ethnographic,mexWild,IA,KS,ND,SD,MO,NB,IL,AR,OK,WY,SK,MB,argophyllus,petiolaris,fallax,niveus,TX_texanus,TX,CA,AZ,NV,CO,UT,NM

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
tiff(file=paste0(opt$outPrefix,".tiff"),width = 28000, height = 4000,res=400)
 par(mfrow=c(maxK-1,1),mar=c(0,1,0,0),oma=c(2,1,9,1),mgp=c(0,0.2,0),xaxs="i",cex.lab=1.2,cex.axis=1.2)
 # Plot minK
 bp<-barplot(t(as.matrix(tbl[[1]][order(labels$n),])), col=rainbow(n=minK),xaxt="n", border="black",ylab=paste0("K=",minK),yaxt="n",space=spaces)
 axis(3,at=bp,labels=labels$ind[order(labels$n)],las=2,tick=F,cex=0.6)
 
x_spacing <- c(which(spaces==0.5),bp[length(bp)])-diff(c(1,which(spaces==0.5),bp[length(bp)]))/2

x_spacing[1] <- 6#HA
x_spacing[2] <- 18.5#RHA
x_spacing[3] <- 28.5#LR_mex
x_spacing[4] <- 34.5#LR_SW
x_spacing[5] <- 42#LR_other
x_spacing[6] <- 50#ethnographic
x_spacing[7] <- 55.5#mexWild
x_spacing[8] <- 70#IA
x_spacing[9] <- 110.5#KS
x_spacing[10] <- 141.5#ND
x_spacing[11] <- 158.5#SD
x_spacing[12] <- 175#MO
x_spacing[13] <- 181#NB
x_spacing[14] <- 183#IL
x_spacing[15] <- 184.5#AR
x_spacing[16] <- 190.5#OK
x_spacing[17] <- 201.5#WY
x_spacing[18] <- 212.5#SK
x_spacing[19] <- 224#MB
x_spacing[20] <- 231#arg
x_spacing[21] <- 234.5#pet
x_spacing[22] <- 238#fal
x_spacing[23] <- 242.5#niv
x_spacing[24] <- 247#texanus
x_spacing[25] <- 253.5#TX
x_spacing[26] <- 265#CA
#x_spacing[27] <- 276.5#AZ
#x_spacing[28] <- 283#NV 
#x_spacing[29] <- 291#CO
#x_spacing[30] <- 302.5#UT
#x_spacing[31] <- 318#NM
 
 # Plot higher K values
if(maxK>minK)lapply(2:(maxK-1), function(x) barplot(t(as.matrix(tbl[[x]][order(labels$n),])), col=rainbow(n=x+1),xaxt="n", border="black",ylab=paste0("K=",x+1),yaxt="n",space=spaces))
axis(1,at=x_spacing,
    labels=unlist(strsplit(opt$populations,",")))


setwd("/Users/peterstokes/Documents/Science/Chapter1/11_Dsuite/outs")


D_BBAA <- read.table("D4_G2_M5_inter_SigDF4_outs.txt",as.is=T,header=T)

plot(D_BBAA$Dstatistic, ylab="D",xlab="trio number")
plot(D_BBAA$Z.score, ylab="Z-score",xlab="trio number")


plot(D_BBAA$p.value, ylab="p value",xlab="trio number",ylim=c(0,0.05))


plot(p.adjust(D_BBAA$p.value,method="BH"), ylab="p value adjusted",xlab="trio number",ylim=c(0,0.05))


plot(D_BBAA$f4.ratio, ylab="f4-ratio",xlab="trio number", ylim=c(0,1))

head(D_BBAA)

#plotting figures

library(ggplot2)
library(forcats)

setwd("/Users/peterstokes/Documents/Science/Chapter1/11_Dsuite/outs")

ABBA_BABA <- read.table("D4_G2_M5_inter_SigDF4_outs.txt",as.is=T,header=T)

ABBA_BABA_D <- ggplot(data = ABBA_BABA, aes(x = testAdmixSample, y = Dstatistic, color = Color, shape=Shape)) + 
  geom_point(size=3) +
  geom_errorbar(aes(ymin=Dstatistic-STD_err, ymax=Dstatistic+STD_err), width=.2) +
  aes(x = fct_inorder(testAdmixSample)) +
  labs(x = "Sample Tested", y = "D-statistic", color = "Z-score\n") +
  scale_shape_manual(name = "Sample Type", labels = c("Test Sample", "Control Sample"), values = c("circle", "triangle")) +
  scale_color_manual(labels = c("|Z| >= 3", "|Z| < 3"), values = c("blue", "red")) +
  geom_rect(aes(xmin=0.5,xmax=4.5,ymin=-Inf,ymax=Inf),alpha=0.005,fill="green", color="white")+
  geom_rect(aes(xmin=4.5,xmax=7.5,ymin=-Inf,ymax=Inf),alpha=0.005,fill="blue", color="white")+
  geom_rect(aes(xmin=7.5,xmax=9.5,ymin=-Inf,ymax=Inf),alpha=0.005,fill="green", color="white")+
  geom_rect(aes(xmin=9.5,xmax=11.5,ymin=-Inf,ymax=Inf),alpha=0.005,fill="blue", color="white")+
  geom_rect(aes(xmin=11.5,xmax=13.5,ymin=-Inf,ymax=Inf),alpha=0.005,fill="green", color="white")+
  geom_rect(aes(xmin=13.5,xmax=18.5,ymin=-Inf,ymax=Inf),alpha=0.005,fill="blue", color="white")+
  theme_classic() 

ABBA_BABA_D


ABBA_BABA_f4 <- ggplot(data = ABBA_BABA, aes(x = testAdmixSample, y = f4, color = Color, shape=Shape)) + 
  geom_point(size=3) +
  #geom_errorbar(aes(ymin=Dstatistic-STD_err, ymax=Dstatistic+STD_err), width=.2) +
  aes(x = fct_inorder(testAdmixSample)) +
  labs(x = "Sample Tested", y = "f4-ratio", color = "Z-score\n") +
  scale_shape_manual(name = "Sample Type", labels = c("Test Sample", "Control Sample"), values = c("circle", "triangle")) +
  scale_color_manual(labels = c("|Z| >= 3", "|Z| < 3"), values = c("blue", "red")) +
  geom_rect(aes(xmin=0.5,xmax=4.5,ymin=-Inf,ymax=Inf),alpha=0.005,fill="green", color="white")+
  geom_rect(aes(xmin=4.5,xmax=7.5,ymin=-Inf,ymax=Inf),alpha=0.005,fill="blue", color="white")+
  geom_rect(aes(xmin=7.5,xmax=9.5,ymin=-Inf,ymax=Inf),alpha=0.005,fill="green", color="white")+
  geom_rect(aes(xmin=9.5,xmax=11.5,ymin=-Inf,ymax=Inf),alpha=0.005,fill="blue", color="white")+
  geom_rect(aes(xmin=11.5,xmax=13.5,ymin=-Inf,ymax=Inf),alpha=0.005,fill="green", color="white")+
  geom_rect(aes(xmin=13.5,xmax=18.5,ymin=-Inf,ymax=Inf),alpha=0.005,fill="blue", color="white")+
  theme_classic() 

ABBA_BABA_f4

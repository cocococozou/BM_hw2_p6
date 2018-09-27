library(tidyverse)
library(ggplot2)
##read files
Migraine_data <- read.csv("./Migraine.csv")

Migraine_Pos<-filter(Migraine_data,Migraine==1)
Migraine_Neg<-filter(Migraine_data,Migraine==0)

##CESD

##Sample Size

dim(Migraine_Pos)
dim(Migraine_Neg)

##Location and spead
mean(filter(Migraine_Neg,!is.na(CESD))$CESD)
sd(filter(Migraine_Neg,!is.na(CESD))$CESD)

##number of missing values for each variable
length(filter(Migraine_Pos,is.na(CESD))$CESD)
length(filter(Migraine_Neg,!is.na(CESD))$CESD)

##NDDIE
##Location and spead
mean(filter(Migraine_Pos,!is.na(NDDIE))$NDDIE)
sd(filter(Migraine_Posss,!is.na(NDDIE))$NDDIE)
mean(filter(Migraine_Neg,!is.na(NDDIE))$NDDIE)
sd(filter(Migraine_Neg,!is.na(NDDIE))$NDDIE)
##number of missing values for each variable
length(filter(Migraine_Pos,!is.na(NDDIE))$NDDIE)
length(filter(Migraine_Neg,!is.na(NDDIE))$NDDIE)

##ABNAS memory
##Location and spead
mean(filter(Migraine_Pos,!is.na(ABNAS.memory))$ABNAS.memory)
sd(filter(Migraine_Pos,!is.na(ABNAS.memory))$ABNAS.memory)
mean(filter(Migraine_Neg,!is.na(ABNAS.memory))$ABNAS.memory)
sd(filter(Migraine_Neg,!is.na(ABNAS.memory))$ABNAS.memory)
summary(filter(Migraine_Neg,!is.na(ABNAS.memory))$ABNAS.memory)
##number of missing values for each variable
length(filter(Migraine_Pos,is.na(ABNAS.memory))$ABNAS.memory)
length(filter(Migraine_Neg,is.na(ABNAS.memory))$ABNAS.memory)

##ABNAS.language
##Location and spead
mean(filter(Migraine_Pos,!is.na(ABNAS.language))$ABNAS.language)
sd(filter(Migraine_Pos,!is.na(ABNAS.language))$ABNAS.language)
mean(filter(Migraine_Neg,!is.na(ABNAS.language))$ABNAS.language)
sd(filter(Migraine_Neg,!is.na(ABNAS.language))$ABNAS.language)
summary(filter(Migraine_Neg,!is.na(ABNAS.language))$ABNAS.language)
##number of missing values for each variable
length(filter(Migraine_Pos,is.na(ABNAS.language))$ABNAS.language)
length(filter(Migraine_Neg,is.na(ABNAS.language))$ABNAS.language)

##cutoff 
## NDDIE
length(filter(Migraine_Neg,!is.na(NDDIE),NDDIE>15)$NDDIE)
length(filter(Migraine_Pos,!is.na(NDDIE),NDDIE>15)$NDDIE)
##CESD
length(filter(Migraine_Neg,!is.na(CESD),CESD>15)$CESD)
length(filter(Migraine_Pos,!is.na(CESD),CESD>15)$CESD)

##PLOT
par(mfrow=c(1,2))
Migraine_data$Migraine= as.factor(Migraine_data$Migraine) 
ggplot(Migraine_data,aes(x=CESD, fill = Migraine))+geom_histogram(alpha = 0.5,position = 'identity')
ggplot(Migraine_data,aes(x=NDDIE, fill = Migraine))+geom_histogram(alpha = 0.5,position = 'identity')
ggplot(Migraine_data,aes(x=ABNAS.language, fill = Migraine))+geom_histogram(alpha = 0.5,position = 'identity')
ggplot(Migraine_data,aes(x=ABNAS.memory, fill = Migraine))+geom_histogram(alpha = 0.5,position = 'identity')


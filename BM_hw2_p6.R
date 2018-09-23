library(tidyverse)
rm(list=ls(all=TRUE))

##read files
Migraine_data <- read.csv("./Migraine.csv")

Migraine_Pos<-filter(Migraine_data,Migraine==1)
Migraine_Neg<-filter(Migraine_data,Migraine==0)

##CESD

##Sample Size

dim(Migraine_Pos)
dim(Migraine_Neg)

##Location and spead
mean(filter(Migraine_Pos,!is.na(CESD))$CESD)
sd(filter(Migraine_Pos,!is.na(CESD))$CESD)
mean(filter(Migraine_Neg,!is.na(CESD))$CESD)
sd(filter(Migraine_Neg,!is.na(CESD))$CESD)

##number of missing values for each variable
length(filter(Migraine_Pos,is.na(CESD))$CESD)
length(filter(Migraine_Neg,is.na(CESD))$CESD)

##NDDIE
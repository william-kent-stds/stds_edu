###########################
###  EDA ON SEIFA DATA ####

#load libraries -it is a bit of overkill but I never know what I might need
library(tidyverse)
library(readxl)
library(readr)
library(ggplot2)
library(ISLR)
library(magrittr)
library(corrplot)
library(caret)
library(pls)
library(data.table)
install.packages("DataExplorer")
library(DataExplorer)

#load in excel spreadsheets
SEIFA_2016_Data <- read_excel("SEIFA_2016_Data.xlsx")
SA2_Data<-read_csv("MB_2016_NSW.csv")
Employed_SA2<-read_csv("Employed_SA2.csv")
SEIFA_2016_Data$SA2_CODE<-SEIFA_2016_Data$ASGS_2016 #change name of column to match other data

nrow(SEIFA_2016_Data)
summary(SEIFA_2016_Data)
glimpse(SEIFA_2016_Data)
str(SEIFA_2016_Data)


SEIFA_2016_Data$SEIFAINDEXTYPE <- as.factor(SEIFA_2016_Data$SEIFAINDEXTYPE)
SEIFA_2016_Data$SEIFA_MEASURE<-as.factor(SEIFA_2016_Data$SEIFA_MEASURE)
str(SEIFA_2016_Data)

plot_missing(SEIFA_2016_Data) #missing data


#first join meshblock data (This will remove all not NSW)
nsw_sa2 <- SA2_Data %>%    ###mesh block data, might need to change file name
  
  filter(STATE_NAME_2016 == "New South Wales") %>% ####cloumn from mesh block data
  
 distinct(SA2_MAINCODE_2016, SA2_NAME_2016) ###columns in meshblock data#

#2. join employment data
SEIFA_EDA <- Employed_SA2 %>%
  
  left_join(SEIFA_2016_Data, by = c("SA2_CODE")) %>% 
  
  semi_join(SA2_Data, by = c("SA2_CODE" = "SA2_MAINCODE_2016")) %>% 
  
  select(-starts_with("PERC_"))


#3. Filter data for score
Score_SEIFA<- filter(SEIFA_EDA, SEIFA_MEASURE=="SCORE") ####for score so end up with 4 rows for each SA2
IEO_Score_SEIFA<- filter(Score_SEIFA, SEIFAINDEXTYPE=="IEO")
IER_Score_SEIFA<- filter(Score_SEIFA, SEIFAINDEXTYPE=="IER")
IRSAD_Score_SEIFA<-filter(Score_SEIFA, SEIFAINDEXTYPE=="IRSAD")
IRSD_Score_SEIFA<-filter(Score_SEIFA, SEIFAINDEXTYPE=="IRSD")


#4 do a plot unemployemnt = y seifa scor on x do 4 different plots for each seifa score
ggplot(IEO_Score_SEIFA, aes(x= obsValue, y= UNEMPLOYED))+geom_point() +
  labs(x= 'Observed Value', y='Unemployed', title = 'IEO Score V Unemployed in SA2')+
  geom_smooth(method="lm")
ggplot(IER_Score_SEIFA, aes(x= obsValue, y= UNEMPLOYED))+geom_point() +
  labs(x= 'Observed Value', y='Unemployed', title = 'IER Score V Unemployed in SA2')+
  geom_smooth(method="lm") #this is the only one that seemed to have any relationship.
ggplot(IRSAD_Score_SEIFA, aes(x= obsValue, y= UNEMPLOYED))+geom_point()+
  labs(x= 'Observed Value', y='Unemployed', title = 'IRSAD Score V Unemployed in SA2')+
  geom_smooth(method="lm")
ggplot(IRSD_Score_SEIFA, aes(x= obsValue, y= UNEMPLOYED))+geom_point()+
  labs(x= 'Observed Value', y='Unemployed', title = 'IRSD Score V Unemployed in SA2')+
  geom_smooth(method="lm")


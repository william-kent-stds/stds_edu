library(tidyverse)
library(data.table)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

## Read the raw data csv
raw_data <- read.csv("../../Raw Data/Data Files/ABS/Employed_SA2_2016.csv", quote = "\"")

head(raw_data)
str(raw_data)

# Clean the data - Band Dwelling Type and create percentages
clean_data <- raw_data %>% 
  select(SA2_CODE
         ,LFSP_C16
         ,obsValue) %>% 
  spread(LFSP_C16, obsValue) %>% 
  select(SA2_CODE
         ,LAB_FORCE = LF
         ,UNEMPLOYED = UEMP) %>% 
  mutate(PERC_UNEMPLOYED = UNEMPLOYED / LAB_FORCE)

# Write cleaned data set to csv
#getwd()
write_csv(clean_data, "../Data Files/ABS/Employed_SA2.csv")

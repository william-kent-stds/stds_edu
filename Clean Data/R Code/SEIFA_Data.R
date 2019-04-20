library(tidyverse)

# Set directory to my the location where this file is
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
#getwd()

seifa_data <- read_csv("../../Raw Data/Data Files/ABS/SEIFA_2016_Data.csv")

# Review data - AsGS_2016 field is an INT
head(seifa_data)

# Summarise the data - obsValue has 48 NA's but non of these have a SEIFA_MEASURE == SCORE
summary(seifa_data)
seifa_nas <- seifa_data %>% 
  filter(is.na(obsValue) == TRUE)
view(seifa_nas)

# Create a clean data set for use - only want high level scores and remove records with an obsValue of NA
clean_seifa_data <- 
seifa_data %>% 
  filter(SEIFA_MEASURE == "SCORE") %>% 
  select(SA2_CODE = ASGS_2016
         ,SEIFAINDEXTYPE
         ,obsValue) %>% 
  spread(SEIFAINDEXTYPE, obsValue) %>% 
  select(SA2_CODE
         ,SEIFA_Edu_Occ_Index = IEO
         ,SEIFA_Economic_Res_Index = IER
         ,SEIFA_Rel_SocioEco_Adv_Disadv_Index = IRSAD
         ,SEIFA_Rel_SocioEco_Disadv_Index = IRSD)

# Write Clean Data to disk
write_csv(clean_seifa_data, "../Data Files/ABS/SEIFA_2016_Data.csv")

# Check for duplicates - nope none, only 1 record per SA2
clean_seifa_data %>% 
  group_by(SA2_CODE) %>% 
  mutate(total = n()) %>% 
  filter(total > 1)
  


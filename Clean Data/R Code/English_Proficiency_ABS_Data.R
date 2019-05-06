library(tidyverse)
library(data.table)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

## Read the raw data csv
raw_data <- read.csv("../../Raw Data/Data Files/ABS/English_Proficiency_SA2_2016.csv", quote = "\"")

head(raw_data)
str(raw_data)

raw_data %>% 
  distinct(AGE_BAND)

# Stage data format - Band English Proficiency
working_data <- raw_data %>% 
  filter(ENG_PROFICIENCY != "Total") %>% 
  mutate(ENG_PROF_BAND = case_when(ENG_PROFICIENCY == "Speaks English only" ~ "ENG_ONLY",
                                   ENG_PROFICIENCY == "Speaks other language and speaks English: Very well" ~ "ENG_V_WELL",
                                   ENG_PROFICIENCY == "Speaks other language and speaks English: Well" ~ "ENG_WELL",
                                   ENG_PROFICIENCY == "Speaks other language and speaks English: Not well" ~ "ENG_NOT_WELL",
                                   TRUE ~ "ENG_UNKNOWN"),
         AGE_GROUP = case_when(AGE_BAND %in% c("0 - 4", "5 - 9", "10 - 14")  ~ "CHILD",
                               AGE_BAND %in% c("65 - 69","70 - 74","75 - 79","80 - 84","85 - 89","90 - 94","95 - 99","100 and over") ~ "RETIRED",
                               TRUE ~ "WORKING_AGE")) %>% 
  select(SA2_CODE
         ,ENG_PROF_BAND
         ,AGE_GROUP
         ,obsValue) %>% 
  group_by(SA2_CODE, ENG_PROF_BAND, AGE_GROUP) %>% 
  summarise(Total_Value = sum(obsValue)) 


# Get the different levels required/wanted
clean_data_0 <- working_data %>% 
  group_by(SA2_CODE, ENG_PROF_BAND) %>% 
  summarise(Total_Value = sum(Total_Value)) %>% 
  spread(ENG_PROF_BAND, Total_Value)

clean_data_1 <- working_data %>% 
  mutate(ENG_PROF_AGE_BAND = paste0(ENG_PROF_BAND,"_",AGE_GROUP)) %>% 
  group_by(SA2_CODE, ENG_PROF_AGE_BAND) %>% 
  summarise(Total_Value = sum(Total_Value)) %>% 
  spread(ENG_PROF_AGE_BAND, Total_Value)

# Combine into a single dataset
clean_data <- clean_data_0 %>%
  inner_join(clean_data_1, by = c("SA2_CODE")) %>% 
  mutate(PERC_ENG_ONLY = ENG_ONLY / (ENG_NOT_WELL + ENG_ONLY + ENG_UNKNOWN + ENG_V_WELL + ENG_WELL),
         PERC_ENG_NOT_WELL = ENG_NOT_WELL / (ENG_NOT_WELL + ENG_ONLY + ENG_UNKNOWN + ENG_V_WELL + ENG_WELL))

#glimpse(clean_data)
# Write cleaned data set to csv
#getwd()
write_csv(clean_data, "../Data Files/ABS/English_Proficiency_SA2.csv")

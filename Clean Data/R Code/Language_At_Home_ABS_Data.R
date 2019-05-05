library(tidyverse)
library(data.table)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

## Read the raw data csv
raw_data <- read.csv("../../Raw Data/Data Files/ABS/Language_at_Home_SA2_2016.csv", quote = "\"")

head(raw_data)
str(raw_data)

# Clean the data - Band Dwelling Type and create percentages
clean_data <- raw_data %>% 
  mutate(LANG_SPOKEN_GROUP = case_when(LANG_SPOKEN == "English" ~ "LANG_HOME_ENGLISH",
                                   LANG_GROUP_2 == "Northern European Languages" ~ "LANG_HOME_NEUROPE",
                                   LANG_GROUP_2 == "Southern European Languages" ~ "LANG_HOME_SEUROPE",
                                   LANG_GROUP_2 == "Eastern European Languages" ~ "LANG_HOME_EEUROPE",
                                   LANG_GROUP_2 == "Southwest and Central Asian Languages" ~ "LANG_HOME_SWASIA",
                                   LANG_GROUP_2 == "Southern Asian Languages" ~ "LANG_HOME_SASIA",
                                   LANG_GROUP_2 == "Eastern Asian Languages" ~ "LANG_HOME_EASIA",
                                   LANG_GROUP_2 == "Australian Indigenous Languages" ~ "LANG_HOME_INDIGENOUS",
                                   TRUE ~ "LANG_HOME_OTHER")) %>% 
  select(SA2_CODE
         ,LANG_SPOKEN_GROUP
         ,obsValue) %>% 
  group_by(SA2_CODE, LANG_SPOKEN_GROUP) %>% 
  summarise(Total_Value = sum(obsValue)) %>% 
  spread(LANG_SPOKEN_GROUP, Total_Value) %>% 
  mutate(PERC_LANG_HOME_ENGLISH = LANG_HOME_ENGLISH / (LANG_HOME_ENGLISH + LANG_HOME_NEUROPE + LANG_HOME_SEUROPE + LANG_HOME_EEUROPE +
                                                         LANG_HOME_SWASIA + LANG_HOME_SASIA + LANG_HOME_EASIA + LANG_HOME_INDIGENOUS + LANG_HOME_OTHER))

# Write cleaned data set to csv
#getwd()
write_csv(clean_data, "../Data Files/ABS/Language_at_Home_SA2.csv")

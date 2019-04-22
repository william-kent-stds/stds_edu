library(tidyverse)
library(data.table)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

## Read the raw data csv
raw_data <- read.csv("../../Raw Data/Data Files/ABS/Arrival_Year_SA2_2016.csv", quote = "\"")

head(raw_data)
str(raw_data)

wkg_data <- raw_data %>% 
  mutate(ARR_BAND = recode(ARR_BAND, "Arrived 1 Jan 2016 - 9 August 2016" = "2016")) %>% 
  filter(!ARR_BAND %in% c("Total","Not stated")) %>%  # remove combined value - not sure it's relevant, and not stated
  mutate(START_RANGE = str_sub(str_replace(ARR_BAND, "Arrived ",""), start = 1, end = 4)
         ,END_RANGE = str_sub(ARR_BAND, start = -4, end = -1)
         ,ARR_BAND = paste0(START_RANGE,"-",END_RANGE))

clean_data_1 <- wkg_data  %>% 
  group_by(SA2_CODE, ARR_BAND) %>% 
  summarise(Total_Value = sum(obsValue)) %>% 
  spread(ARR_BAND, Total_Value)

clean_data_2 <- wkg_data %>% 
  mutate(TIME_BAND = case_when(ARR_BAND %in% c("1900-1945", "1946-1955", "1956-1965") ~ "50+ years",
                               ARR_BAND %in% c("1966-1975", "1976-1985", "1986-1995") ~ "20-50 years",
                               TRUE ~ "0-20 year")) %>% 
  group_by(SA2_CODE, TIME_BAND) %>% 
  summarise(Total_Value = sum(obsValue)) %>% 
  spread(TIME_BAND, Total_Value)

clean_data <- clean_data_1 %>% 
  inner_join(clean_data_2, by = c("SA2_CODE"))

write_csv(clean_data, "../Data Files/ABS/Arrival_Year_SA2.csv")

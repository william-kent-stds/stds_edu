library(tidyverse)
library(data.table)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

## Read the raw data csv
raw_data <- read.csv("../../Raw Data/Data Files/ABS/Household_Composition_SA2_2016.csv", quote = "\"")

head(raw_data)
str(raw_data)

wkg_data <- raw_data %>% 
  #mutate(ARR_BAND = recode(ARR_BAND, "Arrived 1 Jan 2016 - 9 August 2016" = "2016")) %>% 
  mutate(HHOLD_GROUPING = case_when(HHOLD_TYPE == "Total Households" ~ "TOTAL",
                                    HHOLD_GROUP == "One family household" ~ "HHOLD_FAM_ONE",
                                    HHOLD_GROUP == "Multiple family household" ~ "HHOLD_FAM_MULTI",
                                    HHOLD_GROUP == "Non-family household" ~ "HHOLD_NON_FAM",
                                    TRUE ~ as.character(HHOLD_GROUP)),
         TOTAL_BAND = case_when(TOTAL_IN_HOUSE %in% c("One person", "Two persons") ~ "HHOLD_SIZE_1_2",
                                TOTAL_IN_HOUSE %in% c("Three persons", "Four persons", "Five persons") ~ "HHOLD_SIZE_3_5",
                                TRUE ~ "HHOLD_SIZE_6_")) %>% 
  select(SA2_CODE
         ,HHOLD_GROUPING
         ,TOTAL_BAND
         ,obsValue)

clean_data_1 <- wkg_data %>% 
  group_by(SA2_CODE, HHOLD_GROUPING) %>% 
  summarise(Total_Value = sum(obsValue)) %>% 
  spread(HHOLD_GROUPING, Total_Value) %>% 
  mutate(PERC_HHOLD_FAM_MULTI = HHOLD_FAM_MULTI / TOTAL,
         PERC_HHOLD_FAM_ONE = HHOLD_FAM_ONE / TOTAL,
         PERC_HHOLD_NON_FAM = HHOLD_NON_FAM / TOTAL)

clean_data_2 <- wkg_data %>% 
  group_by(SA2_CODE, TOTAL_BAND) %>% 
  summarise(Total_Value = sum(obsValue)) %>% 
  spread(TOTAL_BAND, Total_Value) %>% 
  mutate(PERC_HHOLD_SIZE_1_2 = HHOLD_SIZE_1_2 / (HHOLD_SIZE_1_2 + HHOLD_SIZE_3_5 + HHOLD_SIZE_6_),
         PERC_HHOLD_SIZE_3_5 = HHOLD_SIZE_3_5 / (HHOLD_SIZE_1_2 + HHOLD_SIZE_3_5 + HHOLD_SIZE_6_),
         PERC_HHOLD_SIZE_6_ = HHOLD_SIZE_6_ / (HHOLD_SIZE_1_2 + HHOLD_SIZE_3_5 + HHOLD_SIZE_6_))

clean_data <- clean_data_1 %>% 
  inner_join(clean_data_2, by = c("SA2_CODE"))

write_csv(clean_data, "../Data Files/ABS/HouseHold_Composition_SA2.csv")

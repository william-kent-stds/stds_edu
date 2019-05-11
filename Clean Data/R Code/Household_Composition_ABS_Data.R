library(tidyverse)
library(data.table)
library(janitor)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

## Read the raw data csv
raw_data <- read.csv("../../Raw Data/Data Files/ABS/Household_Composition_SA2_2016.csv", quote = "\"")

head(raw_data)
str(raw_data)

wkg_data <- raw_data %>% 
  #mutate(ARR_BAND = recode(ARR_BAND, "Arrived 1 Jan 2016 - 9 August 2016" = "2016")) %>% 
  mutate(HHOLD_GROUPING = case_when(HHOLD_TYPE == "Total Households" ~ "TOTAL_HHOLD",
                                    HHOLD_GROUP == "One family household" ~ "HHOLD_FAM_ONE",
                                    HHOLD_GROUP == "Multiple family household" ~ "HHOLD_FAM_MULTI",
                                    HHOLD_GROUP == "Non-family household" ~ "HHOLD_NON_FAM",
                                    TRUE ~ as.character(HHOLD_GROUP)),
         TOTAL_BAND = case_when(TOTAL_IN_HOUSE %in% c("One person", "Two persons") ~ "HHOLD_SIZE_1_2",
                                TOTAL_IN_HOUSE %in% c("Three persons", "Four persons", "Five persons") ~ "HHOLD_SIZE_3_5",
                                TOTAL_IN_HOUSE %in% c("Six persons", "Seven persons", "Eight or more persons") ~ "HHOLD_SIZE_OVER_5",
                                TOTAL_IN_HOUSE == "Total" ~ "TOTAL_FOR_IN_HOUSE")) %>% 
  select(SA2_CODE, HHOLD_GROUPING, TOTAL_BAND, TOTAL_IN_HOUSE, obsValue)

clean_data_1 <- wkg_data %>% 
  group_by(SA2_CODE, HHOLD_GROUPING) %>% 
  summarise(Total_Value = sum(obsValue)) %>% 
  spread(HHOLD_GROUPING, Total_Value) %>% 
  mutate(PERC_HHOLD_FAM_MULTI = HHOLD_FAM_MULTI / TOTAL_HHOLD,
         PERC_HHOLD_FAM_ONE = HHOLD_FAM_ONE / TOTAL_HHOLD,
         PERC_HHOLD_NON_FAM = HHOLD_NON_FAM / TOTAL_HHOLD)

clean_data_2 <- wkg_data %>% 
  group_by(SA2_CODE, TOTAL_BAND) %>% 
  summarise(Total_Value = sum(obsValue)) %>% 
  spread(TOTAL_BAND, Total_Value) %>% 
  mutate(PERC_HHOLD_SIZE_1_2 = HHOLD_SIZE_1_2 / (HHOLD_SIZE_1_2 + HHOLD_SIZE_3_5 + HHOLD_SIZE_OVER_5),
         PERC_HHOLD_SIZE_3_5 = HHOLD_SIZE_3_5 / (HHOLD_SIZE_1_2 + HHOLD_SIZE_3_5 + HHOLD_SIZE_OVER_5),
         PERC_HHOLD_SIZE_OVER_5 = HHOLD_SIZE_OVER_5 / (HHOLD_SIZE_1_2 + HHOLD_SIZE_3_5 + HHOLD_SIZE_OVER_5))

clean_data_3 <- wkg_data %>% 
  group_by(SA2_CODE, TOTAL_IN_HOUSE) %>% 
  summarise(Total_Value = sum(obsValue)) %>% 
  spread(TOTAL_IN_HOUSE, Total_Value) %>% 
  ungroup() %>% 
  clean_names() %>% 
  select(sa2_code, total, everything()) %>% 
  mutate(total = eight_or_more_persons + five_persons + four_persons + one_person + seven_persons + six_persons + three_persons + two_persons,
         perc_hh_1 = one_person / total,
         perc_hh_2 = two_persons / total,
         perc_hh_3 = three_persons / total,
         perc_hh_4 = four_persons / total,
         perc_hh_5 = five_persons / total,
         perc_hh_6 = six_persons / total,
         perc_hh_7 = seven_persons / total,
         perc_hh_8_more = eight_or_more_persons / total)

clean_data <- clean_data_1 %>% 
  inner_join(clean_data_2, by = c("SA2_CODE"))

clean_data <- clean_data %>% inner_join(clean_data_3, by = c("SA2_CODE" = "sa2_code"))

write_csv(clean_data, "../Data Files/ABS/HouseHold_Composition_SA2.csv")

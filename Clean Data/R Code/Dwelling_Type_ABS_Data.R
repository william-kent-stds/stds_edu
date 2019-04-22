library(tidyverse)
library(data.table)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

## Read the raw data csv
raw_data <- read.csv("../../Raw Data/Data Files/ABS/Dwelling_Type_SA2_2016.csv", quote = "\"")

head(raw_data)
str(raw_data)

clean_data <- raw_data %>% 
  #mutate(ARR_BAND = recode(ARR_BAND, "Arrived 1 Jan 2016 - 9 August 2016" = "2016")) %>% 
  mutate(DWELLING_BAND = case_when(DWELLING_TYPE == "Total" ~ "TOTAL",
                                   DWELLING_TYPE == "Separate house " ~ "DWELLING_HOUSE",
                                   DWELLING_TYPE %like% "Semi-detached, row or terrace house" ~ "DWELLING_SEMI",
                                   DWELLING_TYPE %like% "Flat or apartment" ~ "DWELLING_FLAT",
                                   DWELLING_TYPE %like% "House or flat attached to a shop" ~ "DWELLING_FLAT",
                                   TRUE ~ "DWELLING_OTHER")) %>% 
  select(SA2_CODE
         ,DWELLING_BAND
         ,obsValue) %>% 
  group_by(SA2_CODE, DWELLING_BAND) %>% 
  summarise(Total_Value = sum(obsValue)) %>% 
  spread(DWELLING_BAND, Total_Value) %>% 
  mutate(PERC_DWELLING_HOUSE = DWELLING_HOUSE / TOTAL,
         PERC_DWELLING_FLAT = DWELLING_FLAT / TOTAL,
         PERC_DWELLING_SEMI = DWELLING_SEMI / TOTAL,
         PERC_DWELLING_OTHER = DWELLING_OTHER / TOTAL)

#getwd()
write_csv(clean_data, "../Data Files/ABS/Dwelling_Type_SA2.csv")

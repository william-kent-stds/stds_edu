library(tidyverse)
library(data.table)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# read_csv seems to have an issue with the comma in the Parents Place Of Birth using read.csv instead
#raw_data <- read_csv("../../Raw Data/Data Files/ABS/Country_of_Birth_SA2_2016.csv")
raw_data <- read.csv("../../Raw Data/Data Files/ABS/Country_of_Birth_SA2_2016.csv", quote = "\"")

head(raw_data)

wkg_data <- raw_data %>% 
  filter(PARENT_CTRY != "<NA>", # remove where no parent country
         REGION != "<NA>") %>%  # remove where no region (these are not stated, at sea, or inadequately described)
  mutate(AUST_BORN = case_when(PARENT_CTRY == "Australia (includes External Territories)" ~ "Australia",
                               TRUE ~ "Overseas"))

clean_data_1 <- wkg_data %>% 
  group_by(SA2_CODE, AUST_BORN) %>% 
  summarise(Total_Value = sum(obsValue)) %>% 
  spread(AUST_BORN, Total_Value) %>% 
  mutate(PERC_BORN_OVERSEAS = Overseas / (Australia + Overseas))

clean_data_2 <- wkg_data %>% 
  mutate(REGION_MOD = case_when(AUST_BORN == "Australia" ~ "Australia",
                                TRUE ~ as.character(REGION))) %>% 
  group_by(SA2_CODE, REGION_MOD) %>% 
  summarise(Total_Value = sum(obsValue)) %>% 
  spread(REGION_MOD, Total_Value) %>% 
  mutate(PERC_BORN_AMERCIAS = Americas / c(Americas + Australia + `North Africa and the Middle East` + `NorthEast Asia` +
                                             `NorthWest Europe` + `Oceania And Antarctica` + `SouthEast Asia` +
                                             `Southern and Central Asia` + `Southern and Eastern Europe` + `SubSaharan Africa`),
         PERC_BORN_NA_ME = `North Africa and the Middle East` / c(Americas + Australia + `North Africa and the Middle East` +
                                          `NorthEast Asia` +`NorthWest Europe` + `Oceania And Antarctica` + `SouthEast Asia` +
                                          `Southern and Central Asia` + `Southern and Eastern Europe` + `SubSaharan Africa`),
         PERC_BORN_NE_ASIA = `NorthEast Asia` / c(Americas + Australia + `North Africa and the Middle East` +
                                          `NorthEast Asia` +`NorthWest Europe` + `Oceania And Antarctica` + `SouthEast Asia` +
                                          `Southern and Central Asia` + `Southern and Eastern Europe` + `SubSaharan Africa`),
         PERC_BORN_NW_EUROPE = `NorthWest Europe` / c(Americas + Australia + `North Africa and the Middle East` +
                                          `NorthEast Asia` +`NorthWest Europe` + `Oceania And Antarctica` + `SouthEast Asia` +
                                          `Southern and Central Asia` + `Southern and Eastern Europe` + `SubSaharan Africa`),
         PERC_BORN_OCA = `Oceania And Antarctica` / c(Americas + Australia + `North Africa and the Middle East` +
                                          `NorthEast Asia` +`NorthWest Europe` + `Oceania And Antarctica` + `SouthEast Asia` +
                                          `Southern and Central Asia` + `Southern and Eastern Europe` + `SubSaharan Africa`),
         PERC_BORN_SE_ASIA = `SouthEast Asia` / c(Americas + Australia + `North Africa and the Middle East` +
                                          `NorthEast Asia` +`NorthWest Europe` + `Oceania And Antarctica` + `SouthEast Asia` +
                                          `Southern and Central Asia` + `Southern and Eastern Europe` + `SubSaharan Africa`),
         PERC_BORN_SC_ASIA= `Southern and Central Asia` / c(Americas + Australia + `North Africa and the Middle East` +
                                          `NorthEast Asia` +`NorthWest Europe` + `Oceania And Antarctica` + `SouthEast Asia` +
                                          `Southern and Central Asia` + `Southern and Eastern Europe` + `SubSaharan Africa`),
         PERC_BORN_SE_EUROPE = `Southern and Eastern Europe` / c(Americas + Australia + `North Africa and the Middle East` +
                                          `NorthEast Asia` +`NorthWest Europe` + `Oceania And Antarctica` + `SouthEast Asia` +
                                          `Southern and Central Asia` + `Southern and Eastern Europe` + `SubSaharan Africa`),
         PERC_BORN_SS_AFRICA = `SubSaharan Africa` / c(Americas + Australia + `North Africa and the Middle East` +
                                          `NorthEast Asia` +`NorthWest Europe` + `Oceania And Antarctica` + `SouthEast Asia` +
                                          `Southern and Central Asia` + `Southern and Eastern Europe` + `SubSaharan Africa`)
         )

clean_data <- clean_data_1 %>% 
  select(SA2_CODE
        ,BORN_OVERSEAS = Overseas
        ,PERC_BORN_OVERSEAS) %>% 
  inner_join(clean_data_2, by = "SA2_CODE")

write_csv(clean_data, "../Data Files/ABS/Place_Of_Birth_SA2.csv")

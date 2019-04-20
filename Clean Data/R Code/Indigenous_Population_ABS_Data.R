library(tidyverse)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

raw_data <- read_csv("../../Raw Data/Data Files/ABS/Indigenous_Population_SA2_2016.csv")

# Keep only indigenous population metrics at the person level(?), Band ages and spread for 1 SA3 per observation
clean_data <- raw_data %>% 
  filter(!INGP_VALUE %in% c("Non-Indigenous","Not stated"),
         GENDER == "Persons") %>% #remove non-indigenous population
  mutate(AGE_GROUP = case_when(AGE_BAND %in% c("0 - 4", "5 - 9", "10 - 14") ~ "Under 15",
                               AGE_BAND %in% c("65 - 69", "70 - 74", "75 - 79", "80 - 84", "85 - 89", "90 - 94", "95 - 99", "100 and over") ~ "Over 65",
                               TRUE ~ "15 - 65")) %>% 
  unite(INGP_GROUP, c("INGP_VALUE", "GENDER","AGE_GROUP")) %>% 
  group_by(SA2_CODE, INGP_GROUP) %>% 
  summarise(Total_Value = sum(obsValue)) %>% 
  spread(INGP_GROUP, Total_Value)

# Add a total indigenous population value
clean_data <- cbind(clean_data, total_indigenous_population = rowSums(clean_data[-1]))

write_csv(clean_data, "../Data Files/ABS/Indigenous_Population_SA2.csv")
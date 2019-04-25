library(tidyverse)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Read csv's
dwelling_type <- read_csv("../../Clean Data/Data Files/ABS/Dwelling_Type_SA2.csv")
hh_composition <- read_csv("../../Clean Data/Data Files/ABS/HouseHold_Composition_SA2.csv")
place_of_birth <- read_csv("../../Clean Data/Data Files/ABS/Place_Of_Birth_SA2.csv")
seifa <- read_csv("../../Clean Data/Data Files/ABS/SEIFA_2016_Data.csv")
mesh_blocks <- read_csv("../../Raw Data/Data Files/ABS/Mesh_Blocks/MB_2016_NSW.csv")

# Get mesh block data at SA2 level
sa2_data <- mesh_blocks %>% 
  distinct(SA2_MAINCODE_2016, SA2_NAME_2016, STATE_CODE_2016, STATE_NAME_2016)

# Join Datasets together
model_data <- dwelling_type %>%
  inner_join(hh_composition, by = c("SA2_CODE")) %>% 
  inner_join(place_of_birth, by = c("SA2_CODE")) %>% 
  inner_join(seifa, by = c("SA2_CODE")) %>% 
  semi_join(sa2_data, by = c("SA2_CODE" = "SA2_MAINCODE_2016")) %>% 
  select(-starts_with("PERC_"))
library(readxl)
library(tidyverse)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

raw_data <- read_excel("../../Raw Data/Data Files/NSWGovt/LgaRankings_27_Offences.xlsx", sheet = "Assault - domestic violence",
                       range = "A6:P137")

# Get Local Government Area to Mesh Block Data
lga_data_raw <- read_csv("../../Raw Data/Data Files/ABS/Mesh_Blocks/LGA_2016_NSW.csv")

# Data cleaninsing required - remove (A), (C), (NSW) etc and rename some merged/changed LGA's
lga_data <- lga_data_raw %>% 
  filter(LGA_NAME_2016 != "No usual address (NSW)") %>% 
  mutate(LGA = gsub('* \\([A-Z]+\\)',"", LGA_NAME_2016)) %>% 
  select(LGA
         ,MB_CODE = MB_CODE_2016) %>% 
  mutate(LGA = replace(LGA, LGA == "Botany Bay"|LGA == "Rockdale", "Bayside")) %>% 
  mutate(LGA = replace(LGA, LGA == "Western Plains Regional", "Dubbo Regional")) %>% 
  mutate(LGA = replace(LGA, LGA == "Unincorporated NSW", "Unincorporated Far West")) %>%
  mutate(LGA = replace(LGA, LGA == "Gundagai", "Cootamundra-Gundagai"))

# Get Mesh Block to SA2 Data
mb_data <- read_csv("../../Raw Data/Data Files/ABS/Mesh_Blocks/MB_2016_NSW.csv")

clean_data <- raw_data %>% 
  select(LGA = `Local Government Area`
         ,Total_2016 = Total__2
         ,Rate_Per_100k_2016 = `Rate per 100,000 population__2`
         ,Rank_2016 = Rank__2) %>% 
  filter(LGA != "Total NSW*") %>% 
  transform(Rate_Per_100k_2016 = as.numeric(Rate_Per_100k_2016)
            ,Rank_2016 = as.integer(Rank_2016)) %>% 
  replace_na(list(Total_2016 = 0
             ,Rate_Per_100k_2016 = 0
             ,Rank_2016 = 0)) %>% 
  left_join(lga_data, by = c("LGA")) %>% 
  left_join(mb_data, by = c("MB_CODE" = "MB_CODE_2016")) %>% 
  distinct(LGA
         ,SA2_CODE = SA2_MAINCODE_2016
         ,Total_2016
         ,Rate_Per_100k_2016
         ,Rank_2016)

clean_data %>% 
  group_by(SA2_CODE) %>% 
  summarise(cnt = n())

clean_data %>% 
  filter(SA2_CODE == 101021011)

# Create output folder if it doesn't exist
if (!dir.exists("../Data Files/NSWGovt/")) {
  dir.create("../Data Files/NSWGovt/")
}

write.csv(clean_data, "../Data Files/NSWGovt/Domestic_Violence_Offences_LGA.csv", row.names = FALSE)

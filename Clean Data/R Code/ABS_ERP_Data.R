library(readr)
library(dplyr)
library(janitor)

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

erp <- read_csv("../../Raw Data/Data Files/ABS/ERP/ABS_ERP_ASGS_24042019155213908.csv")

erp <- erp %>% 
  select(-c("MEASURE", "Measure", "SEX_ABS", "AGE", "FREQUENCY", "Frequency", 
            "TIME", "Flag Codes", "Flags", "REGIONTYPE", "Region Type"))

erp <- erp %>% 
  rename(SA2_code = ASGS_2011) %>% 
  clean_names() %>% 
  filter(age != "All ages")

write_csv(erp, "../Data Files/ABS/ERP_SA2.csv")

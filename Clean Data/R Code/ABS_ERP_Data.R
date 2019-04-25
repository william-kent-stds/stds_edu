library(tidyverse)
library(janitor)

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

erp <- read_csv("../../Raw Data/Data Files/ABS/ERP/ABS_ERP_ASGS2016_25042019132433480.csv")

names(erp)
erp <- erp %>% 
  select(-c("MEASURE", "Measure", "SEX_ABS", "AGE", "FREQUENCY", "Frequency", 
            "TIME", "Flag Codes", "Flags", "REGIONTYPE", "Geography Level"))

erp <- erp %>% 
  rename(sa2_code = ASGS_2016) %>% 
  clean_names()

erp_by_sex <- erp %>%
  group_by(sa2_code, sex) %>%
  summarise(total_value = sum(value)) %>% 
  spread(sex, total_value) %>% 
  clean_names()

erp_by_age <- erp %>%
  group_by(sa2_code, age) %>%
  summarise(total_value = sum(value)) %>% 
  spread(age, total_value) %>% 
  clean_names()

erp <- erp_by_sex %>% left_join(erp_by_age)

write_csv(erp, "../Data Files/ABS/ERP_SA2_2016.csv")

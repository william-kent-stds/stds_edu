library(tidyverse)
library(data.table)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

## Read the raw data csv
raw_data <- read.csv("../Data Files/ABS/Level_Of_Education_SA2_2016.csv", quote = "\"")

head(raw_data)
str(raw_data)

clean_data <- raw_data %>% 
  group_by(Education.Level, ASGS_2016) %>% 
  summarise(TOTAL = sum(obsValue)) %>% 
  spread(Education.Level, TOTAL) %>% 
  mutate(EDU_CERT_I_II = `Certificate I & II Level`,
         EDU_CERT_III_IV = `Certificate III & IV Level`,
         EDU_CERT = `Certificate Level` + `Certificate Level, nfd`,
         EDU_CERT_ALL = `Certificate I & II Level` + `Certificate III & IV Level` + `Certificate Level` + `Certificate Level, nfd`,
         EDU_GRAD_DIP_CERT = `Graduate Diploma and Graduate Certificate Level`,
         EDU_POSTGRAD_DEGREE = `Postgraduate Degree Level`,
         EDU_POSTGRAD = `Graduate Diploma and Graduate Certificate Level` + `Postgraduate Degree Level`,
         EDU_OTHER = `Level of education inadequately described` + `Level of education not stated`) %>% 
  select(SA2_CODE = ASGS_2016
         ,EDU_DIPLOMA = `Advanced Diploma and Diploma Level`
         ,EDU_BACHELOR = `Bachelor Degree Level`
         ,EDU_CERT_I_II
         ,EDU_CERT_III_IV
         ,EDU_CERT
         ,EDU_CERT_ALL
         ,EDU_GRAD_DIP_CERT
         ,EDU_POSTGRAD_DEGREE
         ,EDU_POSTGRAD
         ,EDU_OTHER)

glimpse(clean_data)

write_csv(clean_data, "../Data Files/ABS/Education_SA2.csv")
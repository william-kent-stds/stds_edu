library(rsdmx)
library(readr)
library(tidyverse)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# If the Level of Education File doesn't exist we'll need to download it from the ABS and save it as a csv, otherwise do nothing.
if (!file.exists("../Data Files/ABS/Lvl_Of_Education.csv")) {
  # readSDMX can create url's to read data from registered providers - fortunately the ABS is registered so the url can be created for us.
  data <- as.data.frame(readSDMX(providerId = "ABS", resource = "data", flowRef = "ABS_C16_G46_SA", key.mode = "SDMX", start = 2016, end = 2016))
  write_csv(data, "../Data Files/ABS/Lvl_Of_Education.csv", col_names = TRUE)
} else {
  data <- read_csv("../Data Files/ABS/Lvl_Of_Education.csv", col_names = TRUE)
}

## Retrieve Metadata to help with decoding values.
dataStructure <- readSDMX("http://stat.data.abs.gov.au/restsdmx/sdmx.ashx/GetDataStructure/ABS_C16_G46_SA")

concepts <- as.data.frame(slot(dataStructure, "concepts"))
codeList <- slot(dataStructure, "codelists")

# What does the Age Banding mean?
ageValues <- as.data.frame(slot(dataStructure, "codelists"), codelistId = "CL_ABS_C16_G46_SA_AGE")

# What do the Gender codes mean? - Note Persons is a rollup of Male and Female
genderValues <- as.data.frame(slot(dataStructure, "codelists"), codelistId = "CL_ABS_C16_G46_SA_SEX_ABS")
genderValues <- transform(genderValues, id = as.numeric(id))

# What do the Qualification codes mean? - Note Certificate Level is a roll up of the 3 certificate levels
EduLevel <- as.data.frame(slot(dataStructure, "codelists"), codelistId = "CL_ABS_C16_G46_SA_QALLP_C16")

# What do the State codes mean? - NSW = 1, 0 = Australia and is a roll up of the States
stateValues <- as.data.frame(slot(dataStructure, "codelists"), codelistId = "CL_ABS_C16_G46_SA_STATE")
stateValues <- transform(stateValues, id = as.numeric(id))

# What do the Region Types codes mean? - NSW = 1
regionTypeValues <- as.data.frame(slot(dataStructure, "codelists"), codelistId = "CL_ABS_C16_G46_SA_REGIONTYPE")


sa2_edu_level <- data %>% 
  filter(AGE != "TOT"
         ,SEX_ABS != 3
         ,QALLP_C16 != "TOT"
         ,REGIONTYPE == "SA2") %>% 
  inner_join(genderValues, by = c("SEX_ABS" = "id")) %>% 
  inner_join(stateValues, by = c("STATE" = "id")) %>% 
  inner_join(EduLevel, by = c("QALLP_C16" = "id")) %>% 
  select(AGE
        ,"Gender" = label.en.x
        ,"Education Level" = label.en
        ,"State" = label.en.y
        ,ASGS_2016
        ,obsTime
        ,obsValue)

if (!dir.exists("../../Clean Data/Data Files/ABS")) {
  dir.create("../../Clean Data/Data Files/ABS")
}

write_csv(sa2_edu_level, "../../Clean Data/Data Files/ABS/Level_Of_Education_SA2_2016.csv")

#################
## Download at the LGA level as well. May be better than SA2
#################
# If the Level of Education File for LGA doesn't exist we'll need to download it from the ABS and save it as a csv, otherwise do nothing.
if (!file.exists("../Data Files/ABS/Lvl_Of_Education_LGA.csv")) {
  # readSDMX can create url's to read data from registered providers - fortunately the ABS is registered so the url can be created for us.
  lga_data <- as.data.frame(readSDMX(providerId = "ABS", resource = "data", flowRef = "ABS_C16_G46_LGA", key.mode = "SDMX", start = 2016, end = 2016))
  write_csv(data, "../Data Files/ABS/Lvl_Of_Education_LGA.csv", col_names = TRUE)
} else {
  lga_data <- read_csv("../Data Files/ABS/Lvl_Of_Education_LGA.csv", col_names = TRUE)
}

lga_dataStructure <- readSDMX("http://stat.data.abs.gov.au/restsdmx/sdmx.ashx/GetDataStructure/ABS_C16_G46_LGA")

lga_concepts <- as.data.frame(slot(lga_dataStructure, "concepts"))
lga_codeList <- slot(lga_dataStructure, "codelists")

# What does the Age Banding mean?
lga_ageValues <- as.data.frame(slot(lga_dataStructure, "codelists"), codelistId = "CL_ABS_C16_G46_LGA_AGE")

# What do the Gender codes mean? - Note Persons is a rollup of Male and Female
lga_genderValues <- as.data.frame(slot(lga_dataStructure, "codelists"), codelistId = "CL_ABS_C16_G46_LGA_SEX_ABS")
lga_genderValues <- transform(lga_genderValues, id = as.numeric(id))

# What do the Qualification codes mean? - Note Certificate Level is a roll up of the 3 certificate levels
lga_EduLevel <- as.data.frame(slot(lga_dataStructure, "codelists"), codelistId = "CL_ABS_C16_G46_LGA_QALLP_C16")

# What do the State codes mean? - NSW = 1, 0 = Australia and is a roll up of the States
lga_stateValues <- as.data.frame(slot(lga_dataStructure, "codelists"), codelistId = "CL_ABS_C16_G46_LGA_STATE")
lga_stateValues <- transform(lga_stateValues, id = as.numeric(id))

# What do the Region Types codes mean? - NSW = 1
lga_regionTypeValues <- as.data.frame(slot(lga_dataStructure, "codelists"), codelistId = "CL_ABS_C16_G46_LGA_REGIONTYPE")

lga_edu_level <- lga_data %>% 
  filter(AGE != "TOT"
         ,SEX_ABS != 3
         ,QALLP_C16 != "TOT"
         ,REGIONTYPE == "LGA2016") %>% 
  inner_join(lga_genderValues, by = c("SEX_ABS" = "id")) %>% 
  inner_join(lga_stateValues, by = c("STATE" = "id")) %>% 
  inner_join(lga_EduLevel, by = c("QALLP_C16" = "id")) %>% 
  select(AGE
         ,"Gender" = label.en.x
         ,"Education Level" = label.en
         ,"State" = label.en.y
         ,LGA_2016
         ,obsTime
         ,obsValue)

if (!dir.exists("../../Clean Data/Data Files/ABS")) {
  dir.create("../../Clean Data/Data Files/ABS")
}

write_csv(lga_edu_level, "../../Clean Data/Data Files/ABS/Level_Of_Education_LGA_2016.csv")

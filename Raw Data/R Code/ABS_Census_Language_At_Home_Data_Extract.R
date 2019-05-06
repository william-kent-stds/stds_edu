library(rsdmx)
library(tidyverse)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Check to make sure the ABS folder is available and, if not, create it. Saving file to right location will fail without the required folder
if (!dir.exists("../Data Files/ABS")) {
  create.dir("../Data Files/ABS")
}

# Get the ABS Census 2016 Data on Language Spoken At Home
lang_home_data <- as.data.frame(readSDMX(providerId = "ABS", resource = "data", flowRef = "ABS_C16_T09_SA",
                                         key = list("3",NULL,"1","SA2"),
                                         #key.mode = "SDMX",
                                         start = 2016, end = 2016))
summary(lang_home_data)
head(lang_home_data)
str(lang_home_data)

# MISSING 9 SA2 Codes
lang_home_data %>% 
  distinct(ASGS_2016)

# Distinct dimension values
lang_home_data %>% 
  distinct(LANP_2016)

## Retrieve Metadata to help with decoding values.
ds_url = "http://stat.data.abs.gov.au/restsdmx/sdmx.ashx/GetDataStructure/ABS_C16_T09_SA"
dataStructure <- readSDMX(ds_url)
codeList <- slot(dataStructure, "codelists")

# Language Spoken
lang_spoken <- as.data.frame(codeList, codelistId = "CL_ABS_C16_T09_SA_LANP_2016")

# Get Required Data and put in meaningful descriptions
lang_home_final <- lang_home_data %>% 
  inner_join(lang_spoken, by = c("LANP_2016" = "id")) %>% 
  inner_join(lang_spoken, by = c("parentCode" = "id")) %>% 
  inner_join(lang_spoken, by = c("parentCode.y" = "id")) %>% 
  select(SA2_CODE = ASGS_2016
         ,LANG_SPOKEN = label.en.x
         ,LANG_GROUP_1 = label.en.y
         ,LANG_GROUP_2 = label.en
         ,obsValue)

#getwd()
write_csv(lang_home_final, "../Data Files/ABS/Language_at_Home_SA2_2016.csv")

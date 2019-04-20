library(rsdmx)
#library(readr)
library(tidyverse)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Check to make sure the ABS folder is available and, if not, create it. Saving file to right location will fail without the required folder
if (!dir.exists("../Data Files/ABS")) {
  # readSDMX can create url's to read data from registered providers - fortunately the ABS is registered so the url can be created for us.
  create.dir("../Data Files/ABS")
}

# Get the ABS Census 2016 Data on Indigenous populations 
aboriginal_data <- as.data.frame(readSDMX(providerId = "ABS", resource = "data", flowRef = "ABS_C16_T04_SA", key.mode = "SDMX", start = 2016, end = 2016))
summary(aboriginal_data)
head(aboriginal_data)

## Retrieve Metadata to help with decoding values.
dataStructure <- readSDMX("http://stat.data.abs.gov.au/restsdmx/sdmx.ashx/GetDataStructure/ABS_C16_T04_SA")

#concepts <- as.data.frame(slot(dataStructure, "concepts"))
codeList <- slot(dataStructure, "codelists")

# Indigenous Status
indig_pop_status <- as.data.frame(slot(dataStructure, "codelists"), codelistId = "CL_ABS_C16_T04_SA_INGP_2016")

# Age
age_values <- as.data.frame(slot(dataStructure, "codelists"), codelistId = "CL_ABS_C16_T04_SA_AGE")

# Gender
gender_values <- as.data.frame(slot(dataStructure, "codelists"), codelistId = "CL_ABS_C16_T04_SA_SEX_ABS")

# Get Required Data and put in meaningful descriptions
aboriginal_data_final <- aboriginal_data %>% 
  filter(REGIONTYPE == "SA2"
         ,INGP_2016 != "TOT") %>% 
  inner_join(indig_pop_status, by = c("INGP_2016" = "id")) %>% 
  inner_join(gender_values, by = c("SEX_ABS" = "id")) %>% 
  inner_join(age_values, by = c("AGE" = "id")) %>% 
  select(SA2_CODE = ASGS_2016
        ,INGP_VALUE = label.en.x
        ,GENDER = label.en.y
        ,AGE_BAND = label.en
        ,obsValue)

write_csv(aboriginal_data_final, "../Data Files/ABS/Indigenous_Population_SA2_2016.csv")
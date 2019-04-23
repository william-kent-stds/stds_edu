library(rsdmx)
library(tidyverse)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Check to make sure the ABS folder is available and, if not, create it. Saving file to right location will fail without the required folder
if (!dir.exists("../Data Files/ABS")) {
  create.dir("../Data Files/ABS")
}

# Get the ABS Census 2016 Data on Dwelling Type 
dwelling_data <- as.data.frame(readSDMX(providerId = "ABS", resource = "data", flowRef = "ABS_C16_T24_SA",
                                             key = "TOT.TOT+11+21+22+31+32+33+34+91+92+93+94+Z+NA.0+1+2+3+4+5+6+7+8+9.SA2", key.mode = "SDMX",
                                             start = 2016, end = 2016))
summary(dwelling_data)
head(dwelling_data)
str(dwelling_data)

# MISSING 9 SA2 Codes
dwelling_data %>% 
  distinct(ASGS_2016)

# Distinct dimension values
dwelling_data %>% 
  distinct(DWTD_2016)

## Retrieve Metadata to help with decoding values.
dataStructure <- readSDMX("http://stat.data.abs.gov.au/restsdmx/sdmx.ashx/GetDataStructure/ABS_C16_T24_SA")
codeList <- slot(dataStructure, "codelists")

# Dwelling Type
dwelling_type <- as.data.frame(codeList, codelistId = "CL_ABS_C16_T24_SA_STRD_2016")

# Get Required Data and put in meaningful descriptions
dwelling_data_final <- dwelling_data %>% 
  inner_join(dwelling_type, by = c("STRD_2016" = "id")) %>% 
  select(SA2_CODE = ASGS_2016
         ,DWELLING_TYPE = label.en
         ,obsValue)

#getwd()
write_csv(dwelling_data_final, "../Data Files/ABS/Dwelling_Type_SA2_2016.csv")

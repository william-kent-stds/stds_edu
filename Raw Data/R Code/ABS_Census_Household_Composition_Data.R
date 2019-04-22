library(rsdmx)
library(tidyverse)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Check to make sure the ABS folder is available and, if not, create it. Saving file to right location will fail without the required folder
if (!dir.exists("../Data Files/ABS")) {
  # readSDMX can create url's to read data from registered providers - fortunately the ABS is registered so the url can be created for us.
  create.dir("../Data Files/ABS")
}

# Get the ABS Census 2016 Data on Indigenous populations 
household_data <- as.data.frame(readSDMX(providerId = "ABS", resource = "data", flowRef = "ABS_C16_T23_SA",
                                             key = "TOT+1+11+110+12+120+2+21+211+212+22+221+222+3+31+310+32+320.TOT+1+2+3+4+5+6+7+8.0+1+2+3+4+5+6+7+8+9.SA2", key.mode = "SDMX",
                                             start = 2016, end = 2016))
summary(parents_birth_data)
head(parents_birth_data)

# MISSING 9 SA2 Codes
household_data %>% 
  distinct(ASGS_2016)

## Retrieve Metadata to help with decoding values.
dataStructure <- readSDMX("http://stat.data.abs.gov.au/restsdmx/sdmx.ashx/GetDataStructure/ABS_C16_T23_SA")

#concepts <- as.data.frame(slot(dataStructure, "concepts"))
codeList <- slot(dataStructure, "codelists")

# Family Home dimension
family_home <- as.data.frame(codeList, codelistId = "CL_ABS_C16_T23_SA_HHCD_2016")

# Total People in House
total_persons <- as.data.frame(codeList, codelistId = "CL_ABS_C16_T23_SA_NPRD_2016")

# Get Required Data and put in meaningful descriptions
household_data_final <- household_data %>% 
  inner_join(family_home, by = c("HHCD_2016" = "id")) %>% 
  inner_join(total_persons, by = c("NPRD_2016" = "id")) %>% 
  left_join(family_home, by = c("parentCode.x" = "id")) %>% 
  left_join(family_home, by = c("parentCode" = "id")) %>% 
  select(SA2_CODE = ASGS_2016
         ,HHOLD_TYPE = label.en.x
         ,HHOLD_GROUP = label.en.y.y
         ,TOTAL_IN_HOUSE = label.en.y
         ,obsValue)

write_csv(household_data_final, "../Data Files/ABS/Household_Composition_SA2_2016.csv")

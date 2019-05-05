library(rsdmx)
library(tidyverse)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Check to make sure the ABS folder is available and, if not, create it. Saving file to right location will fail without the required folder
if (!dir.exists("../Data Files/ABS")) {
  create.dir("../Data Files/ABS")
}

# Get the ABS Census 2016 Data on Language Proficiency
land_prof_data <- as.data.frame(readSDMX(providerId = "ABS", resource = "data", flowRef = "ABS_C16_T08_SA",
                                             key = "TOT+1+2+3+4+5+6+Z.TT+A04+A59+A10+A15+A20+A25+A30+A35+A40+A45+A50+A55+A60+A65+A70+A75+A80+A85+A90+A95+A99.3.1.SA2",
                                             key.mode = "SDMX",
                                             start = 2016, end = 2016))
summary(land_prof_data)
head(land_prof_data)
str(land_prof_data)

# MISSING 9 SA2 Codes
land_prof_data %>% 
  distinct(ASGS_2016)

# Distinct dimension values
land_prof_data %>% 
  distinct(ENGLP_2016)

## Retrieve Metadata to help with decoding values.
ds_url = "http://stat.data.abs.gov.au/restsdmx/sdmx.ashx/GetDataStructure/ABS_C16_T08_SA"
dataStructure <- readSDMX(ds_url)
codeList <- slot(dataStructure, "codelists")

# English Proficiency
english_proficiency <- as.data.frame(codeList, codelistId = "CL_ABS_C16_T08_SA_ENGLP_2016")

# Age
age <- as.data.frame(codeList, codelistId = "CL_ABS_C16_T08_SA_AGE")

# Get Required Data and put in meaningful descriptions
land_prof_final <- land_prof_data %>% 
  inner_join(english_proficiency, by = c("ENGLP_2016" = "id")) %>% 
  inner_join(age, by = c("AGE" = "id")) %>% 
  select(SA2_CODE = ASGS_2016
         ,ENG_PROFICIENCY = label.en.x
         ,AGE_BAND = label.en.y
         ,obsValue)

#getwd()
write_csv(land_prof_final, "../Data Files/ABS/English_Proficiency_SA2_2016.csv")

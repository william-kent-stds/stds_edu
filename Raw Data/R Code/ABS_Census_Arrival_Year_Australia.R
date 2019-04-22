library(rsdmx)
library(tidyverse)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Check to make sure the ABS folder is available and, if not, create it. Saving file to right location will fail without the required folder
if (!dir.exists("../Data Files/ABS")) {
  # readSDMX can create url's to read data from registered providers - fortunately the ABS is registered so the url can be created for us.
  create.dir("../Data Files/ABS")
}

# Get the ABS Census 2016 Data on Arrival in Australia
arrival <- as.data.frame(readSDMX(providerId = "ABS", resource = "data", flowRef = "ABS_C16_T07_SA",
                                      key = "TOT+1+2+3+4+5+6+7+8+9+Z.TOT.0+1+2+3+4+5+6+7+8+9.SA2",
                                      key.mode = "SDMX", start = 2016, end = 2016))

summary(arrival)
head(arrival)

## Retrieve Metadata to help with decoding values.
dataStructure <- readSDMX("http://stat.data.abs.gov.au/restsdmx/sdmx.ashx/GetDataStructure/ABS_C16_T07_SA")
codeList <- slot(dataStructure, "codelists")

# Country of Birth
arrival_year <- as.data.frame(codeList, codelistId = "CL_ABS_C16_T07_SA_YARRP_2016")

# Get Required Data and put in meaningful descriptions
arrival_final <- arrival %>% 
  inner_join(arrival_year, by = c("YARRP_2016" = "id")) %>% 
  select(SA2_CODE = ASGS_2016
         ,obsValue
         ,ARR_BAND = label.en)

#getwd()
write_csv(arrival_final, "../Data Files/ABS/Arrival_Year_SA2_2016.csv")
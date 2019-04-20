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
parents_birth_data <- as.data.frame(readSDMX(providerId = "ABS", resource = "data", flowRef = "ABS_C16_T05_SA",
                                             key = "TOT+1+2+3+4+Z.TOT.0+1+2+3+4+5+6+7+8+9.SA2", key.mode = "SDMX",
                                             start = 2016, end = 2016))
summary(parents_birth_data)
head(parents_birth_data)

## Retrieve Metadata to help with decoding values.
dataStructure <- readSDMX("http://stat.data.abs.gov.au/restsdmx/sdmx.ashx/GetDataStructure/ABS_C16_T05_SA")

#concepts <- as.data.frame(slot(dataStructure, "concepts"))
codeList <- slot(dataStructure, "codelists")

# Who Born Overseas
parents_birthplace <- as.data.frame(slot(dataStructure, "codelists"), codelistId = "CL_ABS_C16_T05_SA_BPPP_CENSUS2016")

# Place of Birth
#place_of_birth <- as.data.frame(slot(dataStructure, "codelists"), codelistId = "CL_ABS_C16_T05_SA_ANCP_2016")

# Get Required Data and put in meaningful descriptions
parents_birth_final <- parents_birth_data %>% 
  filter(REGIONTYPE == "SA2") %>% 
  inner_join(parents_birthplace, by = c("BPPP_CENSUS2016" = "id")) %>% 
  #left_join(place_of_birth, by = c("ANCP_2016" = "id")) %>%
  select(SA2_CODE = ASGS_2016
         ,Parents_Born_Overseas = label.en
         #,Parents_Place_Of_Birth = label.en
         ,Parents_POB_Parent_Code = parentCode
         ,obsValue)

write_csv(parents_birth_final, "../Data Files/ABS/Ancestry_SA2_2016.csv")

library(rsdmx)
library(tidyverse)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Check to make sure the ABS folder is available and, if not, create it. Saving file to right location will fail without the required folder
if (!dir.exists("../Data Files/ABS")) {
  create.dir("../Data Files/ABS")
}

# Get the ABS Census 2016 Data on Dwelling Type 
employ_data <- as.data.frame(readSDMX(providerId = "ABS", resource = "data", flowRef = "ABS_C16_G43_SA",
                                        key = "TOT.3.UEMP+LF.0+1+2+3+4+5+6+7+8+9.SA2", key.mode = "SDMX",
                                        start = 2016, end = 2016))

summary(employ_data)
head(employ_data)
str(employ_data)

# Got all SA2's
employ_data %>% 
  distinct(LFSP_C16)

# Distinct dimension values
employ_data %>% 
  distinct(DWTD_2016)

# Get Required Data and put in meaningful descriptions
employ_data_final <- employ_data %>% 
  select(SA2_CODE = ASGS_2016
         ,LFSP_C16
         ,obsValue)

#getwd()
write_csv(employ_data_final, "../Data Files/ABS/Employed_SA2_2016.csv")
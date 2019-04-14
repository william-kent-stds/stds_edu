library(rsdmx)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

data <- as.data.frame(readSDMX(providerId = "ABS", resource = "data", flowRef = "ABS_SEIFA2016_SA1", key.mode = "SDMX"))

write.csv(data, "..//Data Files//ABS//SEIFA_2016_Data.csv")
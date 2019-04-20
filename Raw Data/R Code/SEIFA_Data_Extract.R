library(rsdmx)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

data <- as.data.frame(readSDMX(providerId = "ABS", resource = "data", flowRef = "ABS_SEIFA2016_SA2", key.mode = "SDMX", start = 2016, end = 2016))

write.csv(data, "../Data Files/ABS/SEIFA_2016_Data.csv")
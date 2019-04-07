library(tidyverse)

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
#getwd()

gdp_data <- read_csv("../../Raw Data/Data Files/World Bank/GDP.csv")
summary(gdp_data)

# Check fo NA's
if (nrow(filter(gdp_data, is.na(iso3c == TRUE))) > 0) {
  warning("There are NA's in country field")
}

if (nrow(filter(gdp_data, is.na(date == TRUE))) > 0) {
  warning("There are NA's in date field")
}

if (nrow(filter(gdp_data, is.na(value == TRUE))) > 0) {
  warning("There are NA's in value field")
}

# Summary said no NA's and confirmed everything has a value with above warnings

# Look at the countries wih the lowest gdp - South Sudan, followed by Burundi
gdp_data %>% 
  arrange(value)

# And the countries with the higest gdp - Monaco, Liechtenstein and Luxembourg
gdp_data %>% 
  arrange(desc(value))

# Data seems legit

# Copy new data to directory, making sure folder exists
if (!dir.exists("../Data Files/World Bank")) {
  dir.create("../Data Files/World Bank")
}

write_csv(gdp_data, "../Data Files/World Bank/GDP.csv")
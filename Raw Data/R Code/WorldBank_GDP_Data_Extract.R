#install.packages("wbstats")
library(wbstats)
library(tidyverse)

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
#getwd()

if (!dir.exists("../Data Files/World Bank")) {
  dir.create("../Data Files/World Bank")
}

# Create cache for world bank data
world_bank_cache <- wbcache()

# Use wbsearch to find a data set using regular expressions - I think we need NY.GDP.PCAP.CD
#wbsearch("gdp.*capita", cache = world_bank_cache)

gdp_data <- wb(indicator = "NY.GDP.PCAP.CD")
summary(gdp_data)
head(gdp_data)

# There are no duplicate records
gdp_data %>% 
  group_by(iso3c, date) %>% 
  summarise(num_records = n()) %>% 
  filter(num_records > 1)

# Get only the latest records - for most countries the last year of data is 2017 but for some it is early, also top_n future proofs code if 2018 added
gdp_2017 <- gdp_data %>% 
  select(iso3c, date, value) %>% 
  group_by(iso3c) %>% 
  top_n(1, date)

write.csv(gdp_2017, "../Data Files/World Bank/GDP.csv", row.names = FALSE)
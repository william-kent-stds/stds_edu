library(readxl)
library(tidyverse)
library(ggplot2)
#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

download.file("https://www.abs.gov.au/ausstats/subscriber.nsf/log?openagent&total%20income%20-%20income%20distribution%202015-16.zip&6524.0.55.002&Data%20Cubes&E85D35229417F498CA2582B000172C80&0&2011-2016&19.06.2018&Latest"
              ,destfile = "../Data Files/ABS/Personal_Income_Estimates.zip"
              ,mode = "wb")

unzip(zipfile = "../Data Files/ABS/Personal_Income_Estimates.zip"
      ,exdir = "../Data Files/ABS/Personal_Income_Estimates")

inc_data <- read_excel("../Data Files/ABS/Personal_Income_Estimates/Total income - income distribution 2015-16.xls", sheet = "Table 4", range = "A6:S2268"
                       ,col_types = c("numeric", "text", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"
                                      , "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))

# Need to clean up column names as well as remove the first row that just contains information pertaining to the column name
inc_data <- inc_data %>% 
  rename(SA2 = X__1
         ,SA2_Name = X__2
         ,Mean_Income = Mean
         ,Median_Income = Median) %>% 
  filter(!is.na(SA2)) %>% 
  transform(SA2 = as.numeric(SA2))

# Use median as mean gives a right skewed distribution whereas median looks a lot more "normal"
ggplot(inc_data) +
  geom_histogram(aes(x = Median_Income), bins = 100)

inc_data %>% 
  filter(Mean_Income > 150000)
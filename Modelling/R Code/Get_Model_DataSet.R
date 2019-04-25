library(tidyverse)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Read csv's
dwelling_type <- read_csv("../../Clean Data/Data Files/ABS/Dwelling_Type_SA2.csv")
hh_composition <- read_csv("../../Clean Data/Data Files/ABS/HouseHold_Composition_SA2.csv")
place_of_birth <- read_csv("../../Clean Data/Data Files/ABS/Place_Of_Birth_SA2.csv")
seifa <- read_csv("../../Clean Data/Data Files/ABS/SEIFA_2016_Data.csv")
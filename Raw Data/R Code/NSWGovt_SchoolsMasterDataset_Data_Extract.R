library(tidyverse)
library(rgeos)
library(sf)
library(ggplot2)
library(sp)
library(geosphere)
library(rgdal)
library(tmaptools)
library(dplyr)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Set projection
wgs.84 <- get_proj4("WGS84", output = "character")

if (!dir.exists("../Data Files/NSWDeptOfEd")) {
  dir.create("../Data Files/NSWDeptOfEd")
}

# NSW Government Schools ONLY
download.file("https://data.cese.nsw.gov.au/data/dataset/027493b2-33ad-3f5b-8ed9-37cdca2b8650/resource/2ac19870-44f6-443d-a0c3-4c867f04c305/download/master_dataset.csv"
              ,destfile = "../Data Files/NSWDeptOfEd/Master_Dataset.csv")

# NSW Non-Government Schools ONLY
download.file("https://data.cese.nsw.gov.au/data/dataset/1d019767-d953-426c-8151-1a6503d5a08a/resource/a5871783-7dd8-4b25-be9e-7d8b9b85422f/download/datahub_nongov_locations-2017.csv"
              ,destfile = "../Data Files/NSWDeptOfEd/Non_Govt_Schools_Dataset.csv")

# Read in Master Schools data and turn in into a Spatial Points DF
govt_schools <- read_csv("../Data Files/NSWDeptOfEd/Master_Dataset.csv")
non_govt_schools <- read_csv("../Data Files/NSWDeptOfEd/Non_Govt_Schools_Dataset.csv")

govt_schools <- govt_schools %>% 
  select(School_name
         ,Town_suburb
         ,Postcode
         ,School_gender
         ,Level_of_schooling
         ,Latitude
         ,Longitude)
  
non_govt_schools <- non_govt_schools %>% 
  select(School_name= school_name
         ,Town_suburb = town_suburb
         ,Postcode = postcode
         ,School_gender = school_gender
         ,Level_of_schooling = level_of_schooling
         ,Latitude = latitude
         ,Longitude = longitude)

# Create a master data frame of all schools
all_schools <- rbind(govt_schools, non_govt_schools)

# Turn master list into a Spatial Data Frame
coordinates(all_schools) <- c("Longitude", "Latitude")

# Read the ABS SA2 shape file and convert to WGS94 projection
sa2_shp <- readOGR("../Data Files/ABS/SA2_Shapefile/SA2_2016_AUST.shp", p4s = wgs.84)
sa2_nsw_shp <- subset(sa2_shp, STE_NAME16 == "New South Wales")

# Make sure the projections are the same
proj4string(all_schools) <- proj4string(sa2_nsw_shp)
#proj4string(sa2_shp)
#proj4string(data_schools)

# Get the SA2 in which the school resides
all_schools$SA2_Code <- over(all_schools, sa2_nsw_shp)$SA2_MAIN16

# Write All Schools data frame to file.
write_csv(as.data.frame(all_schools), "../Data Files/NSWDeptOfEd/All_NSW_Schools_With_SA2.csv")

# And for the plotsto make sure it looks legit
ggplot() +
  geom_path(data = sa2_nsw_shp, aes(x = long, y = lat, group = group)) +
  geom_point(data = as.data.frame(all_schools), aes(x = Longitude, y = Latitude), size = 0.1, colour = "red")

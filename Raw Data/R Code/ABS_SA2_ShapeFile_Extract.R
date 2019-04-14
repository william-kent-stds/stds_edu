#########
# This file download the latest SA@ shape file for the ABS and unzips it
#########

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

download.file("https://www.abs.gov.au/AUSSTATS/subscriber.nsf/log?openagent&1270055001_sa2_2016_aust_shape.zip&1270.0.55.001&Data%20Cubes&A09309ACB3FA50B8CA257FED0013D420&0&July%202016&12.07.2016&Latest"
              ,destfile = "../Data Files/ABS/SA2_ShapeFile.zip"
              ,mode = "wb")

unzip(zipfile = "../Data Files/ABS/SA2_ShapeFile.zip"
      ,exdir = "../Data Files/ABS/SA2_Shapefile")
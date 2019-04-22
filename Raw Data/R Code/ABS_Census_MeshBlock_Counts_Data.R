#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

## Download NSW Mesh block zip if it doesn't already exist
if (!file.exists("../Data Files/ABS/Mesh_Blocks.zip")) {
  download.file("https://www.abs.gov.au/AUSSTATS/subscriber.nsf/log?openagent&1270055001_mb_2016_nsw_csv.zip&1270.0.55.001&Data%20Cubes&1FC672E70A77D52FCA257FED0013A0F7&0&July%202016&12.07.2016&Latest",
              destfile = "../Data Files/ABS/Mesh_Blocks.zip",
              mode = "wb")
}

## Unzip mensh blocks zip if it hasn;'t already been unzipped
if (!file.exists("../Data Files/ABS/Mesh_Blocks/MB_2016_NSW.csv")) {
  unzip("../Data Files/ABS/Mesh_Blocks.zip", exdir = "../Data Files/ABS/Mesh_Blocks")
}

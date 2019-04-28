#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

zip_file <- "https://www.abs.gov.au/AUSSTATS/subscriber.nsf/log?openagent&1270055003_lga_2016_nsw_csv.zip&1270.0.55.003&Data%20Cubes&8588048AE2E7FCD8CA25833D000EAC27&0&July%202016&07.11.2018&Previous"

## Download NSW Mesh block zip if it doesn't already exist
if (!file.exists("../Data Files/ABS/NSW_LGA_Mesh_Blocks.zip")) {
  download.file(zip_file,
                destfile = "../Data Files/ABS/NSW_LGA_Mesh_Blocks.zip",
                mode = "wb")
}

## Unzip mensh blocks zip if it hasn;'t already been unzipped
if (!file.exists("../Data Files/ABS/Mesh_Blocks/LGA_2016_NSW.csv")) {
  unzip("../Data Files/ABS/NSW_LGA_Mesh_Blocks.zip", exdir = "../Data Files/ABS/Mesh_Blocks")
}

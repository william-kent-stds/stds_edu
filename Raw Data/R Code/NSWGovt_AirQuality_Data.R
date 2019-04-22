#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

if (!dir.exists("../Data Files/NSWGovt/")) {
  dir.create("../Data Files/NSWGovt/")
}

## Download NSW Air Quality File if it doesn't already exist
if (!file.exists("../Data Files/NSWGovt/AirQuality_Data.xls")) {
  download.file("https://airquality.environment.nsw.gov.au/aquisnetnswphp/tmp/tmp_table_21553_1555911469.xls",
              destfile = "../Data Files/NSWGovt/AirQuality_Data.xls",
              mode = "wb")
}

## Download NSW Air Quality Stations if it doesn't already exist
if (!file.exists("../Data Files/NSWGovt/AirQuality_Station_Data.xlsx")) {
  download.file("https://datasets.seed.nsw.gov.au/dataset/ee5fd225-ab54-49c4-8c91-930219018cd0/resource/e09a1918-af2b-4375-ad04-00fabce72a10/download/air-quality-monitoring-sites-summary.xlsx",
                destfile = "../Data Files/NSWGovt/AirQuality_Stations_Data.xlsx",
                mode = "wb")
}



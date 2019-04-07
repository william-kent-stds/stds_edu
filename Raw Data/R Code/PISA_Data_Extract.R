library(EdSurvey)

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
# getwd() # Should be Raw Data/R Code

# Create directory Raw Data/Data Files/PISA Data if it doesn't exist
if (!dir.exists(path = "../Data Files/PISA Data")){
  dir.create(path = "../Data Files/PISA Data")
}

# Download and unzip the 2015 PISA data files to newly created folder. Database = INT as no other options are available in 2015. 2012 has 3 options.
downloadPISA("../Data Files/PISA Data/", "2015", database = "INT")
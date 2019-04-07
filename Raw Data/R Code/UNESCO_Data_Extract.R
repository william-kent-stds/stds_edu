####
# The process is to be used to extract (or re-extract) the UNESCO data found http://data.uis.unesco.org/ through the provided API. 
# The API Key used is linked to an account with the email address of William.J.Kent@student.uts.edu.au.
# The API has a maximum of 30,000 records to be returned. The EDU_NON_FINANCE dataset exceeds this limit so broke code down by country.
# The code only does AU at the moment. May need to expand this out to include other countries - use expand.grid()
####

library(rsdmx)

# Set working directory to the location of this R code file so (hopefully) everything works for everyone when they run it
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Create function to read UNESCO data and save it to an output file
get_UNESCO_data <- function(request, file_name, suffix = "ALL"){
  data <- readSDMX(request)
  data_as_frame <- as.data.frame(data)
  cleaned_suffix <- gsub("[.]","",suffix)
  
  # If directory doesn't exist then create it
  if (!dir.exists(path = "..\\Data Files\\UNESCO Data")){
    dir.create(path = "..\\Data Files\\UNESCO Data")
  }
  
  if (dir.exists(path = "..\\Data Files\\UNESCO Data")) {
    location_for_date <- normalizePath(path = "..\\Data Files\\UNESCO Data")
    create_file <- paste0(location_for_date,"\\",file_name,"_",cleaned_suffix,".csv")
    create_file
    write.csv(data_as_frame, file = create_file)
  }
  else {
    warning("Unable to save file")
  }
}

# Set endpoint for API and the key provided in UNSECO profile
api_endpoint <- "https://api.uis.unesco.org/sdmx"
api_key <- "af5f8414d6f4418bbcd7115dba01fee2"

# Set user controlled parameters that determine what data is to be extracted, for what time period and provided in what format
start_period <- "2016"
end_period <- "2017" # as at writing latest data set is 2017
output_format <- "sdmx-compact-2.1"
locale <- "en"
dataflow <- c("EDU_REGIONAL_MODULE","EDU_NON_FINANCE","EDU_FINANCE")
dataflow_version <- c("1.0","3.0","1.0")
src_country <- c("all","..................AU...","all")
variable_data <- data.frame(dataflow, dataflow_version, src_country)

# Process each record in variable_data data frame and write output to the Data Files folder for UNESCO data 
for (row in 1:nrow(variable_data)){
  data_src <- variable_data[row,1]
  version <- variable_data[row,2]
  country <- variable_data[row,3]
  
  api_request <- paste0(api_endpoint,"/data/UNESCO,",data_src,",",version,"/",country,"?startPeriod=",start_period,"&endPeriod=",end_period,"&format=",output_format,"&locale=",locale,"&subscription-key=",api_key)
  message(api_request)
  message(country)
  
  get_UNESCO_data(api_request, data_src, country)
}

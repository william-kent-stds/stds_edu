library(tidyverse)
library(httr)
library(jsonlite)

# Go to https://api.slack.com/custom-integrations/legacy-tokens and generate a Legacy token for the UTS MDSI workspace
# Token = xoxp-42906300790-323427295908-619040841589-1046c48bf2e2433f511800c3c8c76f99

# Set up slack integration
token <- "xoxp-42906300790-323427295908-619040841589-1046c48bf2e2433f511800c3c8c76f99"
api_url <- paste0("https://slack.com/api/groups.history?token=",token,"&channel=GH834L2RK&pretty=1")

# Get request to Slack and store JSON response
resp <- GET(api_url)

# Check response status
status <- http_status(resp)
type <- http_type(resp)

if (status$category == "Success"){
  content <- content(resp, "text")
  msg <- as.data.frame(fromJSON(content))
} else {
  print(status$category)
  print(status$message)
}


  
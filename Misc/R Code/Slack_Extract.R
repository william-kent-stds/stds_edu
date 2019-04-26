library(tidyverse)
library(slackr) # to find channel id
library(httr)
library(jsonlite)

# Go to https://api.slack.com/custom-integrations/legacy-tokens and generate a Legacy token for the UTS MDSI workspace

# Set up slack integration
token <- "ToBeAdded"

# Find the channel Id
grp <- slackr_groups(api_token = token)
grp_id <- grp %>% 
  filter(name == "pv_stds_edu") %>% 
  select(id)

# Set Get Url
api_url <- paste0("https://slack.com/api/groups.history?token=",token,"&channel=",grp_id,"&pretty=1")

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


  
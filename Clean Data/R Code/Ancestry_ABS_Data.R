library(tidyverse)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# read_csv seems to have an issue with the comma in the Parents Place Of Birth using read.csv instead
#raw_data <- read_csv("../../Raw Data/Data Files/ABS/Ancestry_SA2_2016.csv", col_type = "icccci", quote = "\"")
raw_data <- read.csv("../../Raw Data/Data Files/ABS/Ancestry_SA2_2016.csv", quote = "\"")

t1 <- raw_data %>% 
  filter(SA2_CODE == 101021007)
view(t1)
  
  
clean_data <- raw_data %>% 
  filter(Parents_POB_Parent_Id == "TOT"
         ,Parents_POB_Parent_Code != "<NA>"
         ,Parents_Born_Overseas != "Not stated - birthplace for either or both parents not stated") %>% 
  mutate(PBO_GROUP = case_when(Parents_Born_Overseas %in% c("Father only born overseas","Mother only born overseas") ~ "One Parent Born Overseas",
                               Parents_Born_Overseas == "Both parents born in Australia" ~ "Both Parents Born Australia",
                               TRUE ~ "Both Parents Born Overseas")) %>% 
  group_by(SA2_CODE, PBO_GROUP) %>% 
  summarise(Total_Value = sum(obsValue)) %>% 
  spread(PBO_GROUP, Total_Value)


  

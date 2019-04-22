library(tidyverse)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# read_csv seems to have an issue with the comma in the Parents Place Of Birth using read.csv instead
#raw_data <- read_csv("../../Raw Data/Data Files/ABS/Ancestry_SA2_2016.csv", col_type = "icccci", quote = "\"")
raw_data <- read.csv("../../Raw Data/Data Files/ABS/Ancestry_SA2_2016.csv", quote = "\"")
  
clean_data <- raw_data %>% 
  filter(Parents_POB_Parent_Code != "<NA>"
         ,Parents_Born_Overseas != "Not stated - birthplace for either or both parents not stated") %>% 
  mutate(PBO_GROUP = case_when(Parents_Born_Overseas %in% c("Father only born overseas","Mother only born overseas") ~ "One_Parent_Born_Overseas",
                               Parents_Born_Overseas == "Both parents born in Australia" ~ "Both_Parents_Born_Australia",
                               TRUE ~ "Both_Parents_Born_Overseas")) %>% 
  group_by(SA2_CODE, PBO_GROUP) %>% 
  summarise(Total_Value = sum(obsValue)) %>% 
  spread(PBO_GROUP, Total_Value) %>% 
  mutate(PERC_BOTH_BORN_AUST = Both_Parents_Born_Australia / (Both_Parents_Born_Overseas + One_Parent_Born_Overseas + Both_Parents_Born_Australia),
         PERC_BOTH_BORN_OS = Both_Parents_Born_Overseas / (Both_Parents_Born_Overseas + One_Parent_Born_Overseas + Both_Parents_Born_Australia),
         PERC_ONE_BORN_OS = One_Parent_Born_Overseas / (Both_Parents_Born_Overseas + One_Parent_Born_Overseas + Both_Parents_Born_Australia))

write_csv(clean_data, "../Data Files/ABS/Ancestry_SA2.csv")

library(tidyverse)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Create destination folder if it doesn't already exists
if (!dir.exists("../Data Files/ABS/")) {
  dir.create("../Data Files/ABS/")
}

# Read the raw data csv
mesh_blocks <- read.csv("../../Raw Data/Data Files/ABS/Mesh_Blocks/MB_2016_NSW.csv")

str(mesh_blocks)

mesh_blocks %>% 
  distinct(MB_CATEGORY_NAME_2016)

# Find % of space allocated to Parkland for each mesh block
open_space <- mesh_blocks %>% 
  filter(STATE_NAME_2016 == "New South Wales") %>% 
  select(MB_CODE_2016
         ,MB_CATEGORY_NAME_2016
         ,SA2_CODE = SA2_MAINCODE_2016
         ,AREA_SQKM = AREA_ALBERS_SQKM) %>% 
  group_by(SA2_CODE, MB_CATEGORY_NAME_2016) %>% 
  summarise(SUM_AREA_SQKM = sum(AREA_SQKM)) %>% 
  spread(MB_CATEGORY_NAME_2016, SUM_AREA_SQKM, fill = 0) %>% 
  mutate(PERC_OPEN_SPACE = Parkland / (Commercial + Education + `Hospital/Medical` + Industrial + MIGRATORY + NOUSUALRESIDENCE + OFFSHORE +
                                         Other + Parkland + `Primary Production` + Residential + SHIPPING + Transport + Water))

# Write data to csv
write_csv(open_space, "../Data Files/ABS/Open_Space_SA2.csv")


library(tidyverse)
library(corrplot)
library(Hmisc)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Read csv's
dwelling_type <- read_csv("../../Clean Data/Data Files/ABS/Dwelling_Type_SA2.csv")
hh_composition <- read_csv("../../Clean Data/Data Files/ABS/HouseHold_Composition_SA2.csv")
place_of_birth <- read_csv("../../Clean Data/Data Files/ABS/Place_Of_Birth_SA2.csv")
seifa <- read_csv("../../Clean Data/Data Files/ABS/SEIFA_2016_Data.csv")
employed <- read_csv("../../Clean Data/Data Files/ABS/Employed_SA2.csv")
eng_proficiency <- read_csv("../../Clean Data/Data Files/ABS/English_Proficiency_SA2.csv")
home_lang <- read_csv("../../Clean Data/Data Files/ABS/Language_at_Home_SA2.csv")
education <- read_csv("../../Clean Data/Data Files/ABS/Education_SA2.csv")
marriage <- read_csv("../../Clean Data/Data Files/ABS/Marriages_data.csv")

glimpse(hh_composition)
# Get mesh block data at SA2 level
nsw_sa2 <- read_csv("../../Clean Data/Data Files/ABS/NSW_SA2_FOR_MODEL.csv")

# Join Datasets together
model_data <- nsw_sa2 %>% 
  left_join(dwelling_type, by = c("SA2_MAINCODE_2016" = "SA2_CODE")) %>%
  left_join(hh_composition, by = c("SA2_MAINCODE_2016" = "SA2_CODE")) %>% 
  left_join(place_of_birth, by = c("SA2_MAINCODE_2016" = "SA2_CODE")) %>% 
  left_join(seifa, by = c("SA2_MAINCODE_2016" = "SA2_CODE")) %>% 
  left_join(employed, by = c("SA2_MAINCODE_2016" = "SA2_CODE")) %>% 
  left_join(eng_proficiency, by = c("SA2_MAINCODE_2016" = "SA2_CODE")) %>% 
  left_join(home_lang, by = c("SA2_MAINCODE_2016" = "SA2_CODE")) %>% 
  left_join(education, by = c("SA2_MAINCODE_2016" = "SA2_CODE")) %>% 
  left_join(marriage, by = c("SA2_MAINCODE_2016" = "SA2 Code (2016)")) %>% 
  mutate(BORN_OVERSEAS_MOD = BORN_OVERSEAS * PERC_LAB_FORCE,
         ENG_PROFICIENT_MOD = ENG_PROFICIENT * PERC_LAB_FORCE,
         LANG_HOME_ENGLISH_MOD = LANG_HOME_ENGLISH * PERC_LAB_FORCE,
         EDU_BACHELOR_MOD = EDU_BACHELOR * PERC_LAB_FORCE,
         EDU_CERTIFICATE_MOD = EDU_CERT_ALL * PERC_LAB_FORCE,
         EDU_DIPLOMA_MOD = EDU_DIPLOMA * PERC_LAB_FORCE,
         EDU_POSTGRAD_MOD = EDU_POSTGRAD * PERC_LAB_FORCE,
         SEPARATED_MOD = `Persons Total Separated` * PERC_LAB_FORCE,
         DIVORCED_MOD = `Persons Total Divorced` * PERC_LAB_FORCE,
         MARRIED_MOD = `Persons Total Married` * PERC_LAB_FORCE,
         WIDOWED_MOD = `Persons Total Widowed`* PERC_LAB_FORCE) %>% 
  dplyr::select(SA2_CODE = SA2_MAINCODE_2016
         ,SA2_NAME = SA2_NAME_2016
         ,IS_SYDNEY
         ,IS_SUA
         ,LAB_FORCE = LAB_FORCE.x
         ,UNEMPLOYED
         ,PERC_DWELLING_FLAT
         ,PERC_DWELLING_HOUSE
         ,PERC_DWELLING_SEMI
         ,PERC_DWELLING_OTHER
         ,BORN_OVERSEAS_MOD
         ,SEIFA_Edu_Occ_Index
         ,SEIFA_Economic_Res_Index
         ,SEIFA_Rel_SocioEco_Adv_Disadv_Index
         ,SEIFA_Rel_SocioEco_Disadv_Index
         ,ENG_PROFICIENT_MOD
         ,LANG_HOME_ENGLISH_MOD
         ,EDU_BACHELOR_MOD
         ,EDU_POSTGRAD_MOD
         ,EDU_CERTIFICATE_MOD
         ,EDU_DIPLOMA_MOD
         ,SEPARATED_MOD
         ,DIVORCED_MOD
         ,MARRIED_MOD
         ,WIDOWED_MOD
         ,PERC_HHOLD_SIZE_OVER_5
         ,PERC_HHOLD_NON_FAM)

# Check correlations
model_matrix <- model_data %>% 
  select(LAB_FORCE,UNEMPLOYED,PERC_DWELLING_FLAT,PERC_DWELLING_HOUSE,PERC_DWELLING_SEMI,PERC_DWELLING_OTHER,BORN_OVERSEAS_MOD,SEIFA_Edu_Occ_Index
         ,SEIFA_Economic_Res_Index,SEIFA_Rel_SocioEco_Adv_Disadv_Index,SEIFA_Rel_SocioEco_Disadv_Index,ENG_PROFICIENT_MOD
         ,LANG_HOME_ENGLISH_MOD) %>% 
  as.matrix()

rcorr(model_matrix, type = "pearson")

corrplot(cor(model_matrix), method = "ellipse")

# Write data out to a csv
if (!dir.exists("../Data Files")){
  dir.create("../Data Files")
}

write_csv(model_data, "../Data Files/Model_Data.csv")
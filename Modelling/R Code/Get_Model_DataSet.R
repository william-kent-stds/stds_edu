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
ancestry <- read_csv("../../Clean Data/Data Files/ABS/Ancestry_SA2.csv")
arrival_year <- read_csv("../../Clean Data/Data Files/ABS/Arrival_Year_SA2.csv")
demographics <- read_csv("../../Clean Data/Data Files/ABS/ERP_SA2_2016.csv")
indigenous <- read_csv("../../Clean Data/Data Files/ABS/Indigenous_Population_SA2.csv")
open_space <- read_csv("../../Clean Data/Data Files/ABS/Open_Space_SA2.csv")
commute <- read_csv("../../Clean Data/Data Files/ABS/Commute data.csv")
north_south <- read_csv("../../Clean Data/Data Files/ABS/State_North_South.csv")

# Get NSW SA2 Data
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
  left_join(ancestry, by = c("SA2_MAINCODE_2016" = "SA2_CODE")) %>% 
  left_join(arrival_year, by = c("SA2_MAINCODE_2016" = "SA2_CODE")) %>% 
  left_join(demographics, by = c("SA2_MAINCODE_2016" = "sa2_code")) %>% 
  left_join(indigenous, by = c("SA2_MAINCODE_2016" = "SA2_CODE")) %>% 
  left_join(open_space, by = c("SA2_MAINCODE_2016" = "SA2_CODE")) %>% 
  left_join(commute, by = c("SA2_MAINCODE_2016" = "SA2 Code (2016)")) %>% 
  left_join(north_south, by = c("SA2_MAINCODE_2016" = "SA2_CODE")) %>% 
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
         WIDOWED_MOD = `Persons Total Widowed` * PERC_LAB_FORCE,
         DIVORCED_SEPARATED_MOD = (`Persons Total Separated` + `Persons Total Widowed`) * PERC_LAB_FORCE,
         MALES = males * PERC_LAB_FORCE,
         FEMALES = females * PERC_LAB_FORCE,
         ANCESTRY_BOTH_AUST = Both_Parents_Born_Australia * PERC_LAB_FORCE,
         ANCESTRY_ONE_OS = One_Parent_Born_Overseas * PERC_LAB_FORCE,
         ANCESTRY_BOTH_OS = Both_Parents_Born_Overseas * PERC_LAB_FORCE,
         ARRIVAL_LAST_20 = `0-20 year` * PERC_LAB_FORCE,
         ARRIVAL_20_50 = `20-50 years` * PERC_LAB_FORCE,
         ARRIVAL_OVER_50 = `50+ years` * PERC_LAB_FORCE,
         INDIG_POP = total_indigenous_population * PERC_LAB_FORCE,
         COMMUTE_CAR = coalesce(as.numeric(`Method of travel to work - car (as passenger or driver)`),0),
         COMMUTE_WALK = coalesce(as.numeric(`Method of travel to work - walking`),0),
         COMMUTE_BUS = coalesce(as.numeric(`Method of travel to work - bus`),0),
         COMMUTE_MOTORBIKE = coalesce(as.numeric(`Method of travel to work - motor bike/scooter`),0),
         COMMUTE_TRAIN = coalesce(as.numeric(`Method of travel to work - train`),0),
         COMMUTE_BIKE = coalesce(as.numeric(`Method of travel to work - bike`),0),
         COMMUTE_OTHER = coalesce(as.numeric(`Method of travel to work - other (inc taxis)`),0),
         COMMUTE_PUBLIC_TRANS = coalesce(as.numeric(`Method of travel to work - bus`),0) + coalesce(as.numeric(`Method of travel to work - train`),0),
         IS_NORTH_NSW = case_when(STATE_REGION == "NORTH" ~ 1, TRUE ~ 0)
         ) %>% 
  dplyr::select(SA2_CODE = SA2_MAINCODE_2016
         ,SA2_NAME = SA2_NAME_2016
         ,IS_SYDNEY
         ,IS_SUA
         ,IS_NORTH_NSW
         ,TOTAL_POP
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
         ,DIVORCED_SEPARATED_MOD
         ,PERC_HHOLD_SIZE_OVER_5
         ,PERC_HHOLD_NON_FAM
         ,MALES
         ,FEMALES
         ,ANCESTRY_BOTH_AUST
         ,ANCESTRY_ONE_OS
         ,ANCESTRY_BOTH_OS
         ,ARRIVAL_LAST_20
         ,ARRIVAL_20_50
         ,ARRIVAL_OVER_50
         ,INDIG_POP
         ,PERC_OPEN_SPACE
         ,COMMUTE_CAR
         ,COMMUTE_WALK
         ,COMMUTE_BUS
         ,COMMUTE_MOTORBIKE
         ,COMMUTE_TRAIN
         ,COMMUTE_BIKE
         ,COMMUTE_OTHER
         ,COMMUTE_PUBLIC_TRANS)

glimpse(model_data)
# Check correlations
model_matrix <- model_data %>% 
  select(IS_SYDNEY,IS_SUA,LAB_FORCE,UNEMPLOYED,PERC_DWELLING_FLAT,PERC_DWELLING_HOUSE,PERC_DWELLING_SEMI,PERC_DWELLING_OTHER
         ,BORN_OVERSEAS_MOD,SEIFA_Edu_Occ_Index,SEIFA_Economic_Res_Index,SEIFA_Rel_SocioEco_Adv_Disadv_Index
         ,SEIFA_Rel_SocioEco_Disadv_Index,ENG_PROFICIENT_MOD,LANG_HOME_ENGLISH_MOD,EDU_BACHELOR_MOD,EDU_POSTGRAD_MOD
         ,EDU_CERTIFICATE_MOD,EDU_DIPLOMA_MOD,SEPARATED_MOD,DIVORCED_MOD,MARRIED_MOD,WIDOWED_MOD,PERC_HHOLD_SIZE_OVER_5
         ,PERC_HHOLD_NON_FAM,MALES,FEMALES,ANCESTRY_BOTH_AUST,ANCESTRY_ONE_OS,ANCESTRY_BOTH_OS,ARRIVAL_LAST_20,ARRIVAL_20_50
         ,ARRIVAL_OVER_50,INDIG_POP,PERC_OPEN_SPACE,COMMUTE_MED_DIST,COMUTE_AVG_DIST,COMMUTE_CAR,COMMUTE_MOTORBIKE,COMMUTE_TRAIN
         ,COMMUTE_BIKE,COMMUTE_OTHER,COMMUTE_PUBLIC_TRANS.DIVORCED_SEPARATED_MOD) %>% 
  as.matrix()

rcorr(model_matrix, type = "pearson")

corrplot(cor(model_matrix), method = "ellipse")

# Write data out to a csv
if (!dir.exists("../Data Files")){
  dir.create("../Data Files")
}

write_csv(model_data, "../Data Files/Model_Data.csv")
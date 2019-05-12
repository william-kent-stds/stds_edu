library(tidyverse)
library(MASS)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

model_data <- read_csv("../Data Files/Model_Data.csv")

model <- glm(cbind(UNEMPLOYED,LAB_FORCE - UNEMPLOYED) ~ ENG_PROFICIENT_MOD + LANG_HOME_ENGLISH_MOD + SEIFA_Edu_Occ_Index + SEIFA_Economic_Res_Index +
      SEIFA_Rel_SocioEco_Adv_Disadv_Index + SEIFA_Rel_SocioEco_Disadv_Index + BORN_OVERSEAS_MOD + EDU_BACHELOR_MOD + EDU_POSTGRAD_MOD +
      EDU_CERTIFICATE_MOD + EDU_DIPLOMA_MOD + SEPARATED_MOD
    ,family = binomial
    ,data = model_data)

stepAIC(model)

model %>% summary()
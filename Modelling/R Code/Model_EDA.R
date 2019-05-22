library(tidyverse)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

model_data <- read_csv("../Data Files/Model_Data.csv")

glimpse(model_data)

# Time since arrival in Australia - shows some interesting patterns that migrants tend to congregate and spread out over time

# English Proficiency v Language At Home - seriously correlated
model_data %>% 
  ggplot() +
  geom_point(aes(x = ENG_PROFICIENT_MOD, y = (LANG_HOME_ENGLISH_MOD)))

# Language at Home and Both Parents Born Overseas
model_data %>% 
  ggplot() +
  geom_point(aes(x = ANCESTRY_BOTH_OS , y = (LANG_HOME_ENGLISH_MOD), colour = as.factor(IS_SYDNEY)))

model_data %>% 
  ggplot() +
  geom_point(aes(x = ANCESTRY_BOTH_OS , y = (LANG_HOME_ENGLISH_MOD), colour = as.factor(IS_SYDNEY)))

#
model_data %>% 
  ggplot() +
  geom_point(aes(x = PERC_DWELLING_FLAT , y = (ARRIVAL_LAST_20/LAB_FORCE)))

model_data %>% 
  ggplot() +
  geom_point(aes(x = PERC_DWELLING_FLAT , y = (ENG_PROFICIENT_MOD)))

# Labour Force
model_data %>% 
  ggplot() +
  geom_histogram(aes(x = LAB_FORCE/TOTAL_POP), bins = 50) +
  ggtitle("Proportion of Total Population involved in Labour Force") +
  xlab("Labour Force %") + 
  ylab("Number of SA2s (count)") + 
  scale_x_continuous(labels = scales::percent, limits = c(0.25, 0.75)) +
  theme_bw()
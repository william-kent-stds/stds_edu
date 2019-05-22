library(tidyverse)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

model_data <- read_csv("../../Modelling/Data Files/Model_Data.csv")

glimpse(model_data)

regional <- model_data %>% 
  filter(IS_SYDNEY == 0) %>% 
  mutate(unemployment_rate = UNEMPLOYED / LAB_FORCE) 

glimpse(regional) 

#Yass Region
#Shortland-Jesmond

regional %>% 
  mutate(PERC_SEPARATED = ARRIVAL_LAST_20 /LAB_FORCE) %>% 
  filter(SA2_NAME %in% c("Yass Region","Shortland - Jesmond")) %>% 
  select(SA2_CODE, PERC_SEPARATED)

# English Proficiency
regional %>% 
  mutate(PERC_PROFICIENCY = ENG_PROFICIENT_MOD/LAB_FORCE) %>% 
  ggplot(aes(x = PERC_PROFICIENCY, y = unemployment_rate)) +
  geom_point() +
  geom_text(aes(label = ifelse(SA2_CODE == "101061542",as.character(SA2_NAME),'')),colour = "#3d9e5f",hjust = -0.2, vjust = 0) + 
  geom_text(aes(label = ifelse(SA2_CODE == "111031231",as.character(SA2_NAME),'')),colour = "red",hjust = -0.1, vjust = 0) + 
  annotate("point", x = 0.878, y = .1586, colour = "red", shape = 21, stroke = 2, size = 5) +
  annotate("point", x = 0.910, y = .0283, colour = "#3d9e5f", shape = 21, stroke = 2, size = 5) +
  scale_x_continuous(labels = scales::percent) +
  scale_y_continuous(labels = scales::percent) +
  ggtitle("Unemployment Rate by English Proficiency in Area")+
  xlab("English Proficient (%)") +
  ylab("Unemployment Rate (%)") +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) 

# Divorced and Separated
regional %>% 
  mutate(PERC_SEPARATED = DIVORCED_SEPARATED_MOD/LAB_FORCE) %>% 
  ggplot(aes(x = PERC_SEPARATED, y = unemployment_rate)) +
  geom_point() +
  geom_text(aes(label = ifelse(SA2_CODE == "101061542",as.character(SA2_NAME),'')),colour = "#3d9e5f",hjust = -0.2, vjust = 0) + 
  geom_text(aes(label = ifelse(SA2_CODE == "111031231",as.character(SA2_NAME),'')),colour = "red",hjust = -0.1, vjust = 0) + 
  annotate("point", x = 0.0745, y = .1586, colour = "red", shape = 21, stroke = 2, size = 5) +
  annotate("point", x = 0.0458, y = .0283, colour = "#3d9e5f", shape = 21, stroke = 2, size = 5) +
  scale_x_continuous(labels = scales::percent) +
  scale_y_continuous(labels = scales::percent) +
  ggtitle("Unemployment Rate by Divorce and Separation Rate in Area")+
  xlab("Divorce and Separation Rate (%)") +
  ylab("Unemployment Rate (%)") +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) 

# Education
regional %>% 
  mutate(PERC_BACHELOR = EDU_BACHELOR_MOD/LAB_FORCE) %>% 
  ggplot(aes(x = PERC_BACHELOR, y = unemployment_rate)) +
  geom_point() +
  geom_text(aes(label = ifelse(SA2_CODE == "101061542",as.character(SA2_NAME),'')),colour = "#3d9e5f",hjust = -0.2, vjust = 0) + 
  geom_text(aes(label = ifelse(SA2_CODE == "111031231",as.character(SA2_NAME),'')),colour = "red",hjust = -0.1, vjust = 0) + 
  annotate("point", x = 0.0891, y = .1586, colour = "red", shape = 21, stroke = 2, size = 5) +
  annotate("point", x = 0.127, y = .0283, colour = "#3d9e5f", shape = 21, stroke = 2, size = 5) +
  scale_x_continuous(labels = scales::percent) +
  scale_y_continuous(labels = scales::percent) +
  ggtitle("Unemployment Rate by Percent of Population with Bachelors Degree")+
  xlab("Percent Population with Bachelors Degree (%)") +
  ylab("Unemployment Rate (%)") +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) 

#SEIFA_Edu_Occ_Index
regional %>% 
  ggplot(aes(x = SEIFA_Edu_Occ_Index, y = unemployment_rate)) +
  geom_point() +
  geom_text(aes(label = ifelse(SA2_CODE == "101061542",as.character(SA2_NAME),'')),colour = "#3d9e5f",hjust = -0.2, vjust = 1) + 
  geom_text(aes(label = ifelse(SA2_CODE == "111031231",as.character(SA2_NAME),'')),colour = "red",hjust = -0.1, vjust = 0) + 
  annotate("point", x = 956, y = .1586, colour = "red", shape = 21, stroke = 2, size = 5) +
  annotate("point", x = 1082, y = .0283, colour = "#3d9e5f", shape = 21, stroke = 2, size = 5) +
  scale_y_continuous(labels = scales::percent) +
  ggtitle("Unemployment Rate by SEIFA Index of Education and Occupation")+
  xlab("Index of Education and Occupation Rating") +
  ylab("Unemployment Rate (%)") +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) 

#SEIFA_Economic_Res_Index
regional %>% 
  ggplot(aes(x = SEIFA_Economic_Res_Index, y = unemployment_rate)) +
  geom_point() +
  geom_text(aes(label = ifelse(SA2_CODE == "101061542",as.character(SA2_NAME),'')),colour = "#3d9e5f",hjust = -0.2, vjust = 1) + 
  geom_text(aes(label = ifelse(SA2_CODE == "111031231",as.character(SA2_NAME),'')),colour = "red",hjust = -0.1, vjust = 0) + 
  annotate("point", x = 854, y = .1586, colour = "red", shape = 21, stroke = 2, size = 5) +
  annotate("point", x = 1124, y = .0283, colour = "#3d9e5f", shape = 21, stroke = 2, size = 5) +
  scale_y_continuous(labels = scales::percent) +
  ggtitle("Unemployment Rate by SEIFA Index of Economic Resources")+
  xlab("Index of Economic Resources Rating") +
  ylab("Unemployment Rate (%)") +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) 

#SEIFA_Rel_SocioEco_Adv_Disadv_Index
regional %>% 
  ggplot(aes(x = SEIFA_Rel_SocioEco_Adv_Disadv_Index, y = unemployment_rate)) +
  geom_point() +
  geom_text(aes(label = ifelse(SA2_CODE == "101061542",as.character(SA2_NAME),'')),colour = "#3d9e5f",hjust = -0.2, vjust = 1) + 
  geom_text(aes(label = ifelse(SA2_CODE == "111031231",as.character(SA2_NAME),'')),colour = "red",hjust = -0.1, vjust = 0) + 
  annotate("point", x = 906, y = .1586, colour = "red", shape = 21, stroke = 2, size = 5) +
  annotate("point", x = 1092, y = .0283, colour = "#3d9e5f", shape = 21, stroke = 2, size = 5) +
  scale_y_continuous(labels = scales::percent) +
  ggtitle("Unemployment Rate by Index of Relative Socio-Economic Advantage and Disadvantage")+
  xlab("Index of Relative Socio-Economic Advantage and Disadvantage") +
  ylab("Unemployment Rate (%)") +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) 

#SEIFA_Rel_SocioEco_Disadv_Index
regional %>% 
  ggplot(aes(x = SEIFA_Rel_SocioEco_Disadv_Index, y = unemployment_rate)) +
  geom_point() +
  geom_text(aes(label = ifelse(SA2_CODE == "101061542",as.character(SA2_NAME),'')),colour = "#3d9e5f",hjust = 0.5, vjust = 2) + 
  geom_text(aes(label = ifelse(SA2_CODE == "111031231",as.character(SA2_NAME),'')),colour = "red",hjust = -0.1, vjust = 0) + 
  annotate("point", x = 892, y = .1586, colour = "red", shape = 21, stroke = 2, size = 5) +
  annotate("point", x = 1084, y = .0283, colour = "#3d9e5f", shape = 21, stroke = 2, size = 5) +
  scale_y_continuous(labels = scales::percent) +
  ggtitle("Unemployment Rate by Index of Relative Socio-Economic Disadvantage")+
  xlab("Index of Relative Socio-Economic Disadvantage") +
  ylab("Unemployment Rate (%)") +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) 

#Indigenous Population
regional %>% 
  ggplot(aes(x = INDIG_POP/LAB_FORCE, y = unemployment_rate)) +
  geom_point() +
  geom_text(aes(label = ifelse(SA2_CODE == "101061542",as.character(SA2_NAME),'')),colour = "#3d9e5f",hjust = -0.2, vjust = 1) + 
  geom_text(aes(label = ifelse(SA2_CODE == "111031231",as.character(SA2_NAME),'')),colour = "red",hjust = -0.1, vjust = 0) + 
  annotate("point", x = 0.0712, y = .1586, colour = "red", shape = 21, stroke = 2, size = 5) +
  annotate("point", x = 0.0309, y = .0283, colour = "#3d9e5f", shape = 21, stroke = 2, size = 5) +
  scale_y_continuous(labels = scales::percent) +
  scale_x_continuous(labels = scales::percent) +
  ggtitle("Unemployment Rate by Indigenous Population (%)")+
  xlab("Indigenous Population (%)") +
  ylab("Unemployment Rate (%)") +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) 


#Certificate Education
regional %>% 
  ggplot(aes(x = EDU_CERTIFICATE_MOD/LAB_FORCE, y = unemployment_rate)) +
  geom_point() +
  geom_text(aes(label = ifelse(SA2_CODE == "101061542",as.character(SA2_NAME),'')),colour = "#3d9e5f",hjust = -0.2, vjust = 1) + 
  geom_text(aes(label = ifelse(SA2_CODE == "111031231",as.character(SA2_NAME),'')),colour = "red",hjust = -0.1, vjust = 0) + 
  annotate("point", x = 0.281, y = .1586, colour = "red", shape = 21, stroke = 2, size = 5) +
  annotate("point", x = 0.300, y = .0283, colour = "#3d9e5f", shape = 21, stroke = 2, size = 5) +
  scale_y_continuous(labels = scales::percent) +
  ggtitle("Unemployment Rate by Percent of Population with Tertiary Certificate")+
  xlab("Index of Relative Socio-Economic Disadvantage") +
  ylab("Unemployment Rate (%)") +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) 

#Tertiary Education
regional %>% 
  ggplot(aes(x = (EDU_CERTIFICATE_MOD + EDU_BACHELOR_MOD + EDU_POSTGRAD_MOD + EDU_DIPLOMA_MOD)/LAB_FORCE, y = unemployment_rate)) +
  geom_point() +
  geom_text(aes(label = ifelse(SA2_CODE == "101061542",as.character(SA2_NAME),'')),colour = "#3d9e5f",hjust = -0.2, vjust = 1) + 
  geom_text(aes(label = ifelse(SA2_CODE == "111031231",as.character(SA2_NAME),'')),colour = "red",hjust = -0.1, vjust = 0) + 
  annotate("point", x = 0.464, y = .1586, colour = "red", shape = 21, stroke = 2, size = 5) +
  annotate("point", x = 0.581, y = .0283, colour = "#3d9e5f", shape = 21, stroke = 2, size = 5) +
  scale_y_continuous(labels = scales::percent) +
  ggtitle("Unemployment Rate by Percent of Population with Tertiary Certificate")+
  xlab("Index of Relative Socio-Economic Disadvantage") +
  ylab("Unemployment Rate (%)") +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) 

#Ancestry
regional %>% 
  ggplot(aes(x = ANCESTRY_BOTH_OS/LAB_FORCE, y = unemployment_rate)) +
  geom_point() +
  geom_text(aes(label = ifelse(SA2_CODE == "101061542",as.character(SA2_NAME),'')),colour = "#3d9e5f",hjust = -0.2, vjust = 1) + 
  geom_text(aes(label = ifelse(SA2_CODE == "111031231",as.character(SA2_NAME),'')),colour = "red",hjust = -0.1, vjust = 0) + 
  annotate("point", x = 0.311, y = .1586, colour = "red", shape = 21, stroke = 2, size = 5) +
  annotate("point", x = 0.137, y = .0283, colour = "#3d9e5f", shape = 21, stroke = 2, size = 5) +
  scale_y_continuous(labels = scales::percent) +
  ggtitle("Unemployment Rate by Percent of Population with Both Parents Born Overseas")+
  xlab("Percent of Population with Both Parents Born Overseas (%)") +
  ylab("Unemployment Rate (%)") +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) 

regional %>% 
  ggplot(aes(x = LANG_HOME_ENGLISH_MOD/LAB_FORCE, y = unemployment_rate)) +
  geom_point() +
  geom_text(aes(label = ifelse(SA2_CODE == "101061542",as.character(SA2_NAME),'')),colour = "#3d9e5f",hjust = -0.2, vjust = 1) + 
  geom_text(aes(label = ifelse(SA2_CODE == "111031231",as.character(SA2_NAME),'')),colour = "red",hjust = -0.1, vjust = 0) + 
  annotate("point", x = 0.680, y = .1586, colour = "red", shape = 21, stroke = 2, size = 5) +
  annotate("point", x = 0.879, y = .0283, colour = "#3d9e5f", shape = 21, stroke = 2, size = 5) +
  scale_x_continuous(labels = scales::percent) +
  scale_y_continuous(labels = scales::percent) +
  ggtitle("Unemployment Rate by Percent of Households where English Spoken at Home")+
  xlab("Percent of Households where English Spoken at Home (%)") +
  ylab("Unemployment Rate (%)") +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) 

regional %>% 
  ggplot(aes(x = ARRIVAL_LAST_20 /LAB_FORCE, y = unemployment_rate)) +
  geom_point() +
  geom_text(aes(label = ifelse(SA2_CODE == "101061542",as.character(SA2_NAME),'')),colour = "#3d9e5f",hjust = -0.15, vjust = 1) + 
  geom_text(aes(label = ifelse(SA2_CODE == "111031231",as.character(SA2_NAME),'')),colour = "red",hjust = 1.1, vjust = 1) + 
  annotate("point", x = 0.222, y = .1586, colour = "red", shape = 21, stroke = 2, size = 5) +
  annotate("point", x = 0.0304, y = .0283, colour = "#3d9e5f", shape = 21, stroke = 2, size = 5) +
  scale_y_continuous(labels = scales::percent) +
  ggtitle("Unemployment Rate by Percent of Population Arrived in Last 20 Years")+
  xlab("Percent of Population Arrived in Last 20 Years (%)") +
  ylab("Unemployment Rate (%)") +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) 

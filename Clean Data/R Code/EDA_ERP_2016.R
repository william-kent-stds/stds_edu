library(tidyverse)
library(janitor)
library(skimr)
library(gridExtra)
library(corrplot)

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

#
# ERP vs Employment -----------------------------------------------------------
#

erp <- read_csv(
  "../../Raw Data/Data Files/ABS/ERP/ABS_ERP_ASGS2016_25042019132433480.csv"
)

erp <- erp %>% 
  select(-c("MEASURE", "Measure", "SEX_ABS", "AGE", "FREQUENCY", "Frequency", 
            "TIME", "Flag Codes", "Flags", "REGIONTYPE", "Geography Level")) %>% 
  rename(sa2_code = ASGS_2016) %>% 
  clean_names()
erp$age <- factor(erp$age, levels = erp$age, labels = erp$age)

pop_pyr_erp <- erp %>% 
  mutate(value = ifelse(sex == "Males", -1 * value, value))

ggplot(pop_pyr_erp, mapping = aes(x = age, y = value, fill = sex)) +
  geom_bar(stat = "identity", width = .85) +
  scale_y_continuous(labels = c('300k', '200k', '100k', '0', '100k', '200k', '300k')) +
  labs(x = "Age band", y = "Population", fill = "Sex", 
       title = "Population in NSW by Age and Sex") +
  coord_flip() +
  theme_bw() +
  theme(plot.title = element_text(hjust = .5, face = "bold", size = 14),
        axis.ticks = element_blank(),
        text = element_text(family = "Avenir", size = 12)) +
  scale_fill_brewer(palette = "Set1")

# Male and Female distributions are similar
erp %>% group_by(sex) %>% summarise(total = sum(value))
erp %>% group_by(age) %>% summarise(total = sum(value)) %>% arrange(-total) %>%
  ggplot(mapping = aes(x = age, y = total)) + geom_bar(stat = "identity") +
  labs(x = "Age band", y = "Total population for each age band")

erp_by_sex <- erp %>%
  group_by(sa2_code, sex) %>%
  summarise(total_value = sum(value)) %>% 
  spread(sex, total_value) %>% 
  clean_names() %>% 
  mutate(total = females + males,
         male_prop = males / total,
         female_prop = females / total)

erp_by_age <- erp %>%
  group_by(sa2_code, age) %>%
  summarise(total_value = sum(value)) %>% 
  spread(age, total_value) %>% 
  clean_names()

erp_by_age <- erp_by_age %>%
  mutate(total = sum(erp_by_age[erp_by_age$sa2_code == sa2_code, 2:19]),
         working_age = sum(erp_by_age[erp_by_age$sa2_code == sa2_code, 5:14]),
         non_working_age = total - working_age,
         perc_working_age = working_age / total)
    
employed <- read_csv("../Data Files/ABS/Employed_SA2.csv") %>% clean_names()
skim(employed)

employed_by_sex <- erp_by_sex %>% 
  left_join(employed, by = "sa2_code") %>% 
  filter(total > 1000)
employed_by_sex %>% arrange(-male_prop)

# Seems no correlation between the whole population and unemployemnt 
gg_total_sex_employ <- ggplot(data = employed_by_sex, mapping = aes(x = total, y = perc_unemployed)) + 
  geom_point() +
  labs(x = "Total population", y = "Percentage of Unemployment")
gg_male_prop_employ <- ggplot(data = employed_by_sex, mapping = aes(x = male_prop, y = perc_unemployed)) +
  geom_point() +
  labs(x = "Male proportion", y = "Percentage of Unemployment")
gg_female_prop_employ <- ggplot(data = employed_by_sex, mapping = aes(x = female_prop, y = perc_unemployed)) +
  geom_point() +
  labs(x = "Female proportion", y = "Percentage of Unemployment")
grid.arrange(gg_total_sex_employ, gg_male_prop_employ, gg_female_prop_employ)

employed_by_working_age <- erp_by_age %>% 
  left_join(employed, by = "sa2_code") %>% 
  filter(total > 1000)

ggplot(data = employed_by_working_age) +
  geom_point(mapping = aes(x = perc_working_age, y = perc_unemployed)) +
  labs(x = "Populcation Percentage of Working Age", y = "Percentage of Unemployment")

corrplot(cor(
  employed_by_sex %>% 
    ungroup() %>% 
    select(total, male_prop, female_prop, perc_unemployed)
))

cor(employed_by_working_age$perc_working_age, employed_by_working_age$perc_unemployed)

#
# House Hold Composition vs Employment
# 

mesh_block <- read_csv("../../Raw Data/Data Files/ABS/Mesh_Blocks/MB_2016_NSW.csv")
nsw_sa2_codes <- mesh_block %>% 
  filter(STATE_CODE_2016 == 1) %>% 
  select(SA2_MAINCODE_2016) %>% 
  rename(sa2_code = SA2_MAINCODE_2016) %>% 
  distinct(sa2_code)

household <- read_csv("../Data Files/ABS/HouseHold_Composition_SA2.csv") %>% clean_names()
household <- household[household$sa2_code %in% nsw_sa2_codes$sa2_code, ]

skim(household)

# employed vs house hold types
employed_household <- household %>% 
  left_join(employed, by = "sa2_code") %>% 
  na.omit() %>% 
  filter(hhold_fam_one + hhold_fam_multi + hhold_non_fam > 500)

gg_employed_household <- ggplot(data = employed_household)

unemployed_one_fam <- gg_employed_household +
  geom_point(mapping = aes(x = perc_hhold_fam_one, y = perc_unemployed))
unemployed_multi_fam <- gg_employed_household +
  geom_point(mapping = aes(x = perc_hhold_fam_multi, y = perc_unemployed))
unemployed_non_fam <- gg_employed_household +
  geom_point(mapping = aes(x = perc_hhold_non_fam, y = perc_unemployed))

grid.arrange(unemployed_one_fam, unemployed_multi_fam, unemployed_non_fam)

# employed vs house hold size
unemployed_hh_1_2 <- gg_employed_household +
  geom_point(mapping = aes(x = perc_hhold_size_1_2, y = perc_unemployed))
unemployed_hh_3_5 <- gg_employed_household +
  geom_point(mapping = aes(x = perc_hhold_size_3_5, y = perc_unemployed))
unemployed_hh_6 <- gg_employed_household +
  geom_point(mapping = aes(x = perc_hhold_size_6, y = perc_unemployed))

grid.arrange(unemployed_hh_1_2, unemployed_hh_3_5, unemployed_hh_6)

corrplot(cor(
  employed_household %>% 
    select(perc_hhold_fam_multi:perc_hhold_non_fam, 
           perc_hhold_size_1_2:perc_hhold_size_6, 
           perc_unemployed)
))

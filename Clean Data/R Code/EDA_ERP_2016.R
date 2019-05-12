library(tidyverse)
library(janitor)
library(skimr)
library(grid)
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
        axis.ticks = element_blank()) +
  scale_fill_manual(values = c("#1F988B", "#37598C"))
  # scale_fill_brewer(palette = "Set1")

# Male and Female distributions are similar
erp %>% group_by(sex) %>% summarise(total = sum(value))
erp %>% group_by(age) %>% summarise(total = sum(value)) %>% arrange(-total) %>%
  ggplot(mapping = aes(x = age, y = total)) + geom_bar(stat = "identity") +
  labs(x = "Age band", y = "Total population for each age band")

erp_by_sex <- erp %>%
  group_by(sa2_code, region, sex) %>%
  summarise(total_value = sum(value)) %>% 
  spread(sex, total_value) %>% 
  clean_names() %>% 
  mutate(total = females + males,
         male_prop = males / total,
         female_prop = females / total)

erp_by_age <- erp %>%
  group_by(sa2_code, region, age) %>%
  summarise(total_value = sum(value)) %>% 
  spread(age, total_value) %>% 
  clean_names()

erp_by_age <- erp_by_age %>%
  mutate(total = sum(erp_by_age[erp_by_age$sa2_code == sa2_code, 3:20]),
         working_age = sum(erp_by_age[erp_by_age$sa2_code == sa2_code, 6:15]),
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
  geom_smooth(se = FALSE) +
  labs(x = "Total population", y = "Percentage of Unemployment")
gg_male_prop_employ <- ggplot(data = employed_by_sex, mapping = aes(x = male_prop, y = perc_unemployed)) +
  geom_point() +
  geom_smooth(se = FALSE) +
  labs(x = "Male proportion", y = "Percentage of Unemployment")
gg_female_prop_employ <- ggplot(data = employed_by_sex, mapping = aes(x = female_prop, y = perc_unemployed)) +
  geom_point() +
  geom_smooth(se = FALSE) +
  labs(x = "Female proportion", y = "Percentage of Unemployment")
grid.arrange(gg_total_sex_employ, gg_male_prop_employ, gg_female_prop_employ)

employed_by_working_age <- erp_by_age %>% 
  left_join(employed, by = "sa2_code") %>% 
  filter(total > 1000)

ggplot(data = employed_by_working_age, mapping = aes(x = perc_working_age, y = perc_unemployed)) +
  geom_point() +
  geom_smooth(se = FALSE) +
  labs(x = "Populcation Percentage of Working Age", y = "Percentage of Unemployment")

corrplot(cor(
  employed_by_sex %>% 
    ungroup() %>% 
    select(total, male_prop, female_prop, perc_unemployed)
), method = "number")

cor(employed_by_working_age$perc_working_age, employed_by_working_age$perc_unemployed)

#
# House Hold Composition vs Employment
# 

mesh_block <- read_csv("../../Raw Data/Data Files/ABS/Mesh_Blocks/MB_2016_NSW.csv")
nsw_sa2_codes <- mesh_block %>% 
  filter(STATE_NAME_2016 == "New South Wales") %>% 
  select(SA2_MAINCODE_2016, SA2_NAME_2016) %>% 
  rename(sa2_code = SA2_MAINCODE_2016, region = SA2_NAME_2016) %>% 
  distinct(sa2_code, region)

household <- read_csv("../Data Files/ABS/HouseHold_Composition_SA2.csv") %>% clean_names()
# household <- household[household$sa2_code %in% nsw_sa2_codes$sa2_code, ]
household <- household %>% inner_join(nsw_sa2_codes)

skim(household)
glimpse(household)

# employed vs house hold types
employed_household <- household %>% 
  left_join(employed, by = "sa2_code") %>% 
  na.omit() %>% 
  filter(hhold_fam_one + hhold_fam_multi + hhold_non_fam > 500)

unemployed_one_fam <- ggplot(data = employed_household, mapping = aes(x = perc_hhold_fam_one, y = perc_unemployed)) +
  geom_point() +
  geom_smooth(se = FALSE)
unemployed_multi_fam <- ggplot(data = employed_household, mapping = aes(x = perc_hhold_fam_multi, y = perc_unemployed)) +
  geom_point() +
  geom_smooth(se = FALSE)
unemployed_non_fam <- ggplot(data = employed_household, mapping = aes(x = perc_hhold_non_fam, y = perc_unemployed)) +
  geom_point() +
  geom_smooth(se = FALSE)

grid.arrange(unemployed_one_fam, unemployed_multi_fam, unemployed_non_fam)


p1 <- ggplot(data = employed_household, mapping = aes(x = perc_hh_1, y = perc_unemployed)) +
  geom_point()  +
  geom_smooth(se = FALSE)
    
p2 <- ggplot(data = employed_household, mapping = aes(x = perc_hh_2, y = perc_unemployed)) +
  geom_point()  +
  geom_smooth(se = FALSE)

p3 <- ggplot(data = employed_household, mapping = aes(x = perc_hh_3, y = perc_unemployed)) +
  geom_point()  +
  geom_smooth(se = FALSE)

p4 <- ggplot(data = employed_household, mapping = aes(x = perc_hh_4, y = perc_unemployed)) +
  geom_point()  +
  geom_smooth(se = FALSE)

p5 <- ggplot(data = employed_household, mapping = aes(x = perc_hh_5, y = perc_unemployed)) +
  geom_point()  +
  geom_smooth(se = FALSE)

p6 <- ggplot(data = employed_household, mapping = aes(x = perc_hh_6, y = perc_unemployed)) +
  geom_point()  +
  geom_smooth(se = FALSE)

p7 <- ggplot(data = employed_household, mapping = aes(x = perc_hh_7, y = perc_unemployed)) +
  geom_point()  +
  geom_smooth(se = FALSE)

p8 <- ggplot(data = employed_household, mapping = aes(x = perc_hh_8_more, y = perc_unemployed)) +
  geom_point()  +
  geom_smooth(se = FALSE)

grid.arrange(p1, p2, p3, p4, p5, p6, p7, p8)

corrplot(cor(
  employed_household %>% 
    select(perc_hhold_size_1_2:perc_hhold_size_over_5, 
           perc_unemployed)
  ), method = "number", type = "lower")

raw_hh <- read_csv("../../Raw Data/Data Files/ABS/Household_Composition_SA2_2016.csv")
skim(raw_hh)

raw_hh %>% group_by(HHOLD_GROUP) %>% summarise(total = sum(obsValue))
raw_hh %>% group_by(HHOLD_GROUP, HHOLD_TYPE, TOTAL_IN_HOUSE) %>% summarise(total = sum(obsValue))
  
employed_household %>% 
  filter(perc_hhold_size_over_5 > 0.1) %>% 
  select(sa2_code, region, lab_force, unemployed, perc_unemployed) %>% 
  left_join(erp_by_age %>% select(-c(x0_4:x85_and_over), -total)) %>% 
  arrange(-perc_unemployed)

employed_household %>% 
  gather(key = household_size_range, 
         value = household_size_value,
         c(hhold_size_1_2:hhold_size_over_5)) %>% 
  ggplot(mapping = aes(x = household_size_range, y = household_size_value)) +
    geom_boxplot() +
    scale_x_discrete(labels = c("1-2 people", "3-5 people", "Over 5 people")) +
    labs(x = "House Hold Size", y = "Population",
         title = "Distribution of House Hold Sizes Across SA2 Regions") +
    theme(plot.title = element_text(hjust = .5, face = "bold", size = 16),
          axis.ticks = element_blank(),
          text = element_text(size = 14))

# employed vs house hold size
unemployed_hh_1_2 <- ggplot(data = employed_household, mapping = aes(x = perc_hhold_size_1_2, y = perc_unemployed)) +
  geom_point() +
  geom_smooth(se = FALSE) +
  labs(x = "Percentage of 1-2 People in House (%)", y = "Percentage of Unemployed (%)") +
  theme(text = element_text(size = 14))
unemployed_hh_3_5 <- ggplot(data = employed_household, mapping = aes(x = perc_hhold_size_3_5, y = perc_unemployed)) +
  geom_point() +
  geom_smooth(se = FALSE) +
  labs(x = "Percentage of 3-5 People in House (%)", y = "Percentage of Unemployed (%)") +
  theme(text = element_text(size = 14))
unemployed_hh_over_5 <- ggplot(data = employed_household, mapping = aes(x = perc_hhold_size_over_5, y = perc_unemployed)) +
  geom_point() +
  geom_smooth(se = FALSE) +
  labs(x = "Percentage of over 5 People in House (%)", y = "Percentage of Unemployed (%)") +
  theme(text = element_text(size = 14))

grid.arrange(unemployed_hh_1_2, unemployed_hh_3_5, unemployed_hh_over_5, 
             top = textGrob("Rate of Unemployment vs Proportion of People in House",
                            gp = gpar(fontsize = 16, fontface = "bold")))

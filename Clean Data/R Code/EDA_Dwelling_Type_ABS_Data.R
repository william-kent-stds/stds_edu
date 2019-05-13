library(tidyverse)
library(Hmisc)
library(corrplot)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# read cleaned data set
dwelling_type <- read_csv("../Data Files/ABS/Dwelling_Type_SA2.csv")
sa2 <- read_csv("../Data Files/ABS/NSW_SA2_FOR_MODEL.csv")
employed <- read_csv("../Data Files/ABS/Employed_SA2.csv")

# No duplicate SA2 Codes
sa2 %>% 
  group_by(SA2_MAINCODE_2016) %>% 
  summarise(cnt = n()) %>% 
  filter(cnt > 1)

# Some SA2's don't have any dwellings - positive skew
dwelling_type %>% 
  mutate(TOTAL= DWELLING_HOUSE + DWELLING_FLAT + DWELLING_SEMI + DWELLING_OTHER) %>% 
  ggplot() +
  geom_histogram(aes(x = TOTAL), bins = 50)

# 62 SA2's have no dwellings - 7 in NSW, a military base, centennial park, a NP, a cemetry, and Industrial area, Banksmeadow is whaves and industry
dwelling_type %>% 
  inner_join(sa2, by = c("SA2_CODE" = "SA2_MAINCODE_2016")) %>% 
  mutate(TOTAL= DWELLING_HOUSE + DWELLING_FLAT + DWELLING_SEMI + DWELLING_OTHER)

# There are a couple of areas with high numbers of dwellings - Waterloo/Beaconsfield in NSW is high density
dwelling_type %>% 
  mutate(TOTAL= DWELLING_HOUSE + DWELLING_FLAT + DWELLING_SEMI + DWELLING_OTHER) %>% 
  filter(TOTAL > 15000) %>% 
  left_join(sa2_data, by = c("SA2_CODE" = "SA2_MAINCODE_2016")) %>% 
  select(SA2_CODE, TOTAL, SA2_NAME_2016, STATE_NAME_2016) %>% 
  filter(between(SA2_CODE,100000000,200000000))

# Remove SA2's with no dwellings and only show NSW SA2's
dwelling_type_filtered <- dwelling_type %>% 
  mutate(TOTAL= DWELLING_HOUSE + DWELLING_FLAT + DWELLING_SEMI + DWELLING_OTHER) %>% 
  filter(TOTAL != 0) %>% 
  inner_join(sa2_data, by = c("SA2_CODE" = "SA2_MAINCODE_2016"))

## DWELLING HOUSE
# Some areas in NSW have no houses - data may be slightly skewed
dwelling_type_filtered %>%
  ggplot() +
  geom_histogram(aes(x = DWELLING_HOUSE), bins = 50)

# Standardise data and confirm data has a long tail 
house_std <- scale(dwelling_type_filtered$DWELLING_HOUSE)
qqnorm(house_std)
abline(a = 0, b = 1, col = 'grey')

## DWELLING FLAT
# There are 21 no flat SA2's in NSW - industrial areas, offshore shipping, Rural areas
dwelling_type_filtered %>% 
  filter(DWELLING_FLAT == 0) %>% 
  select(SA2_CODE, SA2_NAME_2016, PERC_DWELLING_HOUSE, PERC_DWELLING_FLAT, PERC_DWELLING_SEMI, PERC_DWELLING_OTHER)

# Some areas in NSW have no houses - data skewed
dwelling_type_filtered %>%
  ggplot() +
  geom_histogram(aes(x = DWELLING_FLAT), bins = 100)

# Standardise data and confirm data is not normally distributed 
flat_std <- scale(dwelling_type_filtered$DWELLING_FLAT)
qqnorm(flat_std)
abline(a = 0, b = 1, col = 'grey')

## DWELLING SEMI
# There are 19 no semi SA2's in NSW - industrial areas, airport, offshore shipping, rural areas
dwelling_type_filtered %>% 
  filter(DWELLING_SEMI == 0) %>% 
  select(SA2_CODE, SA2_NAME_2016, PERC_DWELLING_HOUSE, PERC_DWELLING_FLAT, PERC_DWELLING_SEMI, PERC_DWELLING_OTHER)

# Some areas in NSW have no houses - data skewed
dwelling_type_filtered %>%
  ggplot() +
  geom_histogram(aes(x = DWELLING_SEMI), bins = 100)

# Standardise data and confirm data is not normally distributed 
semi_std <- scale(dwelling_type_filtered$DWELLING_SEMI)
qqnorm(semi_std)
abline(a = 0, b = 1, col = 'grey')

# Check correlation between variables
dwelling_matrix <- dwelling_type_filtered %>% 
  select(DWELLING_FLAT,DWELLING_HOUSE,DWELLING_OTHER,DWELLING_SEMI) %>% 
  as.matrix()

# Show values - nothing really high
rcorr(dwelling_matrix, type = "pearson")

# And a plot for good measure
corrplot(cor(dwelling_matrix), method = "ellipse")

# Have a quick check of the Unemployment and Dwelling Type
dwelling_type %>% 
  inner_join(sa2, by = c("SA2_CODE" = "SA2_MAINCODE_2016")) %>% 
  inner_join(employed, by = "SA2_CODE") %>% 
  ggplot() +
  geom_point(aes(x = PERC_DWELLING_HOUSE, y = PERC_UNEMPLOYED))
library(tidyverse)
library(Hmisc)
library(corrplot)
library(sf)
library(viridis)
library(Amelia)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# read cleaned data set
lah_data <- read_csv("../Data Files/ABS/Language_at_Home_SA2.csv")
employed_data <- read_csv("../Data Files/ABS/Employed_SA2.csv")
sa2_data <- read_csv("../../Raw Data/Data Files/ABS/Mesh_Blocks/MB_2016_NSW.csv")

nsw_sa2 <- sa2_data %>% 
  filter(STATE_NAME_2016 == "New South Wales") %>% 
  distinct(SA2_MAINCODE_2016, SA2_NAME_2016)

# Get language at home data for NSW only
nsw_lah_data <- lah_data %>% 
  inner_join(nsw_sa2, by = c("SA2_CODE" = "SA2_MAINCODE_2016"))

glimpse(nsw_lah_data)

# Plot the number of homes where english is the langauage spoken at home
nsw_lah_data %>% 
  ggplot() +
  geom_histogram(aes(x = LANG_HOME_ENGLISH), bins = 50)

# Other than the tail (the zeros) it seems to be close to normal distribution
lah_std <- scale(nsw_lah_data$LANG_HOME_ENGLISH)
qqnorm(lah_std)
abline(a = 0, b = 1, col = 'grey')

# Some SA2's have zero homes that speak English - where are they?
nsw_lah_data %>% 
  filter(LANG_HOME_ENGLISH < 10) %>% 
  select(SA2_CODE, SA2_NAME_2016, LANG_HOME_ENGLISH)

# These are industrial areas, military bases and cemetery (three dwellings speak English at home in Rockwood Cemetery - spooky)
# What about percentages
nsw_lah_data %>% 
  ggplot() +
  geom_histogram(aes(x = PERC_LANG_HOME_ENGLISH), bins = 50)

lah_std <- scale(nsw_lah_data$PERC_LANG_HOME_ENGLISH)
qqnorm(lah_std)
abline(a = 0, b = 1, col = 'grey')

# Percent is definitely not normally distributed with the big positive skew.

# Wow a really long tail. Most SA2's are up around 100% but there are quite a lot less than that.
# Where are these low English areas?
nsw_lah_data %>% 
  filter(PERC_LANG_HOME_ENGLISH < 0.25) %>% 
  select(SA2_CODE, SA2_NAME_2016, PERC_LANG_HOME_ENGLISH) %>% 
  arrange(PERC_LANG_HOME_ENGLISH)

# Only 10% of people speak English in Auburn North, 14% in Auburn Central
# Have a look at missing values
missmap(nsw_lah_data, x.cex = 0.4)

nsw_lah_data %>% 
  filter(is.na(PERC_LANG_HOME_ENGLISH)) %>% 
  select(SA2_CODE, SA2_NAME_2016, PERC_LANG_HOME_ENGLISH, LANG_HOME_ENGLISH)

# How does that look against unemployment rates
nsw_lah_data %>% 
  inner_join(employed_data, by = c("SA2_CODE")) %>% 
  filter(PERC_UNEMPLOYED < 0.2) %>% 
  ggplot() +
  geom_point(aes(x = PERC_LANG_HOME_ENGLISH, y = PERC_UNEMPLOYED)) +
  geom_smooth(aes(x = PERC_LANG_HOME_ENGLISH, y = PERC_UNEMPLOYED))

# There seems to be a slight relationship. The SA2's with the lowest % of people speaking English at home have the highest unemployment rates.

nsw_lah_data %>% 
  inner_join(employed_data, by = c("SA2_CODE")) %>% 
  filter(PERC_UNEMPLOYED < 0.2) %>% 
  ggplot() +
  geom_point(aes(x = LANG_HOME_SWASIA, y = PERC_UNEMPLOYED))

# It seems language at home may have an impact on unemployment rate
# Now we'll do some stuff with maps - because they look cool
sa2_shape <- st_read("../../Raw Data/Data Files/ABS/SA2_Shapefile/SA2_2016_AUST.shp", quiet = TRUE)
combined_df <- merge(nsw_lah_data, sa2_shape, by.x = "SA2_CODE", by.y = "SA2_MAIN16")

# For greater Sydney to start with
combined_df %>% 
  filter(GCC_NAME16 == "Greater Sydney") %>% 
  ggplot() +
  geom_sf(aes(fill = PERC_LANG_HOME_ENGLISH)) +
  scale_fill_viridis("Percent of Household with English Spoken") +
  theme_bw()

# West and South West of Sydney have a lower percentage of households where English is spoken at home
# What about the rest of NSW 

combined_df %>% 
  ggplot() +
  geom_sf(aes(fill = PERC_LANG_HOME_ENGLISH)) +
  scale_fill_viridis("Percent of Household with English Spoken") +
  theme_bw()

# And the state is pretty much yellow, i.e. low numbers of people speaking anything other than English at home.

# Check correlation between variables
nsw_lah_matrix <- nsw_lah_data %>% 
  select(LANG_HOME_ENGLISH,LANG_HOME_EASIA,LANG_HOME_NEUROPE,LANG_HOME_INDIGENOUS,LANG_HOME_EEUROPE,LANG_HOME_OTHER,LANG_HOME_SASIA,LANG_HOME_SEUROPE,
         LANG_HOME_SWASIA) %>% 
  as.matrix()

# Show values - nothing really high
rcorr(nsw_lah_matrix, type = "pearson")

# And a plot for good measure
corrplot(cor(nsw_lah_matrix), method = "ellipse")

# There seems to be some sort of relationship where people that speak a Northern European language live in areas where English is widely spoken
# Southern and Eastern Europeans also seem to hang out together.
# I find the slightly negative correlation between indgenous languages and non-English languages interesting. Do new migrants not get an understanding
# of aboriginal life and culture?

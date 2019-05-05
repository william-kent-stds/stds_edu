library(tidyverse)
library(Hmisc)
library(corrplot)
library(sf)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# read cleaned data set
eng_prof_data <- read_csv("../Data Files/ABS/English_Proficiency_SA2.csv")
employed_data <- read_csv("../Data Files/ABS/Employed_SA2.csv")
sa2_data <- read_csv("../../Raw Data/Data Files/ABS/Mesh_Blocks/MB_2016_NSW.csv")

nsw_sa2 <- sa2_data %>% 
  filter(STATE_NAME_2016 == "New South Wales") %>% 
  distinct(SA2_MAINCODE_2016, SA2_NAME_2016)

# Get english proficiency data for NSW only
nsw_ep_data <- eng_prof_data %>% 
  inner_join(nsw_sa2, by = c("SA2_CODE" = "SA2_MAINCODE_2016"))

glimpse(nsw_ep_data)

# Plot the number of homes where english is the only language spoken
nsw_ep_data %>% 
  ggplot() +
  geom_histogram(aes(x = ENG_ONLY), bins = 50)

ep_std <- scale(nsw_ep_data$ENG_ONLY)
qqnorm(ep_std)
abline(a = 0, b = 1, col = 'grey')
# Distribution is sort of normal - apart from the tail at the end which is probably those pesky zeros

# Some SA2's have zero peope speaking English only - where are they?
nsw_ep_data %>% 
  filter(ENG_ONLY < 10) %>% 
  select(SA2_CODE, SA2_NAME_2016, ENG_ONLY)

# These are industrial areas, military bases and cemetery (three dwellings speak only English at home in Rockwood Cemetery - ummmmm)
# What about percentages
nsw_ep_data %>% 
  ggplot() +
  geom_histogram(aes(x = PERC_ENG_ONLY), bins = 50)

# Wow a really long tail. Most SA2's are up around 90% but there are quite a lot less than that.
# Where are these low English areas?
nsw_ep_data %>% 
  filter(PERC_ENG_ONLY < 0.25) %>% 
  select(SA2_CODE, SA2_NAME_2016, PERC_ENG_ONLY) %>% 
  arrange(PERC_ENG_ONLY)

# Only 10% of people speak English only in Auburn North, 13% in Auburn Central
# How does that look against unemployment rates
nsw_ep_data %>% 
  inner_join(employed_data, by = c("SA2_CODE")) %>% 
  filter(PERC_UNEMPLOYED < 0.2) %>% 
  ggplot() +
  geom_point(aes(x = PERC_ENG_ONLY, y = PERC_UNEMPLOYED)) +
  geom_smooth(aes(x = PERC_ENG_ONLY, y = PERC_UNEMPLOYED))

# There seems to be a slight relationship. The SA2's with the lowest % of people speaking English only have the highest unemployment rates.

nsw_ep_data %>% 
  inner_join(employed_data, by = c("SA2_CODE")) %>% 
  filter(PERC_UNEMPLOYED < 0.2) %>% 
  ggplot() +
  geom_point(aes(x = ENG_NOT_WELL, y = PERC_UNEMPLOYED))

# It seems English proficiency may have an impact on unemployment rate
# Now we'll do some stuff with maps - because they look cool
sa2_shape <- st_read("../../Raw Data/Data Files/ABS/SA2_Shapefile/SA2_2016_AUST.shp", quiet = TRUE)
combined_df <- merge(nsw_ep_data, sa2_shape, by.x = "SA2_CODE", by.y = "SA2_MAIN16")

# For greater Sydney to start with
combined_df %>% 
  filter(GCC_NAME16 == "Greater Sydney") %>% 
  ggplot() +
  geom_sf(aes(fill = PERC_ENG_ONLY)) +
  scale_fill_viridis("Percent of People English Only Spoken") +
  theme_bw()

# West and South West of Sydney have a lower percentage of households where English is spoken at home
# What about the rest of NSW 

combined_df %>% 
  ggplot() +
  geom_sf(aes(fill = PERC_ENG_ONLY)) +
  scale_fill_viridis("Percent of People English Only Spoken") +
  theme_bw()

# And the state is pretty much green, i.e. most people speak English only.

# We've looked at English Only what about people with very little English
nsw_ep_data %>% 
  ggplot() +
  geom_histogram(aes(x = ENG_NOT_WELL), bins = 50)

# No need to check - I'm pretty sure it's not normally distributed
# What about the percentages
nsw_ep_data %>% 
  ggplot() +
  geom_histogram(aes(x = PERC_ENG_NOT_WELL), bins = 50)

# Pretty similar to the total chart
# Correlation to unemployment
nsw_ep_data %>% 
  inner_join(employed_data, by = c("SA2_CODE")) %>% 
  filter(PERC_UNEMPLOYED < 0.2) %>% 
  ggplot() +
  geom_point(aes(x = PERC_ENG_NOT_WELL, y = PERC_UNEMPLOYED)) +
  geom_smooth(aes(x = PERC_ENG_NOT_WELL, y = PERC_UNEMPLOYED))

# There may be a slight relationship
# Where are these places were English is not spoken well?
nsw_ep_data %>% 
  filter(PERC_ENG_NOT_WELL > 0.15) %>% 
  select(SA2_CODE, SA2_NAME_2016, PERC_ENG_NOT_WELL) %>% 
  arrange(desc(PERC_ENG_NOT_WELL))

# The industrial areas can probably be removed but in Cabramatta over 25% of people can't speak English well

combined_df %>% 
  filter(GCC_NAME16 == "Greater Sydney") %>% 
  ggplot() +
  geom_sf(aes(fill = PERC_ENG_NOT_WELL)) +
  scale_fill_viridis("Percent of People That Don't Speak English Well") +
  theme_bw()

# West/South West of Sydney has the highest concentrations

# Check correlation between variables
nsw_ep_matrix <- nsw_ep_data %>% 
  select(ENG_NOT_WELL,ENG_ONLY,ENG_UNKNOWN,ENG_V_WELL,ENG_WELL) %>% 
  as.matrix()

# Show values - nothing really high
rcorr(nsw_ep_matrix, type = "pearson")

# And a plot for good measure
corrplot(cor(nsw_ep_matrix), method = "ellipse")

# It's interesting that English Not Well, English Well and English Very Well are all reasonably strongly correlated. Migrants with family.
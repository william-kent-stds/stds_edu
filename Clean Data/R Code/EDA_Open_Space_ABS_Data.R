library(tidyverse)
library(Hmisc)
library(corrplot)
library(sf)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# read cleaned data set
open_space_data <- read_csv("../Data Files/ABS/Open_Space_SA2.csv")
employed_data <- read_csv("../Data Files/ABS/Employed_SA2.csv")
sa2_data <- read_csv("../../Raw Data/Data Files/ABS/Mesh_Blocks/MB_2016_NSW.csv")

nsw_sa2 <- sa2_data %>% 
  filter(STATE_NAME_2016 == "New South Wales") %>% 
  distinct(SA2_MAINCODE_2016, SA2_NAME_2016)

# Get Open Space data for NSW only
nsw_os_data <- open_space_data %>% 
  inner_join(nsw_sa2, by = c("SA2_CODE" = "SA2_MAINCODE_2016"))

glimpse(nsw_os_data)

# Have a look at the distribution of open space
nsw_os_data %>% 
  ggplot() +
  geom_histogram(aes(x = PERC_OPEN_SPACE), bins = 50)

# There are some SA2's with no open space? and some that are 100%
a <- nsw_os_data %>% 
  filter(PERC_OPEN_SPACE < 0.01) %>% 
  select(SA2_CODE, SA2_NAME_2016, PERC_OPEN_SPACE)

View(a)

# It seems rural areas have plenty of agricultural land limited public open spacem, as well as a few Sydney suburbs
# What about the SA2's mostly open space
nsw_os_data %>% 
  filter(PERC_OPEN_SPACE > 0.9) %>% 
  select(SA2_CODE, SA2_NAME_2016, PERC_OPEN_SPACE)

# Mainly National Parks.
# And just to confirm the percent open space is not normally distributed.
os_std <- scale(nsw_os_data$PERC_OPEN_SPACE)
qqnorm(os_std)
abline(a = 0, b = 1, col = 'grey')

# What about total open space (or Parkland)
nsw_os_data %>% 
  ggplot() +
  geom_histogram(aes(x = Parkland), bins = 50)

# Weird - some SA2's with a large about of Open Space (probably the National Parks) and then a whole bunch with not alot.
# Let us do a check on Open Space and Unemployment
nsw_os_data %>% 
  inner_join(employed_data, by = c("SA2_CODE")) %>% 
  filter(PERC_UNEMPLOYED < 0.2) %>% 
  ggplot() +
  geom_point(aes(x = PERC_OPEN_SPACE, y = PERC_UNEMPLOYED))

# Looks like a whole bunch of dots. There doesn't seem to be a relationship
# Lets have a look at this on a map
sa2_shape <- st_read("../../Raw Data/Data Files/ABS/SA2_Shapefile/SA2_2016_AUST.shp", quiet = TRUE)
combined_df <- merge(nsw_os_data, sa2_shape, by.x = "SA2_CODE", by.y = "SA2_MAIN16")

#Start with a view of Greater Sydney
combined_df %>% 
  filter(GCC_NAME16 == "Greater Sydney") %>% 
  ggplot() +
  geom_sf(aes(fill = PERC_OPEN_SPACE)) +
  scale_fill_viridis("Percent Open Space") +
  theme_bw()

# Not surprising, the SA2's on the outskirts of Sydney have a lot of open space, National Parks anyone?
# And the rest of NSW
combined_df %>% 
  ggplot() +
  geom_sf(aes(fill = PERC_OPEN_SPACE)) +
  scale_fill_viridis("Percent Open Space") +
  theme_bw()

# Not a lot of open space in Western New South Wales.
# Let's confirm there is no correlation between Open Space and unemployment
nsw_os_matrix <- nsw_os_data %>% 
  inner_join(employed_data, by = c("SA2_CODE")) %>% 
  filter(PERC_UNEMPLOYED < 0.2) %>% 
  select(PERC_UNEMPLOYED,PERC_OPEN_SPACE) %>% 
  as.matrix()

# Show values - nothing really high
rcorr(nsw_os_matrix, type = "pearson")

# And a plot for good measure
corrplot(cor(nsw_os_matrix), method = "ellipse")

# Even the computer doesn't know. I reckon Open Space might go quickly when we get to the model

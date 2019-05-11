library(tidyverse)
library(Amelia)
library(sf)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Get mesh block data
sa2_data <- read_csv("../../Raw Data/Data Files/ABS/Mesh_Blocks/MB_2016_NSW.csv")

glimpse(sa2_data)

# Get New South Wales SA2's, and remove the "No usual address" entry
sa2_data <- sa2_data %>%
  filter(STATE_NAME_2016 == "New South Wales") %>% 
  distinct(SA2_MAINCODE_2016, SA2_NAME_2016, STATE_NAME_2016) %>% 
  filter(SA2_NAME_2016 != "No usual address (NSW)")

# Get Population and Employment data 
erp_data <- read_csv("../Data Files/ABS/ERP_SA2_2016.csv")
employ_data <- read_csv("../Data Files/ABS/Employed_SA2.csv")

# Retrieve required SA2's
clean_sa2 <- sa2_data %>% 
  inner_join(erp_data, by = c("SA2_MAINCODE_2016" = "sa2_code")) %>% 
  inner_join(employ_data, by = c("SA2_MAINCODE_2016" = "SA2_CODE")) %>% 
  mutate(TOTAL_POP = females + males,
         PERC_LAB_FORCE = LAB_FORCE / (females + males)) %>% 
  select(SA2_MAINCODE_2016, SA2_NAME_2016, TOTAL_POP, LAB_FORCE, PERC_LAB_FORCE) %>% 
  filter(TOTAL_POP > 500)

write_csv(clean_sa2, "../Data Files/ABS/NSW_SA2_FOR_MODEL.csv")

# Percent of population in labour force looks normally distributed.
clean_sa2 %>% 
  ggplot() +
  geom_histogram(aes(x = PERC_LAB_FORCE), bins = 50) +
  ggtitle("Distribution of SA2 population in the Labour Force") +
  xlab("Total Labour Force (%)") +
  ylab("Count of SA2's") +
  theme(plot.title = element_text(face = "bold")) +
  theme_bw()

# Places close to Sydney have a high percent in the labour force
clean_sa2 %>% 
  filter(PERC_LAB_FORCE > 0.6)

# Places on the coast outside of Sydney are probably high in the number of retirees.
clean_sa2 %>% 
  filter(PERC_LAB_FORCE < 0.32)

# No missing data
missmap(clean_sa2)

sa2_shape <- st_read("../../Raw Data/Data Files/ABS/SA2_Shapefile/SA2_2016_AUST.shp", quiet = TRUE)
combined_df <- merge(clean_sa2, sa2_shape, by.x = "SA2_MAINCODE_2016", by.y = "SA2_MAIN16")

# For greater Sydney to start with
combined_df %>% 
  filter(GCC_NAME16 == "Greater Sydney",
         SA4_NAME16 != "Central Coast",
         SA3_NAME16 != "Blue Mountains",
         SA3_NAME16 != "Hawkesbury") %>% 
  #distinct(SA3_NAME16)
  ggplot() +
  geom_sf(aes(fill = PERC_LAB_FORCE)) +
  scale_fill_viridis("Labour Force Participation", limits = c(0.29, 0.68)) +
  theme_bw() +
  ggtitle("Greater Sydney Labour Force Participation") +
  theme(plot.title = element_text(face = "bold"))
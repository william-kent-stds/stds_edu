####
# Created to help interogate the PISA data and understand who the data looks.
####
library(EdSurvey)
library(tidyverse)

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
# getwd() # Should be Raw Data/R Code

# Create directory Raw Data/Data Files/PISA Data if it doesn't exist
if (!dir.exists(path = "../../Raw Data/Data Files/PISA Data")){
  error("Pisa files do not exist")
}

# read the PISA data files for Australia
au_data <- readPISA("../../Raw Data/Data Files/PISA Data/PISA/2015", database = "INT", countries = 'AUS')

# read/math/science returns scores for each subdomain (10 for each), cnt = country, st004d01t = gender
au_data.df <- getData(au_data, c("cnt","read","math","scie","w_fstuwt","st004d01t"))

summary(au_data.df)

# Calculate summary statistics for AU - use weighted mean as advised by OECD, not sure how OECD calculate SE.
au_data_extended.df <- au_data.df %>%
  mutate(read_score = (pv1read + pv2read + pv3read + pv4read + pv5read + pv6read + pv7read + pv8read + pv9read + pv10read) / 10,
         math_score = (pv1math + pv2math + pv3math + pv4math + pv5math + pv6math + pv7math + pv8math + pv9math + pv10math) / 10,
         science_score = (pv1scie + pv2scie + pv3scie + pv4scie + pv5scie + pv6scie + pv7scie + pv8scie + pv9scie + pv10scie) / 10)
au_summary <- au_data_extended.df %>% 
  group_by(cnt,st004d01t) %>% 
  summarise(mean_read_score = weighted.mean(read_score, w_fstuwt),
            mean_math_core = weighted.mean(math_score, w_fstuwt),
            mean_science_score = weighted.mean(science_score, w_fstuwt),
            se_read_score = sd(read_score)/sqrt(length(read_score)),
            se_math_score = sd(math_score)/sqrt(length(math_score)),
            se_science_score = sd(science_score)/sqrt(length(science_score)))

au_summary

# Check distribution is normal for read scores
au_data_extended.df %>% 
  ggplot(aes(x = read_score)) +
  geom_histogram(data = subset(au_data_extended.df, st004d01t == 'FEMALE'), fill = "red", alpha = 0.2, bins = 50) +
  geom_histogram(data = subset(au_data_extended.df, st004d01t == 'MALE'), fill = "blue", alpha = 0.2, bins = 50) +
  ggtitle("Distribution of Read Scores for Males and Females") +
  labs(x = "Read Score", y = "Count")

# Check distribution is normal for math scores
au_data_extended.df %>% 
  ggplot(aes(x = math_score)) +
  geom_histogram(data = subset(au_data_extended.df, st004d01t == 'FEMALE'), fill = "red", alpha = 0.2, bins = 50) +
  geom_histogram(data = subset(au_data_extended.df, st004d01t == 'MALE'), fill = "blue", alpha = 0.2, bins = 50) +
  ggtitle("Distribution of Math Scores for Males and Females") +
  labs(x = "Read Score", y = "Count")

# Check distribution is normal for science scores
au_data_extended.df %>% 
  ggplot(aes(x = science_score)) +
  geom_histogram(data = subset(au_data_extended.df, st004d01t == 'FEMALE'), fill = "red", alpha = 0.2, bins = 50) +
  geom_histogram(data = subset(au_data_extended.df, st004d01t == 'MALE'), fill = "blue", alpha = 0.2, bins = 50) +
  ggtitle("Distribution of Science Scores for Males and Females") +
  labs(x = "Read Score", y = "Count")

## For Maths slightly more Males at the upper end of the scale, for science Males seems to be more diverse - more higher scores, more lower scores 

# Box plot for read_score
ggplot(au_data_extended.df) +
  geom_boxplot(aes(x = st004d01t, y = read_score)) +
  labs(x = "Gender", y = "Read Score")

# Box plot for math_score
ggplot(au_data_extended.df) +
  geom_boxplot(aes(x = st004d01t, y = math_score)) +
  labs(x = "Gender", y = "Maths Score")

# Box plot for math_score
ggplot(au_data_extended.df) +
  geom_boxplot(aes(x = st004d01t, y = science_score)) +
  labs(x = "Gender", y = "Science Score")
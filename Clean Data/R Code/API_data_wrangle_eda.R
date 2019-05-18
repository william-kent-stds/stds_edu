install.packages("rsdmx")

library(rsdmx)
library(tidyverse)
library(corrplot)

setwd("C:/Users/Rob/Documents/Masters/Masters - Sem 1/2. STDS/Assessments/AT2/data files cleaned by code")

#### Commute to work data ####

commute_to_work <- as.data.frame(readSDMX(providerId = "ABS", resource = "data", flowRef = "ABS_C16_G59_SA",key = "3.1+2+3+4+5+6+7+8+9+10+232.1.SA2", key.mode = "SDMX",start = 2016, end = 2016))

commute_ds_url = "http://stat.data.abs.gov.au/restsdmx/sdmx.ashx/GetDataStructure/ABS_C16_G59_SA"

commute_dataStructure <- readSDMX(commute_ds_url)

commute_codelist_insert <- slot(commute_dataStructure, "codelists")

commute_type <- as.data.frame(commute_codelist_insert, codelistId = "CL_ABS_C16_G59_SA_MTWP_C16")

commute_data_final <- commute_to_work %>% 
  inner_join(commute_type, by = c("MTWP_C16" = "id")) %>% 
  select(SA2_CODE = ASGS_2016
         ,commute_type = label.en
         ,obsValue)

commute_data <- spread(commute_data_final, commute_type, obsValue)

write.csv(commute_data, file = "commute_data_final.csv")

#### Education data clean ####
education_level <- as.data.frame(readSDMX(providerId = "ABS", resource = "data", flowRef = "ABS_C16_G46_SA",key = "T15+T25+T35+T45+T55+T65+T75+8599.3.1+2+3+4+5+0+Z.1.SA2", key.mode = "SDMX",start = 2016, end = 2016))

educ_url = "http://stat.data.abs.gov.au/restsdmx/sdmx.ashx/GetDataStructure/ABS_C16_G46_SA"
educ_dataStructure <- readSDMX(educ_url)

educ_codelist <- slot(educ_dataStructure, "codelists")

educ_type <- as.data.frame(educ_codelist, codelistId = "CL_ABS_C16_G46_SA_QALLP_C16")

educ_data_final <- education_level %>% 
  inner_join(educ_type, by = c("QALLP_C16" = "id")) %>% 
  select(SA2_CODE = ASGS_2016
         ,educ_type = label.en
         ,obsValue)

education_dataset <- educ_data_final %>% group_by(educ_type, SA2_CODE) %>% mutate(obs = row_number())

education_data_set <- education_dataset %>%  spread(educ_type, obsValue)

write.csv(education_data_set, "education_data_final.csv")




#### Marriages data ####

marriages <- as.data.frame(readSDMX(providerId = "ABS", resource = "data", flowRef = "ABS_C16_T02_SA",key = "TOT+1+2+3+4+5.TT.3.1.SA2", key.mode = "SDMX",start = 2016, end = 2016))

marriages_url = "http://stat.data.abs.gov.au/restsdmx/sdmx.ashx/GetDataStructure/ABS_C16_T02_SA"

marriages_dataStructure <- readSDMX(marriages_url)

marriages_codelist <- slot(marriages_dataStructure, "codelists")

marriages_type <- as.data.frame(marriages_codelist, codelistId = "CL_ABS_C16_T02_SA_MSTP_2016")

marriagesF <- marriages %>% 
  inner_join(marriages_type, by = c("MSTP_2016" = "id")) %>% 
  select(SA2_CODE = ASGS_2016
         ,married = label.en
         ,obsValue)

marriages_data <- marriagesF %>% group_by(married, SA2_CODE) %>% mutate(obs = row_number())

marriages_data_set <- marriages_data %>%  spread(married, obsValue)

write.csv(marriages_data_set, "marriages_data_final.csv")




### Merge the 3 data sets with the employment data set ####

commute_data <- read.csv("commute_data_final.csv")
education_data <- read.csv("education_data_final.csv")
marriages_data <- read.csv("marriages_data_final.csv")
employment_data <- read.csv("Employed_SA2.csv")

# Load all data sets
marriages <- read.csv("marriages_data_final.csv")
commute <- read.csv("commute_data_final.csv")
education <- read.csv("education_data_final.csv")
employment <- read.csv("Employed_SA2.csv")

# Summarise all education levels by each SA2 - this was an issue with the API download of the data. 
education <- education %>% group_by(SA2_CODE) %>% summarise(Adv.Dip.and.Dip = sum(Advanced.Diploma.and.Diploma.Level), bach.deg = sum(Bachelor.Degree.Level), Cert.lvl = sum(Certificate.Level), grad.dip.and.grad.cert = sum(Graduate.Diploma.and.Graduate.Certificate.Level), Grad.deg = sum(Postgraduate.Degree.Level)) %>% na.omit()

# Remove all unneeded SA2 codes in employment data set
employment <- employment[1:578,]

# Join all data sets together
final_data1 <- left_join(employment, marriages, by = "SA2_CODE")
final_data2 <- left_join(final_data1, commute, by = "SA2_CODE")
final_data <- left_join(final_data2, education, by = "SA2_CODE")

write.csv(final_data, "EDA_dataset.csv")

#### do a simple linear model on the dat set to find important variables ####

employ_data <- read.csv("EDA_dataset.csv")

lm <- lm(PERC_UNEMPLOYED ~. -LAB_FORCE - UNEMPLOYED, data = employ_data)
summary(lm)

#### commute plots #####

# Combine the car.as.driver and car.as.passenger columns as this is the same mode of transport and then remove the consituent columns. 
var_data <- employ_data %>% mutate(Car = (Car..as.driver. + Car..as.passenger.)) %>% select(-c(Car..as.driver., Car..as.passenger.))

# Remove SA2s where there is 100% unemployment
var_data <- filter(var_data, PERC_UNEMPLOYED < 0.75)

# Plot the car against unemployment rate
ggplot(data = var_data, mapping = aes(x = Car, y = PERC_UNEMPLOYED)) + geom_point() + geom_smooth(stat = "smooth") + ylab("Unemployment Rate (%)") + xlab("Mode of Transport (Car)") +labs(title = "Unemployment Rate versus Car as a Mode of Transport") + coord_cartesian(ylim = c(0,0.2))

cor(var_data$Car, var_data$PERC_UNEMPLOYED)

# Plot walking against unemployment
ggplot(data = var_data, mapping = aes(x = Walked.only., y = PERC_UNEMPLOYED)) + geom_point() + geom_smooth() + coord_cartesian(ylim = c(0,0.2))


#### Education plots ####

# Plot bachelor degree against unemployment
ggplot(data = var_data, mapping = aes(x = bach.deg, y = PERC_UNEMPLOYED)) + geom_point() + geom_smooth() + xlab("Level of Education - Bachelor Degree") + ylab("Unemployment Rate (%)") + labs(title = "Unemployment and Education Level") + coord_cartesian(ylim = c(0,0.2))

cor(var_data$bach.deg, var_data$PERC_UNEMPLOYED) - 0.11


# Gather all education types and then find which one is the most popular
var_data_educ <- gather(var_data, "educ_level", "count", 17:23)
var_data_educ$educ_level <- as.factor(var_data_educ$educ_level)

educ_plot <- ggplot(data = var_data_educ, mapping = aes(x = educ_level, fill = count, color = "red")) + geom_jitter(aes(y = count)) + theme(axis.text.x = element_text(angle = 65, hjust = 1)) + xlab("Educational Level") + ylab("Quantity (thousands)") +labs(main = "Distribution of Educational Levels")

educ_plot

# corr plot for education

corr_educ <- var_data %>% select(c(5, 18:21, 24)) %>% na.omit()

names(corr_educ)[1] <- "Unemployment Rate"

corr_plot_educ <- cor(corr_educ)

corrplot(corr_plot_educ, method = "circle", type = "lower", tl.cex = 0.7, tl.srt = 20)

#### marriage plots ####

# Create new column that is the sum of both separated and divorced couples. 
var_data <- var_data %>% mutate(Separated.Divorced = (Separated + Divorced.))

# PLot the divorced/separated against unemployment rate.
ggplot(data = var_data, mapping = aes(x = Separated.Divorced, y = PERC_UNEMPLOYED)) + geom_point() + geom_smooth() + coord_cartesian(ylim = c(0,0.2)) + xlab("Separated/Divorced (thousands)") + ylab("Unemployment Rate (%)") + labs(title = "Unemployment Rate versus Separated/Divorced Martial Status")

cor(var_data$Separated.Divorced, var_data$PERC_UNEMPLOYED) #0.288
cor(var_data$Never.married, var_data$PERC_UNEMPLOYED) #0.16

ggplot(data = var_data_new, mapping = aes(x = Marriage_type, fill = ObsValue, color = "red")) + geom_jitter(aes(y = ObsValue)) + xlab("Marrital Status") + ylab("Count (thousands)") +labs("Marital Status for NSW (SA2)")

# corr plot for marital status and change variable names in r
correlation_plot <- var_data %>% select(c(4,9,10,13,30))

names(correlation_plot)[1] <- "Unemployment.rate"

corr_plot <- cor(correlation_plot)

corrplot(corr_plot, method = "circle", type = "lower", tl.cex = 0.7, tl.srt = 0)


install.packages("mctest")

library(tidyverse)
library(readr)
library(glmnet)
library(MASS)
library(corrplot)
library(mctest)

# set working directory
setwd("C:/Users/Rob/Documents/Masters/Masters - Sem 1/2. STDS/Assessments/AT2")

# load model data
model_data <- read.csv("Model_Data_new.csv")


##### ---------------------------- MODEL 1 ------------------------------------- #####

# Build the model first iteration
model <- glm(cbind(UNEMPLOYED,LAB_FORCE - UNEMPLOYED) ~ ENG_PROFICIENT_MOD + SEIFA_Edu_Occ_Index + SEIFA_Economic_Res_Index + SEIFA_Rel_SocioEco_Adv_Disadv_Index + SEIFA_Rel_SocioEco_Disadv_Index + BORN_OVERSEAS_MOD + EDU_BACHELOR_MOD + EDU_POSTGRAD_MOD + EDU_CERTIFICATE_MOD + EDU_DIPLOMA_MOD + SEPARATED_MOD + BORN_OVERSEAS_MOD + PERC_HHOLD_NON_FAM ,family = binomial ,data = model_data)

stepAIC(model)

summary(model)

#### -------------------------------- MODEL 2 ----------------------------------- #####

# Build model second iteration against all variables
model_2 <- glm(cbind(UNEMPLOYED,LAB_FORCE - UNEMPLOYED) ~.-SA2_NAME - SA2_CODE, data = model_data, family =  binomial) 

summary(model_2)


#CORRPLOT#
matrix <- model_data[, 3:47]

as.matrix(matrix)
corrplot(cor(matrix), method = "circle", type = "lower", order = "hclust")


# Do a corrplot for marrital status variables left. It turns out that married and widowed are highly correlated with divorced/separated. 

marital_matrix <- model_data[, 26:28]
as.matrix(marital_matrix)
corrplot(cor(marital_matrix), method = "circle", type = "lower")


#### ------------------------------- MODEL 3 ----------------------------------- ####

# Run a lasso over the dataset #

x <- model.matrix(~ ., model_data[, -(1:7)])
y <-  cbind(model_data$UNEMPLOYED,model_data$LAB_FORCE - model_data$UNEMPLOYED)

# Set the seed
set.seed(42)

# alpha = 1 specifies lasso regression
cv.fit_lasso = cv.glmnet(x, y, family = 'binomial', alpha = 1)

# Results
plot(cv.fit_lasso)

# View the coefficients of the lamda.1se - the most significant variables left after culling the rest. 
coef(cv.fit_lasso, s = cv.fit_lasso$lambda.1se)

#### -------------------------------- MODEL 4 --------------------------------- ####

# Create a new logistic regression where 1 = unemployment rate < 0.05 and 0 = unemployment rate > 0.05

model_data <- model_data %>% mutate(rate = (UNEMPLOYED)/(LAB_FORCE))

# Set the boundary % to 2016 unemployment rate
model_data <- model_data %>% mutate(binary = ifelse(model_data$rate > 0.057, 0, 1))

model_data$binary <- as.factor(model_data$binary)

model_3 <- glm(binary ~.-SA2_NAME -SA2_CODE -TOTAL_POP -LAB_FORCE -UNEMPLOYED 
               -rate -binary -SEPARATED_MOD -DIVORCED_MOD -COMMUTE_TRAIN -COMMUTE_BUS
               -COMMUTE_CAR -COMMUTE_WALK -COMMUTE_MOTORBIKE -COMMUTE_OTHER 
               -COMMUTE_BIKE -COMMUTE_PUBLIC_TRANS -MARRIED_MOD - WIDOWED_MOD
               -ARRIVAL_LAST_20 -ARRIVAL_20_50 -ARRIVAL_OVER_50,
               family = binomial("logit"),
               data = model_data)

summary(model_3)

# find the count of 1's and 0's 
table(model_data$binary)

# ----------------------------- Adjust variables in model --------------------------- #

model_data <- model_data %>% mutate(EDUCATION = sum()

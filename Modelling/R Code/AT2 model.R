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


##### ------------------------------- MODEL 1 ----------------------------------- #####

# Build the model first iteration - as created by Will
model <- glm(cbind(UNEMPLOYED,LAB_FORCE - UNEMPLOYED) ~ ENG_PROFICIENT_MOD + SEIFA_Edu_Occ_Index + SEIFA_Economic_Res_Index + SEIFA_Rel_SocioEco_Adv_Disadv_Index + SEIFA_Rel_SocioEco_Disadv_Index + BORN_OVERSEAS_MOD + EDU_BACHELOR_MOD + EDU_POSTGRAD_MOD + EDU_CERTIFICATE_MOD + EDU_DIPLOMA_MOD + SEPARATED_MOD + BORN_OVERSEAS_MOD + PERC_HHOLD_NON_FAM ,family = binomial ,data = model_data)


summary(model)

#### -------------------------------- MODEL 2 ----------------------------------- #####

# Build second iteration of the model - against all variables except SA2 name and SA2 code.
model_2 <- glm(cbind(LAB_FORCE - UNEMPLOYED, UNEMPLOYED) ~.-SA2_NAME -SA2_CODE, 
               data = model_data, 
               family =  binomial) 

summary(model_2)



#### ------------------------------- MODEL 3 ----------------------------------- ####

# Run a lasso over the full data set to see which variables it eliminates. 

x <- model.matrix(~ ., model_data[, -(1:7)])
y <-  cbind(model_data$UNEMPLOYED,model_data$LAB_FORCE - model_data$UNEMPLOYED)

# Set the seed
set.seed(42)

# alpha = 1 specifies lasso regression
cv.fit_lasso = cv.glmnet(x, y, family = 'binomial', alpha = 1)

# Results
plot(cv.fit_lasso)

# View the coefficients of the lamda.1se - the most significant variables left after reducing the coefficients to zero of those variables least significant.  
coef(cv.fit_lasso, s = cv.fit_lasso$lambda.1se)


#### ------------------------------- MODEL 4 ---------------------------------- ####

# Create a new logistic regression where 1 = unemployment rate < 0.057 (national avg in 2016) and 0 = unemployment rate > 0.057.

model_data <- model_data %>% mutate(rate = (UNEMPLOYED)/(LAB_FORCE))

# Set the boundary % to 2016 unemployment rate
model_data <- model_data %>% mutate(binary = ifelse(model_data$rate > 0.057, 0, 1))

model_data$binary <- as.factor(model_data$binary)

# First - test the glm as the unemployment rate against selected variables (why are we running a continuous variables through a glm?). 

model_4 <- glm(rate ~.-SA2_NAME -SA2_CODE -TOTAL_POP -LAB_FORCE -UNEMPLOYED -rate -binary -SEPARATED_MOD -DIVORCED_MOD -COMMUTE_TRAIN -COMMUTE_BUS
               -COMMUTE_CAR -COMMUTE_WALK -COMMUTE_MOTORBIKE -COMMUTE_OTHER 
               -COMMUTE_BIKE -COMMUTE_PUBLIC_TRANS -MARRIED_MOD - WIDOWED_MOD
               -ARRIVAL_LAST_20 -ARRIVAL_20_50 -ARRIVAL_OVER_50 -PERC_DWELLING_HOUSE
               -EDU_DIPLOMA_MOD -EDU_POSTGRAD_MOD,
               family = quasibinomial("logit"),
               weights = LAB_FORCE,
               data = model_data)

summary(model_4)


#### ------------------------------- MODEL 5 ---------------------------------- ####

# Run the log reg against the newly created binary outcome (factorial in the Model 5 section. 

model_5 <- glm(binary ~.-SA2_NAME -SA2_CODE -TOTAL_POP -LAB_FORCE -UNEMPLOYED 
               -rate -binary -SEPARATED_MOD -DIVORCED_MOD -COMMUTE_TRAIN -COMMUTE_BUS
               -COMMUTE_CAR -COMMUTE_WALK -COMMUTE_MOTORBIKE -COMMUTE_OTHER 
               -COMMUTE_BIKE -COMMUTE_PUBLIC_TRANS -MARRIED_MOD - WIDOWED_MOD
               -ARRIVAL_LAST_20 -ARRIVAL_20_50 -ARRIVAL_OVER_50 -PERC_DWELLING_HOUSE
               -EDU_DIPLOMA_MOD -EDU_POSTGRAD_MOD,
               family = quasibinomial("logit"),
               data = model_data)

summary(model_5)


# Residual plots
plot(model_5)

# find the count of 1's and 0's 
table(model_data$binary)


#### -------------------------- MODEL 6 - linear regression ------------------ ####

# Run a multivariable linear regression of the unemployment rate against selected variables. 

model_6 <- lm(rate ~.-SA2_NAME -SA2_CODE -TOTAL_POP -LAB_FORCE -UNEMPLOYED 
               -rate -binary -SEPARATED_MOD -DIVORCED_MOD -COMMUTE_TRAIN -COMMUTE_BUS
               -COMMUTE_CAR -COMMUTE_WALK -COMMUTE_MOTORBIKE -COMMUTE_OTHER 
               -COMMUTE_BIKE -COMMUTE_PUBLIC_TRANS -MARRIED_MOD - WIDOWED_MOD
               -ARRIVAL_LAST_20 -ARRIVAL_20_50 -ARRIVAL_OVER_50 -PERC_DWELLING_HOUSE
               -EDU_DIPLOMA_MOD -EDU_POSTGRAD_MOD -LANG_HOME_ENGLISH_MOD,
               data = model_data)


# ------------------------- train model in caret to get the var imp plots ----------- #

linear_reg <- train(rate ~.-SA2_NAME -SA2_CODE -TOTAL_POP -LAB_FORCE -UNEMPLOYED 
                    -rate -binary -SEPARATED_MOD -DIVORCED_MOD -COMMUTE_TRAIN 
                    -COMMUTE_BUS
                    -COMMUTE_CAR -COMMUTE_WALK -COMMUTE_MOTORBIKE -COMMUTE_OTHER 
                    -COMMUTE_BIKE -COMMUTE_PUBLIC_TRANS -MARRIED_MOD - WIDOWED_MOD
                    -ARRIVAL_LAST_20 -ARRIVAL_20_50 -ARRIVAL_OVER_50 
                    -PERC_DWELLING_HOUSE
                    -EDU_DIPLOMA_MOD -EDU_POSTGRAD_MOD,
                    method = "lm", data = model_data
                    )

plot <- varImp(linear_reg)
plot(plot)


#### ------------------------ Final linear regression model --------------------- ####



# Load adjusted data set by Justin - sum widowed, separated and divorced
data_set <- read.csv("Model_Data.csv")



# first run an lm against all variables in the data set and get the Q-Q-Plots
lm_2 <- lm(rate ~. -SA2_NAME -SA2_CODE -UNEMPLOYED -LAB_FORCE -TOTAL_POP, data = model_data)

plot(lm_2)


#insert unemployment rate into data set
model_data <- data_set %>% mutate(rate = (UNEMPLOYED)/(LAB_FORCE))


# Build the final linear regression model with selected variables. 
linear_reg_full <- lm(rate~.-SA2_NAME -SA2_CODE -UNEMPLOYED -LAB_FORCE
                      -COMMUTE_PUBLIC_TRANS -TOTAL_POP
                      -PERC_DWELLING_OTHER -PERC_DWELLING_HOUSE -COMMUTE_CAR 
                      -COMMUTE_WALK -COMMUTE_BUS
                      -COMMUTE_MOTORBIKE -COMMUTE_TRAIN -COMMUTE_BIKE -COMMUTE_OTHER
                      -ARRIVAL_LAST_20 -ARRIVAL_20_50 -ARRIVAL_OVER_50 -MARRIED_MOD 
                      -SEPARATED_MOD -DIVORCED_MOD -MARRIED_MOD -WIDOWED_MOD 
                      -ANCESTRY_BOTH_AUST -ANCESTRY_ONE_OS -MALES 
                      -PERC_HHOLD_SIZE_OVER_5 -IS_SYDNEY -LANG_HOME_ENGLISH_MOD
                      -PERC_DWELLING_SEMI -SEIFA_Rel_SocioEco_Adv_Disadv_Index, 
                      data = model_data)

summary(linear_reg_full)


# --------------------------- Produce residual plots for final model -------------- #


# plot the residual plots of the final model
plot(linear_reg_full)



# ------------------------------ Produce variable importance plots --------------- #



# Run the final linear regression model through caret to get var importance plots
lm <- train(rate~.-SA2_NAME -SA2_CODE -UNEMPLOYED -LAB_FORCE
            -COMMUTE_PUBLIC_TRANS -TOTAL_POP
            -PERC_DWELLING_OTHER -PERC_DWELLING_HOUSE -COMMUTE_CAR 
            -COMMUTE_WALK -COMMUTE_BUS
            -COMMUTE_MOTORBIKE -COMMUTE_TRAIN -COMMUTE_BIKE -COMMUTE_OTHER
            -ARRIVAL_LAST_20 -ARRIVAL_20_50 -ARRIVAL_OVER_50 -MARRIED_MOD 
            -SEPARATED_MOD -DIVORCED_MOD -MARRIED_MOD -WIDOWED_MOD 
            -ANCESTRY_BOTH_AUST -ANCESTRY_ONE_OS -MALES 
            -PERC_HHOLD_SIZE_OVER_5 -IS_SYDNEY -LANG_HOME_ENGLISH_MOD
            -PERC_DWELLING_SEMI -SEIFA_Rel_SocioEco_Adv_Disadv_Index, 
            data = model_data, method = "lm")



# Produce the variable importance plots. 
imp <- varImp(lm)
plot(imp)



# ------------------------- build a corr plot of remaining variables ------------ #


# Produce a correlation matrix for the remaining variables.
final_var <- dplyr::select(model_data, -c(SA2_NAME, SA2_CODE, UNEMPLOYED, LAB_FORCE,
                                   COMMUTE_PUBLIC_TRANS, TOTAL_POP,
                                   PERC_DWELLING_OTHER, PERC_DWELLING_HOUSE,
                                   COMMUTE_CAR, COMMUTE_WALK, COMMUTE_BUS,
                                   COMMUTE_MOTORBIKE, COMMUTE_TRAIN, COMMUTE_BIKE, 
                                   COMMUTE_OTHER, ARRIVAL_LAST_20, ARRIVAL_20_50, 
                                   ARRIVAL_OVER_50, MARRIED_MOD, SEPARATED_MOD, 
                                   DIVORCED_MOD, MARRIED_MOD, WIDOWED_MOD, 
                                   ANCESTRY_BOTH_AUST, ANCESTRY_ONE_OS, MALES,
                                   PERC_HHOLD_SIZE_OVER_5, IS_SYDNEY, 
                                   LANG_HOME_ENGLISH_MOD, PERC_DWELLING_SEMI, 
                                   SEIFA_Rel_SocioEco_Adv_Disadv_Index))

# build the matrix
final_matrix <- as.matrix(final_var) %>% cor()

# build the corrplot
corrplot(final_matrix, method = "circle", type = "lower")




# ---------------------------- produce a table of the remaining VIF ------------- #

VIF <- vif(linear_reg_full)
View(VIF)



#####----------------------------- New Approach ------------------------------- ####

# Split each observation (SA2) into two observations (SA2 employed and SA2 unemployed) - persons unemployed and persons employed.

model_data <- model_data %>% mutate(employed_rate = 1 - rate)

model_data <- gather(model_data, employment_status, new_rate, c(rate, employed_rate))

model_data <- model_data %>% mutate(employment_class = if_else(employment_status == "rate", 1, 0))

model_data <- mutate(model_data, employment_count = new_rate * LAB_FORCE)

model_data$employment_class <- as.factor(model_data$employment_class)



# -------------------- Build a new logistic regression ---------------------------- #


Log_reg <- glm(employment_class ~.-SA2_NAME -SA2_CODE -TOTAL_POP -LAB_FORCE
               -UNEMPLOYED -binary - employment_status -new_rate  
               -SEPARATED_MOD-DIVORCED_MOD -COMMUTE_TRAIN -COMMUTE_BUS
               -COMMUTE_CAR -COMMUTE_WALK -COMMUTE_MOTORBIKE -COMMUTE_OTHER 
               -COMMUTE_BIKE -COMMUTE_PUBLIC_TRANS -MARRIED_MOD - WIDOWED_MOD
               -ARRIVAL_LAST_20 -ARRIVAL_20_50 -ARRIVAL_OVER_50 -PERC_DWELLING_HOUSE
               -EDU_DIPLOMA_MOD -EDU_POSTGRAD_MOD -employment_count,
               data = model_data,
               weights = employment_count,
               family = binomial
               )


summary(Log_reg)


# Build the same model in Caret so that you can produce the varimp plots
caret_glm <- train(employment_class ~.-SA2_NAME -SA2_CODE -TOTAL_POP -LAB_FORCE
                   -UNEMPLOYED -binary - employment_status -new_rate  
                   -SEPARATED_MOD-DIVORCED_MOD -COMMUTE_TRAIN -COMMUTE_BUS
                   -COMMUTE_CAR -COMMUTE_WALK -COMMUTE_MOTORBIKE -COMMUTE_OTHER 
                   -COMMUTE_BIKE -COMMUTE_PUBLIC_TRANS -MARRIED_MOD - WIDOWED_MOD
                   -ARRIVAL_LAST_20 -ARRIVAL_20_50 -ARRIVAL_OVER_50 
                   -PERC_DWELLING_HOUSE -EDU_DIPLOMA_MOD -EDU_POSTGRAD_MOD
                   -employment_count -rate,
                   data = model_data, method = "glm", family = binomial)


# ***************** #
# Note, when you run a quasibinomial family, the result of the summary table presents z values.... unsure how to deal with this. 
# ***************** #

# Plot the variable importance
glm <- varImp(caret_glm)
plot(glm)

# Slightly odd output - z values? Unsure why it s outputign this? Why is it referring to a measure of the mean?
summary(caret_glm)


#### ----------------- Run a Lasso over model with selected variables ----------- ####


# Run a lasso over the dataset #
x <- model.matrix(~ .-SA2_NAME -SA2_CODE -TOTAL_POP -LAB_FORCE -UNEMPLOYED 
                  -rate -binary -SEPARATED_MOD -DIVORCED_MOD -COMMUTE_TRAIN 
                  -COMMUTE_BUS -COMMUTE_CAR -COMMUTE_WALK -COMMUTE_MOTORBIKE 
                  -COMMUTE_OTHER 
                  -COMMUTE_BIKE -COMMUTE_PUBLIC_TRANS -MARRIED_MOD - WIDOWED_MOD
                  -ARRIVAL_LAST_20 -ARRIVAL_20_50 -ARRIVAL_OVER_50 -PERC_DWELLING_HOUSE
                  -EDU_DIPLOMA_MOD -EDU_POSTGRAD_MOD, data = model_data)

y <-  cbind(model_data$binary)

# Set the seed
set.seed(42)

# alpha = 1 specifies lasso regression
cv.fit_lasso = cv.glmnet(x, y, family = 'binomial', alpha = 1)

# Results
plot(cv.fit_lasso)

# View the coefficients of the lamda.1se - the most significant variables left after culling the rest. 
coef(cv.fit_lasso, s = cv.fit_lasso$lambda.1se)

#### ---------------------------- Corrplots for EDA ---------------------- ####


# Produce a corrplot for dwelling type to reduce multicollinearity . PERC DWELL HOUSE has the highest multicoll. with the other variables. Remove from data set. 
dwelling_matrix <-  dplyr::select(model_data,binary, PERC_DWELLING_FLAT, PERC_DWELLING_HOUSE, PERC_DWELLING_SEMI, PERC_DWELLING_OTHER)

dwelling_matrix$binary <- as.numeric(dwelling_matrix$binary)

as.matrix(dwelling_matrix)
corrplot(cor(dwelling_matrix), method = "circle", type = "lower")

# --------------------------------------------------------------------------- #

# Produce a corrplot of all variables - this is a terrible approach!
matrix <- model_data[, 3:49]

matrix <- as.matrix(matrix) %>% cor()

View(matrix)

corrplot(cor(matrix), method = "circle", type = "lower", order = "hclust", tl.pos='n')

# ---------------------------------------------------------------------------- #

# Produce a corrplot for the marrital status variables. It turns out that married and widowed are highly correlated with divorced/separated. 

marital_matrix <- model_data[, 26:28]
as.matrix(marital_matrix)
corrplot(cor(marital_matrix), method = "circle", type = "lower")

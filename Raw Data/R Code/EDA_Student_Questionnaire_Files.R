library(haven) #use haven, faster than sas7bdat library

# setwd("C:\\Users\\will.kent\\source\\repos\\stds_edu\\Raw Data")
# getwd()

qq2 <- read_sas("Data Files\\cy6_ms_cmb_stu_qq2.sas7bdat")
summary(qq2)
summary(qq2$ST038Q07NA)

qqq <- read_sas("Data Files\\cy6_ms_cmb_stu_qqq.sas7bdat")
summary(qqq$PVMATH)
library(rsdmx)
library(tidyverse)

#getwd()
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Check to make sure the ABS folder is available and, if not, create it. Saving file to right location will fail without the required folder
if (!dir.exists("../Data Files/ABS")) {
  # readSDMX can create url's to read data from registered providers - fortunately the ABS is registered so the url can be created for us.
  create.dir("../Data Files/ABS")
}

# Get the ABS Census 2016 Data on Indigenous populations 
birth_place <- as.data.frame(readSDMX(providerId = "ABS", resource = "data", flowRef = "ABS_C16_T06_SA",
                                      key = "3.TOT+1+10+1000+11+1100+1101+1102+1199+12+1201+13+1300+1301+1302+1303+1304+14+1400+1401+1402+1403+1404+1405+1406+1407+15+1500+1501+1502+1503+1504+1505+1506+1507+1508+1511+1512+1513+1599+16+1600+1601+1602+1603+1604+1605+1606+1607+2+20+2000+21+2100+2102+2103+2104+2105+2106+2107+2108+22+2201+23+2300+2301+2302+2303+2304+2305+2306+2307+2308+2311+24+2400+2401+2402+2403+2404+2405+2406+2407+2408+3+30+3000+31+3100+3101+3102+3103+3104+3105+3106+3107+3108+32+3200+3201+3202+3203+3204+3205+3206+3207+3208+3211+3212+3214+3215+3216+33+3300+3301+3302+3303+3304+3305+3306+3307+3308+3311+3312+4+40+4000+41+4100+4101+4102+4103+4104+4105+4106+4107+4108+4111+42+4200+4201+4202+4203+4204+4205+4206+4207+4208+4211+4212+4213+4214+4215+4216+4217+5+50+5000+51+5100+5101+5102+5103+5104+5105+52+5200+5201+5202+5203+5204+5205+5206+6+60+6000+61+6100+6101+6102+6103+6104+6105+62+6200+6201+6202+6203+7+70+7000+71+7100+7101+7102+7103+7104+7105+7106+7107+72+7200+7201+7202+7203+7204+7205+7206+7207+7208+7211+8+80+8000+81+8100+8101+8102+8103+8104+82+8200+8201+8202+8203+8204+8205+8206+8207+8208+8211+8212+8213+8214+8215+8216+8299+83+8300+8301+8302+8303+8304+8305+8306+8307+8308+84+8400+8401+8402+8403+8404+8405+8406+8407+8408+8411+8412+8413+8414+8415+8416+8417+8421+8422+8423+8424+8425+8426+8427+8428+8431+8432+8433+8434+8435+9+90+9000+91+9100+9101+9102+9103+9104+9105+9106+9107+9108+9111+9112+9113+9114+9115+9116+9117+9118+9121+9122+9123+9124+9125+9126+9127+9128+92+9200+9201+9202+9203+9204+9205+9206+9207+9208+9211+9212+9213+9214+9215+9216+9217+9218+9221+9222+9223+9224+9225+9226+9227+9228+9231+9232+9299+0000+0001+Z.0+1+2+3+4+5+6+7+8+9.SA2",
                                      key.mode = "SDMX", start = 2016, end = 2016))
summary(birth_place)
head(birth_place)

birth_place %>% 
  filter(ASGS_2016 == "102011028")

## Retrieve Metadata to help with decoding values.
dataStructure <- readSDMX("http://stat.data.abs.gov.au/restsdmx/sdmx.ashx/GetDataStructure/ABS_C16_T06_SA")

#concepts <- as.data.frame(slot(dataStructure, "concepts"))
codeList <- slot(dataStructure, "codelists")

# Country of Birth
pob_countries <- as.data.frame(slot(dataStructure, "codelists"), codelistId = "CL_ABS_C16_T06_SA_BPLP_2016")

# Get Required Data and put in meaningful descriptions
birth_place_final <- birth_place %>% 
  inner_join(pob_countries, by = c("BPLP_2016" = "id")) %>% 
  left_join(pob_countries, by = c("parentCode" = "id")) %>% 
  left_join(pob_countries, by = c("parentCode.y" = "id")) %>% 
  select(SA2_CODE = ASGS_2016
         ,POB_VALUE = label.en.x
         ,PARENT_CTRY = label.en.y
         ,REGION = label.en
         ,obsValue)

write_csv(birth_place_final, "../Data Files/ABS/Country_of_Birth_SA2_2016.csv")
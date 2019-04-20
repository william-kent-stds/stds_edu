# Clean Data
This folder is for the clean data files and associated R code. R code associated with EDA should also be kept in this folder along with the code that creates the final cleansed dataset.  

## Data Sets
### Australian Bureauof Statistics
* **./ABS/Indigenous_Population_SA2.csv** - Removed non-indigenous and not stated values as well as the breakdown by male/female. Banded ages to be less than 15, 15-65 and over 65. Contains 2310 observations.
* **./ABS/SEIFA_2016_Data.csv** - Only data cleaning required was to spread the data and filter out everything but the final score. Only 2191 observations - should be 2310 to cover all SA2's

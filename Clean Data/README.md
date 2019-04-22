# Clean Data
This folder is for the clean data files and associated R code. R code associated with EDA should also be kept in this folder along with the code that creates the final cleansed dataset.  

## Data Sets
### Australian Bureau of Statistics
* **./ABS/Ancestry_SA2.csv** - Grouped observations by parent birth place OS or in Australia. Contains 2310 observations.
* **./ABS/Indigenous_Population_SA2.csv** - Removed non-indigenous and not stated values as well as the breakdown by male/female. Banded ages to be less than 15, 15-65 and over 65. Contains 2310 observations.
* **./ABS/Place_Of_Birth.csv** - Removed Not Stated, At Sea and Inadequately Described from calculations, captured totals and percentages by Australia/Overseas Born and Region of Birth. Contains 2310 observations.
* **./ABS/SEIFA_2016_Data.csv** - Only data cleaning required was to spread the data and filter out everything but the final score. Only 2191 observations - should be 2310 to cover all SA2's

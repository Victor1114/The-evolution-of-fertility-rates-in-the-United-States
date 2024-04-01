#### Preamble ####
# Purpose: Downloads and saves the data from World Bank Database.
# Author: Yuchen Chen
# Contact: victorchen.chen@mail.utoronto.ca
# Date: 25 March 2024
# License: MIT
# Pre-requisites: 
-
#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
# [...UPDATE THIS...]

#### Download data ####
# [...ADD CODE HERE TO DOWNLOAD...]
#Manually downloading data


#### Save data ####
# [...UPDATE THIS...]
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(the_raw_data, "inputs/data/raw_data.csv") 

         

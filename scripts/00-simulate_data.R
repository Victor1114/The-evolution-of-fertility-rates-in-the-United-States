#### Preamble ####
# Purpose: Simulate data on US fertility rate, economic development level, and female employment rate。
# Author: Yuchen Chen
# Contact: victorchen.chen@mail.utoronto.ca
# Date: 25 March 2024
# License: MIT
# Pre-requisites: -


#### Workspace setup ####
library(tidyverse)

#### Simulate data ####
set.seed(853)

num_obs <- 20

us_fertility_preferences <- tibble(
  Fertility_rate = runif(num_obs,1.6,2.2),
  Year = sample(2002:2021, size = num_obs, replace = FALSE),
  Female_employment_rate = runif(num_obs,51,57),
  Per_capita_GDP = runif(num_obs,38000,71000),
) 

#### Save data ####
write.csv(us_fertility_preferences, "data/simulated_data/simulated_data.csv")



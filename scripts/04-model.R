#### Preamble ####
# Purpose:  Models of the data to generate inferential statistics.
# Author: Yuchen Chen
# Contact: victorchen.chen@mail.utoronto.ca
# Date: 25 March 2024
# License: MIT
# Pre-requisites: -


#### Workspace setup ####
library(tidyverse)
library(rstanarm)

#### Read data ####
analysis_data <- read_csv("data/analysis_data/analysis_data.csv")

### Model data ####
first_model <-
  lm(
    formula = Fertility_rate ~ Female_employment_rate + Per_capita_GDP, 
    data = analysis_data
  )
summary(first_model)

#### Save model ####
saveRDS(
  first_model,
  file = "models/first_model.rds"
)



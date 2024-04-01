#### Preamble ####
# Purpose: Clean up raw data and retain data from 1992 to 2022.
# Author: Yuchen Chen
# Contact: victorchen.chen@mail.utoronto.ca
# Date: 25 March 2024
# License: MIT
# Pre-requisites: 

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("data/raw_data/raw_data.csv")

cleaned_data <-
  raw_data |>
  filter( Year %in% 2002: 2022) |>
  tidyr::drop_na()
range(cleaned_data$Per_capita_GDP)

#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")

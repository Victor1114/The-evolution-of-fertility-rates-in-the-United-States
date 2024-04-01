#### Preamble ####
# Purpose: Tests data on US fertility rate, economic development level, and female employment rate.
# Author: Yuchen Chen
# Contact: victorchen.chen@mail.utoronto.ca
# Date: 25 March 2024
# License: MIT
# Pre-requisites: -


#### Workspace setup ####
library(tidyverse)

#### Test data ####
simulated_data <- read.csv("data/simulated_data/simulated_data.csv")

test_that("Check number of observations is correct",{
  expect_equal(nrow(simulated_data), 20)
})

test_that("Check Year",{
  expect_contains(simulated_data$Year, 2002:2021)
})

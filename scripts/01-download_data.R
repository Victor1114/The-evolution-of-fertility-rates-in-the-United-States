#### Preamble ####
# Purpose: Downloads and saves the data from World Bank Database.
# Author: Yuchen Chen
# Contact: victorchen.chen@mail.utoronto.ca
# Date: 25 March 2024
# License: MIT
# Pre-requisites: 
-
#### Workspace setup ####
install.packages("opendatatoronto")
install.packages("R.utils")
library(opendatatoronto)
library(tidyverse)
library(dplyr)
library(R.utils)
#### Download data ####
download.file("https://api.worldbank.org/v2/zh/indicator/SP.DYN.TFRT.IN?downloadformat=csv", 
              destfile = here::here("data/raw_data/Fertility_rate.zip"))
unzip(here::here("data/raw_data/Fertility_rate.zip"), 
      exdir = here::here("data/raw_data/Fertility_rate"))
tmp1<-read.csv(here::here("data/raw_data/Fertility_rate/API_SP.DYN.TFRT.IN_DS2_en_csv_v2_43477.csv"),
               header = FALSE)
tmp1<-tmp1 %>%
  filter(V1 == 'United States')
  
Fertility_rate <-unlist(tmp1[,5:69])


download.file("https://api.worldbank.org/v2/zh/indicator/NY.GDP.PCAP.CD?downloadformat=csv", 
              destfile = here::here("data/raw_data/Per_capita_GDP.zip"))
unzip(here::here("data/raw_data/Per_capita_GDP.zip"), 
      exdir = here::here("data/raw_data/Per_capita_GDP"))

tmp2<-read.csv(here::here("data/raw_data/Per_capita_GDP/API_NY.GDP.PCAP.CD_DS2_en_csv_v2_133.csv"),
               header = FALSE)
tmp2<-tmp2 %>%
  filter(V1 == 'United States')
  
Per_capita_GDP <-unlist(tmp2[,5:69])

download.file("https://api.worldbank.org/v2/en/indicator/SL.EMP.TOTL.SP.FE.NE.ZS?downloadformat=csv", 
              destfile = here::here("data/raw_data/Female_employment_rate.zip"))
unzip(here::here("data/raw_data/Female_employment_rate.zip"), 
      exdir = here::here("data/raw_data/Female_employment_rate"))
tmp3<-read.csv(here::here("data/raw_data/Female_employment_rate/API_SL.EMP.TOTL.SP.FE.NE.ZS_DS2_en_csv_v2_45045.csv"),
               header = FALSE)
tmp3<-tmp3 %>%
  filter(V1 == 'United States')
Female_employment_rate <-unlist(tmp3[,5:69])

the_raw_data<-data.frame(Fertility_rate = Fertility_rate,
                         Year = 1960:2024,
                         Female_employment_rate = Female_employment_rate,
                         Per_capita_GDP = Per_capita_GDP)
#### Save data ####
write_csv(the_raw_data, here::here("data/raw_data/raw_data.csv")) 

         

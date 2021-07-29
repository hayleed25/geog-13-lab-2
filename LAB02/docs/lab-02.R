# Load packages
library(tidyverse)
library(knitr)
library(readxl)
library(zoo)

# Question 1
library(tidyverse)
url = 'https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-counties.csv'
covid = read_csv(url)
head(covid)

state.of.interest = "California"

covid %>%
  filter(state == state.of.interest) %>%
  group_by(county) %>%
  mutate(newCases = cases - lag(cases)) %>%
  ungroup(county)
knitr::kable(x, format, )

?knitr::kable

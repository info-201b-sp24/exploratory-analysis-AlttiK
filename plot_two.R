
library(ggplot2)
library(dplyr)
library(tidyverse)

clutch_data <- read.csv("https://raw.githubusercontent.com/the-pudding/data/master/clutch/nba.csv")

ggplot(clutch_data, aes(x = swg_made_per_game)) +
  geom_histogram(binwidth = 0.001, fill = "black", boundary = 0) +
  scale_x_continuous(limits = c(0, 0.06)) +
  labs(title = "Swing Made per Game per Player", x = "SWG per Game", y = "Frequency")


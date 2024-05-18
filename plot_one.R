
library(ggplot2)
library(dplyr)
library(tidyverse)

clutch_data <- read.csv("https://raw.githubusercontent.com/the-pudding/data/master/clutch/nba.csv")

notable_players <- clutch_data %>% filter(bbrid %in% c("bryanko01", "jamesle01", "westbru01", "davisan02"))

ggplot(clutch_data, aes(x = total_clutch_shots, y = pct_clutch, label = name)) +
  geom_point(size = 3) + 
  geom_text(data = notable_players, aes(label = name), vjust = -0.75, size = 3) +
  labs(title = "Clutch Shots Attempted vs. Shot Percentage by Player", 
       x = "Clutch Shots Attempted", y = "Shot Percentage")


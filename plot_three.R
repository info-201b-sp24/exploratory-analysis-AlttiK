
library(ggplot2)
library(dplyr)
library(tidyverse)

clutch_data <- read.csv("https://raw.githubusercontent.com/the-pudding/data/master/clutch/nba.csv")

notable_players <- clutch_data %>% filter(bbrid %in% c("bryanko01", "jamesle01", "westbru01", "davisan02", "adebaba01", "murraja01"))

ggplot(clutch_data, aes(x = pct_clutch_adjusted, y = gp_all)) +
  geom_point(size = 3, alpha = 0.7) +
  geom_text(data = notable_players, aes(label = name), vjust = -0.75, size = 3) +
  labs(title = "Adjusted Clutch Shot Percentage vs. Games Played",
       x = "Number of Games Played (including playoffs)",
       y = "Adjusted Clutch Shot Percentage")

library(dplyr)
library(tidyverse)

clutch_data <- read.csv("https://raw.githubusercontent.com/the-pudding/data/master/clutch/nba.csv")

total_shots_taken <- clutch_data %>% summarise(total_shots = sum(total_clutch_shots, na.rm = TRUE)) %>% pull(total_shots)

clutch_percent_mean <- clutch_data %>% summarise(avg_clutch_pct = mean(pct_clutch, na.rm = TRUE)) %>% pull(avg_clutch_pct)

clutch_ft_percent_mean <- clutch_data %>% summarise(avg_clutch_ft_pct = mean(ft_pct_clutch, na.rm = TRUE)) %>% pull(avg_clutch_ft_pct)

adjusted_clutch_percent_mean <- clutch_data %>% summarise(avg_adj_clutch_pct = mean(pct_clutch_adjusted, na.rm = TRUE)) %>% pull(avg_adj_clutch_pct)

highest_imapct_number <- clutch_data %>% filter(swg_made_per_game == max(swg_made_per_game)) %>% pull(swg_made_per_game)

highest_imapct_player <- clutch_data %>% filter(swg_made_per_game == max(swg_made_per_game)) %>% pull(name)

print(paste0("Total clutch shots taken: ", total_shots_taken))
print(paste0("Clutch shot percentage: ", clutch_percent_mean))
print(paste0("Clutch free throw percentage: ", clutch_ft_percent_mean))
print(paste0("Adjusted shot percentage based on difficulty: ",adjusted_clutch_percent_mean))
print(paste0("Highest impact: ", highest_imapct_player, ", ", highest_imapct_number))

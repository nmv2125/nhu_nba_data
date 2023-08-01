#' NBA Function
#'
#' This function allows you to get data point of interest for a player in a given year
#' @param love 
#' @keywords 
#' @export
#' @examples
#' get_player_data()

get_player_data <- function(year) {
  library(dplyr)
  
  # Read the dataset
  df <- read.csv("Seasons_Stats_NBA.csv")
  
  # Filter data for the given year
  data_for_year <- df %>% filter(Year == year)
  
  # Select a random player's data point of interest
  random_player <- sample_n(data_for_year, 1)
  
  return(random_player)
}

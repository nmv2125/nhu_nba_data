#' Get the oldest player in the NBA dataset for a given year
#'
#' This function takes an individual year as input and returns the data for the oldest player in the NBA dataset for that year. If multiple players have the same age, the function will return the first player in the dataset with that age.
#'
#' @param year The year for which the oldest player is to be retrieved.
#' @return A data frame containing the data for the oldest player in the given year.
#'
#' @examples
#' get_oldest_player(2012)
#'
#' @import dplyr
#' @export
#'
get_oldest_player <- function(year) {
  library(dplyr)
  
  # Read the dataset
  df <- read.csv("nba_data.csv")
  
  # Filter data for the given year
  data_for_year <- df %>% filter(Year == year)
  
  # Find the oldest player(s)
  oldest_players <- data_for_year %>% filter(Age == max(Age))
  
  # If there are multiple players with the same age, return the first one
  oldest_player <- oldest_players[1, ]
  
  return(oldest_player)
}

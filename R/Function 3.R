#' Limit data to numeric continuous variables for a given year
#'
#' This function takes an individual year as input and returns the correlation matrix for all numeric continuous variables in the dataset for that year.
#'
#' @param year The year for which the data is to be retrieved.
#' @return A correlation matrix for all numeric continuous variables in the data for the given year.
#'
#' @examples
#' correlation_matrix <- get_correlation_matrix(2015)
#'
#' @import dplyr
#' @export
#'
get_correlation_matrix <- function(year) {
  library(dplyr)
  
  # Read the dataset
  df <- read.csv("nba_data.csv")
  
  # Filter data for the given year
  data_for_year <- df %>% filter(Year == year)
  
  # Select numeric continuous variables only
  numeric_data <- select_if(data_for_year, is.numeric)
  
  # Calculate the correlation matrix
  correlation_matrix <- cor(numeric_data)
  
  return(correlation_matrix)
}

#' Numeric Summary
#'
#' @param vec A numeric vector of length > 1
#' @param na.rm Logical. Remove \code{NA} before calculating summaries
#'
#' @return Named vector of summary statistics
#' @export
#'
#' @examples
#' numericSummary(airquality$Wind)
numericSummary <- function(vec, na.rm = TRUE){
  
  # Check the inputs are of the correct form
  if(!is.numeric(vec)) stop("You must provide a numeric vector", call. = FALSE)
  
  if(!is.logical(na.rm)) stop("na.rm must be a logical (TRUE/FALSE) value", call. = FALSE)
  
  if(length(vec) <= 1) warning(paste("Some summaries may be incorrect as length of input vector is", length(vec)), call. = FALSE)
  
  # get the numeric summaries
  vecSummaries <- statSummary(vec, na.rm = na.rm)
  
  # add the number of missing values
  out <- c(vecSummaries, "NAs" = sum(is.na(vec)))
  
  return(out)
  
}
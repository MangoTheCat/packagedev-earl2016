#' Sample From Data
#' 
#' This function returns a sample from a data frame.
#'
#' @param data A data frame
#' @param size integer. The number of rows to return in the sample
#' @param replace logical. If \code{TRUE} then sample with replacement
#' @param ... passed on to the sample function
#'
#' @details Some details about this function. Longer prose
#' that is too long for a description
#' 
#' @author Doug Ashton <dashton@mango-solutions.com>
#' 
#' @return A data frame subsampled from \code{data}
#' @export
#'
#' @examples
#' irisSmall <- sampleFromData(iris, size = 10, replace = FALSE)
#' nrow(irisSmall)
#' 
#' \dontrun{
#' print(nothing)
#' }
sampleFromData <- function(data, size, replace = TRUE, ...){

  if(!is.numeric(size))
    stop("Size must be a numeric integer value")

  lengthData <- nrow(data)

  if(!replace & size > lengthData){
    stop("Cannot sample greater than the data size without
         replacement")
  }

  samples <- sample(seq_len(lengthData), size = size,
                    replace = replace, ...)

  invisible(data[samples, ])

  }


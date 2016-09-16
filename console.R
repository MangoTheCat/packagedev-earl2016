library(devtools)

?create
create("Packages/simTools")

# Exercise 1:
setwd("Packages")
create("summaryTools")

# Create the documentation
document(pkg = "simTools")
setwd("simTools")
document()

# If you want to reference a package but it doesn't need to be installed use
# Suggests
use_package("igraph", type = "Suggests")

# If you have a dependency that's required functionality use Imports (default)
use_package("lubridate")
# Then reference packages with:
lubridate::ymd("2016-09-13")
# Don't use library() or require() inside a package

# If you want to use lots of functions from a package then you can add a roxygen comment
#' @import dplyr

# And this will add the package to your namespace
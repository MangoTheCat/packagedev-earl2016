# data-raw
set.seed(123)
testdata <- data.frame(ID = 1:10, var = rnorm(10))

devtools::use_data(testdata, pkg = "simTools", overwrite = TRUE)

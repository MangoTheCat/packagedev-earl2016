context("sampleFromData")

test_that("Output has correct number of rows", {
  
  x <- sampleFromData(iris, 10)
  nrow(x)
  
  expect_equal(nrow(x), 10)
  
  expect_is(x, "data.frame")
  
})

test_that("Errors correctly", {
  
  expect_error(sampleFromData(iris, size = 1000, replace = FALSE))  
  
})



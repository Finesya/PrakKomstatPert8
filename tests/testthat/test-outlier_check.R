test_that("outlier_check returns a data frame", {

  fit <- lm(mpg ~ wt + hp, data = mtcars)

  result <- outlier_check(fit)

  expect_s3_class(result, "data.frame")

})

test_that("outlier_check contains Flag column", {

  fit <- lm(mpg ~ wt + hp, data = mtcars)

  result <- outlier_check(fit)

  expect_true("Flag" %in% names(result))

})

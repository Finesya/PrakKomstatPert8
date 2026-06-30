test_that("hetero_check returns a data frame", {

  fit <- lm(mpg ~ wt + hp + disp, data = mtcars)

  result <- hetero_check(fit)

  expect_s3_class(result, "data.frame")

})

test_that("hetero_check contains BP statistic", {

  fit <- lm(mpg ~ wt + hp + disp, data = mtcars)

  result <- hetero_check(fit)

  expect_true("BP_Statistic" %in% names(result))

})

test_that("normality_check returns a data frame", {

  fit <- lm(mpg ~ wt, data = mtcars)

  result <- normality_check(fit)

  expect_s3_class(result, "data.frame")

})

test_that("normality_check contains expected columns", {

  fit <- lm(mpg ~ wt, data = mtcars)

  result <- normality_check(fit)

  expect_true(all(
    c("Statistic", "P_Value", "Conclusion") %in%
      names(result)
  ))

})

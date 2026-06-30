
<!-- README.md is generated from README.Rmd. Please edit that file -->

# PrakKomstatPert8

<!-- badges: start -->

<!-- badges: end -->

## Overview

**PrakKomstatPert8** is an R package designed to assist users in
evaluating the assumptions of linear regression models. The package
provides a collection of diagnostic functions that assess key regression
assumptions, including residual normality, multicollinearity,
heteroscedasticity, and influential observations.

Unlike packages that rely on existing diagnostic libraries,
**PrakKomstatPert8** manually implements several statistical procedures
such as the Variance Inflation Factor (VIF) and the Breusch–Pagan test,
allowing users to better understand the underlying statistical concepts.

This package was developed as part of a Statistical Computing course
project.

------------------------------------------------------------------------

## Features

PrakKomstatPert8 currently provides the following features:

- Residual normality assessment using the Shapiro–Wilk test.
- Manual computation of Variance Inflation Factor (VIF).
- Manual implementation of the Breusch–Pagan heteroscedasticity test.
- Detection of influential observations using Cook’s Distance.
- Comprehensive diagnostic summary for linear regression models.

------------------------------------------------------------------------

## Installation

The development version of **PrakKomstatPert8** can be installed from
GitHub.

``` r
# Install devtools if necessary
install.packages("devtools")

# Install PrakKomstatPert8
devtools::install_github("Finesya/PrakKomstatPert8")
```

------------------------------------------------------------------------

## Example

Load the package and fit a linear regression model.

``` r
library(PrakKomstatPert8)

fit <- lm(mpg ~ wt + hp + disp, data = mtcars)
```

### Normality Test

``` r
normality_check(fit)
```

### Multicollinearity Check

``` r
multicol_check(fit)
```

### Heteroscedasticity Test

``` r
hetero_check(fit)
```

### Influential Observation Detection

``` r
outlier_check(fit)
```

### Overall Model Diagnostics

``` r
model_diagnostics(fit)
```

------------------------------------------------------------------------

## Available Functions

| Function | Description |
|----|----|
| `normality_check()` | Performs the Shapiro–Wilk test for residual normality. |
| `multicol_check()` | Computes Variance Inflation Factor (VIF) manually. |
| `hetero_check()` | Performs the Breusch–Pagan test manually. |
| `outlier_check()` | Detects influential observations using Cook’s Distance. |
| `model_diagnostics()` | Provides a summary of regression diagnostic results. |

------------------------------------------------------------------------

## Statistical Methods

The package implements several statistical methods commonly used in
regression diagnostics:

- **Shapiro–Wilk Test** for assessing residual normality.
- **Variance Inflation Factor (VIF)** for detecting multicollinearity
  among predictors.
- **Breusch–Pagan Test** for detecting heteroscedasticity.
- **Cook’s Distance** for identifying influential observations.

These methods help users verify whether a linear regression model
satisfies important assumptions before interpreting the model.

------------------------------------------------------------------------

## Authors

**Finesya Aura Nadifa**  
Department of Statistics

------------------------------------------------------------------------

## License

This project is licensed under the MIT License.

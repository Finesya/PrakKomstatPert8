install.packages(c(
  "devtools",
  "roxygen2",
  "usethis",
  "pkgdown",
  "testthat"
))

# Mengaktifkan roxygen
usethis::use_roxygen_md()
install.packages("cli")

# Menambahkan license
usethis::use_mit_license()

# Membuat README
usethis::use_readme_rmd()

# Membuat Vignette
usethis::use_vignette("getting-started")

# Membuat Testing infrastruktur
usethis::use_testthat()

# Setup pkgdown
usethis::use_pkgdown()

# Generate dokumen
devtools::document()

# Testing
devtools::test()

# Checking
devtools::check()
usethis::use_build_ignore(c("install.R", "setup.R", "praktikum-komstat-pert8.Rmd"))

# Processing Vignettes
devtools::build_vignettes()

# Checking Vignettes
browseVignettes("PrakKomstatPert8")

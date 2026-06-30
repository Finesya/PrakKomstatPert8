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

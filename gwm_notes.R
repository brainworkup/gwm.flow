
# Data wrangling fast -----------------------------------------------------

# The fst package for R provides a fast, easy and flexible way to serialize data frames. With access speeds of multiple GB/s, fst is specifically designed to unlock the potential of high speed solid state disks that can be found in most modern computers. Data frames stored in the fst format have full random access, both in column and rows.
devtools::install_github("fstPackage/fst", ref = "develop")

# The fastest delimited reader for R, 1.48 GB/sec.
# But that’s impossible! How can it be so fast?
# vroom doesn’t stop to actually read all of your data, it simply indexes where each record is located so it can be read later. The vectors returned use the Altrep framework to lazily load the data on-demand when it is accessed, so you only pay for what you use. This lazy access is done automatically, so no changes to your R data-manipulation code are needed.
# vroom also uses multiple threads for indexing, materializing non-character columns, and when writing to further improve performance.
devtools::install_dev("vroom")

# collapse is a C/C++ based package for data transformation and statistical computing in R. It’s aims are:
# To facilitate complex data transformation, exploration and computing tasks in R.
# To help make R code fast, flexible, parsimonious and programmer friendly.
# It is made compatible with base R, dplyr, data.table and the plm approach to panel data, and non-destructively handles other matrix or data frame based classes (such as ‘ts’, ‘xts’ / ‘zoo’, ‘timeSeries’, ‘tsibble’, ‘tibbletime’, ‘sf’ data frames etc.).
remotes::install_github("SebKrantz/collapse")

# data.table provides a high-performance version of base R's data.frame with syntax and feature enhancements for ease of use, convenience and programming speed.
data.table::update.dev.pkg()


# Update packages and libraries -------------------------------------------

# Update all your R and LaTeX packages:
## use this to update all packages
update.packages(
                lib = "/Library/Frameworks/R.framework/Versions/4.0/Resources/library",
                ask = FALSE,
                checkBuilt = TRUE,
                type = "source",
                build = TRUE,
                force = TRUE)

## use this to update specific package
update.packages("textshaping",
                lib = "/Library/Frameworks/R.framework/Versions/4.0/Resources/library",
                ask = FALSE,
                checkBuilt = TRUE,
                type = "source",
                build = TRUE,
                force = TRUE)

tinytex::tlmgr_update()

update.packages(
  #lib = "/Library/Frameworks/R.framework/Versions/4.0/Resources/library",
  ask = FALSE,
  checkBuilt = TRUE)
#update.packages(ask = FALSE, checkBuilt = TRUE, type = "binary")



remotes::update_packages(dependencies = TRUE, upgrade = "default") # this scares me

# update with renv
renv::update()

install.packages("Rcpp",
                 lib = "/Library/Frameworks/R.framework/Versions/4.0/Resources/library",
                 repos="https://RcppCore.github.io/drat",
                 dependencies = TRUE)

remotes::install_github(
  "Rcpp",
  lib = "/Library/Frameworks/R.framework/Versions/4.0/Resources/library",
  dependencies = TRUE,
  upgrade = "default",
  build = TRUE)

remotes::update_packages(
  "RcppParallel",
  lib = "/Library/Frameworks/R.framework/Versions/4.0/Resources/library",
  dependencies = TRUE,
  upgrade = "default",
  build = TRUE)


devtools::install_github('thomasp85/gganimate')


options(repos = c(
  rstudio = 'https://rstudio.r-universe.dev',
  CRAN = 'https://cloud.r-project.org'))
install.packages('rmarkdown')

# try with source package
devtools::install_github("tidyverse/dtplyr", force = TRUE, build = TRUE, type = "source",
                         auth_token = "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")




# to remove duplicate packages eg mgcv
remove.packages(installed.packages()[duplicated(rownames(installed.packages())),1], lib=.libPaths()[.libPaths() != .Library])

# Install from github -----------------------------------------------------

devtools::install_github("jtrampush/npsych.data")

# Edit startup ------------------------------------------------------------

# to open .Rprofile
usethis::edit_r_profile()

file.edit("~/.Rprofile") # edit .Rprofile in HOME
file.edit(".Rprofile") # edit project specific .Rprofile

file.edit("~/.Renviron") # edit .Rprofile in HOME
file.edit(".Renviron") # edit project specific .Rprofile

file.edit("~/.R/Makevars")

pkgbuild::check_build_tools(debug = TRUE)

R CMD config --all

# Packages ----------------------------------------------------------------

if (!require("remotes")) install.packages("remotes")
remotes::install_github("rstudio/httpuv")

remove.packages("data.table")
install.packages("data.table", type = "source",
                 repos = "https://Rdatatable.gitlab.io/data.table")
# pak to install
pak::pkg_install("tidyverse/glue", upgrade = TRUE)
pak::pkg_install("RcppParallel", upgrade = TRUE)
pak::pkg_install("tidymodels", upgrade = TRUE)
pak::pkg_install("argparser", upgrade = TRUE)

# C/C++ -------------------------------------------------------------------

CC = clang -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk
CXX = clang++ -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk
CXX11 = $CXX
CXX14 = $CXX
CXX17 = $CXX
CXX20 = $CXX
CFLAGS = -g -O2 -Wall -pedantic -Wconversion -Wno-sign-conversion -Wno-implicit-function-declaration
CXXFLAGS = -g -O2 -Wall -pedantic -Wconversion -Wno-sign-conversion
CXX11FLAGS = $CXXFLAGS
CXX14FLAGS = $CXXFLAGS
CXX17FLAGS = $CXXFLAGS
CXX20FLAGS = $CXXFLAGS

FC = /usr/local/gfortran/bin/gfortran
FLIBS = -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin18/8.2.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm

SHLIB_OPENMP_CFLAGS = -fopenmp
SHLIB_OPENMP_CXXFLAGS = -fopenmp

LDFLAGS=-L/usr/local/opt/llvm/lib -Wl -rpath /usr/local/opt/llvm/lib
# hadley
CC=ccache clang -Qunused-arguments
CXX=ccache clang++ -Qunused-arguments
CCACHE_CPP2=yes


# data.table --------------------------------------------------------------

sw <- as.data.table(dplyr::starwars)
# The variable `films` is currently a list-column of character vectors
sw <- sw[, .(films = films[[1]]),
         by = c(...)] # other vars we want to keep e.g. "name" "species"

sw <- sw[, .(films = films[[1]]), by = name]

# .SD symbol used to subset data
swn <- sw[, .(data = list(.SD)), by = films]
swn[]
# join nested and revenue on films variable
swn <- swn[revenue, on = "films"]
swn[]

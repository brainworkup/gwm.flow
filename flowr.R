# flowr

After installation run setup(), this will copy the flowr’s helper script to ~/bin. Please make sure that this folder is in your $PATH variable.

library(flowr)
setup()

## Official stable release from CRAN (updated every other month)
## visit flow-r.github.io/flowr/install for more details
install.packages("flowr",  repos = "http://cran.rstudio.com")

# or a latest version from DRAT, provide cran for dependencies
install.packages("flowr", repos = c(CRAN="http://cran.rstudio.com", DRAT="http://sahilseth.github.io/drat"))

library(flowr) ## load the library
setup() ## copy flowr bash script; and create a folder flowr under home.

# Run an example pipeline

# style 1: sleep_pipe() function creates system cmds
flowr run x=sleep_pipe platform=local execute=TRUE

# style 2: we start with a tsv of system cmds
# get example files
wget --no-check-certificate http://raw.githubusercontent.com/sahilseth/flowr/master/inst/pipelines/sleep_pipe.tsv
wget --no-check-certificate http://raw.githubusercontent.com/sahilseth/flowr/master/inst/pipelines/sleep_pipe.def

# submit to local machine
flowr to_flow x=sleep_pipe.tsv def=sleep_pipe.def platform=local execute=TRUE
# submit to local LSF cluster
flowr to_flow x=sleep_pipe.tsv def=sleep_pipe.def platform=lsf execute=TRUE

# orchest
git clone https://github.com/orchest/orchest.git && cd orchest
./orchest install

# Verify the installation.
./orchest --help

# Start Orchest.
./orchest start

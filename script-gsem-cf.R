# Common Factor GWAS

# Start here
library(here)
library(tidyverse)
library(GenomicSEM)

## commonfactor
## in-between step
covstruc = LDSCoutput

GenomicSEM::commonfactor(covstruc, estimation = "DWLS")

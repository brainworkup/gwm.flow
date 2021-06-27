# Common Factor GWAS

# Start here
library(here)
library(tidyverse)
library(GenomicSEM)

## COMMON FACTOR GWAS

covstruc <- LDSCoutput

SNPs <- p_sumstats

estimation <- "DWLS"

cores <- NULL

toler <- FALSE

SNPSE <- .0005


parallel <- TRUE


GC <- "standard"


MPI <- FALSE


pfactor <- GenomicSEM::commonfactorGWAS(
   covstruc = covstruc,
   SNPs = SNPs,
   estimation = estimation,
   cores = cores,
   toler = toler,
   SNPSE = SNPSE,
   parallel = parallel,
   GC = GC,
   MPI = MPI
)
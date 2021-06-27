# Common Factor GWAS

# Start here
library(here)
library(tidyverse)
library(GenomicSEM)

##############################
## MUNGE
files <- c(
   "GWAS_CP_all.txt",
   "cogent_g_n38.txt",
   "adhd_pgc_2019.txt",
   "anxiety.txt",
   "mdd_2018.txt",
   "scz_withRS.txt"
)


hm3 <- "w_hm3.snplist"


trait.names <- c(
   "cp",
   "cog",
   "adhd",
   "anx",
   "mdd",
   "scz"
)


N <- c(
   257828,
   28445,
   55274,
   17310,
   173005,
   105318
)

info.filter <- 0.9

maf.filter <- 0.01

MUNGEoutput <- GenomicSEM::munge(
   files = files,
   hm3 = hm3,
   trait.names = trait.names,
   N = N,
   info.filter = info.filter,
   maf.filter = maf.filter
)


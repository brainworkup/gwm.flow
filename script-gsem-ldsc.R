# Common Factor GWAS

# Start here
library(here)
library(tidyverse)
library(GenomicSEM)


##############################
## LDSC
traits <- c(
   "cp.sumstats.gz",
   "cog.sumstats.gz",
   "adhd.sumstats.gz",
   "anx.sumstats.gz",
   "mdd.sumstats.gz",
   "scz.sumstats.gz"
)


sample.prev <- c(
   NA,
   NA,
   0.37,
   0.32,
   0.35,
   0.39
)


population.prev <- c(
   NA,
   NA,
   0.10,
   0.29,
   0.16,
   0.01
)


ld <- "eur_w_ld_chr/"

wld <- "eur_w_ld_chr/"


trait.names <- c(
   "CP",
   "COG",
   "ADHD",
   "ANX",
   "MDD",
   "SCZ"
)

stand = FALSE

LDSCoutput <- GenomicSEM::ldsc(
   traits = traits,
   sample.prev = sample.prev,
   population.prev = population.prev,
   ld = ld,
   wld = wld,
   trait.names = trait.names,
   stand = stand
)
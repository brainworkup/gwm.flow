# GenomicSEM
# Common Factor GWAS


# Load --------------------------------------------------------------------


# Start here
library(here)
library(tidyverse)
library(GenomicSEM)



# LDSC --------------------------------------------------------------------

traits <- c(
   "cog.sumstats.gz",
   "adhd.sumstats.gz",
   "anx.sumstats.gz",
   "mdd.sumstats.gz",
   "scz.sumstats.gz"
)


sample.prev <- c(NA,
                 0.37,
                 0.32,
                 0.35,
                 0.39)


population.prev <- c(NA,
                     0.10,
                     0.29,
                     0.16,
                     0.01)


ld <- "eur_w_ld_chr/"

wld <- "eur_w_ld_chr/"


trait.names <- c("COG",
                 "ADHD",
                 "ANX",
                 "MDD",
                 "SCZ")


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


# GWAS --------------------------------------------------------------------

files <- c(
   "cogent_g_n38.txt",
   "adhd_pgc_2019.txt",
   "anxiety.txt",
   "mdd_2018.txt",
   "scz_withRS.txt"
)


ref <- "reference.1000G.maf.0.005.txt"


trait.names <- c("COG",
                 "ADHD",
                 "ANX",
                 "MDD",
                 "SCZ")


se.logit <- c(F, F, F, F, F)


OLS <- c(T, F, F, F, F)


linprob <- NULL


prop <- NULL


N <- c(28445,
       55274,
       17310,
       173005,
       105318)


info.filter <- 0.6


maf.filter <- 0.01


keep.indel <- FALSE


parallel <- FALSE


cores <- NULL


p_sumstats <- GenomicSEM::sumstats(
   files = files,
   ref = ref,
   trait.names = trait.names,
   se.logit = se.logit,
   OLS = OLS,
   linprob = linprob,
   prop = prop,
   N = N,
   info.filter = info.filter,
   maf.filter = maf.filter,
   keep.indel = keep.indel,
   parallel = parallel,
   cores = cores
)


# commonfactor ------------------------------------------------------------

covstruc = LDSCoutput

cf <- GenomicSEM::commonfactor(covstruc,
                               estimation = "DWLS")



# CommonFactorGWAS --------------------------------------------------------

covstruc <- LDSCoutput
SNPs <- p_sumstats

estimation <- "DWLS"
cores <- NULL
toler <- FALSE
SNPSE <- .0005
parallel <- FALSE
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



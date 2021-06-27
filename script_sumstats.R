# sumstats script
files = c(
   "GWAS_CP_all.txt",
   "cogent_g_n38.txt",
   "adhd_pgc_2019.txt",
   "anxiety.txt",
   "mdd_2018.txt",
   "scz_withRS.txt"
)

ref = "reference.1000G.maf.0.005.txt"

trait.names <- c("CP",
                 "COG",
                 "ADHD",
                 "ANX",
                 "MDD",
                 "SCZ")

se.logit = c(F, F, F, F, F, F)

OLS = c(T, T, F, F, F, F)

linprob = NULL

prop = NULL

N = c(257828,
      28445,
      55274,
      17310,
      173005,
      105318)

info.filter = 0.6

maf.filter = 0.01

keep.indel = FALSE

parallel = TRUE

cores = NULL

p_sumstats <- sumstats(
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

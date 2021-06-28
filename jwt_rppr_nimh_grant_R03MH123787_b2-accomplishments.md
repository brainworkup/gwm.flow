---
output:
  bookdown::pdf_document2:
    toc: no
    template: template_nih.tex
    keep_tex: yes
    keep_md: yes
    number_sections: no
    latex_engine: xelatex
    citation_package: biblatex
    fig_crop: yes
    fig_caption: yes
    #extra_dependencies: ["float"]
    includes:
      in_header: ["preamble.tex", "style.tex"]
site: bookdown::bookdown_site
geometry: margin=0.5in
mainfont: Fira Sans
fontsize: 11pt
indent: false
bibliography: gwm.bib
link-citations: yes
colorlinks: yes
graphics: yes
fig-caption: yes
self-contained: yes
highlight: yes
linestretch: 1.24
papersize: a4
links-as-notes: false
---





## B.2 What was accomplished under these goals?

The first half of Year 1 (June-Dec 2020) was the start-up phase of the study. We
had some challenges because of the COVID-19 pandemic, which restricted access to
our labs at USC for the year and impinged upon our ability to interact fluidly
with faculty/colleagues/students. In addition, during the summer and the fall
2020 semester, the USC Center for Advanced Research Computing (CARC) launched a
new high-performance computing cluster, Discovery. This is the computing system
we use to conduct our large-scale genomic analyses. As such, we had to put a
pause on data processing and conducting any new computationally intensive
analyses. That said, the minor delay will ultimately pay dividends long-term, as
the new cluster now consists of around 11,000 CPU cores in around 500 compute
nodes; the typical compute node has dual 8 to 16 core processors; and nearly 100
GB of storage space is provided for each user, with a default storage quota of
10 TB per PI across our individual projects. USC recently upgraded the network
capacity of individual research buildings to 100 Gbps as well, which further
provides advanced computational research support to USC faculty and students
campus wide. The new "supercomputer" has been running fairly smoothly for most
of 2021, but given the newness of the system for both its administrators and us
users, Discovery gets shut down regularly for scheduled maintenance, during
which time clusters and file systems are unavailable for extended periods.
Despite some of these unplanned wait times, the new Discovery high-performance
computing cluster is a welcomed resource we will utilize in Year 2 of the
project for the core planned GWAS and bioinformatics analyses outlined in Aims
1-4.

### Phenotyping

Because we could not run GWAS/GenomicSEM analyses per se while CARC performed
the upgrade to the USC computing cluster for most of Year 1, we developed novel
data analytic and visualization procedures of the working memory behavioral
phenotypes to be used for GWAS. Behavioral phenotyping is much less
computationally intensive and can be done on most standard desktop/laptop
computers. Our approach was/is based on the [The Grammar of
Graphics](https://www.amazon.com/Grammar-Graphics-Statistics-Computing/dp/0387245448/ref=as_li_ss_tl)
and is implemented in `R` using the `ggplot2` system and related `R` data
visualization packages within the broader
[tidyverse](https://www.tidyverse.org/). The `tidyverse` is an opinionated
collection of R packages designed for data science. All packages share an
underlying design philosophy, grammar, and data structures, of which `ggplot2`
is a package dedicated to data visualization that greatly improves the quality,
efficiency, and aesthetics of graphics and plotting. For example, we employed
the packages `ggridges` and `pathwork` to show the longitudinal/lifespan
trajectory from age 3 to age 90+ of a few different working memory phenotypes.
See **Figure** \@ref(fig:wm-plot) for an example.





\begin{wrapfigure}{l}{0.5\textwidth}

{\centering \includegraphics[width=0.40\textwidth]{jwt_rppr_nimh_grant_R03MH123787_b2-accomplishments_files/figure-latex/wm-plot-1} 

}

\caption[Complex working memory skills (e.g., performance on the 2-back trial of the N-back task) rapidly improve during childhood/adolescence, peak in early adulthood, and then decline in the later decades of life]{Complex working memory skills (e.g., performance on the 2-back trial of the N-back task) rapidly improve during childhood/adolescence, peak in early adulthood, and then decline in the later decades of life. In contrast, basic working memory maintenance skill (e.g., 1-back performance) evidences minimal variation across the lifespan.}(\#fig:wm-plot)
\end{wrapfigure}

An animated version of the plot showing mean change scores in working memory
over time using `gganimate` can be viewed on the PIs personal website \@
[brainworkup.fighton.io](https://brainworkup.org/post/2021-06-25-animated-plots/).
Given the heterogeneity in age of our COGENT sample (ages 3 to 103) and the
heterogeneity of our working memory phenotypes, it will be critical to use these
and related types of analyses to better inform the interpretation of our genomic
prediction and GWAS modeling.

### Genotyping



Earlier this year (\~April 2021), we began the process of imputing the COGENT
genome-wide microarray GWAS data to the NHLBI's Trans-Omics for Precision
Medicine (TOPMed) program GWAS imputation reference panel. Version r2 of the
TOPMed reference panel, which is the first version available to the scientific
community at large, includes 97,256 deeply sequenced and diverse reference
samples and 308,107,085 genetic variants distributed across the 22 autosomes and
the X chromosome. As shown in **Table 1**, the sheer density of the TOPMed panel
substantially improves imputation accuracy and provides exponentially broader
and deeper coverage of both common and rare variants across the genome compared
to existing reference panels from the 1000 Genomes Project and the Haplotype
Reference Consortium. In addition, NHLBI provides the TOPMed Imputation Server,
which is a free next-generation genotype imputation service that runs in a
secured cloud computing environment supported by the [NHLBI BioData Catalyst
program](https://imputation.biodatacatalyst.nhlbi.nih.gov/#!pages/home). And an
extensive QC is performed for all uploaded datasets.

(ref:fnote) Comparison of the makeup of publicly available GWAS imputation
reference panels provided by Phase 3 of the 1000 Genomes Project (1000G), the
Haplotype Reference Consortium (HRC), and the Trans-Omics for Precision Medicine
(TOPMed) program across the 22 autosomal chromosomes.


```{=latex}
 
  \providecommand{\huxb}[2]{\arrayrulecolor[RGB]{#1}\global\arrayrulewidth=#2pt}
  \providecommand{\huxvb}[2]{\color[RGB]{#1}\vrule width #2pt}
  \providecommand{\huxtpad}[1]{\rule{0pt}{#1}}
  \providecommand{\huxbpad}[1]{\rule[-#1]{0pt}{#1}}

\begin{wraptable}{r}{0.5\textwidth}
\begin{raggedleft}
\begin{threeparttable}
\captionsetup{justification=raggedleft,singlelinecheck=off}
\caption{(\#tab:unnamed-chunk-4) (ref:fnote)}
 \setlength{\tabcolsep}{0pt}
\begin{tabularx}{0.5\textwidth}{p{0.125\textwidth} p{0.125\textwidth} p{0.125\textwidth} p{0.125\textwidth}}


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}p{0.125\textwidth}!{\huxvb{0, 0, 0}{0}}}{\hspace{0pt}\parbox[b]{0.125\textwidth-0pt-4pt}{\huxtpad{0pt + 1em}\raggedright \textbf{Panel}\huxbpad{4pt}}} &
\multicolumn{1}{p{0.125\textwidth}!{\huxvb{0, 0, 0}{0}}}{\hspace{4pt}\parbox[b]{0.125\textwidth-4pt-4pt}{\huxtpad{0pt + 1em}\raggedleft \textbf{Samples}\huxbpad{4pt}}} &
\multicolumn{1}{p{0.125\textwidth}!{\huxvb{0, 0, 0}{0}}}{\hspace{4pt}\parbox[b]{0.125\textwidth-4pt-4pt}{\huxtpad{0pt + 1em}\raggedleft \textbf{Haplotypes}\huxbpad{4pt}}} &
\multicolumn{1}{p{0.125\textwidth}!{\huxvb{0, 0, 0}{0}}}{\hspace{4pt}\parbox[b]{0.125\textwidth-4pt-0pt}{\huxtpad{0pt + 1em}\raggedleft \textbf{Variants}\huxbpad{4pt}}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}p{0.125\textwidth}!{\huxvb{0, 0, 0}{0}}}{\hspace{0pt}\parbox[b]{0.125\textwidth-0pt-4pt}{\huxtpad{4pt + 1em}\raggedright 1000G\huxbpad{4pt}}} &
\multicolumn{1}{p{0.125\textwidth}!{\huxvb{0, 0, 0}{0}}}{\hspace{4pt}\parbox[b]{0.125\textwidth-4pt-4pt}{\huxtpad{4pt + 1em}\raggedleft 2504\huxbpad{4pt}}} &
\multicolumn{1}{p{0.125\textwidth}!{\huxvb{0, 0, 0}{0}}}{\hspace{4pt}\parbox[b]{0.125\textwidth-4pt-4pt}{\huxtpad{4pt + 1em}\raggedleft 5008\huxbpad{4pt}}} &
\multicolumn{1}{p{0.125\textwidth}!{\huxvb{0, 0, 0}{0}}}{\hspace{4pt}\parbox[b]{0.125\textwidth-4pt-0pt}{\huxtpad{4pt + 1em}\raggedleft 49143605\huxbpad{4pt}}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}p{0.125\textwidth}!{\huxvb{0, 0, 0}{0}}}{\hspace{0pt}\parbox[b]{0.125\textwidth-0pt-4pt}{\huxtpad{4pt + 1em}\raggedright HRC\huxbpad{4pt}}} &
\multicolumn{1}{p{0.125\textwidth}!{\huxvb{0, 0, 0}{0}}}{\hspace{4pt}\parbox[b]{0.125\textwidth-4pt-4pt}{\huxtpad{4pt + 1em}\raggedleft 32470\huxbpad{4pt}}} &
\multicolumn{1}{p{0.125\textwidth}!{\huxvb{0, 0, 0}{0}}}{\hspace{4pt}\parbox[b]{0.125\textwidth-4pt-4pt}{\huxtpad{4pt + 1em}\raggedleft 64940\huxbpad{4pt}}} &
\multicolumn{1}{p{0.125\textwidth}!{\huxvb{0, 0, 0}{0}}}{\hspace{4pt}\parbox[b]{0.125\textwidth-4pt-0pt}{\huxtpad{4pt + 1em}\raggedleft 39635008\huxbpad{4pt}}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}p{0.125\textwidth}!{\huxvb{0, 0, 0}{0}}}{\hspace{0pt}\parbox[b]{0.125\textwidth-0pt-4pt}{\huxtpad{4pt + 1em}\raggedright TOPMed\huxbpad{0pt}}} &
\multicolumn{1}{p{0.125\textwidth}!{\huxvb{0, 0, 0}{0}}}{\hspace{4pt}\parbox[b]{0.125\textwidth-4pt-4pt}{\huxtpad{4pt + 1em}\raggedleft 97256\huxbpad{0pt}}} &
\multicolumn{1}{p{0.125\textwidth}!{\huxvb{0, 0, 0}{0}}}{\hspace{4pt}\parbox[b]{0.125\textwidth-4pt-4pt}{\huxtpad{4pt + 1em}\raggedleft 194512\huxbpad{0pt}}} &
\multicolumn{1}{p{0.125\textwidth}!{\huxvb{0, 0, 0}{0}}}{\hspace{4pt}\parbox[b]{0.125\textwidth-4pt-0pt}{\huxtpad{4pt + 1em}\raggedleft 308107085\huxbpad{0pt}}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}
\end{tabularx}
\end{threeparttable}\par\end{raggedleft}

\end{wraptable}
 
```

So far, we have imputed approximately 6 out of 36 COGENT cohorts to the TOPMed
reference panel and have completed some initial post-imputation quality control
(QC) procedures. We used the following pre- and post-imputation filters to
select the highest quality variants:

-   rsq Filter = .30
-   imputation quality score ("INFO') score = .90
-   minor allele frequency (MAF) = 1%

Using these fairly stringent filters, we are getting approximately \~22M
high-quality genotypes to analyze per sample. By comparison, our prior COGENT
GWAS studies used either the 1000G or HRC panels for some of our published
studies, and when we applied similar QC methods, we obtained \~8M SNPs per
sample. Thus, we are confident and excited that this extra work will payoff in
the long run and yield important new insights regarding the genetic architecture
of human working memory abilities across the lifespan.

### GenomicSEM

Feature update: [GenomicSEM](https://rpubs.com/MichelNivard/640145) can now run
High-definition likelihood (HDL) inference, which is an exciting new method to
estimate heritability and genetic correlation with higher precision then LD
score regression (LDSC). LDSC models the relation between the covariance of a
SNPs Z statistics for pairs of traits and that SNPs LD score. The HDL extends
the LDSC method by modelling the relation between covariances among Z statistics
for pairs of traits across multiple SNPs and a full matrix of cross-SNP LD
scores. Practically speaking, using HDL means we can analyze GWAS sumstats from
smaller GWASs and still have enough power to estimate genetic correlations. The
runtimes are still quite long for GenomicSEM (\~8 hours per analysis so far),
but we are still figuring out how to optimize performance on the new Discovery
cluster and should be able to substantially reduce those execution times.

### Reproducible research workflow

The past few years have yielded much discussion and controversy in biomedical
research circles surrounding reproducibility and replication of findings
[Krieger2019]. This is a well known problem in psychiatric genetics. Thus, prior
to engaging in the core data analyses for the study, I deliberately carved out
time in my schedule for several months while working remotely to learn more
about this issue and made a concerted effort to develop a consistent analytic
workflow. I focused mostly on the open-source tools provided by the R
statistical software package and specifically learned how to work with and use
the R-based "Tidyverse" ecosystem [ref], which is a set of tools that supports
an efficient project management workflow for statisticians and data scientists
who perform large-scale reproducible research within team science environments.
The R Tidyverse is one of the leading software systems in the growing ecosystem
of reproducibility-facilitating software for data science. I have designed my
labs reinvented analytical strategy for this project as well as all future
projects to work in concert with RStudio, an interactive R integrated
development environment [9], and R Markdown (.Rmd), a file structure
accommodating text, code and code output [10]. Fully integrated with RStudio, R
Markdown allows us to interleave statistical programming code with formatted
annotations, enabling its users to write highly technical documents, perform
cutting-edge statistical analyses with interactive data visualizations, apply
version control via Git and GitHub, publish our methods in publicly available
open-science frameworks and repositories, share our code, and generate
easy-to-use websites were all of our methods can be easily shared and reviewed
by any qualified and/or interested researcher. We have a website for the current
project at [gwm.flow](https://brainworkup.github.io/gwm.flow).

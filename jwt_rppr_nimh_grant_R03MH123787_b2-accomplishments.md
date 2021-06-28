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
mainfont: Fira Sans #Arial #Roboto
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
with faculty/colleagues/students. In addition, during the summer and fall 2020
semesters, the USC Center for Advanced Research Computing (CARC) launched a new
high-performance computing cluster, Discovery. This is the computing system we
use to conduct our large-scale genomic analyses. As such, we had to pause data
processing and conducting computationally intensive analyses. That said, the
minor delay will ultimately pay dividends long-term, as the new cluster now
consists of around 11,000 CPU cores in around 500 compute nodes; the typical
compute node has dual 8 to 16 core processors; and nearly 100 GB of storage
space is provided for each user, with a default storage quota of 10 TB per PI
across our individual projects. USC recently upgraded the network capacity of
individual research buildings to 100 Gbps as well, which further provides
advanced computational research support to USC faculty and students campus wide.
The new Discovery "supercomputer" has been running smoothly for most of 2021,
but given the newness of the system for both its administrators and us users, it
gets shut down for regularly scheduled maintenance and the clusters and file
systems are unavailable to use. Overall, the new Discovery computing cluster is
a welcomed resource we will utilize in Year 2 for the core planned GWAS and
bioinformatics analyses outlined in Specific Aims 1-4.

### Phenotyping

Because we could not run GWAS analyses while CARC performed the upgrade to the
cluster, we instead developed novel data analytic and visualization procedures
to process the working memory behavioral phenotypes that will be used for
GenomicSEM. Behavioral phenotyping is less computationally intensive compared to
genomics and can be done on desktop/laptop computers. Our data science approach
is based on the [The Grammar of
Graphics](https://www.amazon.com/Grammar-Graphics-Statistics-Computing/dp/0387245448/ref=as_li_ss_tl)
and is implemented in the open-source statistical program `R` using the
`ggplot2` data visualization package and the `R`
[tidyverse](https://www.tidyverse.org/). `ggplot2` is a package built
exclusively for data visualization and greatly improves the quality, efficiency,
and aesthetics of graphics and plotting. The `tidyverse` is an opinionated
collection of `R` packages designed for data science, and all packages share an
underlying design philosophy, grammar, and data structures.

(ref:wm-plot) Complex working memory skills (e.g., performance on the 2-back
trial of the N-back task) rapidly improve during childhood/adolescence, peak in
early adulthood, and then decline in the later decades of life. In contrast,
basic working memory maintenance skill (e.g., 1-back performance) evidences
minimal variation across the lifespan. An animated version of the plot showing
dynamic changes scores in working memory over time using `gganimate` can be
viewed on the PIs personal website \@
[brainworkup.fighton.io](https://brainworkup.org/post/2021-06-25-animated-plots/).





\begin{wrapfigure}{r}{0.65\textwidth}

{\centering \includegraphics[width=0.55\textwidth]{jwt_rppr_nimh_grant_R03MH123787_b2-accomplishments_files/figure-latex/wm-plot-1} 

}

\caption[(ref:wm-plot)]{(ref:wm-plot)}(\#fig:wm-plot)
\end{wrapfigure}

For example, as demonstrated in **Figure** \@ref(fig:wm-plot), we used the
tidyverse packages `ggridges` and `patchwork` to generate "ridgeline plots" of
the longitudinal/lifespan trajectory of different working memory phenotypes from
age 3 to age 90+. [Ridgeline plots](https://wilkelab.org/ggridges/index.html)
are partially overlapping line plots that create the impression of a "mountain
range" and are useful for visualizing changes in distributions over time or
space. Given the heterogeneity in age of our COGENT sample (ages 3 to 103) and
the heterogeneity of our working memory phenotypes, it will be critical to use
these and related types of analyses to better inform the interpretation of our
genomic prediction and GWAS modeling.

### Genotyping

Earlier this year (\~April 2021), we began the process of imputing the COGENT
genome-wide microarray GWAS data to the NHLBI's Trans-Omics for Precision
Medicine (TOPMed) GWAS imputation reference panel. Version r2 of the TOPMed
reference panel, which is the first version available to the scientific
community at large, includes 97K deeply sequenced and diverse reference samples
and 308M genetic variants distributed across the 22 autosomes and the X
chromosome. As shown in **Table** \@ref(tab:gwas-refs), the sheer density of the
TOPMed panel substantially improves imputation accuracy and provides
exponentially broader and deeper coverage of both common and rare variants
across the genome compared to existing reference panels from the 1000 Genomes
Project and the Haplotype Reference Consortium.



(ref:gwas-refs) Comparison of the structural variation makeup of publicly
available GWAS imputation reference panels provided by Phase 3 of the 1000
Genomes Project (1KGP), the Haplotype Reference Consortium (HRC), and the
Trans-Omics for Precision Medicine (TOPMed) program.


```{=latex}
 
  \providecommand{\huxb}[2]{\arrayrulecolor[RGB]{#1}\global\arrayrulewidth=#2pt}
  \providecommand{\huxvb}[2]{\color[RGB]{#1}\vrule width #2pt}
  \providecommand{\huxtpad}[1]{\rule{0pt}{#1}}
  \providecommand{\huxbpad}[1]{\rule[-#1]{0pt}{#1}}

\begin{wraptable}{r}{0.6\textwidth}
\begin{raggedleft}
\begin{threeparttable}
\captionsetup{justification=raggedleft,singlelinecheck=off}
\caption{(\#tab:gwas-refs) (ref:gwas-refs)}
 \setlength{\tabcolsep}{0pt}
\begin{tabularx}{0.6\textwidth}{p{0.15\textwidth} p{0.15\textwidth} p{0.15\textwidth} p{0.15\textwidth}}


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}p{0.15\textwidth}!{\huxvb{0, 0, 0}{0}}}{\hspace{0pt}\parbox[b]{0.15\textwidth-0pt-4pt}{\huxtpad{0pt + 1em}\raggedright \textbf{Panel}\huxbpad{4pt}}} &
\multicolumn{1}{p{0.15\textwidth}!{\huxvb{0, 0, 0}{0}}}{\hspace{4pt}\parbox[b]{0.15\textwidth-4pt-4pt}{\huxtpad{0pt + 1em}\raggedleft \textbf{Samples}\huxbpad{4pt}}} &
\multicolumn{1}{p{0.15\textwidth}!{\huxvb{0, 0, 0}{0}}}{\hspace{4pt}\parbox[b]{0.15\textwidth-4pt-4pt}{\huxtpad{0pt + 1em}\raggedleft \textbf{Haplotypes}\huxbpad{4pt}}} &
\multicolumn{1}{p{0.15\textwidth}!{\huxvb{0, 0, 0}{0}}}{\hspace{4pt}\parbox[b]{0.15\textwidth-4pt-0pt}{\huxtpad{0pt + 1em}\raggedleft \textbf{Variants}\huxbpad{4pt}}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}p{0.15\textwidth}!{\huxvb{0, 0, 0}{0}}}{\hspace{0pt}\parbox[b]{0.15\textwidth-0pt-4pt}{\huxtpad{4pt + 1em}\raggedright 1KGP\huxbpad{4pt}}} &
\multicolumn{1}{p{0.15\textwidth}!{\huxvb{0, 0, 0}{0}}}{\hspace{4pt}\parbox[b]{0.15\textwidth-4pt-4pt}{\huxtpad{4pt + 1em}\raggedleft 2,504\huxbpad{4pt}}} &
\multicolumn{1}{p{0.15\textwidth}!{\huxvb{0, 0, 0}{0}}}{\hspace{4pt}\parbox[b]{0.15\textwidth-4pt-4pt}{\huxtpad{4pt + 1em}\raggedleft 5,008\huxbpad{4pt}}} &
\multicolumn{1}{p{0.15\textwidth}!{\huxvb{0, 0, 0}{0}}}{\hspace{4pt}\parbox[b]{0.15\textwidth-4pt-0pt}{\huxtpad{4pt + 1em}\raggedleft 49,143,605\huxbpad{4pt}}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}p{0.15\textwidth}!{\huxvb{0, 0, 0}{0}}}{\hspace{0pt}\parbox[b]{0.15\textwidth-0pt-4pt}{\huxtpad{4pt + 1em}\raggedright HRC\huxbpad{4pt}}} &
\multicolumn{1}{p{0.15\textwidth}!{\huxvb{0, 0, 0}{0}}}{\hspace{4pt}\parbox[b]{0.15\textwidth-4pt-4pt}{\huxtpad{4pt + 1em}\raggedleft 32,470\huxbpad{4pt}}} &
\multicolumn{1}{p{0.15\textwidth}!{\huxvb{0, 0, 0}{0}}}{\hspace{4pt}\parbox[b]{0.15\textwidth-4pt-4pt}{\huxtpad{4pt + 1em}\raggedleft 64,940\huxbpad{4pt}}} &
\multicolumn{1}{p{0.15\textwidth}!{\huxvb{0, 0, 0}{0}}}{\hspace{4pt}\parbox[b]{0.15\textwidth-4pt-0pt}{\huxtpad{4pt + 1em}\raggedleft 39,635,008\huxbpad{4pt}}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}p{0.15\textwidth}!{\huxvb{0, 0, 0}{0}}}{\hspace{0pt}\parbox[b]{0.15\textwidth-0pt-4pt}{\huxtpad{4pt + 1em}\raggedright TOPMed\huxbpad{0pt}}} &
\multicolumn{1}{p{0.15\textwidth}!{\huxvb{0, 0, 0}{0}}}{\hspace{4pt}\parbox[b]{0.15\textwidth-4pt-4pt}{\huxtpad{4pt + 1em}\raggedleft 97,256\huxbpad{0pt}}} &
\multicolumn{1}{p{0.15\textwidth}!{\huxvb{0, 0, 0}{0}}}{\hspace{4pt}\parbox[b]{0.15\textwidth-4pt-4pt}{\huxtpad{4pt + 1em}\raggedleft 194,512\huxbpad{0pt}}} &
\multicolumn{1}{p{0.15\textwidth}!{\huxvb{0, 0, 0}{0}}}{\hspace{4pt}\parbox[b]{0.15\textwidth-4pt-0pt}{\huxtpad{4pt + 1em}\raggedleft 308,107,085\huxbpad{0pt}}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}
\end{tabularx}
\end{threeparttable}\par\end{raggedleft}

\end{wraptable}
 
```

In addition, NHLBI provides the TOPMed Imputation Server, a free next-gen
genotype imputation service that runs on a secured cloud computing environment
supported by the [NHLBI BioData Catalyst
program](https://imputation.biodatacatalyst.nhlbi.nih.gov/#!pages/home). So far,
we have imputed approximately 6 out of 36 COGENT cohorts to the TOPMed reference
panel and have completed some initial post-imputation quality control (QC)
procedures. We used the following pre- and post-imputation filters to select the
highest quality variants:

-   rsq Filter = .30
-   imputation quality "INFO' score = .90
-   minor allele frequency (MAF) = 1%

The TOPMed imputation server performs an extensive QC for all uploaded datasets
as well. Even using these stringent filters, we are getting approximately \~22M
high-quality genotype dosages to analyze per sample. By comparison, our prior
COGENT GWAS studies used either the 1000G or HRC panels. When we applied similar
QC methods in those studies, we obtained \~8M SNPs per sample. Thus, we are
confident and excited this extra step will yield even more robust and important
insights regarding the genetic architecture of human working memory abilities
across the lifespan.

### GenomicSEM

[GenomicSEM](https://rpubs.com/MichelNivard/640145) can now run High-definition
likelihood (HDL) inference, which is an exciting new method to estimate
heritability and genetic correlation with higher precision then LD score
regression (LDSC). LDSC models the relation between the covariance of a SNPs Z
statistics for pairs of traits and that SNPs LD score. The HDL extends the LDSC
method by modelling the relation between covariances among Z statistics for
pairs of traits across multiple SNPs and a full matrix of cross-SNP LD scores.
Practically speaking, using HDL means we can analyze GWAS sumstats from smaller
GWASs and still have enough power to estimate genetic correlations. The runtimes
are quite long for GenomicSEM (\~8 hours per analysis so far) as we are still
working out how to optimize performance on the new Discovery cluster. Once we
do, we will reduce those execution times to better streamline our core analyses.

### Reproducible research workflow

The past few years have yielded much discussion and controversy surrounding
reproducibility and replication of findings across the biomedical sciences
including psychiatric genetics. Thus, we have made a concerted effort to develop
a consistent analytical workflow using open-source tools. The aforementioned
R-based "Tidyverse" ecosystem is one such set of tools that supports an
efficient project management workflow for statisticians and data scientists to
perform large-scale reproducible research within team science environments. In
doing so, we have designed and reinvented our lab's analytical strategy for this
project to work in concert with RStudio, an interactive R integrated development
environment, and R Markdown (.Rmd), a file structure accommodating text, code
and code output. Fully integrated with RStudio, R Markdown allows us to
interleave statistical programming code with formatted annotations, enabling us
to write highly technical documents, perform cutting-edge statistical analyses
with interactive data visualizations, apply version control via Git and GitHub,
publish our methods in open-science frameworks and public repositories, share
our code, and generate easy-to-use websites where our methods can be reviewed.
We created a "GWAS of Working Memory Workflow" ("GWM.Flow") website for this
project on GitHub \@ [gwm.flow](https://brainworkup.github.io/gwm.flow).

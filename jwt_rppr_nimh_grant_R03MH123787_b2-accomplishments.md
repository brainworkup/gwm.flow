---
output:
  bookdown::pdf_document2:
    toc: no
    template: template_nih.tex
    keep_tex: yes
    keep_md: yes
    number_sections: no
    latex_engine: xelatex
    citation_package: natbib
    fig_crop: yes
    fig_caption: yes
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
---



## B.2 What was accomplished under these goals?

The first half of Year 1 (June-Dec 2020) was the startup phase of the study. We
had some challenges because of the COVID-19 pandemic, which restricted access to
our labs at USC for the entire year and hence the ability to interact fluidly
with people/colleagues/students. In addition, during the summer and the fall
2020 semester, the USC Center for Advanced Research Computing (CARC) launched a
new high-performance computing cluster, Discovery. This is the computing system
we use to conduct our large-scale genomic analyses. As such, we had to put a
pause on data processing and conducting any new computationally intensive
analyses. That said, the minor delay will ultimately pay dividends long-term, as
the new cluster now consists of around 11,000 CPU cores in around 500 compute
nodes; the typical compute node has dual 8 to 16 core processors and resides on
a 56 gigabit FDR InfiniBand backbone; and nearly 100 GB of storage space is
provided for each user, with a default storage quota of 10 TB per PI across our
projects. USC recently upgraded the network capacity of individual research
buildings to 100 Gbps as well, which further provides advanced computational
research support to USC faculty and students campuswide. The new "supercomputer"
has been running fairly smoothly for most of 2021, but given the newness of the
system for both its administrators and us users, Discovery gets shut down
regularly for scheduled maintenance, during which time clusters and file systems
are unavailable for days at a time in some instances. Despite some of these
unplanned wait times, the new Discovery high-performance computing cluster is a
welcomed new resource we will fully utilize in Year 2 of the project for the
core planned GWAS and bioinformatics analyses outlined in aims 1-4.

We also decided to take advantage of the Trans-Omics for Precision Medicine
(TOPMed) programme seeks to elucidate the genetic architecture and biology of
heart, lung, blood and sleep disorders, with the ultimate goal of improving
diagnosis, treatment and prevention of these diseases. The initial phases of the
programme focused on whole-genome sequencing of individuals with rich phenotypic
data and diverse backgrounds. Here we describe the TOPMed goals and design as
well as the available resources and early insights obtained from the sequence
data. The resources include a variant browser, a genotype imputation server, and
genomic and phenotypic data that are available through dbGaP (Database of
Genotypes and Phenotypes)1. In the first 53,831 TOPMed samples, we detected more
than 400 million single-nucleotide and insertion or deletion variants after
alignment with the reference genome. Additional previously undescribed variants
were detected through assembly of unmapped reads and customized analysis in
highly variable loci. Among the more than 400 million detected variants, 97%
have frequencies of less than 1% and 46% are singletons that are present in only
one individual (53% among unrelated individuals). These rare variants provide
insights into mutational processes and recent human evolutionary history. The
extensive catalogue of genetic variation in TOPMed studies provides unique
opportunities for exploring the contributions of rare and noncoding sequence
variants to phenotypic variation. Furthermore, combining TOPMed haplotypes with
modern imputation methods improves the power and reach of genome-wide
association studies to include variants down to a frequency of approximately
0.01%.

|                     | **1000G Phase 3** |  **HRC**   | **TOPMed**  |
|:--------------------|:-----------------:|:----------:|:-----------:|
| **Haplotypes**      |       5,008       |   64,940   |   194,512   |
| **Samples**         |       2,504       |   32,470   |   97,256    |
| **Sites (chr1-22)** |    49,143,605     | 39,635,008 | 308,107,085 |

## Phenotyping

For example, I generated these visualtions of working memory.







\begin{wrapfigure}{L}{0.55\textwidth}

\includegraphics[width=.55\textwidth]{jwt_rppr_nimh_grant_R03MH123787_b2-accomplishments_files/figure-latex/wm-plot-1} \hfill{}

\caption[Complex working memory skills (e.g., performance on the dot-counting task and the 2-back trial of the N-back) rapidly improve during childhood/adolescence, peak between ages 20-40, and then decline back to early childhood levels in the later decades of life]{Complex working memory skills (e.g., performance on the dot-counting task and the 2-back trial of the N-back) rapidly improve during childhood/adolescence, peak between ages 20-40, and then decline back to early childhood levels in the later decades of life.}(\#fig:wm-plot)
\end{wrapfigure}

## B.3 Competitive Revisions/Administrative Supplements

For this reporting period, is there one or more Revision/Supplement associated
with this award for which reporting is required?

No

## B.4 What opportunities for training and professional development has the project provided?

Many many. Reproducible research. R. Rmarkdown. GitHub. Git.

Support and Training User support for advanced computing at USC is primarily
available through the CARC, which consists of a systems team, cloud/DevOps team,
and research support team. The staff has expertise in storage system
administration, software development, science and engineering applications,
high-performance and parallel programming, and cloud computing solution
development. The CARC also works with researchers who do not require HPC-level
performance but need help developing or optimizing their code, improving their
computing productivity by learning better programming languages, scripting, and
so forth. The CARC offers regular onboarding sessions, office hours,
introductory and advanced training workshops, and in-person and remote
consultations. It also hosts vendor and national supercomputing center training
at USC. As XSEDE Campus Champions, CARC staff can connect researchers with
high-end computing needs to national supercomputing centers to scale their
workflows and reach other researchers nationwide.

## B.5 How have the results been disseminated to communities of interest?

Neuropsychopharmacology

## B.6 What do you plan to do during the next reporting period to accomplish the goals?

# F SOMETHING

## F.2 Actual or anticipated challenges or delays and actions or plans to resolve them

We are not delayed in meeting any of the aims of the project; however, we have
been impacted by the COVID-19 pandemic. The college students we planned to
include in a beta-test of the intervention in the spring of 2020 were all
off-campus and involved in distance learning. Thus, a beta-test of the pregaming
intervention, which is focused on social drinking, was not possible during the
spring with no students on campus. Students are returning to campus in August
2020, and we will run the beta-test then, followed soon by the launch of the
RCT. We expect drinking contexts to be different in the fall as students return
to campus (e.g., fewer mass gatherings, unclear if football games will be played
with spectators); however, given that some studies are indicating alcohol use
may be increasing for many people during the pandemic, we believe fall 2020 will
be a good time to launch. For students, this will represent the first time they
are getting together with their college friends in months and we expect drinking
to be heavy, and therefore, appropriate to target, in the intervention test.
When reporting findings, we will place the intervention and its effects in
context so that consumers of our study will understand that the intervention was
studied during the COVID-19 pandemic.

### Reproducible research workflow

The past few years have yielded much discussion and controversy in biomedical
research circles surrounding reproducibility and replication of findings
[@Krieger2019]. This is a well known problemm in psychiatric genetics. Thus,
prior to engaging in the core data analyses for the study, I deliberately carved
out time in my schedule for several months while working remotely to learn more
about this issue and made a concerted effort to develop a consistent analytic
workflow. I focused mostly on the open-source tools provided by the R
statistical software package and specifcally learned how to work wiht and use
the R-based "Tidyverse" ecosystem [ref], which is a set of tools that supports
an efficient project management workflow for statisticians and data scientists
who perform large-scale reproducible research within team science environments.
The R Tidyverse is one of the leading software systems in the growing ecosystem
of reproducibility-facilitating software for data science. I have designed my
labs reinvented analtyical strategy for this project as well as all future
projects to work in concert with RStudio, an interactive R integrated
development environment [9], and R Markdown (.Rmd), a file structure
accommodating text, code and code output [10]. Fully integrated with RStudio, R
Markdown allows us to interleave statistical programming code with formatted
annotations, enabling its users to write highly technical documents, perform
cutting-edge statistical analyses with interaractive data visualzations, apply
version control via Git and GitHub, publish our methods in publicaly available
open-scienece frameworks and repositories, share our code, and generate
easy-to-use websites were all of our methods can be easily shared and reviewed
by any qualified and/or interested researcerh. We have a website for the current
project at [gwm.flow](https://brainworkup.github.io/gwm.flow).

Related, For the past two months, I have been training on the use of software
containers and singularity. Singularity is an open-source application for
creating and running software containers, designed primarily for
high-performance computing on shared Linux-based computing clusters like CARC
systems.Software containers are isolated, secure, stable, portable, and
reproducible software environments rapidly being embraced by the research
community in an effort to improve research reproducibility. Containers (e.g.,
Docker, Singularity) packages main applications and all dependencies needed for
an analysis, provide OS-level virtualization, and provide a custom user space
that's portable and usable by others almost seamlessly. This ensures the same
software stack is used among a research group, allows the same software stack
across Linux systems (e.g., any HPC center), and one can run the same workflows
across Linux systems by embedding runscripts in container images. A container
image is a single executable file that defines the software environment for a
container and also runs the container. A single container image can be used to
run multiple instances of the same container simultaneously for different jobs.

Singularity containers provide a custom user space and enable isolated, secure,
stable, portable, and reproducible software environments on Linux systems. A
Singularity container bundles a primary application and all of its dependencies
into a single image file, which can also include data, scripts, and other files
if desired. In addition, Singularity containers have direct access to the Linux
kernel on the host system (e.g., Discovery or Endeavour compute nodes), so there
is no substantial performance penalty when using a container compared to using
natively installed software on the host system.


---
output:
   pdf_document:
      template: template_nih.tex
      keep_tex: false
      keep_md: true
      number_sections: false
      latex_engine: xelatex
      citation_package: natbib
geometry: margin=.5in
mainfont: Fira Sans #Alegreya Sans # DejaVu Sans Mono for Powerline Book
fontsize: 11pt
indent: false
subparagraph: true
bibliography: references.bib
---

<!-- a clever hack for wrapfig from https://stackoverflow.com/questions/54100806/r-markdown-how-do-i-make-text-float-around-figures -->



#### **NIMH Grant**: 1 R03 MH123787-01 {.unnumbered}

#### **Title**: GWAS of the RDoC Cognitive Systems Domain: Modeling the Latent Genetic Architecture of Working Memory {.unnumbered}

#### **PI:** Joey Trampush {.unnumbered}

#### **Project Period**: 06/15/2020 -- 06/14/2022 {.unnumbered}
\
\
This grant was funded in response to NIMH PAR-17-158, "Secondary Data Analyses
to Explore NIMH Research Domain Criteria RDoC (R03)." This report specifies
activities from June 15, 2020 through June 14, 2021.

# B. Accomplishments

## B.1 What are the major goals of the project? {.unnumbered}

**Working memory** is the cognitive system responsible for the transient holding and processing of information in conscious awareness just long enough to use it for problem solving. Limited working memory faculties are a fundamental aspect of the cognitive impairments prevalent in ADHD, schizophrenia, and many other CNS disorders. More than half of the variability in working memory capacity from person to person can be sourced back to inherited genetic factors. Thus, our goal is to fast-track the identification and localization of molecular genetic signatures of working memory, and then to uncover the underlying causal molecular and biological mechanisms linking working memory deficits to genetically correlated disorders. GWAS (genome-wide
association study) is a powerful approach to identify molecular signatures of
complex traits if adequate sample sizes and proper statistical procedures are
employed. We will utilize existing genomic and phenotypic data from the
Cognitive Genomics Consortium (COGENT) to test novel hypotheses about the
molecular genetic structure of working memory within the flexible RDoC
framework. The study PI is an investigator and data analyst for COGENT, which
was formed to conduct large-scale GWAS of cognitive traits implicated in
schizophrenia such as general cognitive ability, processing speed, working
memory, and episodic memory. At present, we have individual-level GWAS data on
24,000 participants who have 100,000 working memory data points collected for
analysis, which will be the largest and most well powered GWAS
of working memory to date. The following interrelated specific aims are
proposed:

**Aim 1. Conduct a common factor GWAS of working memory**.

*Method*. Genomic structural equation modeling (Genomic SEM) will be used to
ascertain the joint genetic architecture of narrow working memory facets to
identify loci with effects on a genetically-derived general latent working
memory factor ("*Gwm*"). *Hypothesis*. With sample sizes in the tens of
thousands, the first replicable GWAS hits for working memory are expected to
emerge.

**Aim 2. Determine the extent of shared genetic architecture**.

*Method*. At genome-wide scale, linkage disequilibrium score regression (LDSC)
and genomic restricted maximum likelihood (GREML) estimation will be used to
determine the range of pleiotropy between working memory and correlated CNS
phenotypes. *Hypothesis*. Widespread coheritability is expected to emerge, and
*Gwm* will likely outperform narrower working memory domains and individual
working memory subtests.

**Aim 3: Isolate the strongest causal loci**.

*Method*. At the molecular level, Mendelian randomization (MR) will be used to
determine the direction of causality underlying pleiotropy between working
memory and correlated CNS phenotypes. *Hypothesis*. *Gwm* hits are expected to
exhibit strong causal effects from working memory to ADHD and schizophrenia, and
moderate causal effects to other CNS phenotypes.

**Aim 4. Map key causal biological mechanisms**.

*Method*. To prioritize *Gwm* loci for follow-up studies, functional mapping and
annotation of genetic associations (FUMA) will be used to characterize the
biological function of causal loci. *Hypothesis*. Elucidating the biology of
working memory is expected to be streamlined by narrowing the search space to
causal CNS mechanisms.

### B.1.a Have the major goals changed since the initial competing award or previous report?

No

## B.2 What was accomplished under these goals?

Year 1 was challenged by the pandemic and slowed our launch. We're catching up now, but had restricted access to our labs at USC for almost the entire year and limited access to people/colleagues/students. We rode it out and thankfully are back on track, and are looking forward to executing our four study aims and generating research results as outlined in Year 2.

### High-Performance Computing Cluster

Also back in August, the USC Center for Advanced Research Computing (CARC) launched a new high-performance computing cluster, Discovery, which is what we use to compute our large-scale genomic analyses. The new cluster now consists of around 11,000 CPU cores in around 500 compute nodes; the typical compute node has dual 8 to 16 core processors and resides on a 56 gigabit FDR InfiniBand backbone; and nearly 100 GB of storage space is provided for each user, with a default storage quota of 10 TB per PI across our projects. However, as expected, the new cluster has had its share of ups and downs in terms of operating smoothly and wihtout interruption (e.g., it has been offline for maintenance for several weeks at a time here and there this year, just to work out some of the unforseeable bugs). There was also a bit of a learning curve to orient to the new user interfaces and job submission protocols. To support advanced computing at the university, USC recently upgraded the network capacity of individual research buildings to 100 Gbps. The CARC has also deployed multiple 100 Gbps links between the ITS data center and the rest of the campus, creating an aggregate bandwidth of up to 400 Gbps. CARC will ultimately be an invaluable resource for computational researchers at USC, but the newness of it just added some additional wait time for current project.

### GWAS imputation

Finally, the Trans-Omics for Precision Medicine (TOPMed) programme seeks to elucidate the genetic architecture and biology of heart, lung, blood and sleep disorders, with the ultimate goal of improving diagnosis, treatment and prevention of these diseases. The initial phases of the programme focused on whole-genome sequencing of individuals with rich phenotypic data and diverse backgrounds. Here we describe the TOPMed goals and design as well as the available resources and early insights obtained from the sequence data. The resources include a variant browser, a genotype imputation server, and genomic and phenotypic data that are available through dbGaP (Database of Genotypes and Phenotypes)1. In the first 53,831 TOPMed samples, we detected more than 400 million single-nucleotide and insertion or deletion variants after alignment with the reference genome. Additional previously undescribed variants were detected through assembly of unmapped reads and customized analysis in highly variable loci. Among the more than 400 million detected variants, 97% have frequencies of less than 1% and 46% are singletons that are present in only one individual (53% among unrelated individuals). These rare variants provide insights into mutational processes and recent human evolutionary history. The extensive catalogue of genetic variation in TOPMed studies provides unique opportunities for exploring the contributions of rare and noncoding sequence variants to phenotypic variation. Furthermore, combining TOPMed haplotypes with modern imputation methods improves the power and reach of genome-wide association studies to include variants down to a frequency of approximately 0.01%.

|  | **1000G Phase 3** | **HRC** | **TOPMed** |
| :------------- | :-------------: | :-------------: | :-------------: |
| **Haplotypes** | 5,008 | 64,940 | 194,512 |
| **Samples** | 2,504 | 32,470 | 97,256 |
| **Sites (chr1-22)** | 49,143,605 | 39,635,008 | 308,107,085 |

### Reproducible research methods

#### Software containers and Singularity
For the past two months, I have been training on the use of software containers and singularity. Singularity is an open-source application for creating and running software containers, designed primarily for high-performance computing on shared Linux-based computing clusters like CARC systems.Software containers are isolated, secure, stable, portable, and reproducible software environments rapidly being embraced by the research community in an effort to improve research reproducibility. Containers (e.g., Docker, Singularity) packages main applications and all dependencies needed for an analysis, provide OS-level virtualization, and provide a custom user space that's portable and usable by others almost seamlessly. This ensures the same software stack is used among a research group, allows the same software stack across Linux systems (e.g., any HPC center), and one can run the same workflows across Linux systems by embedding runscripts in container images. A container image is a single executable file that defines the software environment for a container and also runs the container. A single container image can be used to run multiple instances of the same container simultaneously for different jobs.

Singularity containers provide a custom user space and enable isolated, secure, stable, portable, and reproducible software environments on Linux systems. A Singularity container bundles a primary application and all of its dependencies into a single image file, which can also include data, scripts, and other files if desired. In addition, Singularity containers have direct access to the Linux kernel on the host system (e.g., Discovery or Endeavour compute nodes), so there is no substantial performance penalty when using a container compared to using natively installed software on the host system.

#### Data visualization


## B.3 Competitive Revisions/Administrative Supplements

### For this reporting period, is there one or more Revision/Supplement associated with this award for which reporting is required?

No

## B.4 What opportunities for training and professional development has the project provided?

Many many. Reproducible research. R. Rmarkdown. GitHub. Git.

Support and Training
User support for advanced computing at USC is primarily available through the CARC, which consists of a systems team, cloud/DevOps team, and research support team. The staff has expertise in storage system administration, software development, science and engineering applications, high-performance and parallel programming, and cloud computing solution development. The CARC also works with researchers who do not require HPC-level performance but need help developing or optimizing their code, improving their computing productivity by learning better programming languages, scripting, and so forth.
The CARC offers regular onboarding sessions, office hours, introductory and advanced training workshops, and in-person and remote consultations. It also hosts vendor and national supercomputing center training at USC. As XSEDE Campus Champions, CARC staff can connect researchers with high-end computing needs to national supercomputing centers to scale their workflows and reach other researchers nationwide.

## B.5 How have the results been disseminated to communities of interest?

Neuropsychopharmacology

## B.6 What do you plan to do during the next reporting period to accomplish the goals?

```{=html}
<!--
\begin{wrapfigure}{R}{0.7\textwidth}

\hfill{}\includegraphics[width=.7\textwidth]{image.pdf}

\caption{My Flowchart}\label{fig:unnamed-chunk-2}
\end{wrapfigure}
-->
```
\begin{wrapfigure}{R}{0.3\textwidth}

\hfill{}\includegraphics[width=.3\textwidth]{rppr_trampush_nimh_grant_R03MH123787_files/figure-latex/unnamed-chunk-2-1} 

\caption{Important scatterplot}\label{fig:unnamed-chunk-2}
\end{wrapfigure}

### Timeline

There are lots of good examples of `R`-based Gantt charts to be found by clever
Googling. For displaying progress with sidebar annotations by aim, I
particularly like
[\underline{this}](https://datascienceplus.com/visualize-your-cvs-timeline-with-r-gantt-style/)
example from the [\underline{lares}](https://github.com/laresbernardo/lares)
package.

## This makes sure that R loads the workflowr package
## automatically, everytime the project is loaded
if (requireNamespace("workflowr", quietly = TRUE)) {
  message("Loading .Rprofile for the current workflowr project")
  library("workflowr")
} else {
  message("workflowr package not installed, please run install.packages(\"workflowr\") to use the workflowr functions")
}

# Blogdown ----------------------------------------------------------------

# REMEMBER to restart R after you modify and save this file!

# First, execute the global .Rprofile if it exists. You may configure blogdown
# options there, too, so they apply to any blogdown projects. Feel free to
# ignore this part if it sounds too complicated to you.
#if (file.exists("~/.Rprofile")) {
#base::sys.source("~/.Rprofile", envir = environment())
#}

# Now set options to customize the behavior of blogdown for this project. Below
# are a few sample options; for more options, see
# https://bookdown.org/yihui/blogdown/global-options.html
options(
  # to automatically serve the site on RStudio startup, set this option to TRUE
  blogdown.serve_site.startup = FALSE,
  # to disable knitting Rmd files on save, set this option to FALSE
  blogdown.knit.on_save = TRUE,
  # build .Rmd to .html (via Pandoc); to build to Markdown, set this option to 'markdown'
  blogdown.method = 'html'
)

# fix Hugo version
options(blogdown.hugo.version = "0.83.1")

# vscode ------------------------------------------------------------------


#### vs code
Sys.setenv(TERM_PROGRAM = "vscodium")

### vscode setup
source(file.path(Sys.getenv(if (.Platform$OS.type == "windows") "USERPROFILE" else "HOME"), ".vscode-R", "init.R"))

options(vsc.globalenv = TRUE)
options(vsc.plot = "Beside")
options(vsc.rstudioapi = TRUE)


# LanguageServer Setup Start (do not change this chunk)
# to remove this, run languageserversetup::remove_from_rprofile
if (requireNamespace('languageserversetup', quietly = TRUE)) {
  options(langserver_library = '/Users/joey/languageserver-library')
  languageserversetup::languageserver_startup()
  unloadNamespace('languageserversetup')
}
# LanguageServer Setup End

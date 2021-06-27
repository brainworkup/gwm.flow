# projects

library(projects)

setup_projects("~/", overwrite = TRUE)

old_home  <- Sys.getenv("HOME")
old_ppath <- Sys.getenv("PROJECTS_FOLDER_PATH")
temp_dir <- tempfile("dir")
dir.create(temp_dir)
Sys.setenv(HOME = temp_dir)
Sys.unsetenv("PROJECTS_FOLDER_PATH")

setup_projects(path = temp_dir)

new_affiliation(
	department_name  = "Department of Psychiatry and the Behavioral Sciences",
	institution_name = "University of Southern California",
	address = "2250 Alcazar St, Suite 2200, Los Angeles CA 90033"
)

new_author(
	given_names = "Joey",
	last_name = "Trampush",
	title = "Assistant Professor",
	affiliations = 1,
	degree = "PhD",
	email = "joey.trampush@med.usc.edu",
	phone = "323-442-4058"
)

new_project(
	title = "GWAS of Working Memory",
	short_title = "gwm",
	authors = "Trampush",
	current_owner = "Trampush",
	corresp_auth = "Trampush",
	creator = "Trampush",
	stage = "1: design",
	deadline_type = "NIH R03",
	deadline = "2022-06-14",
	folder_name = "gwm",
	make_directories = TRUE
)

projects()

header(project = "GWAS of Working Memory")

open_project("gwm", new_session = TRUE)

# Repository template for student modelling projects ([repo_template](https://github.com/SACEMA/repo_template))

This repository provides a template for setting up a reproducible work flow for a modelling project. The template is intended primarily for use by students who are undertaking projects that use compartmental models. The template consists of the following files:

- `repo_template.Rproj` - an R project file, which can be used to easily access the repository materials in R studio
- `report.Rmd` - an example report that reads in required functions and parameters and shows how to use these to produce tables and plots
- `functions.R` - function definitions for example models (SIR and SIS) and running these models
- `parameters.xlsx` - a spreadsheet with parameter definitions that can be used for both creating parameter tables and passing parameter values to models

# Required software

- R - a statistical programming language (download links for [Windows](http://cran.r-project.org/bin/windows/base/), [Linux](http://cran.r-project.org/bin/linux/), and [MacOS](http://cran.r-project.org/bin/macosx/))
- R Studio - a user interface for R that is needed for report generation ([download link](http://www.rstudio.com/products/rstudio/download/))

# Required packages

- `deSolve` - used for numerical integration of differential equations
- `ggplot2` - used for plotting
- `readxl` - used for reading in Excel files
- `knitr` - used for formatting tables

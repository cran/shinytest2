% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/test-app.R
\name{load_app_env}
\alias{load_app_env}
\title{Load the Shiny application's support environment}
\usage{
load_app_env(
  app_dir = "../../",
  renv = rlang::caller_env(),
  globalrenv = rlang::caller_env()
)
}
\arguments{
\item{app_dir}{The base directory for the Shiny application.}

\item{renv}{The environment in which the files in the `R/`` directory should be evaluated.}

\item{globalrenv}{The environment in which \code{global.R} should be evaluated. If
\code{NULL}, \code{global.R} will not be evaluated at all.}
}
\description{
Executes all \code{./R} files and \code{global.R} into the current environment.
This is useful when wanting access to functions or values created in the \code{./R} folder for testing purposes.
}
\details{
Loading these files is not automatically performed by \code{test_app()} and must
be called in \code{./tests/testthat/setup-shinytest2.R} if access to support file objects is
desired.
}
\seealso{
\code{\link[=use_shinytest2]{use_shinytest2()}} for creating a testing setup file that
loads your Shiny app support environment into the testing environment.
}

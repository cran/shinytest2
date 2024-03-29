% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/migrate.R
\name{migrate_from_shinytest}
\alias{migrate_from_shinytest}
\title{Migrate \pkg{shinytest} tests}
\usage{
migrate_from_shinytest(
  app_dir,
  ...,
  clean = TRUE,
  include_expect_screenshot = missing_arg(),
  quiet = FALSE
)
}
\arguments{
\item{app_dir}{Directory containing the Shiny application or Shiny Rmd file}

\item{...}{Must be empty. Allows for parameter expansion.}

\item{clean}{If TRUE, then the shinytest test directory and runner will be deleted after the migration to use \pkg{shinytest2}.}

\item{include_expect_screenshot}{If \code{TRUE}, \code{ShinyDriver$snapshot()} will turn into both \code{AppDriver$expect_values()} and \code{AppDriver$expect_screenshot()}. If \code{FALSE}, \code{ShinyDriver$snapshot()} will only turn into \code{AppDriver$expect_values()}. If missing, \code{include_expect_screenshot} will behave as \code{FALSE} if \code{shinytest::testApp(compareImages = FALSE)} or \code{ShinyDriver$snapshotInit(screenshot = FALSE)} is called.}

\item{quiet}{Logical that determines if migration information and steps should be printed to the console.}
}
\value{
Invisible \code{TRUE}
}
\description{
This function will migrate standard shinytest test files to the new \pkg{shinytest2} + \pkg{testthat} ed 3 snapshot format.
}
\details{
\pkg{shinytest} file contents will be traversed and converted to the new \pkg{shinytest2} format. If the \pkg{shinytest} code can not be directly seen in the code, then it will not be converted.
}

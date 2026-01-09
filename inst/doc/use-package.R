## ----setup, include=FALSE-----------------------------------------------------
library(shiny)
knitr::opts_chunk$set(echo = TRUE, eval = FALSE)

## -----------------------------------------------------------------------------
# # File: tests/testthat/test-sample_app.R
# library(shinytest2)
# 
# test_that("sample_app works", {
#   # Don't run these tests on the CRAN build servers
#   skip_on_cran()
# 
#   appdir <- system.file(package = "exPackage", "sample_app")
#   app <- AppDriver$new(appdir, name = "sample_app")
# 
#   app$expect_values()
# })

## -----------------------------------------------------------------------------
# # File: tests/testthat/test-app-function.R
# library(shinytest2)
# 
# test_that("mypkg app initial values are consistent", {
#   # Don't run these tests on the CRAN build servers
#   skip_on_cran()
# 
#   app <- AppDriver$new(run_app, name = "mypkg-app")
# 
#   app$expect_values()
# })

## -----------------------------------------------------------------------------
# # File: tests/testthat/test-app-function.R
# library(shinytest2)
# run_mypkg_app <-
# 
# test_that("mypkg app initial values are consistent", {
#   # Don't run these tests on the CRAN build servers
#   skip_on_cran()
# 
#   app <- AppDriver$new(name = "mypkg-app", function() {
#     library(mypkg)
#     run_app()
#   })
# 
#   app$expect_values()
# })

## -----------------------------------------------------------------------------
# # File: R/app-object.R
# 
# dt <- datasets::cars
# 
# hello_world_app <- function() {
#   shinyApp(
#     ui = fluidPage(
#       sliderInput("n", "n", 1, nrow(dt), 10),
#       plotOutput("plot")
#     ),
#     server = function(input, output) {
#       output$plot <- renderPlot({
#         plot(
#           head(dt, input$n),
#           xlim = range(dt[[1]]),
#           ylim = range(dt[[2]])
#         )
#       })
#     }
#   )
# }

## -----------------------------------------------------------------------------
# # File: tests/testthat/test-app-function.R
# 
# test_that("hello-world app initial values are consistent", {
#   # Don't run these tests on the CRAN build servers
#   skip_on_cran()
# 
#   shiny_app <- hello_world_app()
#   app <- AppDriver$new(shiny_app, name = "hello")
# 
#   app$expect_values()
# })

## -----------------------------------------------------------------------------
# library(shinytest2)
# 
# test_that("sample_app works", {
#   app <- AppDriver$new(name = "sample_app")
# 
#   app$expect_values()
#   expect_equal(app$get_value("input$n"), helper_value)
# })

## -----------------------------------------------------------------------------
# library(shinytest2)
# test_that("sample_app works", {
#   appdir <- system.file(package = "exPackage", "sample_app")
#   local_app_support(appdir)
# 
#   app <- AppDriver$new(appdir, name = "sample_app")
# 
#   app$expect_values()
#   expect_equal(app$get_value("input$n"), helper_value)
# })


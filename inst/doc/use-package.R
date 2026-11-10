## -----------------------------------------------------------------------------
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
# 
# test_that("mypkg app initial values are consistent", {
#   # Don't run these tests on the CRAN build servers
#   skip_on_cran()
# 
#   app <- AppDriver$new(name = "mypkg-app", \() {
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
# # File: R/pick-data-app.R
# 
# pick_data_app <- function() {
#   shinyApp(
#     ui = fluidPage(
#       selectInput("dataset", "Dataset", choices = NULL),
#       tableOutput("table")
#     ),
#     server = function(input, output, session) {
#       env <- globalenv()
#       is_df <- function(name) is.data.frame(get(name, envir = env))
#       updateSelectInput(session, "dataset", choices = Filter(is_df, ls(env)))
# 
#       output$table <- renderTable({
#         req(input$dataset)
#         head(get(input$dataset, envir = env))
#       })
#     }
#   )
# }

## -----------------------------------------------------------------------------
# # Does not work: `my_data` only exists in the testing R process
# assign("my_data", datasets::mtcars, envir = globalenv())
# app <- AppDriver$new(pick_data_app())

## -----------------------------------------------------------------------------
# # File: tests/testthat/test-pick-data-app.R
# 
# test_that("pick_data_app shows data from the global environment", {
#   # Don't run these tests on the CRAN build servers
#   skip_on_cran()
# 
#   my_data <- datasets::mtcars
# 
#   app <- AppDriver$new(name = "pick-data", \() {
#     # Runs in the background R process
#     assign("my_data", my_data, envir = globalenv())
#     library(mypkg)
#     pick_data_app()
#   })
# 
#   # `my_data` is the only data frame, so it is already selected
#   app$expect_values(output = "table")
# })

## -----------------------------------------------------------------------------
# # File: tests/testthat/test-pick-data-app.R
# 
# test_that("pick_data_app shows data from a supplied environment", {
#   skip_on_cran()
# 
#   my_data <- datasets::mtcars
# 
#   app <- AppDriver$new(name = "pick-data-env", \() {
#     library(mypkg)
#     pick_data_app(env = list2env(list(my_data = my_data)))
#   })
# 
#   app$expect_values(output = "table")
# })

## -----------------------------------------------------------------------------
# # File: tests/testthat/test-inline-app.R
# library(shinytest2)
# 
# test_that("inline app with package modules works", {
#   skip_on_cran()
# 
#   # Your module functions are already available from your package
#   test_app <- shinyApp(
#     ui = fluidPage(mod_test_ui("test")),
#     server = function(input, output, session) {
#       mod_test_server(id = "test")
#     }
#   )
# 
#   app <- AppDriver$new(test_app)
#   app$expect_values()
# })

## -----------------------------------------------------------------------------
# # File structure:
# #   ./inst/myapps/app1/app.R
# #   ./inst/myapps/app1/R/modules.R  (contains helper functions)
# #   ./tests/testthat/test-app1.R
# 
# test_that("app1 works with its helpers", {
#   skip_on_cran()
# 
#   app_dir <- system.file("myapps/app1", package = "mypkg")
# 
#   # Load app1's support files (modules.R, etc.)
#   local_app_support(app_dir)
# 
#   # Now helper functions from app1/R/ are available
#   expect_true(exists("my_module_ui"))
# 
#   # Test the app
#   app <- AppDriver$new(app_dir)
#   app$expect_values()
# })

## -----------------------------------------------------------------------------
# test_that("app support is scoped correctly", {
#   app_dir <- system.file("myapps/app1", package = "mypkg")
# 
#   expect_false(exists("helper_value"))
# 
#   with_app_support(app_dir, {
#     # helper_value is available here
#     expect_true(exists("helper_value"))
#     expect_equal(helper_value, 42)
#   })
# 
#   # helper_value is gone after the block
#   expect_false(exists("helper_value"))
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


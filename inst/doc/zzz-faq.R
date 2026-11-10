## -----------------------------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, eval = FALSE)

## -----------------------------------------------------------------------------
# if (isTRUE(getOption("shiny.testmode"))) {
#    # Do something special here
# }

## -----------------------------------------------------------------------------
# shinyApp(
#   ui = fluidPage(
#     verbatimTextOutput("random")
#   ),
#   server = function(input, output, session) {
#     output$random <- snapshotPreprocessOutput(
#       renderText({
#         paste("This is a random number:", rnorm(1))
#       }),
#       \(value) {
#         sub("[0-9.]+$", "<a random number>", value)
#       }
#     )
#   }
# )

## -----------------------------------------------------------------------------
# test_that("Done button stops the app", {
#   app <- AppDriver$new(test_path("apps/done"))
#   expect_true(app$get_process()$is_alive())
# 
#   app$click("done", wait_ = FALSE)
#   # Wait up to 5 seconds for the background process to end
#   app$get_process()$wait(5000)
#   expect_false(app$get_process()$is_alive())
# })

## -----------------------------------------------------------------------------
# test_that("Done button saves `foo`", {
#   done_app <- shinyApp(
#     fluidPage(actionButton("done", "Done")),
#     function(input, output, session) {
#       observeEvent(input$done, {
#         assign("foo", "bar", envir = globalenv())
#         stopApp()
#       })
#     }
#   )
#   app <- AppDriver$new(\() {
#     shiny::runApp(done_app) # Returns once the app calls `stopApp()`
#     mget("foo", envir = globalenv())
#   })
#   app$click("done", wait_ = FALSE)
# 
#   # Wait up to 5 seconds for the background process to end
#   app$get_process()$wait(5000)
#   expect_false(app$get_process()$is_alive())
# 
#   expect_equal(app$stop(), list(foo = "bar"))
# })

## -----------------------------------------------------------------------------
# test_that("Bookmark works", {
#   # Start local app in the background in test mode
#   bg_app <- shinytest2::AppDriver$new("path/to/shiny/app")
#   # Capture the background app's URL and add appropriate query parameters
#   bookmark_url <- paste0(bg_app$get_url(), "?_inputs_&n=10")
#   # Open the bookmark URL in a new AppDriver object
#   app <- shinytest2::AppDriver$new(bookmark_url)
# 
#   # Run your tests on the bookmarked `app`
#   app$expect_values()
# })


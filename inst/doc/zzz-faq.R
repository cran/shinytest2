## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, eval = FALSE)

## -----------------------------------------------------------------------------
#  if (isTRUE(getOption("shiny.testmode"))) {
#     # Do something special here
#  }

## -----------------------------------------------------------------------------
#  shinyApp(
#    ui = fluidPage(
#      verbatimTextOutput("random")
#    ),
#    server = function(input, output, session) {
#      output$random <- snapshotPreprocessOutput(
#        renderText({
#          paste("This is a random number:", rnorm(1))
#        }),
#        function(value) {
#          sub("[0-9.]+$", "<a random number>", value)
#        }
#      )
#    }
#  )


# Customised TRUE-FALSE switch button for Rshiny
# Only sing CSS3 code (No javascript)
#
# Sébastien Rochette
# http://statnmap.com/en/
# April 2016

library(shiny)

shinyServer(function(input, output) {
  # List all inputs available
  dynamicInputs <- reactive({reactiveValuesToList(input)})
  # render inputs
  output$print <- renderPrint({dynamicInputs()})

})

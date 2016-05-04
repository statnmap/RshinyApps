# Customised TRUE-FALSE switch button for Rshiny
# Only sing CSS3 code (No javascript)
#
# Sébastien Rochette
# http://sebrock.fr/en/
# April 2016
#
# Instruction :
# Add CSS script 'button.css' in a 'www' folder in your Shiny app folder
# Add R script 'SwitchButton.R' in a 'Rsource' folder in your Shiny app folder
#
# CSS3 code was modified from https://proto.io/freebies/onoff/
# For CSS3 customisation, refer to this website.

library(shiny)

# Source the switch button function
source("./Rsource/SwitchButton.R")

shinyUI(fluidPage(theme = "button.css",
  
  # Application title
  # headerPanel("Customised TRUE-FALSE switch button for Rshiny"),
  title = "Customised TRUE-FALSE switch button for Rshiny",
  
  # Sidebar for inputs
  fluidRow(
    column(width=12,
      fluidRow(
        column(width=6,
          headerPanel("Customised TRUE-FALSE switch button for Rshiny"),
          checkboxInput("Original.1", label = "Original checkbox", value = FALSE, width = NULL),
          fluidRow(
            column(width = 6,
              switchButton(inputId = "Switch.1",
                label = "1. Grey-Blue switch - Default to TRUE - Text ON/OFF", 
                value = TRUE, col = "GB", type = "OO"),
              
              switchButton(inputId = "Switch.2",
                label = "2. Grey-Blue switch - Default to FALSE - Text ON/OFF",
                value = FALSE, col = "GB", type = "OO")
            ),  
            column(width = 6,
              switchButton(inputId = "Switch.3",
                label = "3. Red-Green switch - Default to TRUE - Text TRUE/FALSE", 
                value = TRUE, col = "RG", type = "TF"),
              
              switchButton(inputId = "Switch.4",
                label = "4. Red-Green switch - Default to FALSE - Text TRUE/FALSE", 
                value = FALSE, col = "RG", type = "TF")
            ),
            br(),
            p("This shiny On/Off switch button has been proposed by",
              a(href = "http://sebrock.fr/","Sébastien Rochette"),
              br(), "This RShiny app is available on my",
              a(href = "https://github.com/sebrockfr/RshinyApps/tree/master/On-Off_SwitchButton",
                "github account."),br(),
            "More on my website : ", a(href = "http://sebrock.fr/","http://sebrock.fr"))
            
          )
        ),
        column(width=6,
          # Main panel for outputs
          #mainPanel(
          h2("List of input options available :"),
          verbatimTextOutput("print")
        )
      )
    )
  )))#)

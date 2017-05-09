## On-Off Switch Button presentation
This Rshiny script allows to use nice on/off (or TRUE/FALSE) switch buttons instead of the default shiny 'checkboxInput' function.
This only uses CSS code and does not make use of javascript.
The 'switchButton' function includes two options:
* Choose between a blue/grey or a red/green button
* Choose between TRUE/FALSE, ON/OFF or NULL button text

This requires:
* Add CSS script 'button.css' in a 'www' folder in your Shiny app folder
* Add R script 'SwitchButton.R' in a 'Rsource' folder in your Shiny app folder
* Source the R script in your 'ui.R' script, before `shinyUI()` function:
* Use the 'button.css' script as the template of your Rshiny interface (or merge it with your own customized css template).

```R
# Code for ui.R
# Source the switch button function
source("./Rsource/SwitchButton.R")

shinyUI(fluidPage(theme = "button.css",
   mainPanel(
     switchButton(inputId = "Switch.1",
     label = "Grey-Blue switch - Default to TRUE - Text TRUE/FALSE",
     value = TRUE, col = "GB", type = "TF")
  )
))
```

You may see it in action on [my shinyapp repository](https://statnmap.shinyapps.io/On-Off_SwitchButton/).

![Screenshot-On/Off-Rshiny-Switch-Button](https://github.com/statnmap/RshinyApps/blob/master/On-Off_SwitchButton/Screenshot.jpg)

_CSS code of this app was modified from [https://proto.io/freebies/onoff/](https://proto.io/freebies/onoff/)_

_More on my website: [Freelance - Courses and consulting in modeling with R](https://statnmap.com/en/courses-formation-sig-dans-r-et-qgis/)_


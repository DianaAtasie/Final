library(shiny)

shinyUI(fluidPage(

  titlePanel("Predictor of the next word"),
 h3( helpText("It will take some time!")),
 h5( helpText("Please type SPACE only if you want to add a new word")),
 h4( helpText("Press submit to obtain the result")),
 

  sidebarLayout(
    sidebarPanel(
      h3(helpText("Select:")),
      textInput("words", "words", value = ""),submitButton("Submit", icon("refresh"))
    ),
    mainPanel(
      
      h4("Next words is:"),
      h3(textOutput("result"))
    )
  )
))

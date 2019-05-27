library(shiny)

shinyUI(fluidPage(

  titlePanel("Predictor of the next word"),
 h3( helpText("It will take some time!")),

  sidebarLayout(
    sidebarPanel(
      h3(helpText("Select:")),
      textInput("words", "words", value = "")
    ),
    mainPanel(
      
      h4("Next words is:"),
      h3(textOutput("result"))
    )
  )
))

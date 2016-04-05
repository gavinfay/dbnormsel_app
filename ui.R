#' ui file for dbnormsel_app
#' @author Gavin Fay

library(shiny)

# Define UI for application
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Double Normal Selectivity"),
  
  # Sidebar with slider inputs for the parameter values
  sidebarLayout(
    sidebarPanel(
      
#      fileInput("outfile", label = h6("Output File")),
      
#       textInput("text", label = h5("Output filename"), 
#                 value = "Enter text..."),
#       actionButton("action", label = "Write parameters"),
#      hr(),
      
      sliderInput("p1",
                  "Start of Peak:",
                  min = 1,
                  max = 200,
                  value = 100),
      sliderInput("p2",
                  "Width of Peak:",
                  min = 1,
                  max = 200,
                  value = 20),
      sliderInput("p3",
                  "Ascending width:",
                  min = -10,
                  max = 10,
                  value = 5),      
      sliderInput("p4",
                  "Descending width:",
                  min = -10,
                  max = 10,
                  value = 5),
      sliderInput("p5",
                  "Initial Selectivity:",
                  min = -10,
                  max = 10,
                  value = -9),
      sliderInput("p6",
                  "Final Selectivity:",
                  min = -10,
                  max = 10,
                  value = 0)
      
      
    ),
    
    # Show a plot of the generated selectivity pattern
    mainPanel(
      plotOutput("distPlot")
    )
  )
))
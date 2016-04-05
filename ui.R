library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Double Normal Selectivity"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      
#      # Copy the line below to make a file upload manager
#      fileInput("outfile", label = h6("Output File")),
      
       textInput("text", label = h5("Output filename"), 
                 value = "Enter text..."),
       actionButton("action", label = "Write parameters"),
      hr(),
#      fluidRow(column(4, verbatimTextOutput("value"))),
      
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
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))
#' server file for dbnormsel_app
#' @author Gavin Fay

library(shiny)

get_selex <- function(lens=1:200,sp=c(100,20),sel_plot=FALSE,...) {
  selex <- rep(NA,length(lens))
  neglog19 <- -1*log(19)  
  selex = 1./(1.+exp(neglog19*(lens-sp[1])/sp[2]))
  if (sel_plot) plot(lens,selex,type='l',lwd=3,ylim=c(0,1),...)
  return(selex)
}
source("dbnorm.R")

# Define server logic required
shinyServer(function(input, output) {
  
  # Expression that generates the selectivity ploy. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should re-execute automatically
  #     when inputs change
  #  2) Its output type is a plot
  
  output$distPlot <- renderPlot({
    #get_selex(sp=c(input$infl,input$width),sel_plot=TRUE,col="darkgray")    
    dbnorm_sel(sp=c(input$p1,
                    input$p2,
                    input$p3,
                    input$p4,
                    input$p5,
                    input$p6),
               col="darkgray")    
    
    })
})

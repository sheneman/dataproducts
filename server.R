#
# Coursera Data Science Specialization
# Creating Data Products
# Course Project (Shiny)
#
# server.R
#


library(shiny)



shinyServer(
  function(input, output) {
    
    output$omean <- renderPrint({input$mean})
    output$osd  <- renderPrint({input$sd})
    output$on    <- renderPrint({input$n})
    output$odisthist <- renderPlot({
      x <- rnorm(input$n,input$mean,input$sd)
      hist(x,breaks=25,main="The Normal Distribution")})
  }
)
#
# Coursera Data Science Specialization
# Creating Data Products
# Course Project (Shiny)
#
# ui.R
#

library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Simulating a Normal Distribution"),
    sidebarPanel(
        h3("Simulating Parameters"),
        numericInput("n","Enter n:", 100, min=0, max=10000, step=1),
        numericInput("mean","Enter the mean:", 0, min=-10, max=10, step=1),
        numericInput("sd", "Enter the standard deviation:", 1, min=0,max=25,step=0.5),
        submitButton("Submit"),
        h5("INSTRUCTIONS:  This application simulates a normal distribution and plots a histogram 
           of that distribution based on user input.   Please change the parameters of the
           distribution (n, mean, stddev) and click submit to update the plot of the simulated
           normal distribution.")
    ),
    
    mainPanel(
        h2("Results"),
        h3("Selected Parameters:"),
        h4("Mean:"),
        verbatimTextOutput("omean"),
        h4("Variance:"),
        verbatimTextOutput("osd"),
        h4("n"),
        verbatimTextOutput("on"),
        plotOutput("odisthist")
    )
))
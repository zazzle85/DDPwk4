#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
data(mtcars)

# Define server logic required to draw a histogram
CarMPG<- function(e0) mtcars[c(e0),1]

shinyServer(
    function(input, output) {
        output$inputValue<-renderPrint({input$e0})
        output$MPG<- renderPrint({CarMPG(input$e0)})
    })



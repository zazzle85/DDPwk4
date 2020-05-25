#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
data(mtcars)
# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("MPG for Cars"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            selectInput(
                'e0', 'Select a car', choices = rownames(mtcars),
                selectize = FALSE
            ),
            submitButton('Submit')
        ),

        # Show a plot of the generated distribution
        mainPanel(
            h3('Results of selection'), 
            h4('You entered'), 
            verbatimTextOutput("inputValue"), 
            h4('MPG for the selected car is '), 
            verbatimTextOutput("MPG")
            
        )
    )
))

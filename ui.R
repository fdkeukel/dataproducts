# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#
# Deployed at: https://fdkeukel.shinyapps.io/CourseProject

# The following two lines of code should be called from the directory where the ui.R and server.R are 
# located to start the application.

# library(shiny)
# runApp()

# The main UI function
shinyUI(pageWithSidebar(
  headerPanel("Milage Estimator"),
  sidebarPanel(
    sliderInput('cyl', 'Number of cylinders:',value = 4, min = 4, max = 8, step = 2),
    radioButtons("am", "Transmission type:",
                 c("Automatic" = "auto",
                   "Manual" = "manual"
                   )),
    numericInput('hp', 'Gross horsepower:', 150, min = 50, max = 500, step = 1),
    numericInput('wt', 'Weight (lb/1000):', 3, min = 1, max = 10, step = 1)
  ),
  mainPanel(
    h3('The estimated milage for your configuration is :'),
    verbatimTextOutput("mpg"),
    h5('Please adjust the values on the left. The milage will be automatically updated.')
  )
))

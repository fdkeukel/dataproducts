# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#
# Deployed at: https://fdkeukel.shinyapps.io/CourseProject

# Load the cars data set
data(mtcars)
#factorize
mtcars$am <- factor(mtcars$am,labels=c('auto','manual'))

# Build a predictive model estimating the milage per gallon based on cyl, hp, wt, am
fit <-lm(mpg ~ cyl + hp + wt + am ,data=mtcars)

# Server code. This function reads the input and applies the model calculated above to the inputs.
shinyServer(
  function(input, output) 
    output$mpg <- renderText({
      #read the input
      cyl<- input$cyl
      hp<-input$hp
      wt<-input$wt
      am<-input$am
      #predict the mpg
      pred<-predict(fit, data.frame(cyl,hp,wt,am))
      #return the predicted value
      pred
  })
)
    
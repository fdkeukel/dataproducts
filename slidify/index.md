---
title       : Developing Data Products
subtitle    : Online Car Milage Predictor
author      : Frederik De Keukelaere
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : standalone # {standalone, selfcontained, draft}
knit        : slidify::knit2slides

---  

## Online Car Milage Predictor
### Context


This presentation is part of the course project of the developing data products class on coursera. The project contains two parts which allows us to learn the following technologies: 

- shiny to build a data product application
- R-Presentation or slidify to create data-related presentations


---  

## Online Car Milage Predictor
### Application


The shiny application created for this project allows you to simulate the impact on the expected milage for several different input parameters:
- Number of cylinders
- Transmission type
- Gross horsepower
- Weight

Using this information you can make your own milage estimation for example when you're buying a new car.


---  

## Online Car Milage Predictor
### Data Set and Model


In this project the data set used is mtcars (https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/mtcars.html). Using this data set we built a model estimating the miles per gallon by fitting a linear model to the input parameters: Number of cylinders, Transmission type, Gross horsepower, Weight. As part of the regression models coursera course we had identified those to be most relevant for predicting mpg.

The linear model was created as:


```r
# Load the cars data set
data(mtcars)
#factorize
mtcars$am <- factor(mtcars$am,labels=c('auto','manual'))
# Build a predictive model estimating the milage per gallon based on cyl, hp, wt, am
fit <-lm(mpg ~ cyl + hp + wt + am ,data=mtcars)
```

---  

## Online Car Milage Predictor
### Coefficients

The coefficients and their importance in the model can be found below. 


```
##                Estimate Std. Error   t value     Pr(>|t|)
## (Intercept) 36.14653575 3.10478079 11.642218 4.944804e-12
## cyl         -0.74515702 0.58278741 -1.278609 2.119166e-01
## hp          -0.02495106 0.01364614 -1.828433 7.855337e-02
## wt          -2.60648071 0.91983749 -2.833632 8.603218e-03
## ammanual     1.47804771 1.44114927  1.025603 3.141799e-01
```


**Have fun with this little shiny app!**


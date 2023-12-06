#Script to plot data and model
install.packages("ggplot2")
library(ggplot2)

growth_data <- read.csv("experiment 1.csv")

#this function gives us the logistic growth model for this data 

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}


N0 <- 975.5 #estimate of the intercept e^(6.883)
  
r <- 1.004e-02 #rate of growth found using gradient
  
K <- 6.000e+10 #carrying capacity found looking at linear model 2 intercept 

#when we plot this model we see the red line showing the model
#if the last part of code is added it log transforms the y axis 
#so it becomes linear 

ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point()

  #scale_y_continuous(trans='log10')




growth_data <- read.csv("experiment 1.csv")

#this function gives us the logistic growth model for this data 

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
}

N0 <- 972.6 #estimate of the intercept e^(6.883)

r <- 1.004e-02 #rate of growth found using gradient

K <- 6.000e+10 #carrying capacity found looking at linear model 2 intercept 

exp_fun<-function(t){
  N<- N0*exp(r*t)
}

exp <- exp_fun(4980)
logistic <- logistic_fun(4980)

exp
logistic

ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  geom_function(fun=exp_fun, colour="blue")+
  scale_y_continuous(limits=c(0, 6.5e+10))

  
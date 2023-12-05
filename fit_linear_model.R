#Script to estimate the model parameters using a linear approximation
install.packages("dplyr") 
library(dplyr)

growth_data <- read.csv("experiment 1.csv")

#Case 1. K >> N0, t is small

data_subset1 <- growth_data %>% filter(t<1000) %>% mutate(N_log = log(N))

model1 <- lm(N_log ~ t, data_subset1)
summary(model1)

#we can see that N is 7 at t=0 as that is the intercept 

#Case 2. N(t) = K

data_subset2 <- growth_data %>% filter(t>3000)

model2 <- lm(N ~ 1, data_subset2)
summary(model2)

#we can see that the 6x10^10 will be the maximum and therefore K


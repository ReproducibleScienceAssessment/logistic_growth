#Script to plot the logistic growth data

growth_data <- read.csv("experiment 1.csv")

install.packages("ggplot2")
library(ggplot2)

#first we are going to plot the number of cells against time
#for the growing population 

ggplot(aes(t,N), data = growth_data ) +
  geom_point() +
  ylab("Number of cells")+
  xlab("Time") +
  theme_bw()

#next we are going to plot the log(number of cells) against 
#time to show the logarithmic increase of cells over earlier time before 
#it then remains constant when it reaches carrying capacity 

ggplot(aes(t,N), data = growth_data) +
  geom_point() +
  ylab("Log(number of cells") +
  xlab("Time") +
  scale_y_continuous(trans='log10')


# logistic_growth
## Assignment Write Up for Questions 1-3

## Question 1: detailed information on our analysis 

### Introduction

We are exploring how the growth rate of a bacterial population changes over time, looking mainly at initial population size (N) and carrying capacity (K) of populations modelled using logistic growth models

<img width="120" alt="Screenshot 2023-12-05 at 15 52 12" src="https://github.com/skystewartroberts/logistic_growth/assets/150151519/bc6ce6b0-5340-44e0-a363-d865babdf584">


We are using a differential equation which represents the rate the population size changes as a function of the current population size multipled by the growth rate. The growth rate is scaled accounting for the size of the population with respect for the carring capacity limits it has.

### Analysis

I conducted my analysis on data collected in experiment 1.

1. We visualised the data in two ways. The first looked at the simple relationship between the number of cells over time. We then generated a semi-log plot where the y-axis was log transformed to generate a linear relationship between time and number of cells until it reaches carring capacity

2. We generated two linear models

- **Model 1**: finding N0. In this model we set t<1000 to find the intercept of the line, which allows us to find the initial population size (N). In this model K is much greater than N therefore, we expect exponential population growth in this period. 

- **Model 2**: finding K. In this model we set t>3000 (where the graph is constant). This causes the size of the population to be equal to the constant number (carrying capacity)

3. Finally, we can generate a logistic model using the values for N0, r (growth rate) and K from our models. This allows us to find the population size (N) at any time point



### Results

Employing this analysis on the data from experiment 1 produced estimates for N, K and r

N0 = 972.6
r = 1.004x10^(-2)
K = 6.000x10^(10)

This indicates that the original population of bacteria included 973 individuals (rounded) with a growth rate of 0.01004. This population will likely reach a carrying capacity of 60000000000 individuals 


## Question 2: Use your estimates of N0 and r to calculate the population size at t = 4980 min, assuming that the population grows exponentially

Using a model for exponential growth we can calculate the population size at t=4980:

exp_fun<-function(t){
  N<- N0*exp(r*t)
}

This gives N as 5.04x10^(24)

**How does it compare to the population size predicted under logistic growth?**

This is different from the the population size predicted under logistic growth which is K (6x10^(10)). This is because in the exponential model there is no limit to population size therefore, it can continue to increase (assuming endless resources). The logistic model assumes growth rate scaled using the current population in relation to the carrying capacity, meaning that it cannot increase above K 














set.seed(1)

#number of simulations
n_experiment <- 10000

#simulation parameters
n <- 20
sd <- 1
means <- c(0, 0.1, 0.2, 0.3, 0.4, 0.5, 1, 1.5, 2, 2.5, 3)

#initializing variables
sim.sign.level <- c()
p.values <- matrix(NA, nrow = n_experiment, ncol = length(means))
j <- 0

#looping over different values of true parameter (i.e true mean)
for (mean in means){
  #counting the iteration through means
  j <- j+1
  
  #starting counter of significant tests to estimate true significance level
  significant.t.test <- 0
  
  #running the experiments
  for (experiment in 1:n_experiment){
    #sim data
    x <- rnorm(n, mean, sd)
    #extract t.test p-value for mu = 0
    p.values[experiment, j] <- t.test(x)$p.value
    
    #counting if test is significant
    if (t.test(x)$p.value < 0.05){
      significant.t.test <- significant.t.test + 1
    }
  }

  sim.sign.level[j] <- significant.t.test/n_experiment
  
  #plotting results as density histograms and empirical cdf
  hist(p.values[,j], main = paste("P for t.test mu = 0, when true mean = ", mean))
  plot(ecdf(p.values[,j]), main = paste("P for t.test mu = 0, when true mean = ", mean))
}
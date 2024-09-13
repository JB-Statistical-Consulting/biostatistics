library(PowerTOST)
library(dplyr)
library(ggplot2)

BESS <- function(power = 0.8, alpha = 0.05, r = 0.9, ll = 0.8, ul = 1.25, cv = 0.14) {
  ss <- data.frame()  # Initialize an empty dataframe
  
  b <- 1 - power
  mse <- log(cv^2 + 1)
  
  for (n in seq(2, 10000)) {
    t1 <- sqrt(n) * (log(r) - log(ll)) / sqrt(mse)
    t2 <- sqrt(n) * (log(ul) - log(r)) / sqrt(mse)
    t <- ifelse(is.nan(qt(1 - alpha, 2 * n - 2)), 0, qt(1 - alpha, 2 * n - 2))
    p1 <- pt(t, 2 * n - 2, t2)
    p2 <- pt(t, 2 * n - 2, t1)
    p <- p1 + p2
    
    if (b >= p) {
      cat("Date:", Sys.Date(), "\n")
      cat("Sample size Calculation for Two way BE design using R language", "\n")
      cat("Assumed T/R Ratio:", r, "\n")
      cat("BE limits:", ll, "-", ul, "\n")
      cat("Assumed Power:", power, "\n")
      cat("Assumed level of significance:", alpha, "\n")
      cat("Assumed CV:", cv, "\n")
      cat("The required sample size:", 2 * n, "\n")
      
      ss <- data.frame(alpha = alpha, power = power, ratio = r, size = 2 * n, cv=cv)
      break
    } 
  }
  
  if (n == 10000) {
    cat("Warning: Sample size not found within the range [6, 10000]. Consider revising assumptions or increasing the maximum sample size limit.\n")
  }
  
  return(ss)  # Return the dataframe
}

# Example usage:
result <- BESS(power = 0.8, alpha = 0.05, r = 0.85, cv = 0.05)
print(result)

ss <- data.frame()

# Nested loops to iterate over combinations of parameters
for (i in c(0.8, 0.9)) {
  for (j in seq(0.05, 1, 0.05)) {
    for (k in seq(0.81, 1.24, 0.05)) {
      # Call BESS function for each combination of parameters
      s_size <- BESS(power = i, r = k, cv = j)
      
      # Append s_size to ss using rbind and assign back to ss
      ss <- rbind(ss, s_size)
    }
  }
}

# Print the resulting dataframe ss
print(ss)


ss1<-data.frame()

for (i in c(0.8, 0.9)) {
  for (j in seq(0.05, 1, 0.05)) {
    for (k in seq(0.81, 1.24, 0.05)) {
      # Call BESS function for each combination of parameters
      s_size <- sampleN.TOST(targetpower = i, theta0 = k, CV = j)
      
      # Append s_size to ss using rbind and assign back to ss
      ss1 <- rbind(ss1, s_size)
    }
  }
}
setwd("C:\\Users\\Hanu\\OneDrive\\Desktop\\Anil\\R programes")
write.csv(ss1, "ptss.csv")
write.csv(ss,"mss.csv")

ss %>% ggplot(aes(cv, size, color=ratio))+
  geom_line(aes(group=ratio))+
  facet_wrap(~power, labeller = labeller(power=c("0.8"="Power = 0.8", "0.9"="Power = 0.9")), 
             ncol = 2)+
  labs(
    x = "CV",
    y = "Sample Size",
    color = "T/R Ratio"
  )

ss %>% ggplot(aes(ratio, size, color=cv))+
  geom_line(aes(group=cv))+
  facet_wrap(~power, labeller = labeller(power=c("0.8"="Power = 0.8", "0.9"="Power = 0.9")), 
             ncol = 2)+
  labs(
    x = "T/R Ratio",
    y = "Sample Size",
    color = "CV"
  )

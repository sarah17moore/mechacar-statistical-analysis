library(dplyr)

##################################
## Part 1 ######################

# Import csv as a DataFrame
MechaCar_mpg <- read.csv("~/Desktop/classwork/R Studio/mechacar-statistical-analysis/Resources/MechaCar_mpg.csv")
View(MechaCar_mpg)

# Perform linear regression using lm() function. 
## Pass all 6 variables
predictmpg <- lm(mpg ~ vehicle_weight + 
                 vehicle_length + spoiler_angle + ground_clearance +
                 AWD, data= MechaCar_mpg)
predictmpg

# Using summary() determine the p-value and r-squared value
summary(predictmpg)
plot(predictmpg)

##################################
## Part 2 ######################

# Import csv as a DataFrame
Suspension_Coil <- read.csv("~/Desktop/classwork/R Studio/mechacar-statistical-analysis/Resources/Suspension_Coil.csv")
View(Suspension_Coil)

# Use summarize() to get mean, median, variance, and standard deviation
## of the suspension coil's PSI column
total_summary_tibble <- Suspension_Coil %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
total_summary <- as.data.frame(total_summary_tibble)
View(total_summary)

# Use group_by() and summarize() to get mean, median, variance, and standard deviation
## of the suspension coil's PSI column per manufacturing lot
lot_summary_tibble <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
lot_summary <- as.data.frame(lot_summary_tibble)
View(lot_summary)

##################################
## Part 3 ######################

# Use t.test() to determine if the PSI across all manufacturing lots is statistically
## different from the population mean of 1,500 pounds per square inch
t.test(Suspension_Coil$PSI, mu=1500, alternative="two.sided", conf.level = 0.95)

# Write three more t.test() functions and the subset() argument to determine if
## the PSI for each manufacturing lot is statistically different from the
## population mean of 1,500 pounds per square inch
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == 'Lot1'), mu=1500, alternative="two.sided", conf.level = 0.95)

t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == 'Lot2'), mu=1500, alternative="two.sided", conf.level = 0.95)

t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == 'Lot3'), mu=1500, alternative="two.sided", conf.level = 0.95)

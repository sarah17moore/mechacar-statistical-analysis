library(dplyr)

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

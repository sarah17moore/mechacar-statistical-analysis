# MechaCar Statistical Analysis: R / R Studio Analysis

A classwork example in which R / R Studio is used to review production data for insights to help a manufacturing team

---

# Overview of Project
This is where the overview of the project will go

## Purpose
This is where the purpose will go

---
# Summary
## Linear Regression to Predict MPG
After performing a multiple linear regression to predict MPG based on vechicle weight, length, spoiler angle, ground clearance, and whether or not the car has all-wheel drive, we receive this output:
![multiple linear regression output](Resources/mlr_output.png)

* Based on their p-values, vehicle length and ground clearance provide a non-random amount of variance to the MPG valuess in the data. Both p-values were less than 0.05, suggesting significance. 
* The slope of the linear model is considered to be positive - not zero. This is because each coefficent (excluding all-wheel drive) has a positive coefficient. 
* This model does not predict MPG of MechaCar prototypes effectively. If we use the plot() function on the multiple linear regression model we will see that there is not constant variation in the residual plot. The adjusted R-squared is also not ideal - it is only 0.6825 (out of a possible 1). However, we could refine this model. We could drop the variable "spoiler_angle" because it has the largest p-value. Then retest. If the conditions are met with the resulting model, then that model could help predict MPG more accurately. If conditions are not met, we could continue to drop variables with p-values above 0.05 (AWD, then vehicle_weight) to attempt to meet conditions. 

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The current manufacturing data suggests that this design specification for all manufacturing lots in total is met, however one lot individually did not meet this design specification. Lot 3 has a 170.2861224 variance, well above the 100 pounds per quare inch maximum. 

![Total summary for suspension coil PSI output](Resources/total_summary_PSI.png)
![Lot summary for suspension coil PSI output](Resources/lot_summary_PSI.png)

## T-Tests on Suspension Coils

## Study Design: MechaCar vs Competition
This is where the study for part 4 will go

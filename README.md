# MechaCar_Statistical_Analysis
With the use of R studio, along with the MechaCar_mpg.csv file and Suspension_Coil.csv file, I will be doing the following in this challenge:
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Linear Regression to Predict MPG
The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. I will design a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file.

### Analysis
H0 : The slope of the linear model is zero, or m = 0
Ha : The slope of the linear model is not zero, or m ≠ 0

Below is the linear regression model for all six variables which calculates the slope and y intercept values (also known as coefficients) that minimize the overall distance between each data point: 

![Linear_Regression](https://user-images.githubusercontent.com/105755095/190268481-ccda8f3d-a784-479a-8208-1560aa5e3815.png)

The summary linear regression model as shown below shares the r-squared and p-value. The r-squared value shows what percent of time the dependent variable of the MPG can be predicted by the 6 independent varibles. Our model shows that the p-value is less than the significance level of .05, therefore we can state that their is enough sufficent effidence to reject the null hypothesis, which means the slope of our data is not equal to 0. 

![Summary_LR](https://user-images.githubusercontent.com/105755095/190269545-5f90d42a-9c2f-4c13-ac66-6fbae1a8f9d4.png)

#### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Looking at the Pr(>|t|) part of the summary statistic, we can see that vehicle length and ground clearance would provide a non-random amount of variance to the dataset. 

#### Is the slope of the linear model considered to be zero? Why or why not?
No, our slope of the linear model is not considered to be 0 because we are able to safely reject our null hypothesis. This is because our p-value is 5.35e-11 which is way less than our significance level at .05%. Because the p-value is lower, we are able to reject the null hypothesis which in turn rejects that statment that our slope is equal to 0. This also means that there is a significant linear relationship. 

#### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
For this question we will have to look at the R-squared value in the summary statistics provided above. The R-squared value is 0.7149. This value means that roughly 71% of our dependent varible, the MPG, can be predicted by this linear model. 

## Summary Statistics on Suspension Coils
The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. Using your knowledge of R, you’ll create a summary statistics table to show:
- The suspension coil’s PSI continuous variable across all manufacturing lots
- The following PSI metrics for each lot: mean, median, variance, and standard deviation.

### Analysis

#### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

## T-Test on Suspension Coils
Using your knowledge of R, perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

### Analysis

## Study Design: MechaCar vs Competition
summary...
#### What metric or metrics are you going to test?
#### What is the null hypothesis or alternative hypothesis?
#### What statistical test would you use to test the hypothesis? And why?
#### What data is needed to run the statistical test?

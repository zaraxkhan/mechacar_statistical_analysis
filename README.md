# MechaCar_Statistical_Analysis
With the use of R studio, along with the MechaCar_mpg.csv file and Suspension_Coil.csv file, I will be doing the following in this challenge:
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Linear Regression to Predict MPG
The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. I will design a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file.

### Analysis
- H0 : The slope of the linear model is zero, or m = 0
- Ha : The slope of the linear model is not zero, or m ≠ 0

Below is the linear regression model for all six variables which calculates the slope and y intercept values (also known as coefficients) that minimize the overall distance between each data point: 

![Linear_Regression](https://user-images.githubusercontent.com/105755095/190268481-ccda8f3d-a784-479a-8208-1560aa5e3815.png)

The summary linear regression model as shown below shares the r-squared and p-value. The r-squared value shows what percent of time the dependent variable of the MPG can be predicted by the 6 independent varibles. Our model shows that the p-value is less than the significance level of .05, therefore we can state that their is enough sufficent effidence to reject the null hypothesis, which means the slope of our data is not equal to 0. 

![Summary_LR](https://user-images.githubusercontent.com/105755095/190269545-5f90d42a-9c2f-4c13-ac66-6fbae1a8f9d4.png)

#### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Looking at the Pr(>|t|) part of the summary statistic, we can see that vehicle length and ground clearance would provide a non-random amount of variance to the dataset. 

#### Is the slope of the linear model considered to be zero? Why or why not?
No, our slope of the linear model is not considered to be 0 because we are able to safely reject our null hypothesis. This is because our p-value is 5.35e-11 which is way less than our significance level at .05%. Because the p-value is lower, we are able to reject the null hypothesis which in turn rejects that statment that our slope is equal to 0. This also means that there is a significant linear relationship. 

#### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
For this question we will have to look at the R-squared value in the summary statistics provided above. The R-squared value is 0.7149. This value means that roughly 71% of our dependent variable, the MPG, can be predicted by this linear model. 

## Summary Statistics on Suspension Coils
The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. I will create a summary statistics table to show:
- The suspension coil’s PSI continuous variable across all manufacturing lots
- The following PSI metrics for each lot: mean, median, variance, and standard deviation.

### Analysis
The total summary table shares the mean, median, variance, and standard deviation of the weight capacity of many vehicle suspension coils through every lot.

![total_summary](https://user-images.githubusercontent.com/105755095/190272233-b64f5744-eb22-4c36-b0c4-3b0d00f94526.png)

The lot summary dives in deeper sharing how each lot is doing with their suspension weight capacity using the PSI data. 

![lot_summary](https://user-images.githubusercontent.com/105755095/190272399-cf5cdcb9-f9ff-4fa6-a9a7-a989dcf9505f.png)


#### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
In total, looking at the variance column, the suspension coil variance is under 100 PSI therefore meets the design specification. However, looking at the lot summary table provided above, the design specification of variance under 100 PSI is not met for Lot 3. As we can see, in Lot 3 the variance is 170.29, which exceeds the 100 PSI limit. Lot 1 and Lot 2 and way under the 100 PSI limit with a variance of .98 and 7.47 respectively. 

## T-Test on Suspension Coils
Perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

### Analysis
- H0 : There is no statistical difference between the observed sample mean and its presumed population mean.
- Ha : There is a statistical difference between the observed sample mean and its presumed population mean.

For this analysis we will focus on the p-value that is calculated from the t.test. We are given that the population mean of the PSI is 1500. First we will look at the PSI of the whole sample dataset which is shown below. The p value is shown as 0.06 which is greater than our significance level of .05. Because it is greater we cannot reject the null hypothesis and we can state that there is no statistical difference in the population mean and the mean of all the vehicles on every lot. From this we assume that the PSI is in range of what the design specifications required.   

![all_ttest](https://user-images.githubusercontent.com/105755095/190275302-df2c23c5-64f1-43ee-9137-89241b37ed6b.png)

I also preformed an analysis on all three lots. The first one is for Lot 1. The p value is at 1 and the mean at 1500. This means that since it is greater than our significance level (.05), we can not reject the null, therefore there is no statistical difference between the sample of Lot 1 and the population. So the vehicles in Lot 1 are in range of the design specifications required. 

![lot1_ttest](https://user-images.githubusercontent.com/105755095/190275724-c7ed9c89-2c86-4409-9b6d-16b8b9e657c6.png)

For the t-test analysis on Lot 2, we can see below that the p-value is at .61 which is higher than the .05 significance level. Therefore, we can not reject the null hypothesis and so there is no statistical difference between the PSI mean of Lot 2 and the population mean. This also means that the suspension coils are within the design requirments. 

![lot2_ttest](https://user-images.githubusercontent.com/105755095/190275965-699d09cb-cae2-4f07-ad38-f3ede79362a0.png)

Lastly, below is the t-test analysis on Lot 3. It seems like something went wrong while manufacturing the suspension coils for this lot. The p value is lower than the significance level. It is at .04 which is less than .05. Because of this, we have enough eveidence to reject the null hypothesis and assume the alternative hypothesis which says that there is a statistical differnece between Lot 3 PSI for the suspension coils versus the populations. 

![lot3_ttest](https://user-images.githubusercontent.com/105755095/190276264-5ec67ac9-8efd-40ff-931a-042694472968.png)

## Study Design: MechaCar vs Competition
summary...
#### What metric or metrics are you going to test?
#### What is the null hypothesis or alternative hypothesis?
#### What statistical test would you use to test the hypothesis? And why?
#### What data is needed to run the statistical test?

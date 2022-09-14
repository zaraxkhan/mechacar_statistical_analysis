## DELIVERABLE 1: Linear Regression to Predict MPG
library(dplyr)
mechacar_mpg <- read.csv('MechaCar_mpg.csv',check.names=F,stringsAsFactors=F)

#perform linear regression on all fix variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechacar_mpg)

# use the summary function to determine p value and r squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechacar_mpg))

## DELIVERABLE 2: Create Visualizations for Trip Analysis
suspension_coil <- read.csv('Suspension_Coil.csv',check.names = F, stringsAsFactors = F)
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI),
                                               Median=median(PSI),
                                               Variance= var(PSI),
                                               SD= sd(PSI),
                                               .groups='keep')

lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                                                             Median=median(PSI),
                                                                             Variance= var(PSI),
                                                                             SD= sd(PSI),
                                                                             .groups = 'keep')

## DELIVERABLE 3: T-Test on Suspension Coils
# determine if PSI across all manufacturing lots is statistically different from population mean of 1500
t.test(suspension_coil$PSI ,mu=1500)

# determine if PSI for each lot is statistically different from the population mean of 1500
lot1<- subset(suspension_coil,Manufacturing_Lot == 'Lot1')
lot2<- subset(suspension_coil,Manufacturing_Lot == 'Lot2')
lot3<- subset(suspension_coil,Manufacturing_Lot == 'Lot3')

t.test(lot1$PSI, mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)





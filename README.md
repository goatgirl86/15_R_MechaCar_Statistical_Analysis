# 15_R_MechaCar_Statistical_Analysis

## Relevant Folders and/or Files
- Folder - Challenge: MechaCar_Challenge
	- MechaChar_Challenge.R
	- MechaCar_mpg.csv
	- Suspension_Coil.csv

## Project Overview

### Purpose
The purpose of this challenge was use R/RScript to help “AutosRUs” use statistics and hypothesis testing to analyze a series of production data for their new “MechaCar” prototype.  

### Data Analyzed
-	Ficticious vehicle data from the “MechaChar”: vehicle_length, vehicle_weight, spoiler_angle, ground_clearance, AWD, mpg
-	Ficticious suspension coil data from "MechaChar": VehicleID, Manufacturing_Lot, PSI

### Deliverables 
The deliverables for this assignment were:
-	Deliverable 1: Linear Regression to Predict MPG
-	Deliverable 2: Summary Statistics on Suspension Coils
-	Deliverable 3: T-Test on Suspension Coils
-	Deliverable 4: Design a Study Comparing the MechaCar to the Competition


## Deliverable 1: Linear Regression to Predict MPG
RScript input code for determining Mutilpe Linear Regression analysis on MPG.

![image](https://user-images.githubusercontent.com/92705556/160891958-84ce4a29-6ddd-4cb6-8323-448de8bdf219.png)

Statistical Output for Mutilpe Linear Regression analysis on MPG.

![image](https://user-images.githubusercontent.com/92705556/160891983-a91609c0-d6d1-4ec0-98a5-178157f2eb63.png)

 
### Linear Regression Conclusions
1. vehicle_length and ground_clearance both provide non-random variance to MPG values (as noted by Pr(>|t|) less than 0.05).  These variables would have a statistical impact on MPG.
2. The slope of the linear model would not be considered zero because the R-squared values suggest a moderate to strong relationship between MPG ad at least one of the variable (0.7149 for Multiple R-squared and 0.6825 for Adjusted R-squared).
3. I would say that this linear model does NOT effectively predicts MechaCar’s prototypes.  Statical significance on the intercept could mean that other statistically significant variables are not included in the analysis, or the current significant variables need to be scaled or transformed for better predictive power.  A small sample size of just 50 vehicles could also result in overfitting of the model. 


## Deliverable 2: Summary Statistics on Suspension Coils
RScript input code for Summary Statistics on Suspension Coils.

![image](https://user-images.githubusercontent.com/92705556/160892062-49f74ca0-613c-4b82-a882-bb49e57d6130.png)

Summary Table for All Lots

 ![image](https://user-images.githubusercontent.com/92705556/160892098-40ab9230-fd1f-4a56-93c3-bcb3eab6b854.png)

Summary Table By Lot Number

![image](https://user-images.githubusercontent.com/92705556/160892130-c36771dd-e7c1-4dbe-b571-015968479696.png)

 
### Summary Stats Conclusions
1.	Total Variance on All Lot Numbers- Meets MechaCar’s design specifications as the variance of 62.29356 is less than the max variance of 100 pounds per square inch.  
2.	Lots 1 and 2 also meet the design specifications individually with variances of 0.98 and 7.47, respectively.  
3.	Lot 3 does NOT meet the specifications as its variance is 170 (70 over the max allowance of 100).   

## Deliverable 3: T-Tests on Suspension Coils
RScript input code for T-Test on Suspension Coils.

 ![image](https://user-images.githubusercontent.com/92705556/160892154-531270d4-3974-4b1f-952a-0c9ffccd8e2f.png)


T-Test Output for All Lot Numbers
 
 ![image](https://user-images.githubusercontent.com/92705556/160892190-2ac583ec-832e-43b7-b1de-966e4318d070.png)


T-Test Output for Lot1
 
 ![image](https://user-images.githubusercontent.com/92705556/160892212-c987fe84-921b-43a2-968f-d901d4d70bad.png)


T-Test Output for Lot2

![image](https://user-images.githubusercontent.com/92705556/160892249-bdde97e8-00a3-4cb0-9b9c-f16c4c866c25.png)


T-Test Output for Lot3
 
 ![image](https://user-images.githubusercontent.com/92705556/160892279-666cbb40-e2ad-46d0-a295-ff0601b4b230.png)


### T-Test Conclusions
1.	All Lot Numbers: With a p-value of 0.06 (greater than 0.05) the test suggests there is no statistical difference in the PSI between vehicles. Differences in PSI are likely due to random chance.
2.	Lot 1: With a p-value of 1 (greater than 0.05) the test suggests there is no statistical difference in the PSI between vehicles. Differences in PSI are likely due to random chance.
3.	Lot 2: With a p-value of 0.6072 (greater than 0.05) the test suggests there is no statistical difference in the PSI between vehicles. Differences in PSI are likely due to random chance.
4.	Lot 3: With a p-value of 0.04168 (less than 0.05) the test suggests there is a statistical difference in the PSI between vehicles.  We can reject the null hypothesis and accept the alternate htypothesis that differences in PSI are NOT due to random chance.
5.	Knowing that Lot 3 failed the Suspension Coil Variance Test and also has statistical differences in its PSI, I would suggest that AutosRUs stop production on Lot 3 and ensure safety testing is done prior to releasing any Lot 3 vehicles for sale to consumers.  


## Deliverable 4: Study Design for MechaCar vs Competition

There are a few tests I would recommend:

### Test One
-	Metrics Tested - Vehicle Cost by Competitor 
-	Hypotheses - Null: No difference in average vehicle cost between MechaCar and competitor(s), Alternate: There is a difference.
-	Statistical Test Performed - Two Sample T-Test if MechaCar is being compared to only one competitor. One-Way ANOVA if there are two or more competitors.  Both of these tests assess differences in means between two or more populations. I like this test because some consumers may specifically be looking vehicle cost (and potential need for financial).
-	Data Needed - Vehicle costs from different competitors 

### Test TWo
-	Metrics Tested - Vehicle Cost and Financing Rates by Competitor 
-	Hypotheses - Null: No difference in average vehicle cost or financing rates between MechaCar and competitor(s), Alternate: There is a difference.
-	Statistical Test Performed - Two-Way ANOVA.  This test can compare multiple independent variables (in this case vehicle type and competitor). I like this test because it elaborates on Test One by adding financing to the equation.  
-	Data Needed - Vehicle costs and financing rates from different competitors 

### Test Three
-	Metrics Tested - Miles per Gallon (MPG) by Vehicle Type (sedan, truck, SUV) and Competitor
-	Hypotheses - Null: No difference in average vehicle mileage by vehicle type or competitors, Alternate: There is a difference.
-	Statistical Test Performed - Two-Way ANOVA.  This test can compare multiple independent variables (in this case vehicle type and competitor). I like this test because some consumers may specifically be looking for for a fuel efficient, family vehicle.
-	Data Needed - MPG and vehicle types from different competitors 

### Test Four
-	Metrics Tested - Frequency of Transmission Type (AWD, 4-Wheel Drive, Front-Wheel Drive) by Competitor
-	Hypotheses - Null: No difference in number of each transmission-type between competitors, Alternate: There is a difference.
-	Statistical Test Performed – Chi Squared Test.  This test can compare frequencies of categorical data.  I like this test because some consumers may specifically be looking for an AWD or 4-wheel drive vehicle.
-	Data Needed – Numbers of vehicles with each transmission type for each competitor 

### Test Five
-	Metrics Tested - Frequency of Used vs New Vehicles in Inventory by Competitor 
-	Hypotheses - Null: No difference in number of used and new cars between competitors, Alternate: There is a difference.
-	Statistical Test Performed – Chi Squared Test.  This test can compare frequencies of categorical data. I like this test because some consumers may specifically be looking for an used vehicle.
-	Data Needed – Numbers of vehicles that are used vs new for each competitor 

### Test Six
-	Metrics Tested - Customer Rating vs Vehicle Cost, Maintenance Benefits (free oil changes), ratio of new to used cars on the lot, and safety ratings for each Competitor
-	Hypotheses - Null: No correlation between variables, Alternate: There is a correlation between at least two of the variables
-	Statistical Test Performed – Correlation Matrix.  This test can determine the strength of correlation (if any) between multiple variables.  Can be used to determine the need for additional statistical tests.  
-	Data Needed - Customer Rating vs Vehicle Cost, Maintenance Benefits (free oil changes), number of new and used cars on the lot, and safety ratings for each Competitor.


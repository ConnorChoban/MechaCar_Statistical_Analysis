# MechaCar_Statistical_Analysis

## Overivew of Analysis

The purpose of this analysis is evaluate how several factors impact the new MechaCar prototype for AutosRUs. By performing several different analysis' across the production data, we can gain valuable insights and make suggestions to the development team. 

## Linear Regression to Predict MPG

We can come to several conclusions by analyzing the MPG data.

- From the output of the code below, we can see that the vehicle length and ground clearance variables provide a non-random amount of variance to the MPG     values in our dataset, with coefficients of 2.60e-12 and 5.21e-08 respectively. This means that these variables have a greater impact on MPG whereas       other variables, such as vehicle weight, spoiler angle, and All Wheel Drive(AWD), have a minimal impact on MPG. 

- The p-value produced by our analysis was 5.35e-11, which is much lower than our assumed significance level of 0.05%. As such, there is sufficient           evidence to reject our null hypothesis, which means that the slope of our linear model is not zero

- From our analysis we can see that the r-squared value is 0.7149 which indicates that there is an approximately 71.49% chance that future data points will   fit this model. As such, while this model does effectively predict mpg of prototypes, there is room for improvement. 

<img width="594" alt="Screen Shot 2022-06-11 at 10 30 16 PM" src="https://user-images.githubusercontent.com/99847786/173211914-9b009f79-e702-4276-8e48-232747dc40e2.png">

## Summary Statistics on Suspension Coils

<img width="530" alt="Screen Shot 2022-06-12 at 5 41 05 PM" src="https://user-images.githubusercontent.com/99847786/173254830-85604ef0-7d6f-4130-85fe-096c2daa1cd5.png">


<img width="668" alt="Screen Shot 2022-06-12 at 5 40 12 PM" src="https://user-images.githubusercontent.com/99847786/173254828-e66f3213-85dd-42fb-a9d8-c3f600fe17c3.png">



## T-Tests on Suspension Coils

T-test for all manufacturing lots: 

<img width="409" alt="Screen Shot 2022-06-12 at 5 44 26 PM" src="https://user-images.githubusercontent.com/99847786/173255338-c6b7e2d5-a12b-4b63-93b5-79f7b545ebba.png">


T-test for lot 1 

<img width="538" alt="Screen Shot 2022-06-12 at 5 53 24 PM" src="https://user-images.githubusercontent.com/99847786/173255344-921ebb7b-3332-40bf-b406-93ddd269cccb.png">

T-test for lot 2

<img width="538" alt="Screen Shot 2022-06-12 at 5 52 08 PM" src="https://user-images.githubusercontent.com/99847786/173255349-d8ddaae3-b6f5-4d5f-b9e1-f47a0617089c.png">


T-test for lot 3

<img width="538" alt="Screen Shot 2022-06-12 at 5 51 59 PM" src="https://user-images.githubusercontent.com/99847786/173255350-7437edfe-f68c-46ab-8da8-f7ef5e51dde5.png">





## Study Design: MechaCar vs Competition

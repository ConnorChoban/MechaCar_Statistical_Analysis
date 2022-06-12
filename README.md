# MechaCar_Statistical_Analysis

## Overivew of Analysis

The purpose of this analysis is evaluate how several factors impact the new MechaCar prototype for AutosRUs. By examinign several different factos across the production data, we can gain valuable insights and make suggestions to the development team. 

## Linear Regression to Predict MPG

We can come to several conclusions by analyzing the MPG data.

- From the output of the code below, we can see that the vehicle length and ground clearance variables provide a non-random amount of variance to the MPG     values in our dataset, with coefficients of 2.60e-12 and 5.21e-08 respectively. This means that these variables have a greater impact on MPG whereas       other variables, such as vehicle weight, spoiler angle, and All Wheel Drive(AWD), have a minimal impact on MPG. 

- The p-value produced by our analysis was 5.35e-11, which is much lower than our assumed significance level of 0.05%. As such, there is sufficient           evidence to reject our null hypothesis, which means that the slope of our linear model is not zero. 

- From our analysis we can see that the r-squared value is 0.7149 which indicates that there is an approximately 71.49% chance that future data points will   fit this model. As such, while this model does effectively predict mpg of prototypes, there is room for improvement. 

<img width="594" alt="Screen Shot 2022-06-11 at 10 30 16 PM" src="https://user-images.githubusercontent.com/99847786/173211914-9b009f79-e702-4276-8e48-232747dc40e2.png">

## Summary Statistics on Suspension Coils

In this section of the analysis, we evaluate the company's manufacturing data to see if the variance of the suspension coils exceeds 100 pounds per square inch. As seen below, across all lots we see that the variance is approximately 62.9. Looking at the lots individually, we can see that lots 1 and 2 both meet the design specifications, with variances of 0.98 and 7.47 respectively. However, lot 3 has a variance of 170.29 which is far above our tolerance limit of 100 pounds per square inch.

<img width="530" alt="Screen Shot 2022-06-12 at 5 41 05 PM" src="https://user-images.githubusercontent.com/99847786/173254830-85604ef0-7d6f-4130-85fe-096c2daa1cd5.png">


<img width="668" alt="Screen Shot 2022-06-12 at 5 40 12 PM" src="https://user-images.githubusercontent.com/99847786/173254828-e66f3213-85dd-42fb-a9d8-c3f600fe17c3.png">



## T-Tests on Suspension Coils

We'll continue to examine our analysis to determine if all manufacturing lots and each individual lot are statistically different from the population mean (mu) of 1,500 PSI, by testing the hypotheses below:

- H0 : There is no statistical difference between the observed sample mean and its presumed population mean.
- Ha : There is a statistical difference between the observed sample mean and its presumed population mean.

We'll assume the significance level in this analysis is 0.05 percent. Looking at the t-test for all manufacturing lots, we can see that the p-value is 0.0628, which is above our significance level, and therefore we do not have enough evidence to reject the null hypothesis. Similarily, as seen in the below screenshots, the p-values for lots 1 and 2 were 1 and 0.61 respectively. Again, we don't have enough evidence to reject the null hypothesis, with respect to these samples. However, the p-value for lot 3 was 0.04, which is below the significance level. As such, we can reject the null hypothesis with repsect to this sample, and explore the alternative hypothesis. 

T-test for all manufacturing lots: 

<img width="409" alt="Screen Shot 2022-06-12 at 5 44 26 PM" src="https://user-images.githubusercontent.com/99847786/173255338-c6b7e2d5-a12b-4b63-93b5-79f7b545ebba.png">


T-test for lot 1 

<img width="538" alt="Screen Shot 2022-06-12 at 5 53 24 PM" src="https://user-images.githubusercontent.com/99847786/173255344-921ebb7b-3332-40bf-b406-93ddd269cccb.png">

T-test for lot 2

<img width="538" alt="Screen Shot 2022-06-12 at 5 52 08 PM" src="https://user-images.githubusercontent.com/99847786/173255349-d8ddaae3-b6f5-4d5f-b9e1-f47a0617089c.png">


T-test for lot 3

<img width="538" alt="Screen Shot 2022-06-12 at 5 51 59 PM" src="https://user-images.githubusercontent.com/99847786/173255350-7437edfe-f68c-46ab-8da8-f7ef5e51dde5.png">


## Study Design: MechaCar vs Competition

In this analysis we examined variables that affect performance such as Miles per Gallon (MPG), Pounds per Square Inch (PSI), and Suspension Coils. We can take our analysis a step further by designing a statistical study that explores other metrics. For the purpose of this analysis, we'll design a study that evaluates the lfietime maintenance cost of the vehicle against competing models. 

We'll use maintenance cost as our metric for simplicity, but we can also evaluate factors such as the initial cost of the vehicle and cost of production.

We'll formulate the below null and alternative hypothesis:

- H0 : There is no statistical difference between the observed lifetime maintenance cost and the maintenance cost of competing models. 
- Ha : There is a statistical difference between the observed lifetime maintenance cost and the maintenance cost of competing models. 

In this case we'll use a t-test to determine if the lifetime maintenance cost is statistically different from the mean of all models across vehicle types. This way, we can first determine if the lifetime maintenance cost is significantly higher or lower, and should it be lower than average, we could use this as a selling point to our potential customers. We could also use a linear regression model to predict the future costs of maintaining the vehicle so that we can make adjustments to the model accordingly, either to be more budget friendly, or to agend autobody service appointments to ensure the car is running smoothly and the customer is happy. 

In order to run this test, we'll need information regarding the expected lifetime maintenance cost of our prototype, and the maintenance costs of other models from competing brands; this information is usually available in the public domain, and we can use our abilities with web scraping to accumulate data for our analysis. Once we have sufficient data, we can run the analysis and test our hypothesis. 

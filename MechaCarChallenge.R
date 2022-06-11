#Deliverable 1

library(tidyverse)
library(dplyr)

mechaCar <- read.csv("MechaCar_mpg.csv", check.names=F, stringsAsFactors = F)
head(mechaCar)

#For the deliverable we'll compare MPG against all factors/columns but any other variable could be used as well
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar))

#Deliverable 2

suspension_coil_table <- read.csv("Suspension_Coil.csv", check.names=F, stringsAsFactors=F)

#Get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
#I'm also adding in a column to list the number of coils, so that way we know our total sample size

total_summary <- suspension_coil_table %>% summarize(Mean_PSI = mean(PSI), Median_PSI = median(PSI), Variance_PSI=var(PSI), Standard_Dev = sd(PSI), Num_coil=n(), .groups='keep')

#Alternatively, we can create the table using the below function:
#The below method is easier to visualize since the mean, median, variance, and standard deviation are on one line

Mean=mean(suspension_coil_table$PSI)
Median=median(suspension_coil_table$PSI)
Variance=var(suspension_coil_table$PSI)
Standard_Deviation=sd(suspension_coil_table$PSI)

alternative_total_summary <- data.frame(Mean,Median,Variance,Standard_Deviation)
  
#Summarize by lot # We'll need to use %>% to connect multiple functions

lot_summary = suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI = mean(PSI), Median_PSI = median(PSI), Variance_PSI=var(PSI), Standard_Dev = sd(PSI), Num_coil=n(), .groups='keep')
  
#Deliverable 3

t.test(suspension_coil_table$PSI,mu=1500)

t.test(subset(suspension_coil_table,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
t.test(subset(suspension_coil_table,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
t.test(subset(suspension_coil_table,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)

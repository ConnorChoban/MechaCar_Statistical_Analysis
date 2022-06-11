library(tidyverse)
library(dplyr)

mechaCar <- read.csv("MechaCar_mpg.csv", check.names=F, stringsAsFactors = F)
head(mechaCar)

#For the deliverable we'll compare MPG against all factors/columns but any other variable could be used as well
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar))


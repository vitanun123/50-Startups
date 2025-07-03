###############################################################################
#                                                                             #
#        W4479 - Applied project using R, winter semester 2023 / 2024         #
#                                                                             #
#                     Problem 2: Simple Linear Regression                     #
#                                                                             #
###############################################################################

# Information:

# Use this file to save your code for solving Problem 2 of the applied 
# project.


# <------- Start here with your own code --------> # 
library(ggplot2)
library(ggpubr)
library(tidyr)
library(dplyr)
real_estate <- read.csv("real_estate_price_size.csv",header = TRUE,sep = ",")
str(real_estate)
head(real_estate)
#b fit the simple linear regression----
reg_real_estate <- lm(price ~ size,data = real_estate )
coef(reg_real_estate)
summary(reg_real_estate)
#relevant formulas
reg_real_estate_summary <- summary(reg_real_estate)
reg_real_estate_summary
#c)show the observation with the fitted regression line----
scatterplot1 <- ggplot(real_estate,aes(size,price)) +
  geom_point(size = 3, color = "black") +               # add points
  geom_smooth(method = "lm", formula = y ~ x, color = "red", se = FALSE) +  # add the regression line
  ggtitle("The Real Estate price(Dollar) between Size of the Real Estate(Quadratmeter)")     # add the title
scatterplot1                                                      # show the plot
#f) confidence interval both b1(intercept) and b2(slope)----
#confidence interval for b1
reg_real_estate_summary$coefficients
b1 <- coef(reg_real_estate)[[1]]
n <- nrow(real_estate)
df <- n-2
t.990 <- qt(0.990, df = df)
se.b1 <- reg_real_estate_summary$coefficients[1, 2]
b1.low <- b1 - t.990 * se.b1
b1.high <- b1 + t.990 * se.b1
round(c("0.010" = b1.low, b1 = b1, "0.990" = b1.high), digits = 4)

#confidence interval for b2
b2 <- coef(reg_real_estate)[[2]]
n <- nrow(real_estate)
df <- n - 2
t.990 <- qt(0.990, df = df)
se.b2 <- reg_real_estate_summary$coefficients[2, 2]
b2.low <- b2 - t.990 * se.b2
b2.high <- b2 + t.990 * se.b2
round(c("0.010" = b2.low, b2 = b2, "0.990" = b2.high), digits = 4)
# not done have to check with calculator

#g) hypothesis test with to the slope at a significant level 5%----
#  95 % confidence interval 
b2.950 <- coef(reg_real_estate)[[2]]
n <- nrow(real_estate)
df <- n - 2
t.950 <- qt(0.950, df = df)
se.b2 <- reg_real_estate_summary$coefficients[2, 2]
b2.low <- b2.950 - t.950 * se.b2
b2.high <- b2.950 + t.950 * se.b2
round(c("0.050" = b2.low, b2 = b2.950, "0.950" = b2.high), digits = 4)










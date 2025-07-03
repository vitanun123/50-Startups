# 50-Startups
simple linear regression with 50 Startup5 in USA
# Simple Linear Regression – Real Estate Prices

This project performs a simple linear regression to analyze the relationship between real estate prices and property sizes, as part of the W4479 Applied Project using R (Winter Semester 2023/2024).

## Objectives

- Fit a **simple linear regression model**:  
  `price = β₀ + β₁ × size + ε`
- Interpret coefficients, R², and significance
- Plot the regression line over the data
- Compute **confidence intervals** for both intercept and slope
- Perform a **hypothesis test** on the slope coefficient

## Tools Used

- `ggplot2`, `ggpubr` – data visualization  
- `dplyr`, `tidyr` – data handling  
- Base R – model fitting, inference, and interval calculation

## Key Outputs

- Regression summary table (`summary(lm(...))`)  
- Scatterplot with fitted regression line  
- 98% and 95% confidence intervals for slope and intercept  
- Hypothesis test on β₁ at α = 0.05

## Input Data

- CSV file: `real_estate_price_size.csv`  
  Contains columns:  
  - `price` (in dollars)  
  - `size` (in square meters)

---

> Developed for Problem 2 of the W4479 Applied Project using R (Winter 2023/2024).

# Share-Market-Data-Analysis

Project Task: Week 1
Applied Data Science with Python

1. Check the stock symbols of the companies in Nasdaq 100 Market cap.xlsx. Only the relevant files in the NASDAQ_DATA folder should be read.
2. Append all files (imported in the previous step) that contain no more than 10 years of data. For this, you may use your discretion.
3. Read Nasdaq 100 market cap.xlsx and nasdaq100_metrics_ratios.xlsx.
4. Collate the two files imported in the previous step to include the fields Market cap and Last sale in addition to the various metrics and ratios already present in 
nasdaq100_metrics_ratios.xlsx
5. Identify the variables whose variance is less than .005 (as these do not contribute to model building), and eliminate those variables
6. Delete the variables in nasdaq100_metrics_ratios.xlsx where 30% or more of the values are missing
7. Perform missing value imputation for variables with less than 30% missing values by considering the company's sector
8. Analyze the effect of COVID on stock prices in detail, create visuals to support the insights, and address the following:
a. Which sectors and companies saw the greatest impact, and which ones saw the least? You may use growth or degrowth as a measure of impact and may perform week over week, month over month (Mom), quarter over quarter (QoQ), or year over year (YoY) analysis as appropriate.
b. Which sector and company experienced the fastest and slowest recoveries?

Project Task: Week 2
Machine Learning

1. Perform PCA to reduce the number of variables in the data
2. After PCA, perform cluster analysis to identify cohorts, define these cohorts (cluster profiling), and specify the insights found
3. Highlight companies from different sectors falling into the same cohort, and share your findings
4. Plot seasonality, trend, and irregular components over time for the historical stock price of Apple
5. Based on trend and seasonality, choose an appropriate exponential smoothing method to forecast the weekend share price value for the next 12 months
6. Perform an augmented Dickey–Fuller test (ADF) to check for the stationarity of Apple stock.
7. Analyze the ACF and PACF plots for Apple's historical stock prices, strategize for ARIMA modeling, determine the appropriate values of p, d, and q, and forecast the month-end share price value for the next 12 months
8. Find the mean absolute percentage error (MAPE) for a 12-month period to validate the model
9. Identify the top 2 companies from each sector based on market capitalization, create trend charts for the month-end share price for the last five years (using the variable "adjusted close"), display the 12-month rolling mean and standard deviation in the same chart, and share your observations regarding the stationarity of all companies
10. Conduct an ADF test to verify the stationarity of the companies selected in the previous step
11. Perform batch forecasting for the top 2 companies from each sector based on market capitalization for the weekend share price value for the next 12 months using Auto ARIMA, and find the MAPE for a 12-month period to validate the model

Project Task: Week 3
Excel

1. Create an Excel dashboard showcasing the following:
Hint: Use form controls to create a dynamic chart
a. Trend charts of share prices of the top company in each sector based on market capitalization for the past three months
b. The market capitalization and sub industry of the companies in the dashboard
2. Create a graph to compare yoy_revenue_growth_latest for different companies in various industries

Project Task: Week 4
SQL

1. Determine the market capitalization of the company in the IT sector (from Nasdaq 100) with the greatest LastSale value
2. Find the number of companies from each industry in the Nasdaq 100 Market cap.xlsx
3. List the top 5 companies based on market capitalization
4. Create a table with sectors and subsectors showcasing the count of companies in each subsector

Project Task: Week 5
Tableau

1. Create a dashboard in Tableau by choosing appropriate chart types and metrics useful for the business
Note: Give emphasis to data storytelling

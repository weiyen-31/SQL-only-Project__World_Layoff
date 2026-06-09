# Layoff Data Analysis (EDA Project)

## Project Overview
This project consists of two analyses to find patterns of global company layoffs across countries, industries, and company stages. The objective is understand where layoffs occur most often and which types of companies face the greatest risk.

Note: This project focuses on Exploratory Data Analysis (EDA) only, and does not include dedicated data cleaning phase, as the dataset was assumed to be pre-cleaned for analytical purposes.

## Business Questions
  1. Which country + industry combinations are most affected each month?
  2. Which types of companies are most most vulnerable to layoffs?
  3. How does the funding of companies affect the risk of layoffs?
  4. Which company stages are most risky?

## Dataset
layoffs_staging2 table
  - company
  - location
  - industry
  - total_laid_off
  - percentage_laid_off
  - date
  - stage
  - country
  - funds_raised_millions 

## SQl Workflow
  ### 1. Analysis 1: Monthly Layoff Hotspots
  - Aggregated layoffs by month, country, and industry
  - Ranked combinations using DENSE_RANK()
  - Identified the top 3 most affected combinations each month

  ### 2. Analysis 2: Company Risk Assessment
  - Aggregated layoffs and funding data
  - Calculated average layoff percentage
  - Developed a custom risk score
  - Ranked industry-stage combinations by risk level

## Key Results
  ### 1. Monthly Layoff Hotspots
  - The United States appeared most frequently among the top monthly layoff hotspots.
  - Consumer and transportation industries consistently recorded high layoff volumes.

  ### 2. Company Risk Assessment
  - Early-stage companies (Seed stage) show the highest risk scores, indicating higher vulnerability.
  - Some industries like Crypto and Travel show high volatility and repeated layoff risk.
  - Layoffs are influenced more by industry structure and company stage rather than funding alone.

## Recommendations
- Focus on monitoring high-risk industries such as Transportation, Consumer, Retail, and Crypto.
- Be aware to early-stage (Seed) companies because they are most vulnerable.
- Use industry + company stage as a key early warning signal for layoffs.
- Funding alone is not a protective factor, high funding does not necessarily reduce layoff risk.
   

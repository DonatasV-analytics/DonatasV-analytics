/**********************************************************************/
/* SQL Loan Data Analysis
/**********************************************************************/


--Getting to know the data

SELECT *
FROM vibrant-bonus-468114-p9.loan_dataset.loan_data
Limit 10

SELECT
  COUNTIF(id IS NULL) AS id_missing,
  COUNTIF(annual_inc IS NULL) AS applicant_income_missing,
  COUNTIF(loan_amount IS NULL) AS loan_amount_missing,
  COUNTIF(term IS NULL) AS term_missing,
  COUNTIF(loan_condition IS NULL) AS loan_condition_missing,
  COUNTIF(interest_rate IS NULL) AS intrest_rate_missing,
  COUNTIF(total_pymnt IS NULL) AS total_pymnt_missing,
FROM vibrant-bonus-468114-p9.loan_dataset.loan_data

--Check for duplicate loans

SELECT id, COUNT(*) AS count
FROM vibrant-bonus-468114-p9.loan_dataset.loan_data
GROUP BY id
HAVING count >1

-- Check the date range of the dataset

SELECT DISTINCT(year)
FROM vibrant-bonus-468114-p9.loan_dataset.loan_data

--Finding out what the loans ore mostly used for

SELECT DISTINCT(purpose), COUNT(purpose) as amount_of_loans
FROM vibrant-bonus-468114-p9.loan_dataset.loan_data
GROUP BY purpose
ORDER BY amount_of_loans DESC

--MIN, MAX, AVG Loans & Income

SELECT
  AVG(loan_amount) AS avg_loan,
  MIN(loan_amount) AS min_loan,
  MAX(loan_amount) AS max_loan,
  AVG(annual_inc) AS avg_income,
  MIN(annual_inc) AS min_income,
  MAX(annual_inc) AS max_income
FROM vibrant-bonus-468114-p9.loan_dataset.loan_data

--Loans by region

SELECT DISTINCT(region), COUNT(purpose) as amount_of_loans
FROM vibrant-bonus-468114-p9.loan_dataset.loan_data
GROUP BY region
ORDER BY amount_of_loans DESC

--Loan amount by income category

SELECT DISTINCT(income_cat), AVG(loan_amount) as avg_loan
FROM vibrant-bonus-468114-p9.loan_dataset.loan_data
GROUP BY income_cat
ORDER BY avg_loan DESC

--Loan amount by Purpose

SELECT purpose, 
  AVG(loan_amount) AS avg_loan_amount
FROM `vibrant-bonus-468114-p9.loan_dataset.loan_data`
GROUP BY purpose
ORDER BY avg_loan_amount DESC

--Number of loans over the years

SELECT year,COUNT(*)
FROM vibrant-bonus-468114-p9.loan_dataset.loan_data
GROUP BY year
ORDER BY year

--Average Interest Rate by Length of Loan

SELECT DISTINCT(term), AVG(interest_rate) AS avg_intrest_rate
FROM vibrant-bonus-468114-p9.loan_dataset.loan_data
GROUP BY term

-- Good vs Bad Loans

SELECT loan_condition, COUNT(*) as count
FROM vibrant-bonus-468114-p9.loan_dataset.loan_data
GROUP BY loan_condition
ORDER BY count

-- Loan to Income ration

SELECT id, loan_amount, annual_inc, SAFE_DIVIDE(loan_amount, annual_inc) AS loan_to_income_ratio
FROM vibrant-bonus-468114-p9.loan_dataset.loan_data
ORDER BY loan_to_income_ratio DESC
LIMIT 10
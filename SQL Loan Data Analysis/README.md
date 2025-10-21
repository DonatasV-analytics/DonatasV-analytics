# 🏦 Loan Data SQL Analysis (BigQuery)

This project explores and analyzes a **loan dataset** using **SQL on Google BigQuery**.  
The goal is to practice **data cleaning**, **exploratory analysis**, and **insight generation** on a financial dataset.

---

## 📊 Dataset
- **Source:** [Loan Data — Kaggle](https://www.kaggle.com/datasets/mrferozi/loan-data-for-dummy-bank)
- **Rows:** 887379
- **Columns:** 30
- **Description:** TheIrish Dummy Banks is a peer to peer lending bank based in the ireland, in which bank provide funds for potential borrowers and bank earn a profit depending on the risk they take (the borrowers credit score).
- Irish Fake bank provides loan to their loyal customers. The complete data set is borrowed from Lending Club For more basic information about the company please check out the wikipedia article about the company. 

---

## 🧹 1. Data Cleaning
Key steps:
- Checked for missing and duplicate records  
- Standardized data types (`DATE`, `FLOAT`, `STRING`)  
- Created calculated fields like `loan_to_income_ratio`

SQL example:
```sql
SELECT id, COUNT(*) AS count
FROM vibrant-bonus-468114-p9.loan_dataset.loan_data
GROUP BY id
HAVING count >1

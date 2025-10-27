# Online Shop Sales Analysis
# Project Overview

This project explores an online retail dataset to uncover patterns in sales, discounts, and shipping behavior.
The analysis focuses on data cleaning, exploratory data analysis (EDA), and insight generation to better understand key business factors affecting sales performance.

# Data Cleaning

Several columns contained missing values, primarily linked to In-store purchases.
The following replacements were applied:

- CustomerID → “In-store”

- ShippingCost → 0

- WarehouseLocation → “Store”

Remaining missing values were handled as:

- CustomerID – dropped (main identifier)

- ShippingCost – replaced with mean value

- WarehouseLocation – replaced with “Unknown”

Result: 0 missing values
No duplicates found

# Exploratory Analysis

**Discount Analysis:**
Most discounts were found in Furniture and Electronics categories.
The largest discounts were typically applied to items in the lower half of sales by value.

**Shipping Provider Insights:**
Shipping costs showed a very close distribution across all four providers.
While all had similar order counts, FedEx emerged as the most popular provider in most countries.
No significant outliers were detected.

**Sales Channel Observations:**
Online and In-store channels showed differing return rates, analyzed via a stacked column visualization.

# Tools & Libraries

- Python

- Pandas

- Matplotlib / Seaborn

- Jupyter Notebook

# Key Insights

Shipping providers perform similarly in cost efficiency.

High discounts do not necessarily correlate with higher sales value.

The data suggests potential opportunities to optimize pricing strategy and discount allocation.

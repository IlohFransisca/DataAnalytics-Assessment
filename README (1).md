# Adashi Staging Assessment - SQL Query Explanations

## Overview

This repository contains SQL queries for analyzing data from a savings and withdrawal platform, using the `adashi_staging` MySQL database. The analysis was conducted individually in **Google Colab**, using `pymysql`, `sqlalchemy`, and SQL scripts to explore the schema.

The database includes four core tables:
- `users_customuser`
- `plans_plan`
- `savings_savingsaccount`
- `withdrawals_withdrawal`

---

## Question Explanations

### Q1: Users With At Least One Savings Plan

**File**: `Assessment_Q1.sql`  
**Description**: This query selects distinct users who have savings plans by checking the relationship between `users_customuser` and `savings_savingsaccount`. We perform an inner join to ensure only users with savings activity are selected.

---

### Q2: Total Amount Saved Per User

**File**: `Assessment_Q2.sql`  
**Description**: Aggregates total savings by each user by summing the `amount` field in `savings_savingsaccount`. This helps identify top savers and overall saving behavior.

---

### Q3: Withdrawals Exceeding Monthly Salary

**File**: `Assessment_Q3.sql`  
**Description**: Filters the `withdrawals_withdrawal` table for records where the withdrawal amount is greater than the corresponding user’s `monthly_salary`. Highlights unusual or concerning financial behaviors.

---

### Q4: User Count Per Account Source

**File**: `Assessment_Q4.sql`  
**Description**: Groups users by the `account_source` field (e.g., `web`, `google-play`) to count the number of users who joined from each channel. Useful for marketing and channel performance insights.

---

## Tools & Environment

- **Google Colab** with the following libraries:
  - `pandas`
  - `sqlalchemy`
  - `pymysql`

All queries were run on the `adashi_staging` MySQL database hosted locally.

---

## Author

This analysis and submission were performed independently by the candidate as part of the Adashi Data Analyst Assessment.
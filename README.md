# Adashi Staging Database Analysis

## Overview

This project involves data analysis of a savings and withdrawals platform. The database contains user information, savings accounts, withdrawal records, and savings plans. The goal is to understand user behavior, financial activity, and generate insights that can support business decisions.

The analysis was performed individually using data from the Adashi staging environment. Queries were run in **Google Colab** using Python and SQL.

## Tables

### 1. `users_customuser`
Contains user profile data including registration details, contact info, and account settings.

**Key fields:**
- `id`: Primary key
- `email`, `name`, `phone_number`
- `date_joined`, `last_login`
- `monthly_salary`, `monthly_expense`
- `account_source`, `signup_device`

### 2. `plans_plan`
Contains savings plans available to users.

**Key fields:**
- `id`: Primary key
- `name`: Plan name
- `minimum_amount`, `interest_rate`, `duration`

### 3. `savings_savingsaccount`
Tracks user savings activity per plan.

**Key fields:**
- `id`: Primary key
- `owner_id`: Foreign key to `users_customuser`
- `plan_id`: Foreign key to `plans_plan`
- `amount`, `transaction_reference`, `transaction_date`
- `transaction_status_id`, `transaction_type_id`

### 4. `withdrawals_withdrawal`
Logs user withdrawals from their savings.

**Key fields:**
- `id`: Primary key
- `owner_id`: Foreign key to `users_customuser`
- `amount`, `transaction_reference`, `transaction_date`
- `transaction_status_id`

## Goals

- Understand user engagement (active users, login frequency)
- Analyze average savings and withdrawal behaviors
- Segment users by financial behavior (high earners, high spenders)
- Identify popular savings plans

## Tools

- MySQL (data stored in a MySQL database)
- Google Colab ( pymysql, sqlalchemy, pandas)

## Usage

- Run queries using your preferred SQL queries from a Google Colab notebook to extract insights.

## Author

- This analysis was by Fransisca Iloh an individual contributor using data from the Adashi staging environment.

## Contact
- For questions or collaboration:

## Name: Iloh Fransisca
## Email: ilohfransisca2014@gmail.com
## LinkedIn: linkedin.com/in/fransisca-iloh

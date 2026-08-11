# Insurance-Policy-Analysis-Using-SQL-
## Project Overview

This project analyzes insurance policy data using SQL. 
It combines policy holder, broker, and insurance company data to answer business questions about premiums,
policy status, policy types, and broker performance.

## Project Goal

To analyze insurance policy data and identify active policies, 
high-premium customers, broker performance, premium trends, and high-value cities.

## Database Name

```sql
Insurance_DB
## Tables Used

### Policy_Holders

Stores customer and policy information.

| Column | Description |
|---|---|
| Policy_ID | Unique policy ID |
| Customer_Name | Name of the customer |
| Age | Customer age |
| City | Customer city |
| Policy_Type | Health, Motor, Travel, or Life |

### Broker_Details

Stores broker information for each policy.

| Column | Description |
|---|---|
| Policy_ID | Policy ID |
| Broker_Name | Name of the broker |
| Broker_Code | Broker identification code |
| Commission_Percentage | Commission earned by broker |

### Insurance_Company

Stores company, premium, and policy-status information.

| Column | Description |
|---|---|
| Policy_ID | Policy ID |
| Company_Name | Insurance company |
| Premium | Premium amount |
| Policy_Status | Active, Expired, or Lapsed |
## SQL Concepts Used

- CREATE DATABASE and CREATE TABLE
- INSERT INTO
- SELECT and WHERE
- INNER JOIN
- GROUP BY and HAVING
- COUNT, SUM, AVG, and MAX
- Subqueries
## Business Questions Answered

1. Which broker is associated with each policy holder?
2. Which insurance company provides each customer's policy?
3. Which policies are active?
4. Which customers have Motor or Health policies?
5. Which customers have premiums above ₹20,000?
6. Which customers are handled by Marsh India?
7. How many policies has each broker sold?
8. What total premium is handled by each broker?
9. What is the average premium for each policy type?
10. Which customer has the highest premium?
11. Which brokers sold more than two policies?
12. Which cities have total premiums above ₹50,000?
13. What are the total, average, and highest premiums for each broker?

## Key Insights

- Broker performance can be evaluated using policy count and premium totals.
- SQL joins connect customers, brokers, and insurance companies.
- Premium analysis identifies high-value policies and customers.
- Grouping data by policy type, broker, and city reveals useful business trends

## How to Run

1. Open MySQL Workbench.
2. Run the database creation and table creation queries.
3. Insert the sample data into all three tables.
4. Run the analysis queries.
5. Review the results.

## Author

Pankaj Bhosale  
Aspiring Data Analyst | SQL Learner

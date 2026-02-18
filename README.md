# online-retail-sql-analysis
Data analytics portfolio project: SQL analysis of Online Retail dataset
# Online Retail Data Analysis

## Project Overview
This project analyzes the Online Retail dataset (UK, 2010–2011).  
The goal is to demonstrate **SQL data analysis skills** for portfolio purposes.

## Dataset
- ~500,000 rows of retail transactions
- Columns include: InvoiceNo, StockCode, Description, Quantity, InvoiceDate, UnitPrice, CustomerID, Country, TotalPrice
- Data cleaned: removed blanks, canceled orders, negative quantities, and formatted dates to `YYYY-MM-DD HH:MM`

## SQL Queries
1. Total Sales
2. Top 10 Customers
3. Sales by Country
4. Monthly Sales Trend
5. Most Sold Products
6. Hourly Sales Trend

## Key Insights (Example)
- UK generated ~80% of total revenue
- Top customer spent ~£12,000 in one year
- Peak sales hours: 9–11 AM

## How to Run
1. Import `online_retail_cleaned.csv` into PostgreSQL
2. Execute `online_retail_analysis.sql` in pgAdmin or psql
3. Export results or create visualizations

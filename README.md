# Retail Sales Dashboard – Power BI + SQL Project

# Dashboard Overview  
Built an interactive Power BI dashboard using SQL & Excel to analyze retail performance from Superstore dataset.

# 📌 Key Features:
- Total Sales, Profit KPIs 
- Region-wise Sales (bar chart)
- Monthly Sales Trend (line chart)
- State-wise performance (map)
- Category & Sub-category profitability (stacked bar + matrix)
- Business insights summary

# 💻 Tools & Skills:
- Microsoft SQL Server
- Power BI (DAX, Data Modeling)
- Excel
- Data Visualization & Storytelling

# 📸 Preview:
![Dashboard Screenshot](DashboardScreenshot.png)

## 🧠 Sample SQL Query:
```sql
SELECT CATEGORY, SUM(SALES) AS TOTALSALES, SUM(PROFIT) AS TOTALPROFIT, ROUND(SUM(PROFIT)/NULLIF(SUM(SALES),0),2) AS PROFITMARGIN
FROM ORDERS
GROUP BY CATEGORY;


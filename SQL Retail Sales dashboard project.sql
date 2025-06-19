create database RetailSalesDB;

select * from dbo.Orders;

select name from sys.tables;

use RetailSalesDB;
go
select top 10 * from dbo.Orders;

select * from Orders

--Total Sales and Profit--
select sum(sales) as TotalSales, sum(profit) as TotalProfit from Orders;

--Sales By region--
select region, sum(sales) as TotalSales from Orders
group by region
order by TotalSales desc;

--Monthly Sales Trend--
select FORMAT([Order Date], 'yyyy-MM') as SalesMonth, sum(sales) as MonthlySales from Orders
group by FORMAT([Order Date], 'yyyy-MM')
order by SalesMonth;

--Top 10 States by Sales--
select top 10 state,sum(sales) as TotalSales from Orders
group by State
order by TotalSales desc;

--Profit by Category and Subcategory--
select Category, [Sub-Category],sum(profit) as TotalProfit from orders
group by Category, [Sub-Category]
order by TotalProfit Desc;

--Sales VS Profit Ratio
select category, sum(sales) as TotalSales, sum(profit) as TotalProfit, ROUND(Sum(profit)/nullif(sum(sales),0),2) as ProfitMargin from Orders
group by Category
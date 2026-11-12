CREATE DATABASE Netflix_db;

use Netflix_db;
select COUNT(*)
from netflix_customers;

Select * from netflix_customers;

--- 1. Total Customeres
Select Count(*) as Tortal_customers
from netflix_customers;

--- 2. Active Customers
Select count(*) as Active_customers
from netflix_customers
where Account_Status = 'Active';

---3. Customers by Subscription Plan
Select Subscription_Plan, count(*) as Customers
from netflix_customers
group by Subscription_Plan  
order by Customers desc;

---4. Revenue by Subscription Plan
Select Subscription_Plan, sum(Customer_Revenue) as Revenue
from netflix_customers
Group by Subscription_Plan
Order by Revenue desc;

--5. Popular Genres
Select Genre, count(*) as Views
From netflix_customers
Group by Genre
Order by Views desc;

--6.Countrywise Customers
select Country, count(*) as Customers
from netflix_customers
Group by Country
Order By Customers desc;

--7.Device Usage
Select Device, Count(*) as Users
from netflix_customers
Group by Device
Order by Users desc;

--8.Average Watch Hours by Plan
Select Subscription_Plan, ROUND(avg(Watch_Hours),2) as Avg_Watch_Hours
from netflix_customers
Group by Subscription_Plan;

--9.Top 10 Customers by Revenue
Select TOP 10
Customer_Name,Customer_Revenue
from netflix_customers
Order by Customer_Revenue desc;

--10.Movies vs TV Show
Select Content_Type, Count(*) as Total
from netflix_customers
Group by Content_Type;

--11. Average Rating by Genre
Select Genre,ROUND(Avg(Avg_Rating),2) as Average_Rating
from netflix_customers
group by Genre
order by Average_Rating desc;

--12. Account Status
Select Account_Status, count(*) as Customers
from netflix_customers
Group by Account_Status;
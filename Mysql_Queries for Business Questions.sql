SELECT * FROM sales.sales_dataset;

-- Top 5 products by revenue
SELECT Product_Name,
SUM(Total_Amount) AS Revenue
FROM sales_dataset
GROUP BY Product_Name
ORDER BY Revenue DESC
LIMIT 5;

-- Monthly sales trend (Improved)
SELECT 
DATE_FORMAT(Order_Date, '%b') AS Month,
SUM(Total_Amount) AS Total_Sales
FROM sales_dataset
GROUP BY Month
ORDER BY MIN(Order_Date);

-- Best selling product category
SELECT Product_Category,
SUM(Quantity) AS Total_Products_Sold
FROM sales_dataset
GROUP BY Product_Category
ORDER BY Total_Products_Sold DESC;

-- Average order value
SELECT ROUND(AVG(Total_Amount),2) AS Avg_Order_Value
FROM sales_dataset;

-- Most used payment method
SELECT Payment_Method,
COUNT(*) AS Total_Transactions
FROM sales_dataset
GROUP BY Payment_Method
ORDER BY Total_Transactions DESC;

-- City generating highest revenue
SELECT City,
SUM(Total_Amount) AS Revenue
FROM sales_dataset
GROUP BY City
ORDER BY Revenue DESC;

-- Highest rated product category
SELECT Product_Category,
ROUND(AVG(Rating),2) AS Avg_Rating
FROM sales_dataset
GROUP BY Product_Category
ORDER BY Avg_Rating DESC;
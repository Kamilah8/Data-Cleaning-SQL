/****** Script for SelectTopNRows command from SSMS  ******/
SELECT *
FROM Sales_Data

/*** 1. Convert all customer names to lowercase and display the result, ordering by the lowercase customer name.***/
SELECT Customer_Name, LOWER(Customer_Name) AS customer_name
FROM Sales_Data
ORDER BY  LOWER(Customer_Name) 

/***2. Convert all customer names to uppercase and display the total sales for
each customer, grouped by the uppercase name.***/
SELECT Customer_Name, UPPER(Customer_Name) AS CUSTOMER_NAME, SUM(Sales) AS Total_Sales
FROM Sales_Data
GROUP BY CUSTOMER_NAME

/***3. Concatenate the customer name and city with a comma and space
between them, and order the results by the combined string.***/
SELECT CONCAT(Customer_Name,' , ', City) AS Name_and_City
FROM Sales_Data
ORDER BY  CONCAT(Customer_Name,' , ', City)

/***4. Extract the first three characters of the customer names and display the
result, ordering by the substring.***/
SELECT Customer_Name, LEFT(Customer_Name,3) AS First_3_Letters
FROM Sales_Data
ORDER BY LEFT(Customer_Name,3)

/***5. Get the first five characters of the customer names and calculate the
total sales for these grouped names.***/
SELECT Customer_Name, LEFT(Customer_Name,5) AS First_5_Letters, SUM(Sales) AS Total_Sales_for_Grouped_Names
FROM Sales_Data
GROUP BY Customer_Name

/***6. Get the last three characters of the customer names and display the
result, ordering by the last three characters.***/
SELECT Customer_Name, RIGHT(Customer_Name,3) AS Last_3_Letters
FROM Sales_Data
ORDER BY RIGHT(Customer_Name,3)

/***7. Replace all spaces in customer names with underscores and calculate
the total quantity of items ordered by each modified name, ordering by the
replaced names.***/
SELECT REPLACE(Customer_Name,' ','_') AS Customer_Name, SUM(Quantity) AS Total_Quantity
FROM Sales_Data
GROUP BY  Customer_Name
ORDER BY  REPLACE(Customer_Name,' ','_')

/***8. Find the length of each customer name and display the result, ordering
by the length.***/
SELECT Customer_Name, LEN(Customer_Name) AS Length_Of_Names
FROM Sales_Data
ORDER BY LEN(Customer_Name)

/***9. Remove leading and trailing spaces from customer names (if any) and
display the result, ordering by the trimmed names.***/
SELECT Customer_Name, LTRIM(Customer_Name) AS Ltrim_Customer_Names, RTRIM(Customer_Name) AS Rtrim_Customer_Names
FROM Sales_Data
ORDER BY LTRIM(Customer_Name)









































--Game Sales Analysis

--Calculte Global Sales grouped by Genre

SELECT Genre, SUM(Global_Sales) AS GenreSales
FROM vgsales
GROUP BY Genre
ORDER BY GenreSales DESC

--Check year with the highest global sales

SELECT Year, SUM(Global_Sales) AS Total_Sales
FROM vgsales
WHERE year is not null
GROUP BY Year
ORDER BY Total_Sales DESC

--Comparison of Genre total sales in different regions

SELECT Genre, SUM(NA_Sales) AS North_America,SUM(EU_Sales) AS Europe,SUM(JP_Sales) AS Japan,SUM(Other_Sales) AS Other
FROM vgsales
GROUP BY Genre
ORDER BY Genre
 
--Most Profitable Platform over the years

SELECT Platform, SUM(Global_Sales) AS Total_Sales
FROM vgsales
GROUP BY Platform
ORDER BY Total_Sales DESC
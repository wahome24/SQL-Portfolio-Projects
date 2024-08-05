--Number of borrowers per country

SELECT country, COUNT(id) AS Number_of_Borrowers

FROM [Loan Data]

GROUP BY country

ORDER BY Number_of_Borrowers DESC


--Top 10 countries with the most borrowers

SELECT TOP 10 country, COUNT(id) AS Number_of_Borrowers

FROM [Loan Data]

GROUP BY country

ORDER BY Number_of_Borrowers DESC


--Top 10 countries with the least number of borrowers

SELECT TOP 10 country, COUNT(id) AS Number_of_Borrowers

FROM [Loan Data]

GROUP BY country 

ORDER BY Number_of_Borrowers

--Top 10 funded countries

SELECT TOP 10 country, SUM(funded_amount) AS Funded_Loan

FROM [Loan Data]

GROUP BY country 

ORDER BY Funded_Loan DESC

--Countries with over ten thousand lending partners

SELECT country, COUNT(Field_Partner_Name) AS Num_of_LendingPartners

FROM [Kiva Cleaned Data]

GROUP BY country

HAVING COUNT(Field_Partner_Name) > 10000

ORDER BY Num_of_LendingPartners DESC



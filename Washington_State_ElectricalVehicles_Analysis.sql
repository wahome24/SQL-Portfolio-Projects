--Maker of the most electrical vehicles

SELECT Make, COUNT(Electric_Vehicle_Type) AS NumOfVehicles
FROM Electric_Vehicle_Population_Data
GROUP BY Make
ORDER BY NumOfVehicles DESC

--Number of electrical vehicles in each Washington city

SELECT City, COUNT(Electric_Vehicle_Type) AS NumOfVehicles
FROM Electric_Vehicle_Population_Data
GROUP BY city
ORDER BY NumOfVehicles DESC

--Count of vehicles manufactured each year

SELECT Model_Year, COUNT(Electric_Vehicle_Type) AS NumOfVehicles
FROM Electric_Vehicle_Population_Data
GROUP BY Model_Year
ORDER BY NumOfVehicles DESC

--Count of electric vehicle type manufactured each year

SELECT Model_Year, Electric_Vehicle_Type, COUNT(Electric_Vehicle_Type) AS NumOfVehicles
FROM Electric_Vehicle_Population_Data
GROUP BY Model_Year,Electric_Vehicle_Type
ORDER BY Model_Year DESC

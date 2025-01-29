--NBA data analysis utilizing temp table.

--Initial dataset
SELECT * 
from [NBA DataSet 1]

--Creating a temporary table that store player data.
CREATE TABLE #player_Info (
Name varchar(100),
Team varchar(20),
Points int,
Season varchar(100)
)

--We shall populate this table with player data for the team LA Lakers abbreviated as LAL
--We shall also limit seasons to 2020-2023

INSERT INTO #player_Info
SELECT player_name,team_abbreviation,pts,season
FROM [NBA DataSet 1]
WHERE team_abbreviation = 'LAL' AND season IN ('2020-21', '2021-22','2022-23')

--Checking the new filtered dataset
SELECT * 
FROM #player_Info

--Displaying total points for each season

SELECT Season, SUM(Points) AS Total_Points
FROM  #player_Info
GROUP BY Season
ORDER BY Total_Points DESC

--The  2021-22 season had the highest points.

--Top 5 players with the highest points.
SELECT TOP 5 Name, SUM(Points) AS Total_Points
FROM  #player_Info
GROUP BY Name
ORDER BY Total_Points DESC

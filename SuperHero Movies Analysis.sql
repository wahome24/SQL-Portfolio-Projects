--Displyaing all movies
SELECT *
FROM SuperHeroMovies

--Movies with highest Domestic Gross from highest to lowest
SELECT *
FROM SuperHeroMovies
ORDER BY Domestic_Gross DESC

--Movies with highest Domestic Gross from lowest to highest
SELECT *
FROM SuperHeroMovies
ORDER BY Domestic_Gross ASC

--Studio with the most movies realeased
SELECT Studio, COUNT(Title) AS MoviesProduced
FROM SuperHeroMovies
GROUP BY Studio
ORDER BY MoviesProduced DESC
 

--Production Company with the most movies realeased

SELECT ProductionCompany, COUNT(Title) AS MoviesProduced
FROM SuperHeroMovies
GROUP BY ProductionCompany
ORDER BY MoviesProduced DESC

--Year with the most movies realeased

SELECT Year, COUNT(Title) AS MoviesProduced
FROM SuperHeroMovies
GROUP BY Year
ORDER BY MoviesProduced DESC

--Profit for each movie

SELECT Title,Worldwide_Gross,Budget, Worldwide_Gross-Budget AS Profit
FROM SuperHeroMovies
ORDER BY Profit DESC


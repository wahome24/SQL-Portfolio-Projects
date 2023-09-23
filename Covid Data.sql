--Covid Data Exploration
--
-- Total Cases vs Total Deaths
SELECT location, date, total_cases, total_deaths
FROM [covid-deaths]
ORDER BY total_deaths DESC

-- Total Cases vs Total Deaths grouped by location

SELECT location, SUM(CAST(new_cases AS int)) AS total_cases,SUM(CAST(new_deaths AS int)) AS total_deaths
FROM [covid-deaths]
GROUP BY location

-- Country with the highest death count

SELECT location, SUM(CAST(new_cases AS int)) AS total_cases,SUM(CAST(new_deaths AS int)) AS total_deaths
FROM [covid-deaths]
GROUP BY location
ORDER BY total_deaths DESC


-- Total Cases vs Total Deaths grouped by continent

SELECT continent, SUM(CAST(new_cases AS int)) AS total_cases,SUM(CAST(new_deaths AS int)) AS total_deaths
FROM [covid-deaths]
WHERE continent is not null
GROUP BY continent
ORDER BY total_deaths DESC

-- Total Cases vs Population

SELECT location,MAX(TRY_CAST(population AS int)) AS Population, 
MAX(CAST(total_cases AS int)) AS total_cases,
MAX(CAST(total_deaths AS int)) AS total_deaths
FROM [covid-deaths]
WHERE continent is not null
GROUP BY location,population
ORDER BY total_cases DESC

--Total Vaccinations grouped by location

SELECT location,SUM(CAST(new_vaccinations AS bigint)) AS total_vaccinations
FROM [covid-vaccinations]
GROUP BY location
ORDER BY total_vaccinations DESC

--Join creation
SELECT dea.date, vac.location 
FROM [covid-deaths] dea
Join [covid-vaccinations] vac
ON dea.location = vac.location

--Comparing vaccinations vs covid cases 

SELECT vac.location, SUM(CAST(new_vaccinations AS bigint)) AS total_vaccinations,SUM(CAST(dea.new_cases AS bigint))AS Total_Cases
FROM [covid-deaths] dea
Join [covid-vaccinations] vac
ON dea.date = vac.date AND dea.location = vac.location
GROUP BY vac.location 
ORDER BY Total_Vaccinations DESC









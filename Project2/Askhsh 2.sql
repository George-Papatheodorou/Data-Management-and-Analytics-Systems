SELECT r.raceCountry,d.year,COUNT(DISTINCT f.raceID) AS totalRaces
FROM FactRacePerformance f
JOIN Race r ON f.raceID = r.raceID
JOIN dDate d ON f.dateID = d.dateID
GROUP BY r.raceCountry, d.year
ORDER BY r.raceCountry, d.year;

SELECT a.AgeCategoryCode,ru.RunnerGender,AVG(f.finishTime)
FROM FactRacePerformance f
join AgeCategory a on f.ageCategoryCode=a.AgeCategoryCode
join Runner ru on f.runnerID=ru.RunnerID
join Race r on f.raceID = r.raceID
where r.RaceDistance='50km'
GROUP BY a.AgeCategoryCode,ru.RunnerGender
ORDER BY a.AgeCategoryCode


CREATE TABLE Race
(RaceID INT PRIMARY KEY,
RaceName VARCHAR(200),
RaceDistance VARCHAR(10),
RaceCountry VARCHAR(3)
);

CREATE TABLE Runner 
(RunnerID INT PRIMARY KEY,
RunnerBirthYear INT,
RunnerGender VARCHAR(1),
RunnerCountry VARCHAR(3)
);

CREATE TABLE AgeCategory 
(AgeCategoryCode VARCHAR(4) PRIMARY KEY,
AgeCategoryTitle VARCHAR(50)
);
CREATE TABLE dDate 
(dateID DATE PRIMARY KEY,
 year INT,
 month INT,
day INT
);
CREATE TABLE FactRacePerformance 
(raceID INT,
runnerID INT,
ageCategoryCode VARCHAR(4),
dateID DATE,
performance VARCHAR(20),
finishTime DECIMAL(4,2),
averageSpeed DECIMAL(5,3),
PRIMARY KEY (raceId,runnerID,ageCategoryCode,dateID),
FOREIGN KEY (raceID) REFERENCES Race(raceID),
FOREIGN KEY (runnerID) REFERENCES Runner(runnerID),
FOREIGN KEY (ageCategoryCode) REFERENCES AgeCategory(ageCategoryCode),
FOREIGN KEY (dateID) REFERENCES dDate(dateID)
);




INSERT INTO Race
SELECT DISTINCT raceID, raceName, raceDistance, racecountry
FROM raceData;

INSERT INTO Runner
SELECT DISTINCT runnerID, runnerBirthYear, runnerGender, runnerCountry
FROM raceData;

INSERT INTO AgeCategory
SELECT DISTINCT ageCategoryCode, ageCategoryTitle
FROM raceData;

INSERT INTO dDate
SELECT DISTINCT raceDate, YEAR(raceDate), MONTH(raceDate), DAY(raceDate)
FROM raceData;



INSERT INTO FactRacePerformance
SELECT raceID, runnerID, ageCategoryCode, raceDate, performance, finishTime, averageSpeed
FROM raceData;

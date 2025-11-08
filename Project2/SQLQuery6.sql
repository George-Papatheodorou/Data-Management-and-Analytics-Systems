
CREATE TABLE raceData
(raceID INT, 
 raceDate DATE,
 raceName VARCHAR(200), 
 raceDistance VARCHAR(10),
 raceCountry VARCHAR(3),
 runnerID INT,
 runnerBirthYear INT, 
 runnerGender VARCHAR(1), 
 runnerCountry VARCHAR(3), 
 ageCategoryCode VARCHAR(4),
 ageCategoryTitle VARCHAR(50),
 performance VARCHAR(20), 
 finishTime DECIMAL (4,2),
 averageSpeed DECIMAL(5,3)
 ); 

-- ΠΡΟΣΟΧΗ: Προσαρμόστε το PATH
BULK INSERT raceData
FROM "C:\Users\messi\Downloads\raceData\raceData.txt"
WITH (FIRSTROW =2, FIELDTERMINATOR= '|', ROWTERMINATOR = '\n'); 

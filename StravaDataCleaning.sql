use strava;
SHOW GLOBAL VARIABLES LIKE 'local_infile';

LOAD DATA LOCAL INFILE 'C:/Users/Sumit Sinha/Desktop/Strava Fitness/heartrate_seconds_merged.csv' INTO TABLE heartrateseconds
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (Id, @csv_time, Value)
SET Time=STR_TO_DATE(TRIM(@csv_time), '%m/%d/%Y %l:%i:%s %p');
SELECT * FROM heartrateseconds;

create table hourlycalories(Id bigint, ActivityHour datetime, Calories int);
LOAD DATA LOCAL INFILE 'C:/Users/Sumit Sinha/Desktop/Strava Fitness/hourlycalories_merged.csv' INTO TABLE hourlycalories
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (Id, @csv_ActivityHour, Calories)
SET ActivityHour = STR_TO_DATE(@csv_ActivityHour, '%m/%d/%Y %l:%i:%s %p');
SELECT * FROM hourlycalories;

create table hourlyintensities(Id bigint, ActivityHour datetime, TotalIntensity int, AverageIntensity int);
LOAD DATA LOCAL INFILE 'C:/Users/Sumit Sinha/Desktop/Strava Fitness/hourlyIntensities_merged.csv' INTO TABLE hourlyintensities
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (Id, @csv_ActivityHour, TotalIntensity, AverageIntensity)
SET ActivityHour = STR_TO_DATE(@csv_ActivityHour, '%m/%d/%Y %l:%i:%s %p');
SELECT * FROM hourlyintensities;

create table hourlysteps(Id bigint, ActivityHour datetime, StepTotal int);
LOAD DATA LOCAL INFILE 'C:/Users/Sumit Sinha/Desktop/Strava Fitness/hourlySteps_merged.csv' INTO TABLE hourlysteps
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (Id, @csv_ActivityHour, StepTotal)
SET ActivityHour = STR_TO_DATE(@csv_ActivityHour, '%m/%d/%Y %l:%i:%s %p');
SELECT * FROM hourlysteps;

create table minutecaloriesnarrow(Id bigint, ActivityMinute datetime, Calories double);
LOAD DATA LOCAL INFILE 'C:/Users/Sumit Sinha/Desktop/Strava Fitness/minuteCaloriesNarrow_merged.csv' INTO TABLE minutecaloriesnarrow
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (Id, @csv_ActivityMinute, Calories)
SET ActivityMinute = STR_TO_DATE(@csv_ActivityMinute, '%m/%d/%Y %l:%i:%s %p');
SELECT * FROM minutecaloriesnarrow;

create table minutecalorieswide(Id bigint, ActivityHour datetime, Calories00 double, Calories01 double, Calories02 double,
Calories03 double, Calories04 double, Calories05 double, Calories06 double, Calories07 double, Calories08 double, 
Calories09 double, Calories10 double, Calories11 double, Calories12 double, Calories13 double, Calories14 double, 
Calories15 double, Calories16 double, Calories17 double, Calories18 double, Calories19 double, Calories20 double, 
Calories21 double, Calories22 double, Calories23 double, Calories24 double, Calories25 double, Calories26 double, 
Calories27 double, Calories28 double, Calories29 double, Calories30 double, Calories31 double, Calories32 double, 
Calories33 double, Calories34 double, Calories35 double, Calories36 double, Calories37 double, Calories38 double, 
Calories39 double, Calories40 double, Calories41 double, Calories42 double, Calories43 double, Calories44 double, 
Calories45 double, Calories46 double, Calories47 double, Calories48 double, Calories49 double, Calories50 double, 
Calories51 double, Calories52 double, Calories53 double, Calories54 double, Calories55 double, Calories56 double, 
Calories57 double, Calories58 double, Calories59 double);
LOAD DATA LOCAL INFILE 'C:/Users/Sumit Sinha/Desktop/Strava Fitness/minuteCaloriesWide_merged.csv' INTO TABLE minutecalorieswide
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (Id, @csv_ActivityHour, Calories00, Calories01, Calories02, Calories03,
Calories04, Calories05, Calories06, Calories07, Calories08, Calories09, Calories10, Calories11, Calories12, Calories13, 
Calories14, Calories15, Calories16, Calories17, Calories18, Calories19, Calories20, Calories21, Calories22, Calories23, 
Calories24, Calories25, Calories26, Calories27, Calories28, Calories29, Calories30, Calories31, Calories32, Calories33, 
Calories34, Calories35, Calories36, Calories37, Calories38, Calories39, Calories40, Calories41, Calories42, Calories43, 
Calories44, Calories45, Calories46, Calories47, Calories48, Calories49, Calories50, Calories51, Calories52, Calories53, 
Calories54, Calories55, Calories56, Calories57, Calories58, Calories59)
SET ActivityHour=STR_TO_DATE(@csv_ActivityHour, '%m/%d/%Y %l:%i:%s %p');
SELECT * FROM minutecalorieswide;

create table minuteintensitiesnarrow(Id bigint, ActivityMinute datetime, Intensity double);
LOAD DATA LOCAL INFILE 'C:/Users/Sumit Sinha/Desktop/Strava Fitness/minuteIntensitiesNarrow_merged.csv' INTO TABLE minuteintensitiesnarrow
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (Id, @csv_ActivityMinute, Intensity)
SET ActivityMinute = STR_TO_DATE(@csv_ActivityMinute, '%m/%d/%Y %l:%i:%s %p');
SELECT * FROM minuteintensitiesnarrow;

create table minuteintensitieswide(Id bigint, ActivityHour datetime, Intensity00 double, Intensity01 double, Intensity02 double,
Intensity03 double, Intensity04 double, Intensity05 double, Intensity06 double, Intensity07 double, Intensity08 double, 
Intensity09 double, Intensity10 double, Intensity11 double, Intensity12 double, Intensity13 double, Intensity14 double, 
Intensity15 double, Intensity16 double, Intensity17 double, Intensity18 double, Intensity19 double, Intensity20 double, 
Intensity21 double, Intensity22 double, Intensity23 double, Intensity24 double, Intensity25 double, Intensity26 double, 
Intensity27 double, Intensity28 double, Intensity29 double, Intensity30 double, Intensity31 double, Intensity32 double, 
Intensity33 double, Intensity34 double, Intensity35 double, Intensity36 double, Intensity37 double, Intensity38 double, 
Intensity39 double, Intensity40 double, Intensity41 double, Intensity42 double, Intensity43 double, Intensity44 double, 
Intensity45 double, Intensity46 double, Intensity47 double, Intensity48 double, Intensity49 double, Intensity50 double, 
Intensity51 double, Intensity52 double, Intensity53 double, Intensity54 double, Intensity55 double, Intensity56 double, 
Intensity57 double, Intensity58 double, Intensity59 double);
LOAD DATA LOCAL INFILE 'C:/Users/Sumit Sinha/Desktop/Strava Fitness/minuteIntensitiesWide_merged.csv' INTO TABLE minuteintensitieswide
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (Id, @csv_ActivityHour, Intensity00, Intensity01, Intensity02, Intensity03,
Intensity04, Intensity05, Intensity06, Intensity07, Intensity08, Intensity09, Intensity10, Intensity11, Intensity12, Intensity13, 
Intensity14, Intensity15, Intensity16, Intensity17, Intensity18, Intensity19, Intensity20, Intensity21, Intensity22, Intensity23, 
Intensity24, Intensity25, Intensity26, Intensity27, Intensity28, Intensity29, Intensity30, Intensity31, Intensity32, Intensity33, 
Intensity34, Intensity35, Intensity36, Intensity37, Intensity38, Intensity39, Intensity40, Intensity41, Intensity42, Intensity43, 
Intensity44, Intensity45, Intensity46, Intensity47, Intensity48, Intensity49, Intensity50, Intensity51, Intensity52, Intensity53, 
Intensity54, Intensity55, Intensity56, Intensity57, Intensity58, Intensity59)
SET ActivityHour=STR_TO_DATE(@csv_ActivityHour, '%m/%d/%Y %l:%i:%s %p');
SELECT * FROM minuteintensitieswide;

create table minutemetnarrow(Id bigint, ActivityMinute datetime, METs int);
LOAD DATA LOCAL INFILE 'C:/Users/Sumit Sinha/Desktop/Strava Fitness/minuteMETsNarrow_merged.csv' INTO TABLE minutemetnarrow
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (Id, @csv_ActivityMinute, METs)
SET ActivityMinute = STR_TO_DATE(@csv_ActivityMinute, '%m/%d/%Y %l:%i:%s %p');
SELECT * FROM minutemetnarrow;

create table minutesleepmerged(Id bigint, date datetime, value int, logId BIGINT);
LOAD DATA LOCAL INFILE 'C:/Users/Sumit Sinha/Desktop/Strava Fitness/minuteSleep_merged.csv' INTO TABLE minutesleepmerged
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (Id, @csv_date, value, logId)
SET date = STR_TO_DATE(@csv_date, '%m/%d/%Y %l:%i:%s %p');
SELECT * FROM minutesleepmerged;

create table minutestepsnarrow(Id bigint, ActivityMinute datetime, Steps int);
LOAD DATA LOCAL INFILE 'C:/Users/Sumit Sinha/Desktop/Strava Fitness/minuteStepsNarrow_merged.csv' INTO TABLE minutestepsnarrow
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (Id, @csv_ActivityMinute, Steps)
SET ActivityMinute = STR_TO_DATE(@csv_ActivityMinute, '%m/%d/%Y %l:%i:%s %p');
SELECT * FROM minutestepsnarrow;

create table minutestepswide(Id bigint, ActivityHour datetime, Steps00 int, Steps01 int, Steps02 int,
Steps03 int, Steps04 int, Steps05 int, Steps06 int, Steps07 int, Steps08 int, Steps09 int, Steps10 int, Steps11 int, Steps12 int, Steps13 int, Steps14 int, 
Steps15 int, Steps16 int, Steps17 int, Steps18 int, Steps19 int, Steps20 int, Steps21 int, Steps22 int, Steps23 int, Steps24 int, Steps25 int, Steps26 int, 
Steps27 int, Steps28 int, Steps29 int, Steps30 int, Steps31 int, Steps32 int, Steps33 int, Steps34 int, Steps35 int, Steps36 int, Steps37 int, Steps38 int, 
Steps39 int, Steps40 int, Steps41 int, Steps42 int, Steps43 int, Steps44 int, Steps45 int, Steps46 int, Steps47 int, Steps48 int, Steps49 int, Steps50 int, 
Steps51 int, Steps52 int, Steps53 int, Steps54 int, Steps55 int, Steps56 int, Steps57 int, Steps58 int, Steps59 int);
LOAD DATA LOCAL INFILE 'C:/Users/Sumit Sinha/Desktop/Strava Fitness/minuteStepsWide_merged.csv' INTO TABLE minutestepswide
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (Id, @csv_ActivityHour, Steps00, Steps01, Steps02, Steps03,
Steps04, Steps05, Steps06, Steps07, Steps08, Steps09, Steps10, Steps11, Steps12, Steps13, Steps14, Steps15, Steps16, Steps17, Steps18, Steps19, Steps20, Steps21, Steps22, Steps23, 
Steps24, Steps25, Steps26, Steps27, Steps28, Steps29, Steps30, Steps31, Steps32, Steps33, Steps34, Steps35, Steps36, Steps37, Steps38, Steps39, Steps40, Steps41, Steps42, Steps43, 
Steps44, Steps45, Steps46, Steps47, Steps48, Steps49, Steps50, Steps51, Steps52, Steps53, Steps54, Steps55, Steps56, Steps57, Steps58, Steps59)
SET ActivityHour=STR_TO_DATE(@csv_ActivityHour, '%m/%d/%Y %l:%i:%s %p');
SELECT * FROM minutestepswide;

create table sleepday(Id bigint, SleepDay datetime, TotalSleepRecords int, TotalMinutesAsleep int, TotalTimeInBed int);
LOAD DATA LOCAL INFILE 'C:/Users/Sumit Sinha/Desktop/Strava Fitness/sleepDay_merged.csv' INTO TABLE sleepday
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (Id, @csv_SleepDay, TotalSleepRecords, TotalMinutesAsleep, TotalTimeInBed)
SET SleepDay = STR_TO_DATE(@csv_SleepDay, '%m/%d/%Y %l:%i:%s %p');
SELECT * FROM sleepday;

create table weightlog(Id bigint, Date datetime, WeightKg double, WeightPounds double, Fat float, BMI float, IsManualReport bool, LogId BIGINT);
LOAD DATA LOCAL INFILE 'C:/Users/Sumit Sinha/Desktop/Strava Fitness/weightLogInfo_merged.csv' INTO TABLE weightlog
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (Id, @csv_Date, WeightKg, WeightPounds, Fat, BMI, @csv_IsManualReport, LogId)
SET Date = STR_TO_DATE(@csv_Date, '%m/%d/%Y %l:%i:%s %p'), IsManualReport = (TRIM(@csv_IsManualReport) = 'TRUE'); 
SELECT * FROM weightlog LIMIT 10;

create table dailyactivity(Id bigint, ActivityDate datetime, TotalSteps int, TotalDistance float, TrackerDistance float, LoggedActivitiesDistance float, VeryActiveDistance float, ModeratelyActiveDistance float, LightActiveDistance float, SedentaryActiveDistance float, VeryActiveMinutes float, FairlyActiveMinutes float, LightlyActiveMinutes float, SedentaryMinutes int, Calories int);
LOAD DATA LOCAL INFILE 'C:/Users/Sumit Sinha/Desktop/Strava Fitness/dailyActivity_merged.csv' INTO TABLE dailyactivity
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (Id, @csv_ActivityDate, TotalSteps, TotalDistance, TrackerDistance, LoggedActivitiesDistance, VeryActiveDistance, ModeratelyActiveDistance, LightActiveDistance, SedentaryActiveDistance, VeryActiveMinutes, FairlyActiveMinutes, LightlyActiveMinutes, SedentaryMinutes, Calories)
SET ActivityDate=STR_TO_DATE(@csv_ActivityDate, '%m/%d/%Y');
SELECT * FROM dailyactivity;

create table dailycalories(Id bigint, ActivityDay datetime, Calories int);
LOAD DATA LOCAL INFILE 'C:/Users/Sumit Sinha/Desktop/Strava Fitness/dailyCalories_merged.csv' INTO TABLE dailycalories
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (Id, @csv_ActivityDay, Calories)
SET ActivityDay=STR_TO_DATE(@csv_ActivityDay, '%m/%d/%Y');
SELECT * FROM dailycalories;

CREATE TABLE dailyintensity(Id BIGINT, ActivityDay DATE, SedentaryMinutes INT, LightlyActiveMinutes INT, FairlyActiveMinutes INT, VeryActiveMinutes INT);
LOAD DATA LOCAL INFILE 'C:/Users/Sumit Sinha/Desktop/Strava Fitness/dailyIntensities_merged.csv' INTO TABLE dailyintensity
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (Id, @csv_ActivityDay, SedentaryMinutes, LightlyActiveMinutes, FairlyActiveMinutes, VeryActiveMinutes) 
SET ActivityDay=STR_TO_DATE(@csv_ActivityDay, '%m/%d/%Y');
SELECT * FROM dailyintensity;

create table dailysteps(Id bigint, ActivityDay datetime, StepTotal int);
LOAD DATA LOCAL INFILE 'C:/Users/Sumit Sinha/Desktop/Strava Fitness/dailySteps_merged.csv' INTO TABLE dailysteps
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (Id, @csv_ActivityDay, StepTotal)
SET ActivityDay=STR_TO_DATE(@csv_ActivityDay, '%m/%d/%Y %l:%i:%s %p');
SELECT * FROM dailysteps;

#Checking the total number of people tracking various activities :
select count(distinct Id) from dailyactivity; #33
select count(distinct Id) from dailycalories; #33
select count(distinct Id) from dailyintensity; #33
select count(distinct Id) from dailysteps;    #33
select count(distinct Id) from heartrateseconds;#14
select count(distinct Id) from hourlycalories;  #33
select count(distinct Id) from hourlyintensities;#33
select count(distinct Id) from hourlysteps;   #33
select count(distinct Id) from minutecaloriesnarrow;#33
select count(distinct Id) from minutecalorieswide;#33
select count(distinct Id) from minuteintensitiesnarrow;#33
select count(distinct Id) from minuteintensitieswide;#33
select count(distinct Id) from minutemetnarrow; #33
select count(distinct Id) from minutesleepmerged;#24
select count(distinct Id) from minutestepsnarrow;#33
select count(distinct Id) from minutestepswide;#33
select count(distinct Id) from sleepday;      #24
select count(distinct Id) from weightlog;     #8

#Checking for Duplicate values :
SELECT Id, ActivityDate, COUNT(*) AS NumOfRecords FROM dailyactivity GROUP BY Id, ActivityDate HAVING COUNT(*) > 1; #0
SELECT Id, ActivityDay, COUNT(*) AS NumOfRecords FROM dailycalories GROUP BY Id, ActivityDay HAVING COUNT(*) > 1; #0
SELECT Id, ActivityDay, COUNT(*) AS NumOfRecords FROM dailyintensity GROUP BY Id, ActivityDay HAVING COUNT(*) > 1; #0
SELECT Id, ActivityDay, COUNT(*) AS NumOfRecords FROM dailysteps GROUP BY Id, ActivityDay HAVING COUNT(*) > 1; #0
SELECT Id, Time, COUNT(*) AS NumOfRecords FROM heartrateseconds GROUP BY Id, Time HAVING COUNT(*) > 1; #0
SELECT Id, ActivityHour, COUNT(*) AS NumOfRecords FROM hourlycalories GROUP BY Id, ActivityHour HAVING COUNT(*) > 1; #0
SELECT Id, ActivityHour, COUNT(*) AS NumOfRecords FROM hourlyintensities GROUP BY Id, ActivityHour HAVING COUNT(*) > 1; #0
SELECT Id, ActivityHour, COUNT(*) AS NumOfRecords FROM hourlysteps GROUP BY Id, ActivityHour HAVING COUNT(*) > 1; #0
SELECT Id, ActivityMinute, COUNT(*) AS NumOfRecords FROM minutecaloriesnarrow GROUP BY Id, ActivityMinute HAVING COUNT(*) > 1; #0
SELECT Id, ActivityHour, COUNT(*) AS NumOfRecords FROM minutecalorieswide GROUP BY Id, ActivityHour HAVING COUNT(*) > 1; #0
SELECT Id, ActivityMinute, COUNT(*) AS NumOfRecords FROM minuteintensitiesnarrow GROUP BY Id, ActivityMinute HAVING COUNT(*)>1; #0
SELECT Id, ActivityHour, COUNT(*) AS NumOfRecords FROM minuteintensitieswide GROUP BY Id, ActivityHour HAVING COUNT(*) > 1; #0
SELECT Id, ActivityMinute, COUNT(*) AS NumOfRecords FROM minutemetnarrow GROUP BY Id, ActivityMinute HAVING COUNT(*) > 1; #0
SELECT Id, date, COUNT(*) AS NumOfRecords FROM minutesleepmerged GROUP BY Id, date HAVING COUNT(*) > 1; #2
SELECT Id, ActivityMinute, COUNT(*) AS NumOfRecords FROM minutestepsnarrow GROUP BY Id, ActivityMinute HAVING COUNT(*) > 1; #0
SELECT Id, ActivityHour, COUNT(*) AS NumOfRecords FROM minutestepswide GROUP BY Id, ActivityHour HAVING COUNT(*) > 1; #0
SELECT Id, SleepDay, COUNT(*) AS NumOfRecords FROM sleepday GROUP BY Id, SleepDay HAVING COUNT(*) > 1; #2
SELECT Id, Date, COUNT(*) AS NumOfRecords FROM weightlog GROUP BY Id, Date HAVING COUNT(*) > 1; #0

#Removing Duplicate Values :
CREATE TABLE minutesleepmerged_clean LIKE minutesleepmerged;
INSERT INTO minutesleepmerged_clean SELECT DISTINCT * FROM minutesleepmerged;
SELECT Id, date, COUNT(*) AS NumOfRecords FROM minutesleepmerged_clean GROUP BY Id, date HAVING COUNT(*) > 1;
CREATE TABLE sleepday_clean LIKE sleepday;
INSERT INTO sleepday_clean SELECT DISTINCT * FROM sleepday;
SELECT Id, SleepDay, COUNT(*) AS NumOfRecords FROM sleepday_clean GROUP BY Id, SleepDay HAVING COUNT(*) > 1;
select count(*) from minutesleepmerged_clean;

#Checking for NULL Values :
SELECT * FROM weightlog WHERE Fat IS NULL OR BMI IS NULL;
SELECT COUNT(*) FROM dailyactivity WHERE TotalSteps = 0;  #77

#Checking for any illogical data :
SELECT * FROM sleepday_clean WHERE TotalMinutesAsleep>TotalTimeInBed;
SELECT Id, ActivityDate, (VeryActiveMinutes+FairlyActiveMinutes+LightlyActiveMinutes+SedentaryMinutes) AS TotalMinutes
FROM dailyactivity WHERE (VeryActiveMinutes+FairlyActiveMinutes+LightlyActiveMinutes+SedentaryMinutes)>1440;
SELECT * FROM weightlog WHERE WeightKg<=0 OR WeightKg>200;

#Checking for negative values :
SELECT min(TotalDistance), max(TotalDistance), min(TotalSteps), max(TotalSteps), min(LoggedActivitiesDistance), min(SedentaryActiveDistance), 
max(SedentaryActiveDistance), min(SedentaryMinutes), max(SedentaryMinutes), min(Calories), max(Calories) FROM dailyactivity;

SELECT id, SedentaryMinutes, count(*) AS 'Sedentary Days (=> 1440 mins)' FROM dailyactivity WHERE SedentaryMinutes >= 1440 GROUP BY id, SedentaryMinutes;
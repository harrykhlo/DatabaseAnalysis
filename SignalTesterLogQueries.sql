-- BCPR203 - Database Management Systems
-- Assignment One: Signal Tester Log Database Analysis
-- Student: Harry Lo
-- File Name: SignalTesterLogQueries.sql

-- 1) How many blade and whip antennas have been passed in the signal test for each network provider?
--    (If both blade and whip passed the test for the same Work Order Number only consider that as blade)
SELECT 
SUM(IF(signalResultVodafoneBlade = 'Pass',1 ,0)) AS 'Number of Blade test Vodafone passed', 
SUM(IF(signalResultTelstraBlade = 'Pass',1 ,0)) AS 'Number of Blade test Telstra passed',
SUM(IF(signalResultVodafoneWhip = 'Pass', IF(signalResultVodafoneBlade = 'Pass',0, 1), 0)) AS 'Number of Whip test Vodafone passed',
SUM(IF(signalResultTelstraWhip = 'Pass', IF(signalResultTelstraBlade = 'Pass', 0, 1), 0)) AS 'Number of Whip test Telstra passed'
FROM Test;

-- 2) What is the pass/fail rate for the different frequency bands?

-- 3) How many signal test pass or fail for each network provider in each location.

-- 4) What is the pass/fail rate for the different frequency bands?

-- 5) Find the correlation between signal strength and signal quality
-- (The correlation can be plotted by using the data given by the select statement below.)
-- (The select statement below gives signal strengths, corresponding signal qualities and correspnding frequency Numbers)
SELECT RawData.signalStrength, RawData.signalQuality, RawData.frequencyNumber, Rf.frequencyBand
FROM RawData 
INNER JOIN Rf ON RawData.frequencyNumber = Rf.frequencyNumber
WHERE signalQuality != 99 ORDER BY frequencyNumber, signalStrength;

-- 6) Count the number of signal log files per Bluetooth Names and print out each of the locations


-- 7) Count the number of log files without GPS coordinates and sort them by iPad models
SELECT deviceType AS 'iPad models without GPS coordinates' FROM Test WHERE gpsLong IS NULL OR gpsLat IS NULL ORDER BY deviceType;

-- 8) Count the number of whip antenna vs blade antenna tested (either one of two selects below)
SELECT  (COUNT(modemStatusVodafoneWhip) + COUNT(modemStatusTelstraWhip)) AS 'Number of whip antennas tested (ignored band switching)', (COUNT(modemStatusVodafoneBlade) + COUNT(modemStatusTelstraBlade)) AS 'Number of blade antennas tested (ignored band switching)' FROM test;
SELECT SUM(IF(signalResultVodafoneWhip != "NotTested" AND signalResultTelstraWhip != "NotTested", 2, IF(signalResultVodafoneWhip != "NotTested" OR signalResultTelstraWhip != "NotTested", 1,  0))) AS 'Number of whip antennas tested (ignored band switching)', SUM(IF(signalResultVodafoneBlade != "NotTested" AND signalResultTelstraBlade != "NotTested", 2, IF(signalResultVodafoneBlade != "NotTested" OR signalResultTelstraBlade != "NotTested", 1,  0))) AS 'Number of Blade antennas tested (ignored band switching)' FROM test;

-- 9) Count the number of different modem types used during the test
SELECT COUNT(DISTINCT modemType) AS 'Number of different modem types' FROM test;

-- 10) Count the number of different installers
SELECT COUNT(DISTINCT userName) AS 'Number of different installers' FROM test;
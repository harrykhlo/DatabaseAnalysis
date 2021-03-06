-- BCPR203 - Database Management Systems
-- Assignment One: Signal Tester Log Database Analysis
-- Student: Harry Lo
-- File Name: SignalTesterLogTable.sql

-- DROP DATABASE SignalTesterLog;

-- create database
CREATE DATABASE SignalTesterLog;
-- use database
USE SignalTesterLog;

-- create Rf table
CREATE TABLE IF NOT EXISTS Rf(
	frequencyNumber ENUM('I', '0', '1', '2', '3', '4', '5', '6', '7') NOT NULL PRIMARY KEY,
    frequencyBand ENUM('NotGiven','Unknown', 'UMTS 2100MHz', 'UMTS 850', 'UMTS 900', 'LTE 1800', 'LTE 850', 'LTE 700', 'LTE 900') NOT NULL
)ENGINE = INNODB;
-- DROP TABLE Rf;

-- create Threshold Table
CREATE TABLE IF NOT EXISTS Threshold(
	thresholdId INT NOT NULL PRIMARY KEY,
	rssiThreshold DECIMAL(4,1),
    rssiHigherThreshold DECIMAL(4,1),
    rscpThreshold DECIMAL(4,1),
    rscpHigherThreshold DECIMAL(4,1),
    rsrpThreshold DECIMAL(4,1),
    rsrpHigherThreshold DECIMAL(4,1)
)ENGINE = INNODB;
-- DROP TABLE Threshold;

-- create Log Table
CREATE TABLE IF NOT EXISTS Log(
	logId INT NOT NULL PRIMARY KEY,
    userName VARCHAR(10),
	antennaTestType ENUM('Blade', 'Whip', 'Blade&Whip'),
	signalResultVodafoneBlade ENUM('Fail', 'Pass', 'NotTested', 'Unregistered'),
	signalResultVodafoneWhip ENUM('Fail', 'Pass', 'NotTested', 'Unregistered'),
	signalResultTelstraBlade ENUM('Fail', 'Pass', 'NotTested', 'Unregistered'),
	signalResultTelstraWhip ENUM('Fail', 'Pass', 'NotTested', 'Unregistered'),
	signalResultExternalModem ENUM('Fail', 'Pass', 'NotTested', 'Unregistered'),
	rssiVodafoneBlade DECIMAL(5,2),
	rssiVodafoneWhip DECIMAL(5,2),
	rssiTelstraBlade DECIMAL(5,2),
	rssiTelstraWhip DECIMAL(5,2),
	rssiExternalModem DECIMAL(5,2),
	rscpVodafoneBlade DECIMAL(5,2),
	rscpVodafoneWhip DECIMAL(5,2),
	rscpTelstraBlade DECIMAL(5,2),
	rscpTelstraWhip DECIMAL(5,2),
	rscpExternalModem DECIMAL(5,2),
	rsrpVodafoneBlade DECIMAL(5,2),
	rsrpVodafoneWhip DECIMAL(5,2),
	rsrpTelstraBlade DECIMAL(5,2),
	rsrpTelstraWhip DECIMAL(5,2),
	rsrpExternalModem DECIMAL(5,2),
	thresholdId INT NOT NULL,
    FOREIGN KEY (thresholdId) REFERENCES Threshold (thresholdId),
	timeoutVodafoneBlade ENUM('True', 'False'),
	timeoutVodafoneWhip ENUM('True', 'False'),
	timeoutTelstraBlade ENUM('True', 'False'),
	timeoutTelstraWhip ENUM('True', 'False'),
	timeoutExternalModem ENUM('True', 'False'),
	networkVodafoneBlade VARCHAR(14),
	networkVodafoneWhip VARCHAR(14),
	networkTelstraBlade VARCHAR(14),
	networkTelstraWhip VARCHAR(14),
	networkExternalModem VARCHAR(14),
	gpsLong DECIMAL(16,13),
	gpsLat DECIMAL(16,13),
	gpsAccuracy VARCHAR(28),
	deviceType VARCHAR(8),
	simVodafone VARCHAR(20),
	simTelstra VARCHAR(20),
	simExternal VARCHAR(20),
	serialNo VARCHAR(8),
	firmwareNo VARCHAR(8),
	appVersionNo VARCHAR(5),
    batteryLevel DECIMAL(4,2),
	modemType VARCHAR(7),
	modemStatusVodafoneBlade VARCHAR(37),
	modemStatusVodafoneWhip VARCHAR(37),
	modemStatusTelstraBlade VARCHAR(37),
	modemStatusTelstraWhip VARCHAR(37),
	modemStatusExternal VARCHAR(37)
    )ENGINE = INNODB;
-- DROP TABLE Log;

CREATE TABLE IF NOT EXISTS BluetoothSignal(
	BtSigId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    BtSignal DECIMAL(4,1),
    logId INT NOT NULL,
    FOREIGN KEY (logId) REFERENCES Log (logId)
)ENGINE = INNODB;
-- DROP TABLE BluetoothSignal

CREATE TABLE IF NOT EXISTS Job(
	workOrder VARCHAR(11) NOT NULL,
    bluetoothName VARCHAR(8) NOT NULL,
	jobDateTime DATETIME NOT NULL,
    PRIMARY KEY (workOrder, bluetoothName, jobDateTime),
    logId INT NOT NULL,
    UNIQUE KEY (logId),
    FOREIGN KEY (logId) REFERENCES Log (logId)
)ENGINE = INNODB;
-- DROP TABLE Job;

CREATE TABLE IF NOT EXISTS RawData(
	rawDataId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	dataNature ENUM('Vodafone Blade', 'Vodafone Whip', 'Telstra Blade', 'Telstra Whip', 'External Modem'),
    signalStrength INT,
    signalQuality INT,
    frequencyNumber ENUM('I', '0', '1', '2', '3', '4', '5', '6', '7') NOT NULL,
	FOREIGN KEY (frequencyNumber) REFERENCES Rf (frequencyNumber),
	logId INT NOT NULL,
    FOREIGN KEY (logId) REFERENCES Log (logId)
)ENGINE = INNODB;
-- DROP TABLE RawData;
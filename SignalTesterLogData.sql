-- Insert Rf table
-- for all logfiles
INSERT INTO Rf VALUES 
('I','NotGiven'), 
('0','Unknown'),
('1','UMTS 2100MHz'), 
('2','UMTS 850'), 
('3','UMTS 900'),
('4','LTE 1800'), 
('5','LTE 850'), 
('6','LTE 700'), 
('7','LTE 900');
-- DELETE FROM rf WHERE frequencyNumber = 'I';
SELECT * FROM rf;

-- insert Threshold table
-- for all logfiles
INSERT INTO Threshold VALUES (1, 6.0, 12.0, 15.0, 30.0, 10.0, 20.0);
-- DELETE FROM Threshold WHERE thresholdId = 1;
SELECT * FROM Threshold;

-- insert Test Table
-- for logfile 1.txt
INSERT INTO Test VALUES 
(1, 'Eevee', 'Blade', 'Denied', 'NotTested', 'Pass', 'NotTested', 'NotTested', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 61.13, NULL, NULL, 1, 'True', NULL, 'False', NULL, NULL, 'Denied', NULL, 'Telstra Mobile', NULL, NULL, NULL, NULL, 'kCLLocationAccuracyKilometer', 'iPad6,12', '89314404000248157530', '89610180002243817774', NULL, 'SDS-196B', 'GAT-17R3', '2.2.5', 3.92, 'EWM400', 'Registeration Denied', NULL, 'Registered, home network', NULL, NULL);

-- for logfile 2.txt
INSERT INTO Test VALUES
(2, 'Pikachu', 'Blade', 'Pass', 'NotTested', 'Pass', 'NotTested', 'NotTested', NULL, NULL, NULL, NULL, NULL, 14.65, NULL, 20.5, NULL, NULL, 23.08, NULL, 21.77, NULL, NULL, 1, 'False', NULL, 'False', NULL, NULL, 'vodafone AU', NULL, 'Telstra Mobile', NULL, NULL, 152.752432376289, -27.6047716895375, 'kCLLocationAccuracyKilometer', 'iPad Air', '89314404000248186935',  '89610180002249048341', NULL, 'SDS-043C', 'GAT-17R3', '2.2.5', 3.92, 'EWM400', 'Registered, Roaming', NULL, 'Registered, home network', NULL, NULL);

-- for logfile 3.txt
INSERT INTO Test VALUES
(3, 'Celebi', 'Blade', 'Denied', 'NotTested', 'Pass', 'NotTested', 'NotTested', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27.2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'True', NULL, 'False', NULL, NULL, 'Denied', NULL, 'Telstra Mobile', NULL, NULL, 139.34259429587, -35.6776790181507, 'kCLLocationAccuracyKilometer', 'iPad Air', '89314404000266650267', '89610180002249046930', NULL, 'SDS-061C', 'GAT-17R3', '2.2.5', 3.88, 'EWM400', 'Not Registered, searching for network', NULL, 'Registered, home network', NULL, NULL);

-- for logfile 4.txt
INSERT INTO Test VALUES
(4, 'Snorlax', 'Blade', 'NotTested', 'NotTested', 'NotTested', 'NotTested', 'Pass', NULL, NULL, NULL, NULL, 9.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'False', NULL, NULL, NULL, NULL, 'vodafone AU', 152.984367638172, -27.4171041995673, 'kCLLocationAccuracyKilometer', 'iPad6,12', NULL, NULL, '89314404000266723023', 'SDS-008C', 'GAT-17R3', '2.2.5', 3.94, 'EWM1000', NULL, NULL, NULL, NULL, 'Registered, Roaming');

-- for logfile 5.txt
INSERT INTO Test VALUES
(5, 'Charizard', 'Blade', 'Pass', 'NotTested', 'Pass', 'NotTested', 'NotTested', NULL, NULL, NULL, NULL, NULL, 12.0, NULL, 16.4, NULL, NULL, 26.92, NULL, 30.79, NULL, NULL, 1, 'False', NULL, 'False', NULL, NULL, 'vodafone AU',NULL, 'Telstra Mobile', NULL, NULL, 153.024695282944, -27.1806907654062, 'kCLLocationAccuracyKilometer', 'iPad7,2', '89314404000248233075', '89610180002249047685',NULL, 'SDS-049C', 'GAT-17R3', '2.2.5', 3.69, 'EWM400', 'Registered, Roaming', NULL, 'Registered, home network', NULL, NULL);

-- for logfile 6.txt
INSERT INTO Test VALUES
(6, 'Mewtwo', 'Blade', 'Denied', 'NotTested', 'Pass', 'NotTested', 'NotTested', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46.07, NULL, NULL, 1, 'True', NULL, 'False', NULL, NULL, 'Denied', NULL, 'Telstra Mobile', NULL, NULL, 152.971914761231, -27.0792295037818, 'kCLLocationAccuracyKilometer', 'iPad Air', '89314404000281178914', '89610180002249045296', NULL, 'SDS-026C', 'GAT-17R3', '2.2.5', 3.88, 'EWM400', 'Registeration Denied', NULL, 'Registered, home network', NULL, NULL);

SELECT * FROM Test;

-- for logfile 1.txt
INSERT INTO BluetoothSignal VALUES
(DEFAULT,-59.0,1),
(DEFAULT,-52.0,1);

-- for logfile 2.txt
INSERT INTO BluetoothSignal VALUES
(DEFAULT,-76.0,2),
(DEFAULT,-72.0,2),
(DEFAULT,-66.0,2);

-- for logfile 3.txt
INSERT INTO BluetoothSignal VALUES
(DEFAULT,-83.0,3),
(DEFAULT,-74.0,3),
(DEFAULT,-79.0,3);

-- for logfile 4.txt
INSERT INTO BluetoothSignal VALUES
(DEFAULT,-91.0,4),
(DEFAULT,-87.0,4),
(DEFAULT,-81.0,4),
(DEFAULT,-70.0,4),
(DEFAULT,-86.0,4),
(DEFAULT,-74.0,4),
(DEFAULT,-76.0,4);

-- for logfile 5.txt
INSERT INTO BluetoothSignal VALUES
(DEFAULT,-76.0,5),
(DEFAULT,-69.0,5),
(DEFAULT,-69.0,5),
(DEFAULT,-76.0,5),
(DEFAULT,-73.0,5),
(DEFAULT,-76.0,5);

-- for logfile 6.txt
INSERT INTO BluetoothSignal VALUES
(DEFAULT,-76.0,6),
(DEFAULT,-85.0,6);

SELECT * FROM BluetoothSignal;

-- for logfile 1.txt
INSERT INTO Job VALUES
('WO-00251301', 'REAPER',STR_TO_DATE('19-2-2019--13-14', '%e-%c-%Y--%H-%i'),1);

-- for logfile 2.txt
INSERT INTO Job VALUES
('WO-00104116', 'CORSSRAY',STR_TO_DATE('1-5-2018--8-5', '%e-%c-%Y--%H-%i'),2);

-- for logfile 3.txt
INSERT INTO Job VALUES
('WO-00105349', 'DIXIE',STR_TO_DATE('30-4-2018--14-48', '%e-%c-%Y--%H-%i'),3);

-- for logfile 4.txt
INSERT INTO Job VALUES
('WO-00110610', 'ASSAM',STR_TO_DATE('17-4-2018--10-41', '%e-%c-%Y--%H-%i'),4);

-- for logfile 5.txt
INSERT INTO Job VALUES
('WO-00110925', 'DAIBRAVE',STR_TO_DATE('26-4-2018--10-31', '%e-%c-%Y--%H-%i'),5);

-- for logfile 6.txt
INSERT INTO Job VALUES
('WO-00248593', 'CARIVOU',STR_TO_DATE('19-2-2019--8-42', '%e-%c-%Y--%H-%i'),6);

SELECT * FROM Job;

-- for logfile 1.txt
INSERT INTO RawData VALUES
(DEFAULT, 'Telstra Blade', 58, 12, '6', 1),
(DEFAULT, 'Telstra Blade', 61, 19, '6', 1),
(DEFAULT, 'Telstra Blade', 61, 30, '6', 1),
(DEFAULT, 'Telstra Blade', 61, 30, '6', 1),
(DEFAULT, 'Telstra Blade', 62, 30, '6', 1),
(DEFAULT, 'Telstra Blade', 62, 32, '6', 1),
(DEFAULT, 'Telstra Blade', 62, 32, '6', 1),
(DEFAULT, 'Telstra Blade', 61, 26, '6', 1),
(DEFAULT, 'Telstra Blade', 61, 26, '6', 1),
(DEFAULT, 'Telstra Blade', 61, 30, '6', 1),
(DEFAULT, 'Telstra Blade', 61, 29, '6', 1),
(DEFAULT, 'Telstra Blade', 61, 21, '6', 1),
(DEFAULT, 'Telstra Blade', 62, 27, '6', 1),
(DEFAULT, 'Telstra Blade', 62, 27, '6', 1),
(DEFAULT, 'Telstra Blade', 61, 31, '6', 1);

-- for logfile 2.txt
INSERT INTO RawData VALUES
(DEFAULT, 'Vodafone Blade', 39, 33, '1', 2),
(DEFAULT, 'Vodafone Blade', 39, 33, '1', 2),
(DEFAULT, 'Vodafone Blade', 39, 37, '1', 2),
(DEFAULT, 'Vodafone Blade', 99, 99, '0', 2),
(DEFAULT, 'Vodafone Blade', 99, 99, '0', 2),
(DEFAULT, 'Vodafone Blade', 99, 99, '0', 2),
(DEFAULT, 'Vodafone Blade', 99, 99, '0', 2),
(DEFAULT, 'Vodafone Blade', 99, 99, '0', 2),
(DEFAULT, 'Vodafone Blade', 40, 18, '4', 2),
(DEFAULT, 'Vodafone Blade', 40, 18, '4', 2),
(DEFAULT, 'Vodafone Blade', 40, 18, '4', 2),
(DEFAULT, 'Vodafone Blade', 39, 29, '4', 2),
(DEFAULT, 'Vodafone Blade', 39, 23, '4', 2),
(DEFAULT, 'Vodafone Blade', 39, 23, '4', 2),
(DEFAULT, 'Vodafone Blade', 40, 29, '4', 2),
(DEFAULT, 'Telstra Blade', 41, 33, '2', 2),
(DEFAULT, 'Telstra Blade', 41, 33, '2', 2),
(DEFAULT, 'Telstra Blade', 41, 33, '2', 2),
(DEFAULT, 'Telstra Blade', 99, 99, '0', 2),
(DEFAULT, 'Telstra Blade', 99, 99, '0', 2),
(DEFAULT, 'Telstra Blade', 99, 99, '0', 2),
(DEFAULT, 'Telstra Blade', 28, 6, '4', 2),
(DEFAULT, 'Telstra Blade', 29, 6, '4', 2),
(DEFAULT, 'Telstra Blade', 29, 6, '4', 2),
(DEFAULT, 'Telstra Blade', 28, 4, '4', 2),
(DEFAULT, 'Telstra Blade', 28, 7, '4', 2),
(DEFAULT, 'Telstra Blade', 27, 2, '4', 2),
(DEFAULT, 'Telstra Blade', 28, 6, '4', 2),
(DEFAULT, 'Telstra Blade', 29, 11, '4', 2),
(DEFAULT, 'Telstra Blade', 29, 11, '4', 2),
(DEFAULT, 'Telstra Blade', 28, 7, '4', 2);

-- for logfile 3.txt
INSERT INTO RawData VALUES
(DEFAULT, 'Telstra Blade', 28, 31, '2', 3),
(DEFAULT, 'Telstra Blade', 26, 27, '2', 3),
(DEFAULT, 'Telstra Blade', 26, 27, '2', 3),
(DEFAULT, 'Telstra Blade', 26, 25, '2', 3),
(DEFAULT, 'Telstra Blade', 26, 25, '2', 3),
(DEFAULT, 'Telstra Blade', 26, 25, '2', 3),
(DEFAULT, 'Telstra Blade', 25, 27, '2', 3),
(DEFAULT, 'Telstra Blade', 25, 27, '2', 3),
(DEFAULT, 'Telstra Blade', 28, 31, '2', 3),
(DEFAULT, 'Telstra Blade', 28, 31, '2', 3),
(DEFAULT, 'Telstra Blade', 28, 31, '2', 3),
(DEFAULT, 'Telstra Blade', 30, 29, '2', 3),
(DEFAULT, 'Telstra Blade', 30, 29, '2', 3),
(DEFAULT, 'Telstra Blade', 25, 25, '2', 3),
(DEFAULT, 'Telstra Blade', 25, 25, '2', 3),
(DEFAULT, 'Telstra Blade', 25, 25, '2', 3),
(DEFAULT, 'Telstra Blade', 26, 29, '2', 3),
(DEFAULT, 'Telstra Blade', 26, 29, '2', 3),
(DEFAULT, 'Telstra Blade', 26, 29, '2', 3),
(DEFAULT, 'Telstra Blade', 28, 29, '2', 3),
(DEFAULT, 'Telstra Blade', 28, 29, '2', 3),
(DEFAULT, 'Telstra Blade', 28, 29, '2', 3),
(DEFAULT, 'Telstra Blade', 28, 29, '2', 3),
(DEFAULT, 'Telstra Blade', 28, 29, '2', 3),
(DEFAULT, 'Telstra Blade', 29, 31, '2', 3),
(DEFAULT, 'Telstra Blade', 29, 31, '2', 3),
(DEFAULT, 'Telstra Blade', 28, 31, '2', 3),
(DEFAULT, 'Telstra Blade', 28, 31, '2', 3),
(DEFAULT, 'Telstra Blade', 28, 31, '2', 3),
(DEFAULT, 'Telstra Blade', 29, 31, '2', 3);

-- for logfile 4.txt
INSERT INTO RawData VALUES
(DEFAULT, 'External Modem', 9, 99, 'I', 4),
(DEFAULT, 'External Modem', 9, 99, 'I', 4),
(DEFAULT, 'External Modem', 9, 99, 'I', 4),
(DEFAULT, 'External Modem', 9, 99, 'I', 4),
(DEFAULT, 'External Modem', 9, 99, 'I', 4),
(DEFAULT, 'External Modem', 9, 99, 'I', 4),
(DEFAULT, 'External Modem', 9, 99, 'I', 4),
(DEFAULT, 'External Modem', 9, 99, 'I', 4),
(DEFAULT, 'External Modem', 9, 99, 'I', 4),
(DEFAULT, 'External Modem', 9, 99, 'I', 4),
(DEFAULT, 'External Modem', 9, 99, 'I', 4),
(DEFAULT, 'External Modem', 9, 99, 'I', 4),
(DEFAULT, 'External Modem', 9, 99, 'I', 4),
(DEFAULT, 'External Modem', 9, 99, 'I', 4),
(DEFAULT, 'External Modem', 9, 99, 'I', 4),
(DEFAULT, 'External Modem', 9, 99, 'I', 4),
(DEFAULT, 'External Modem', 9, 99, 'I', 4),
(DEFAULT, 'External Modem', 9, 99, 'I', 4),
(DEFAULT, 'External Modem', 9, 99, 'I', 4),
(DEFAULT, 'External Modem', 9, 99, 'I', 4),
(DEFAULT, 'External Modem', 9, 99, 'I', 4),
(DEFAULT, 'External Modem', 9, 99, 'I', 4),
(DEFAULT, 'External Modem', 9, 99, 'I', 4),
(DEFAULT, 'External Modem', 9, 99, 'I', 4),
(DEFAULT, 'External Modem', 9, 99, 'I', 4),
(DEFAULT, 'External Modem', 9, 99, 'I', 4),
(DEFAULT, 'External Modem', 9, 99, 'I', 4),
(DEFAULT, 'External Modem', 9, 99, 'I', 4),
(DEFAULT, 'External Modem', 9, 99, 'I', 4),
(DEFAULT, 'External Modem', 9, 99, 'I', 4);

-- for logfile 5.txt
INSERT INTO RawData VALUES
(DEFAULT, 'Vodafone Blade', 42, 43, '1', 5),
(DEFAULT, 'Vodafone Blade', 42, 43, '1', 5),
(DEFAULT, 'Vodafone Blade', 99, 99, '0', 5),
(DEFAULT, 'Vodafone Blade', 99, 99, '0', 5),
(DEFAULT, 'Vodafone Blade', 99, 99, '0', 5),
(DEFAULT, 'Vodafone Blade', 99, 99, '0', 5),
(DEFAULT, 'Vodafone Blade', 99, 99, '0', 5),
(DEFAULT, 'Vodafone Blade', 41, 17, '4', 5),
(DEFAULT, 'Vodafone Blade', 41, 17, '4', 5),
(DEFAULT, 'Vodafone Blade', 43, 22, '4', 5),
(DEFAULT, 'Vodafone Blade', 45, 24, '4', 5),
(DEFAULT, 'Vodafone Blade', 45, 26, '4', 5),
(DEFAULT, 'Vodafone Blade', 45, 23, '4', 5),
(DEFAULT, 'Vodafone Blade', 45, 24, '4', 5),
(DEFAULT, 'Vodafone Blade', 45, 24, '4', 5),
(DEFAULT, 'Telstra Blade', 41, 37, '2', 5),
(DEFAULT, 'Telstra Blade', 41, 39, '2', 5),
(DEFAULT, 'Telstra Blade', 99, 99, '0', 5),
(DEFAULT, 'Telstra Blade', 99, 99, '0', 5),
(DEFAULT, 'Telstra Blade', 99, 99, '0', 5),
(DEFAULT, 'Telstra Blade', 37, 22, '4', 5),
(DEFAULT, 'Telstra Blade', 40, 21, '4', 5),
(DEFAULT, 'Telstra Blade', 43, 26, '4', 5),
(DEFAULT, 'Telstra Blade', 39, 23, '4', 5),
(DEFAULT, 'Telstra Blade', 38, 9, '4', 5),
(DEFAULT, 'Telstra Blade', 38, 9, '4', 5),
(DEFAULT, 'Telstra Blade', 38, 7, '4', 5),
(DEFAULT, 'Telstra Blade', 42, 26, '4', 5),
(DEFAULT, 'Telstra Blade', 37, 26, '4', 5),
(DEFAULT, 'Telstra Blade', 40, 26, '4', 5),
(DEFAULT, 'Telstra Blade', 39, 26, '4', 5);

-- for logfile 6.txt
INSERT INTO RawData VALUES
(DEFAULT, 'Telstra Blade', 43, 19, '6', 6),
(DEFAULT, 'Telstra Blade', 43, 19, '6', 6),
(DEFAULT, 'Telstra Blade', 47, 23, '6', 6),
(DEFAULT, 'Telstra Blade', 47, 23, '6', 6),
(DEFAULT, 'Telstra Blade', 47, 18, '6', 6),
(DEFAULT, 'Telstra Blade', 47, 18, '6', 6),
(DEFAULT, 'Telstra Blade', 46, 19, '6', 6),
(DEFAULT, 'Telstra Blade', 46, 19, '6', 6),
(DEFAULT, 'Telstra Blade', 46, 19, '6', 6),
(DEFAULT, 'Telstra Blade', 44, 12, '6', 6),
(DEFAULT, 'Telstra Blade', 47, 26, '6', 6),
(DEFAULT, 'Telstra Blade', 47, 23, '6', 6),
(DEFAULT, 'Telstra Blade', 47, 25, '6', 6),
(DEFAULT, 'Telstra Blade', 47, 28, '6', 6),
(DEFAULT, 'Telstra Blade', 47, 28, '6', 6);

SELECT * FROM RawData;
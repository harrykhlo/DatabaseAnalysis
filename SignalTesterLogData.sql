-- Insert Rf table
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

INSERT INTO Threshold VALUES (1, 6.0, 12.0, 15.0, 30.0, 10.0, 20.0);
-- DELETE FROM Threshold WHERE thresholdId = 1;
SELECT * FROM Threshold;

INSERT INTO Test VALUES 
(1, 'aaaa', 'Whip', 'Pass', 'Fail', 'NotTested', 'NotTested', 'Fail',NULL,NULL,NULL,NULL,NULL,12.0,NULL,16.4,NULL,NULL,26.92,NULL,30.79,NULL,NULL,1, 'True', 'False', NULL, NULL, 'False','Vodafone AU','Unknown','Telstra Mobile','Unknown','Unknown', 139.34259429587, -35.6776790181507,'kCLLocationAccuracyKilometer','iPad Air', '89314404000266650267', '89610180002249046930', NULL, 'SDS-061C', 'GAT-17R3', '2.2.5', 3.88, 'EWM400', 'Not Registered, seaerching for', NULL, 'Registered, home network', NULL, NULL),
(2, 'bbbbbbb', 'Blade&Whip', 'Pass', 'Fail', 'NotTested', 'NotTested', 'Fail',NULL,NULL,NULL,NULL,NULL,12.0,NULL,16.4,NULL,NULL,26.92,NULL,30.79,NULL,NULL,1, 'True', 'False', NULL, NULL, 'False','Vodafone AU','Unknown','Telstra Mobile','Unknown','Unknown', 139.34259429587, -35.6776790181507,'kCLLocationAccuracyKilometer','iPad Air', '89314404000266650267', '89610180002249046930', NULL, 'SDS-061C', 'GAT-17R3', '2.2.5', 3.88, 'EWM400', 'Not Registered, seaerching for', NULL, 'Registered, home network', NULL, NULL),
(3, 'CCCCCCCCCC', 'Blade', 'Pass', 'Fail', 'NotTested', 'NotTested', 'Fail',NULL,NULL,NULL,NULL,NULL,12.0,NULL,16.4,NULL,NULL,26.92,NULL,30.79,NULL,NULL,1, 'True', 'False', NULL, NULL, 'False','Vodafone AU','Unknown','Telstra Mobile','Unknown','Unknown', 139.34259429587, -35.6776790181507,'kCLLocationAccuracyKilometer','iPad Air', '89314404000266650267', '89610180002249046930', NULL, 'SDS-061C', 'GAT-17R3', '2.2.5', 3.88, 'EWM400', 'Not Registered, seaerching for', NULL, 'Registered, home network', NULL, NULL);

SELECT * FROM Test;

INSERT INTO BluetoothSignal VALUES
(DEFAULT,-59.0,1),
(DEFAULT,-59.0,1);

SELECT * FROM BluetoothSignal;

INSERT INTO Job VALUES
('WO-00251304', 'REAPER',STR_TO_DATE('19-2-2019--13-14', '%e-%c-%Y--%H-%i'),1),('WO-00251303', 'REAPER',STR_TO_DATE('19-2-2019--13-14', '%e-%c-%Y--%H-%i'),2);
SELECT * FROM Job;

INSERT INTO RawData VALUES
(DEFAULT, 'Vodafone Blade', 30, 40, 'I',1),
(DEFAULT, 'Vodafone Blade', 30, 40, 'I',1);
SELECT * FROM RawData;
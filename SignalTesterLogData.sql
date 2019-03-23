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
(1, 'Eevee', 'Blade', 'Denied', 'NotTested', 'Pass', 'NotTested', 'NotTested', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 61.13, NULL, NULL, 1, 'True', NULL, 'False', NULL, NULL, 'Denied', NULL, 'Telstra Mobile', NULL, NULL, NULL, NULL, 'kCLLocationAccuracyKilometer', 'iPad6,12', '89314404000248157530', '89610180002243817774', NULL, 'SDS-196B', 'GAT-17R3', '2.2.5', 3.92, 'EWM400', 'Registeration Denied', NULL, 'Registered, home network', NULL, NULL),

(91, 'aaaa', 'Whip', 'Pass', 'Fail', 'NotTested', 'NotTested', 'Fail',NULL,NULL,NULL,NULL,NULL,12.0,NULL,16.4,NULL,NULL,26.92,NULL,30.79,NULL,NULL,1, 'True', 'False', NULL, NULL, 'False','Vodafone AU','Unknown','Telstra Mobile','Unknown','Unknown', 139.34259429587, -35.6776790181507,'kCLLocationAccuracyKilometer','iPad Air', '89314404000266650267', '89610180002249046930', NULL, 'SDS-061C', 'GAT-17R3', '2.2.5', 3.88, 'EWM400', 'Not Registered, seaerching for', NULL, 'Registered, home network', NULL, NULL),
(92, 'bbbbbbb', 'Blade&Whip', 'Pass', 'Fail', 'NotTested', 'NotTested', 'Fail',NULL,NULL,NULL,NULL,NULL,12.0,NULL,16.4,NULL,NULL,26.92,NULL,30.79,NULL,NULL,1, 'True', 'False', NULL, NULL, 'False','Vodafone AU','Unknown','Telstra Mobile','Unknown','Unknown', 139.34259429587, -35.6776790181507,'kCLLocationAccuracyKilometer','iPad Air', '89314404000266650267', '89610180002249046930', NULL, 'SDS-061C', 'GAT-17R3', '2.2.5', 3.88, 'EWM400', 'Not Registered, seaerching for', NULL, 'Registered, home network', NULL, NULL),
(93, 'CCCCCCCCCC', 'Blade', 'Pass', 'Fail', 'NotTested', 'NotTested', 'Fail',NULL,NULL,NULL,NULL,NULL,12.0,NULL,16.4,NULL,NULL,26.92,NULL,30.79,NULL,NULL,1, 'True', 'False', NULL, NULL, 'False','Vodafone AU','Unknown','Telstra Mobile','Unknown','Unknown', 139.34259429587, -35.6776790181507,'kCLLocationAccuracyKilometer','iPad Air', '89314404000266650267', '89610180002249046930', NULL, 'SDS-061C', 'GAT-17R3', '2.2.5', 3.88, 'EWM400', 'Not Registered, seaerching for', NULL, 'Registered, home network', NULL, NULL);

SELECT * FROM Test;

INSERT INTO BluetoothSignal VALUES
(DEFAULT,-59.0,1),
(DEFAULT,-59.0,1);

SELECT * FROM BluetoothSignal;

INSERT INTO Job VALUES
('WO-00251301', 'Eevee',STR_TO_DATE('19-2-2019--13-14', '%e-%c-%Y--%H-%i'),1);

SELECT * FROM Job;

INSERT INTO RawData VALUES
(DEFAULT, 'Vodafone Blade', 30, 40, 'I',1),
(DEFAULT, 'Vodafone Blade', 30, 40, 'I',1);
SELECT * FROM RawData;
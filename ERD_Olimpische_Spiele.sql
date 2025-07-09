CREATE TABLE `Athlet` (
  `ID` int PRIMARY KEY,
  `Name` varchar(255),
  `Geschlecht` char(1),
  `Alter` int,
  `Korpergrose` int,
  `Gewicht` float,
  `NOC` varchar(255)
);

CREATE TABLE `Land` (
  `NOC` varchar(255) PRIMARY KEY,
  `Name` varchar(255)
);

CREATE TABLE `Sportart` (
  `ID` int PRIMARY KEY,
  `Name` varchar(255)
);

CREATE TABLE `Event` (
  `ID` int PRIMARY KEY,
  `Name` varchar(255),
  `Jahr` int,
  `SportartID` int
);

CREATE TABLE `Medaille` (
  `ID` int PRIMARY KEY,
  `Art` varchar(255)
);

CREATE TABLE `Teilnahme` (
  `ID` int PRIMARY KEY,
  `AthletID` int,
  `EventID` int,
  `MedailleID` int,
  `LandNOC` varchar(255)
);

ALTER TABLE `Athlet` ADD FOREIGN KEY (`NOC`) REFERENCES `Land` (`NOC`);

ALTER TABLE `Event` ADD FOREIGN KEY (`SportartID`) REFERENCES `Sportart` (`ID`);

ALTER TABLE `Teilnahme` ADD FOREIGN KEY (`AthletID`) REFERENCES `Athlet` (`ID`);

ALTER TABLE `Teilnahme` ADD FOREIGN KEY (`EventID`) REFERENCES `Event` (`ID`);

ALTER TABLE `Teilnahme` ADD FOREIGN KEY (`MedailleID`) REFERENCES `Medaille` (`ID`);

ALTER TABLE `Teilnahme` ADD FOREIGN KEY (`LandNOC`) REFERENCES `Land` (`NOC`);

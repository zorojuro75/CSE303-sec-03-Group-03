use codeimporting;
CREATE TABLE `FOREST MINISTRY` (
  `ministryName` VARCHAR(30),
  `username` VARCHAR(30),
  PRIMARY KEY (`ministryName`)
);

CREATE TABLE `USER` (
  `username` VARCHAR(30),
  `email` VARCHAR(30),
  `password` VARCHAR(30),
  PRIMARY KEY (`username`),
  FOREIGN KEY (`username`) REFERENCES `FOREST MINISTRY`(`ministryName`)
);

CREATE TABLE `ORGANIZATION` (
  `orgID` INT,
  `{username}` VARCHAR(30),
  `orgName` VARCHAR(30),
  PRIMARY KEY (`orgID`),
  FOREIGN KEY (`{username}`) REFERENCES `FOREST MINISTRY`(`ministryName`)
);

CREATE TABLE `STATION` (
  `stationID` INT,
  `season` VARCHAR(30),
  `location` VARCHAR(30),
  `pm25` DOUBLE,
  `stationOwner` VARCHAR(30),
  `stationNo` INT,
  `date` DATE,
  `rainPrecipiation` DOUBLE,
  `windSpeed` DOUBLE,
  `cloudCover` DOUBLE,
  `relativeHumidity` DOUBLE,
  `visibilty` DOUBLE,
  PRIMARY KEY (`stationID`),
  FOREIGN KEY (`stationID`) REFERENCES `ORGANIZATION`(`orgID`)
);

CREATE TABLE `ROUTE` (
  `routeID` INT,
  `lat` DOUBLE,
  `lon` DOUBLE,
  `location` VARCHAR(30),
  `mean` DOUBLE,
  `orgID` INT,
  PRIMARY KEY (`routeID`),
  FOREIGN KEY (`orgID`) REFERENCES `ORGANIZATION`(`orgID`)
);



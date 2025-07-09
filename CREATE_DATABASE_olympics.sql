CREATE DATABASE olympics;
USE olympics;

CREATE TABLE athletes (
    Athlete_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Sex CHAR(1)
);

CREATE TABLE events (
    Event_ID INT PRIMARY KEY,
    Sport VARCHAR(255),
    Event VARCHAR(255)
);

CREATE TABLE countries (
    NOC CHAR(3) PRIMARY KEY,
    Country VARCHAR(255)
);

CREATE TABLE athlete_events (
    Athlete_ID INT,
    Event_ID INT,
    Year INT,
    Medal ENUM('Gold', 'Silver', 'Bronze', 'None'),
    Age INT,
    Height INT,
    Weight INT,
    NOC CHAR(3),
    PRIMARY KEY (Athlete_ID, Event_ID, Year),
    FOREIGN KEY (Athlete_ID) REFERENCES athletes(Athlete_ID),
    FOREIGN KEY (Event_ID) REFERENCES events(Event_ID),
    FOREIGN KEY (NOC) REFERENCES countries(NOC)
);







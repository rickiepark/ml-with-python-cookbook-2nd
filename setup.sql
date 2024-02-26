CREATE DATABASE db;
USE db;
SET GLOBAL local_infile=1;

CREATE TABLE `data` (
  `integer` int(11) NOT NULL,
  `datetime` DATETIME NOT NULL,
  `category` int(11) NOT NULL
);

LOAD DATA INFILE './data.csv' 
INTO TABLE data 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

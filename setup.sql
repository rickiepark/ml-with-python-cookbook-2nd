CREATE DATABASE db;
USE db;
SET GLOBAL local_infile=1;

CREATE TABLE `data` (
  `integer` int(11) NOT NULL,
  `datetime` DATETIME NOT NULL,
  `category` int(11) NOT NULL
);

LOAD DATA INFILE '/content/data.csv' 
INTO TABLE data 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

ALTER USER 'root'@'localhost' IDENTIFIED WITH 'mysql_native_password' BY 'root';
FLUSH PRIVILEGES;
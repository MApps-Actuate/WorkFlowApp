CREATE DATABASE IF NOT EXISTS `workflow`;
CREATE TABLE `workflow`.`comments` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `cKey` VARCHAR(50) NOT NULL,
  `Content` LONGTEXT NOT NULL,
  `cDate` DATETIME NOT NULL,
  `cUser` VARCHAR(45) NOT NULL,
  `FullReportName` VARCHAR(256) NOT NULL,
  `Status` VARCHAR(45) NOT NULL,
  `shortContent` VARCHAR(55) NULL,
  PRIMARY KEY (`ID`));
CREATE USER 'wfapp'@'%' IDENTIFIED BY 'wfapp';
GRANT ALL PRIVILEGES ON `workflow` . * TO 'wfapp'@'%';
FLUSH PRIVILEGES;
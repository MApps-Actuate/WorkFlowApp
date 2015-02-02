/**
 * Workflow Database Creation Script
 * 
 * Assumptions:
 * 
 */

CREATE DATABASE workflow;


delimiter $$
	
USE workflow;
	
SET FOREIGN_KEY_CHECKS=0;	

/*
 * comments table contains all the information needed for workflow.  The report full name includes path.
 * the user is the BIRT login user name and status is where the report is in the workflow process.
 * 
 */
	   DROP TABLE IF EXISTS comments;

	   CREATE TABLE comments (
	   		ID  bigint(20) unsigned NOT NULL auto_increment,
	   		cKey varchar(50) NOT NULL,
	   		Content  mediumtext NOT NULL,
	   		cDate DATETIME NOT NULL,
	   		cUser varchar(45) NOT NULL,
	   		FullReportName varchar(256) NOT NULL,
	   		Status varchar(45) NOT NULL,
	   		shortContent varchar(55) DEFAULT NULL,
        PRIMARY KEY  (`ID`)
		) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

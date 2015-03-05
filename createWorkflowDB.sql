USE [master]
Go

CREATE DATABASE [workflow]
Go

USE [workflow]
Go


/*
 * comments table contains all the information needed for workflow.  The report full name includes path.
 * the user is the BIRT login user name and status is where the report is in the workflow process.
 * 
 */
		
		SET ANSI_NULLS ON
		GO

		SET QUOTED_IDENTIFIER ON
		GO

		SET ANSI_PADDING ON
		GO
		
	   CREATE TABLE [dbo].[comments] (
   			[ID] [int] IDENTITY(1,1) PRIMARY KEY,
   			[cKey] [varchar](50) NOT NULL,
   			[Content]  [nvarchar](MAX) NOT NULL,
   			[cDate] [DATETIME] NOT NULL,
   			[cUser] [varchar](45) NOT NULL,
   			[FullReportName] [varchar](256) NOT NULL,
   			[Status] [varchar](45) NOT NULL,
   			[shortContent] [varchar](55) NULL
		) 
		Go
		
CREATE LOGIN [wfapp] WITH PASSWORD=N'wfapp', DEFAULT_DATABASE=[workflow], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
Go

CREATE USER [wfapp] FOR LOGIN [wfapp] WITH DEFAULT_SCHEMA=[db_datareader]
GO

GRANT SELECT, UPDATE, DELETE, INSERT ON [dbo].[comments] TO [wfapp]
GO



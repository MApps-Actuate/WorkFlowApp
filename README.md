WorkFlowApp
===========

The WorkFlow application shows how to create a simple web application that does CRUD operations in BIRT iHub.

We require:
   - a MySQL database
   - CKEditor.  You can download the CKEditor at http://www.ckeditor.com and install it at <iHub 3.0 URL>/iportal/.
   - SQL Writeback jar files
   - iHub and BDPro
   		

Installment Steps:

1. The SQL Writeback plugin needs to installed for BIRT Designer Pro and iHub.

	For BDPro, copy both SQL Writeback jars to:
		C:\Actuate\BDPro\eclipse\plugins
		
	For iHub, copy the SQL Writeback jar without "UI" in the name to:
		C:\Actuate\BIRTiHubVisualization\modules\BIRTiHub\iHub\MyClasses\eclipse\plugins
	
2. To enable the CKEditor, you need to copy the CKEditor folder of style sheets and javascript files to:

	   C:\Actuate\BIRTiHubVisualization\modules\BIRTiHub\iHub\web\iportal
	   
    You can obtain the latest version of CKEditor from http://www.ckeditor.com
    We found setting config.enterMode = CKEDITOR.ENTER_BR; in config.js made for a better experience.
    
3. Create the MySQL Workflow database:
	a. Create the user that is going to own the Workflow database.  See MySQL documentation for details.
	    (You can use the default "root/root".)
	b. Create the workflow database while logged into MySQL as the user in step a by executing:
		CREATE DATABASE workflow;
	c. Create the comments table in the workflow database by running the script: createWorkflowDB.sql  
	
4. Deploy the Workflow Application in iHub:
	a. Publish the WorkflowApp from BD Pro to iHub using the Publish Project option, if available.
	b. Create 2 User Groups in iHub called 'Reviewer' and 'Approver.'
    c. You need a minimum of 2 users, assign 1 to the Reviewer group and the other to the Approver group.  Do not assign a user to both groups.  Do not assign an administrator to either group.

5. Test the application by logging in as your admin user and as the two users in the different groups.  If on the same workstation, use different browsers (Chrome, FF, IE) for each user to work the application at the same time.
   You should see different functionality, depending the user that you are logged in as.
   
Usage Instructions:

For a great overview of the Workflow demo, please read the WorkFlow App power point (WorkFlowApp.ppsx).

----Insert Scripts

--A.UserRole Table
insert into UserRole values('Adminstrator','ADMIN', GETDATE(),GETDATE())
insert into UserRole values('Service Provider','SPDR', GETDATE(),GETDATE())
insert into UserRole values('User','USER', GETDATE(),GETDATE())

--B.Users Table

INSERT INTO [dbo].[Users]
           ([Username]
           ,[Password]
           ,[FirstName]
           ,[MiddleName]
           ,[LastName]
           ,[EmailAddress]
           ,[Telephone]
           ,[Country]
           ,[DOB]
           ,[RegDocumentPath]
           ,[Address1]
           ,[Address2]
           ,[City]
           ,[CreatedDate]
           ,[ModifiedDate]
           ,[CreatedByID]
           ,[ModifiedByID]
           ,[UserRoleID])
     VALUES
           ('admin'
           ,'admin'
           ,'Sam'
           ,'V'
           ,'George'
           ,'Sam@gmail.com'
           ,'9785668965'
           ,'Germany'
           ,null
           ,null
           ,'Karlstrasse'
           ,'2'
           ,'Duisburg'
           ,GETDATE()
           ,GETDATE()
           ,1
           ,1
           ,1)




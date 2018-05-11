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
           ,[ProfileImg]
           ,[Address]
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
           ,'Duisburg'
           ,GETDATE()
           ,GETDATE()
           ,1
           ,1
           ,3)



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
           ,[ProfileImg]
           ,[Address]
           ,[City]
           ,[CreatedDate]
           ,[ModifiedDate]
           ,[CreatedByID]
           ,[ModifiedByID]
           ,[UserRoleID])
     VALUES
           ('user'
           ,'user'
           ,'Joey'
           ,'Neil'
           ,'Matthew'
           ,'Matthew121@gmail.com'
           ,'9778996965'
           ,'America'
           ,null
           ,null
           ,'Norltrse'
           ,'Louisville'
           ,GETDATE()
           ,GETDATE()
           ,1
           ,1
           ,3)

		   
--C.Region Table
Insert into Region values ('Germany','DE')
Insert into Region values ('Pakisthan','PK')
Insert into Region values ('India','IN')
Insert into Region values ('American','AM')


--D.FoodRecipe Table
Insert into FoodRecipe values ('Apple Pie',
'A classic American dish, the apple pie has a filling of fresh apples, which get caramelised when baked, with a hint of cinnamon. The sweet filling of apples with the crunchy pastry of the pie makes this a wonderful dish! Ingradients including: 125 gms flour;100 gms butter(cold);2 Tbsp water;1 egg;1 apple (peeled and thinly sliced);2 Tbsp of brown sugar;Pinch of cinnamon powder ',
'1.In a bowl lightly knead flour with the cold butter.2.Add few spoons of water to make the dough compact.3.Pack the dough in a plastic film and rest for half an hour in the fridge.4.Place the apples in a bowl. Mix some brown sugar and cinnamon to the apples.5.Once the dough is set place it between two plastic cling film sheets and roll it out to form a flat round disc.6.Place the apples in a baking dish.7.Remove the cling film sheets from the rolled out dough and place it on top of the apples.8.Make incisions using a fork to the dough for the air to escape.9.Brush the pastry with whisked egg.10.Bake the pie at 200°C for 15 minutes, then lower the temperature to 180°C and let it bake for another 20 minutes.',
'VEG',
'MOR',
4,
2,
'Joey Matthew',
2,
'Easy')

--Use this query to add the following columns if FoodRecipe table exist in your database already
ALTER TABLE FoodRecipe
ADD Chef [nvarchar](max) NULL,TotalCookTime   [int] NULL,DifficultyLevel [nvarchar](max) NULL ;



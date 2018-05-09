
select * from Users
select * from UserRole

--web api sql queries

SELECT U.FirstName, UR.UserRoleName,U.Telephone
FROM  Users U
INNER JOIN UserRole UR ON U.UserRoleID=UR.UserRoleID; 
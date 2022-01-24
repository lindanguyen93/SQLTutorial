--CREATE TABLE AND INSERT INTO : 

Create Table EmployeeDemographics
(EmployeeID int ,
FirstName varchar (50),
LastName varchar (50),
Age int,
Gender varchar (50),
Nationality varchar (50)
)

Insert into EmployeeDemographics values
(101, 'Anna','Smith', 27, 'Female', 'Australian'),
(102, 'Angie', 'Martin', 29, 'Female', 'Australian'),
(103, 'Phuong', 'Nguyen',41, 'Female', 'Vietnamese'),
(104, 'John', 'Lee',31, 'Male', 'Australian'),
(105, 'Burh', 'Saskan',35, 'Male', 'Indian'),
(106, 'Austin', 'Cooper',36, 'Male', 'American'),
(107, 'Lily', 'June',28 ,'Female', 'Australian')


Create Table EmployeeSalary
(EmployeeID int,
JobTitle varchar (50),
Salary int )

Insert into EmployeeSalary values
(101, 'Salesman', 41000),
(102, 'Receptionist', 30000),
(103, 'Salesman', 53000),
(104, 'Accountant', 37000),
(105, 'HR', 52000),
(106, 'Regional Manager', 70000),
(107, 'Supplier Relations', 42000)



--SELECT STATEMENT: Top, Distinct, Count, As, Max, Min, Avg

Select *
--Select LastName,LastName
--Select Top 5 *
--Select distinct (EmplyeeID)
--Select distinct (Gender)
From EmployeeDemographics


Select Count (LastName) AS LastNameCount
--Select Max(Salary) as MaxSalary
--Select AVG (Salary) as AvgSalary
From EmployeeSalary

Select *
From SQLTutorial.dbo.EmployeeSalary



--WHERE STATEMENT: =, <> does not equal, <, >, and, or, like, null, not null, in = equal in multiple things

Select *
From EmployeeDemographics
Where FirstName ='Anna' 
--where FirstName IN ('Anna', 'John')  
--Where FirstName <> 'Anna' AND LastName IS NOT NULL
--Where Age >30 and Nationality like '%Aus%' --contain Aus
--Where FirstName like '%n' --end by letter n,   if 'A%' begin with A


--GROUP BY, ORDER BY

Select Gender, Age, COUNT (Gender) As CountGender
From EmployeeDemographics
Where Age >30
Group By Gender, Age

Select *
From EmployeeDemographics
Where Age >25
Order By 4 desc, 5 Desc


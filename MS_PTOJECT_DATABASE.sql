create database MS_PROJECT_2
use MS_PROJECT_2

create table Tbl_Users
(Id int primary key identity,
F_Name varchar(50),
L_Name varchar(50),
Email varchar(50) unique,
Gender varchar(10),
Password varchar(50),
Profile_Image varchar(max),
isactive bit,
isverified bit,  
Create_On datetime,
Update_On datetime
)

Create table Verified_Account
(Id int primary key identity,
OTP varchar(10),
SendTime datetime,
UserId int foreign key references Tbl_Users(Id))
alter table verified_account alter column userid varchar(20)
alter table verified_account add SendTime datetime
alter table verified_account drop constraint FK__Verified___UserI__3C69FB99
select * from Verified_Account
select * from Tbl_Users
truncate table tbl_users
truncate table verified_account

CREATE TABLE Author(Id INT PRIMARY KEY IDENTITY,
Name VARCHAR(50),
Mobile VARCHAR(20),
Email VARCHAR(50))

CREATE TABLE Books(
Id INT PRIMARY KEY IDENTITY,
Title VARCHAR(50),
Price MONEY,
Quantity INT,
Published_On VARCHAR(50),
Author_Id int FOREIGN KEY REFERENCES Author(Id))

select * from Books
select * from Author

INSERT INTO author(name,mobile,email)VALUES
('Shashi Ram','73646544','shashi@gmail.com'),
('Ankit Kumar','84643723','ankit@gmail.com'),
('Anchal Singh','93434343','anchal@gmail.com'),
('Ratnesh Ravi','98343344','ratnesh@gmail.com')
INSERT INTO Books(title,price,quantity,published_on,Author_Id) values
('Dotnet',1200,100,GETDATE(),1),
('CSS',1500,600,GETDATE(),1),
('Java',1300,500,GETDATE(),3),
('HTML',1000,400,GETDATE(),4),
('Bootstrap',1800,300,GETDATE(),1),
('Java Script',1050,200,GETDATE(),2),
('Jquery',1120,100,GETDATE(),3),
('Ajax',2000,700,GETDATE(),4),
('Python',2100,420,GETDATE(),2),
('Angular',1400,460,GETDATE(),1),
('React',1600,720,GETDATE(),2),
('C sharp',1420,100,GETDATE(),3),
('Node js ',1850,100,GETDATE(),4),
('C Programming',2540,100,GETDATE(),1),
('C++ Programming',2460,180,GETDATE(),4),
('Fortran',1460,200,GETDATE(),4),
('F-Script',2860,150,GETDATE(),3),
('PHP',4500,550,GETDATE(),1)








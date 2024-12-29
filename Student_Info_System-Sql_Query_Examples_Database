 

DROP DATABASE Student_Info_System 

 

Create database Student_Info_System 

Use Student_Info_System 

 

Create Table Students ( 

StudentID	int identity(1,1) primary key, 

FirstName	nvarchar(30) not null,  

LastName	nvarchar(30) not null, 

Bdate		datetime not null,		 

Email		nvarchar(70) not null 

); 

 

Create Table Department ( 

DeptID		char(7) not null primary key,   -- YYYYMON 2010Sep   

DeptName	nvarchar(70) not null, 

Addr		nvarchar(70) not null, 

); 

 

Create Table Instructors ( 

InstructorID	int identity(1,1) primary key, 

FirstName		nvarchar(30) not null, 

LastName		nvarchar(30) not null, 

Salary			money not null, 

DepartmentID	char(7) references Department(DeptID) not null, 

); 

 

Create Table Courses( 

CourseID		int identity(1,1) primary key, 

CourseName		varchar(50) not null, 

DepartmentID	char(7) references Department(DeptID) not null, 

InsID			int references Instructors(InstructorID) not null, 

); 

 

Create Table Enrollments( 

StID	int references Students(StudentID), 

CID		int references Courses(CourseID), 

Grade	char(2) not null		 

); 

 

 

Insert into Students (FirstName,LastName,Bdate,Email)    values ('Ahmet', 'Varsoy', '12-09-1995', 'avarsoy@anadolu.edu.tr') 

INSERT INTO Students (FirstName, LastName, Bdate, Email) VALUES ('Hasan', 'Tarcan', '01-01-1990', 'andrii@anadolu.edu.tr'); 

INSERT INTO Students (FirstName, LastName, Bdate, Email) VALUES ('Merve', 'Boz', '01-01-1991', 'mboz@anadolu.edu.tr'); 

INSERT INTO Students (FirstName, LastName, Bdate, Email) VALUES ('Emre', 'Aydın', '04-05-1992', 'emre@anadolu.edu.tr'); 

INSERT INTO Students (FirstName, LastName, Bdate, Email) VALUES ('Gökay', 'Demirkıran', '12-08-1990', 'gok@hotmail.com'); 

INSERT INTO Students (FirstName, LastName, Bdate, Email) VALUES ('Latif', 'Sağlam', '02-02-1987', 'latif@hotmail.com'); 

INSERT INTO Students (FirstName, LastName, Bdate, Email) VALUES ('Emrah', 'Demir', '01-05-1989', 'emrah@anadolu.edu.tr'); 

INSERT INTO Students (FirstName, LastName, Bdate, Email) VALUES ('Burçin', 'Yazgı', '09-14-1992', 'burcin@anadolu.edu.tr'); 

INSERT INTO Students (FirstName, LastName, Bdate, Email) VALUES ('Nurettin', 'Kaygusuz', '08-08-1989', 'nuri@anadolu.edu.tr'); 

 

INSERT INTO Department (DeptID, DeptName, Addr) VALUES ('BIM', 'Computer Engineering', 'Iki Eylül Campus'); 

INSERT INTO Department (DeptID, DeptName, Addr) VALUES ('EEM', 'Electric-Electronic Engineering', 'Iki Eylül Campus'); 

INSERT INTO Department (DeptID, DeptName, Addr) VALUES ('END', 'Industrial Engineering', 'Iki Eylül Campus'); 

INSERT INTO Department (DeptID, DeptName, Addr) VALUES ('KIM', 'Chemical Engineering', 'Iki Eylül Campus'); 

INSERT INTO Department (DeptID, DeptName, Addr) VALUES ('MLZ', 'Material Science Engineering', 'Iki Eylül Campus'); 

INSERT INTO Department (DeptID, DeptName, Addr) VALUES ('CEV', 'Environment Engineering', 'Iki Eylül Campus'); 

INSERT INTO Department (DeptID, DeptName, Addr) VALUES ('MIM', 'Architecture', 'Iki Eylül Campus'); 

 

INSERT INTO Instructors (FirstName, LastName, Salary, DepartmentID) VALUES ('Yaşar', 'HOŞCAN', 4350.75, 'BIM'); 

INSERT INTO Instructors (FirstName, LastName, Salary, DepartmentID) VALUES ('Cihan', 'KALELI', 4268.75, 'BIM'); 

INSERT INTO Instructors (FirstName, LastName, Salary, DepartmentID) VALUES ('Alper', 'BİLGE', 4043.75, 'BIM'); 

INSERT INTO Instructors (FirstName, LastName, Salary, DepartmentID) VALUES ('Mehmet', 'ÖKSÜZ', 4721.75, 'EEM'); 

INSERT INTO Instructors (FirstName, LastName, Salary, DepartmentID) VALUES ('Ahmet', 'AKÇAY', 5233.75, 'EEM'); 

INSERT INTO Instructors (FirstName, LastName, Salary, DepartmentID) VALUES ('Savaş', 'TOPUZ', 4879.75, 'END'); 

INSERT INTO Instructors (FirstName, LastName, Salary, DepartmentID) VALUES ('İbrahim', 'USLU', 4330, 'END'); 

INSERT INTO Instructors (FirstName, LastName, Salary, DepartmentID) VALUES ('Nuray', 'AT', 4158, 'EEM'); 

INSERT INTO Instructors (FirstName, LastName, Salary, DepartmentID) VALUES ('Ferdi', 'GERÇEL', 6258, 'KIM'); 

 

INSERT INTO Courses VALUES ('App of DBMS', 'BIM', 6); 

INSERT INTO Courses VALUES ('Operating Systems', 'BIM', 2); 

INSERT INTO Courses VALUES ('Intro to Material Science', 'MLZ', 4); 

INSERT INTO Courses VALUES ('Ergonomics', 'END', 6); 

INSERT INTO Courses VALUES ('Mobile Programming 1', 'BIM', 1); 

INSERT INTO Courses VALUES ('Database Management Systems', 'BIM', 2); 

INSERT INTO Courses VALUES ('Mobile Programming 1', 'BIM', 3); 

INSERT INTO Courses VALUES ('Intro to Communications', 'EEM', 5); 

INSERT INTO Courses VALUES ('Circuit Analysis', 'EEM', 4); 

INSERT INTO Courses VALUES ('Nothing', 'BIM', 2); 

 

INSERT INTO Enrollments VALUES (1, 1, 'AA'); 

INSERT INTO Enrollments VALUES (1, 2, 'BA'); 

INSERT INTO Enrollments VALUES (1, 3, 'BB'); 

INSERT INTO Enrollments VALUES (2, 1, 'BB');V 

INSERT INTO Enrollments VALUES (2, 2, 'AB'); 

INSERT INTO Enrollments VALUES (2, 4, 'BA'); 

INSERT INTO Enrollments VALUES (3, 1, 'BB'); 

INSERT INTO Enrollments VALUES (3, 5, 'AB'); 

INSERT INTO Enrollments VALUES (4, 6, 'CC'); 

# Problem Title: Create Student table 
# Student Schema :(View in Readme file)
Author - Saurabh Kumar
@Copyright 2021
[Github](https://github.com/Saurabh2509)


#create deparment table
Create Table Department(
Department_ID NUMBER Primary Key Not Null,
Department_Name Varchar(30) Not NULL,
Department_Block_Number Number Not NULL
);

#Inserting data to table
Insert All
into Department  values(101,'CS',1)
into Department values(202,'EC',2)
into Department values(303,'ME',3)
into Department values(404,'Civil',4)
into Department values(505,'EEE',5)
into Department values(707,'BCA',1)
into Department values(807,'B.Com',1)
into Department values(907,'BE',1)
Select 1 from dual;


#creating Student table
Create Table Student(
Student_ID Number Primary Key Not Null,
Student_Name Varchar(30) ,
Address Varchar(40),
City Varchar(30),
Department_ID Number,
CONSTRAINT fk_Student
Foreign key (Department_ID) REFERENCES Department(Department_ID)
);

#inserting data to table
Insert All
into Student(Student_ID,Student_Name,Address,City,Department_ID) values(11,'ASaurabha','CLG','BGP',101)
into Student(Student_ID,Student_Name,Address,City,Department_ID) values(12,'Abhijeeta','PYG','PRYJ',202)
into Student(Student_ID,Student_Name,Address,City,Department_ID) values(13,'Akasha','CNB','CND',303)
into Student(Student_ID,Student_Name,Address,City,Department_ID) values(14,'AArushia','LKO','LKU',404)
into Student(Student_ID,Student_Name,Address,City,Department_ID) values(15,'AyushTopa','LKO','Charbaag',505)
Select 1 From Dual;


#creating table Staff
Create Table Staff(
Staff_ID Number Primary Key Not Null,
Staff_Name Varchar(30),
Department_ID Number,
CONSTRAINT fk_Staff
FOREIGN KEY (Department_ID)
REFERENCES Department(Department_ID)
);

#inserting data to table satff
Insert All
into Staff values(1001,'Saurabh',101)
into Staff values(1005,'Abhijeet',202)
into Staff values(1020,'Aakash',101)
into Staff values(1030,'Aarush',202)
into Staff values(1034,'Ayush',303)
select * from dual;


#creating table subject
Create Table Subject(
Subject_ID Number Primary Key Not Null,
Subject_Name Varchar(30),
Subject_Code Varchar(10),
Staff_ID Number,
CONSTRAINT fk_Subject
FOREIGN KEY (Staff_ID)
REFERENCES Staff(Staff_ID)
);

#inerting data into table  subject
Insert All
into Subject values(5555,'Data-Structure','DS05',1001)
into Subject values(9999,'Machine-Learning','Ml05',1001)
into Subject values(2222,'Java','JS05',1020)
into Subject values(1111,'Software-Testing','ST05',1034)
into Subject values(3333,'Micro-processor','MP05',1005)
into Subject values(4444,'Deep-Learning','Dl05',1030)
select * from dual;


#creating table mark
Create Table Mark(
Value Number,
Student_ID Number Primary Key Not Null,
Subject_ID Number,
CONSTRAINT fk_Mark
FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
FOREIGN KEY (Subject_ID) REFERENCES Subject(Subject_ID)
);

#inserting data to table mark
Insert All
Into Mark values(95,11,5555)
into Mark values(93,12,9999)
into Mark values(80,13,1111)
into Mark values(88,14,3333)
into Mark values(95,15,4444)
Select * from dual;



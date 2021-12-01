# Create the given below Schema :
#(shown in README.MD file)
Author - Saurabh Kumar
@Copyright 2021

#creating table users
Create Table Users(
User_ID Number(11) Not null Primary Key,
Name Varchar2(20),
Address Varchar2(100),
PHNo Number(11),
Email_id Varchar(30)
);
#insert data into table
Insert into Users Values(1, 'Ram','CLG',113453, 'ram1234@gmail.com');
Insert into Users Values(5, 'Saurabh','BGP',1156453, 'gupta1234@gmail.com');


#creating tbale Buses
Create table Buses(
Bus_No Number(11) Primary Key Not Null,
Bus_Name varchar2(20),
Type Varchar2(20),
Total_Seats Number(11),
Avail_Seats Number(11)
);
#insert into Buses
Insert into Buses Values(123, 'Volvo','SLP',50,20);
Insert into Buses Values(498, 'Gati','SLP',60,15);

#creating table Schedule
Create Table Schedule(
Schedule_ID Varchar2(3),
Source Varchar2(20),
Destination Varchar2(20),
Bus_No Number(11) Not Null,
Duration Number(11),
CONSTRAINT FK_Schedule
FOREIGN KEY (Bus_No) REFERENCES Buses(Bus_No)
);
#inserting data
Insert into Schedule(Schedule_ID,Source,Destination,Bus_No,Duration) values('S2', 'CNB','ABVT',498, 10);
Insert into Schedule(Schedule_ID,Source,Destination,Bus_No,Duration) values('S5', 'PRYJ','ABVT',123, 5);

#creating table Tickets
create Table Tickets(
Ticket_ID Varchar2(3) Primary Key Not Null,
Schedule_ID  Varchar2(3),
Fare Number(11),
User_ID Number(11),
No_Seats Number(11),
CONSTRAINT fk_Tickets
FOREIGN KEY (Schedule_ID) REFERENCES Schedule(Schedule_ID),
FOREIGN KEY (User_ID) REFERENCES Users(User_ID)
);

#inserting data
Insert into Tickets values('T1','S5',NUll,1,2);
Insert into Tickets values('T2','S2',NUll,5,1);

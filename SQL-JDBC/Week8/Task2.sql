Author ~ Saurabh Kumar
@Copyright 2021

#Problem Title: Salesmen from New York
#Problem Statment: Write a query to create a view for those salesmen belongs to the city New York.
#Refer the following schema(Readme.md file)

#create table salesman
Create Table Salesman (
salesman_id  Number(5) Not null Primary key,
Name varchar(30),
City varchar(15),
Commission decimal(5,2)
);

#inserting values
Insert All
into Salesman values(5001,'James Hoog','New York',0.15)
into Salesman values(5002,'Nail Knite','Paris', 0.13)
into Salesman values(5005,'Pit Alex', 'London',0.11)
into Salesman values(5006,'Mc Lyon','Paris',0.14)
into Salesman values(5007,'Paul Adam','Rome',0.13)
into Salesman values(5003,'Lauson Hen', 'San Jose',0.12)
Select * from dual;

#creating customer table
Create table Customer (
Customer_ID  Numeric(5) Not null Primary key,
Cust_Name  varchar(30) ,
City varchar(15),
Grade Numeric(3),
Salesman_ID Numeric(3),
CONSTRAINT fk_Customer
Foreign key (Salesman_ID) References Salesman(Salesman_id)
);


#Problem Title: Create Index on Customer table
#Create an index named customer_name for the cust_name column of the customer table
#Refer the following schema(Readme.md file)

Create Index Cust_Name on Customer(customer_name);



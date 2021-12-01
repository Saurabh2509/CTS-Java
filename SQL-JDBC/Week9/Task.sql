Author ~ Saurabh Kumar
@Copyright 2021

#Problem Title: Create Sequence
#Problem Statement: Write a PL/SQL query to create an ascending sequence called id_seq, starting from 10,incrementing by 10, minimum value 10, maximum value 100.

CREATE SEQUENCE id_seq
INCREMENT BY 10
START WITH 10
MINVALUE 10
MAXVALUE 100
CYCLE
CACHE 2;


#Problem Title: Use Sequence in a Table Column
#Problem Statement: Create a new table called tasks with the below DDL query
#CREATE TABLE tasks(id NUMBER PRIMARY KEY,title VARCHAR2(255) NOT NULL);
#Create a sequence called task_id_seq for the id column of the tasks table and use it while inserting records to the tasks table:

#creating tasks
Create table Tasks(
id Number Primary key Not Null,
title varchar(255) Not Null
);

#creating sequence task
Create Sequence task_id_seq;

#insert data into tasks
INSERT INTO tasks(id, title)
VALUES(task_id_seq.NEXTVAL, 'Create Sequence in Oracle ');
INSERT INTO tasks(id, title)
VALUES(task_id_seq.NEXTVAL, 'Sunday is  Holiday');
INSERT INTO tasks(id, title)
VALUES(task_id_seq.NEXTVAL, 'Sample Test case');

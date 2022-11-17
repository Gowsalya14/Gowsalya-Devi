 /*1)create a table with four columns of your choice ,Making that they have null constraints*/

create database gowsalya;
use gowsalya;
create table my_table (id int auto_increment primary key , name varchar(30) not null,class varchar(30) default 'ug',age int);
insert into my_table value(01,'siva','pg',22),( 02,'bob','pg',22),(03,'rishi','ug',19),(04,'bala','ug',20),(05,'mugesh','pg',25);
select * from my_table;

/*2)create a sales table having columns ID ,product name ,price per unit and quantity ,and tthen create a view which will show the total cost per each product and product name */

use gowsalya;
create table sales(Columns_ID int(3),Product_Name varchar(20),Price_Per_Unit int,Quantity int );
insert into sales values (001,'laptop',45000,12);
select Product_Name,Price_Per_Unit*Quantity as Total_Price from Sales;

/* 3) for this challenge,use the same table again, your task for this challenge is to return a sum of all the ages in the table.your quaret should*/

use gowsalya;
create table student_sheet(id int, name varchar(10),age int);
insert into student_sheet values ( 1,'Bob',21),(2,'Sam',19),(3,'Jill',18),(4,'Jim',21),(5,'Sally',19),(6,'jess',20),(7,'Will',21);
select sum(age) from student_sheet;

/*4) this is thee table structure that you,ll use for this SQL challenge, the challenge is to write query that'll group all the people by their age,along with a count of the people that are the same age.Here's*/

use gowsalya;
create table student(id int, name varchar(10),age int);
insert into student values ( 1,'Bob',21),(2,'Sam',19),(3,'Jill',18),(4,'Jim',21),(5,'Sally',19),(6,'jess',20),(7,'Will',21);
select count(age) , age from student group by age;

/* 5) in this challenge,your database table is given,your task is to writeba quary for this table that'll return just the division ids for all the divisions that had positive revenue in 2021.*/

use gowsalya;
CREATE TABLE positive_revenue(division INT,Year INT,Revenue INT);
insert into positive_revenue values (1,2018,60),(1,2021,40),(1,2020,70),(2,2021,-10),(3,2018,20),(3,2016,40),(4,2021,50);
select division from positive_revenue where (Revenue > 0 and year = 2021);


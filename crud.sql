create database crud;
use crud;

create table student(fullname varchar(50),email varchar(50) primary key,password varchar(50),contact varchar(10));

desc student;

select * from student;
drop table student;
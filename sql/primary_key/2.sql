create table student_1(
	GR_no numeric(4)  not null,
	roll_no numeric(4) not null,
	name varchar(10),
	city varchar(10),
CONSTRAINT pk_StudentID PRIMARY KEY (GR_no, roll_no)  
)
insert into student_1 values
(1101,1,'Bhim','Dholakpur')
insert into student_1 values
(1102,2,'Chutki','surat')
insert into student_1 values
(1103,3,'Jaggu','Kutch')
insert into student_1 values
(1104,4,'Raju','Bhavnagar')
insert into student_1 values
(1105,5,'kaliya','Dholakpur')

select * from student_1
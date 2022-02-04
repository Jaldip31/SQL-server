create table salesman_master(   
    salesmanno varchar(10),
    salesmanname varchar(10),
    address1 varchar(10),
    address2 varchar(10),
    city varchar(10),
    pincode numeric(10),
    state varchar(22),
    salamt numeric(11),
    tgttoget numeric(10),
    ytdsale numeric(10),
    remark varchar(20),
   
)
insert into salesman_master values ('S00001','Aman','A/14','Worli','Mumbai',400002,'Maharashtra',3000,100,50,'Good')
insert into salesman_master values ('S00002','Omkar','65','Nariman','Mumbai',400001,'Maharashtra',3000,200,100,'Good')
insert into salesman_master values ('S00003','Raj','P-7','Bandra','Mumbai',400032,'Maharashtra',3000,200,100,'Good')
insert into salesman_master values ('S00004','Ashish','A/5','Juhu','Mumbai',400044,'Maharashtra',3500,200,150,'Good')

select * from salesman_master
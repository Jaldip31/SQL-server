create table salesman_master(   
	clientNo varchar(10) REFERENCES client_master,
	productno varchar(10) REFERENCES product_master,
    -- clientNo varchar(10) Not Null,
	-- productno varchar(10) Not Null,
    salesmanno varchar(10) primary key,
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
--	CONSTRAINT FK_sm_cm FOREIGN KEY (clientNo)REFERENCES client_master(clientNo),
--	CONSTRAINT FK_sm_pm FOREIGN KEY (productno)REFERENCES product_master(productno),
)
insert into salesman_master values ('C00001','P00001','S00001','Aman','A/14','Worli','Mumbai',400002,'Maharashtra',3000,100,50,'Good')
insert into salesman_master values ('C00002','P0345','S00002','Omkar','65','Nariman','Mumbai',400001,'Maharashtra',3000,200,100,'Good')
insert into salesman_master values ('C00003','P06734','S00003','Raj','P-7','Bandra','Mumbai',400032,'Maharashtra',3000,200,100,'Good')
insert into salesman_master values ('C00004','P07865','S00004','Ashish','A/5','Juhu','Mumbai',400044,'Maharashtra',3500,200,150,'Good')

select * from salesman_master

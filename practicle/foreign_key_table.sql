--1
create table client_master(
   Clientno varchar(50) primary key,
   Name varchar(50),
   city varchar(50),
   pincode numeric(38),
   state varchar(50),
   baldue numeric(38)
)
insert into client_master values('C00001', 'Ivan', 'Bombay', 400054, 'Maharashtra', 15000)
insert into client_master values('C00002', 'Vandana', 'Madras', 780001, 'Tamilnadu', 0)
insert into client_master values('C00003', 'Pramada', 'Bombay', 400057, 'Maharashtra', 5000)
insert into client_master values('C00004', 'Basu', 'Bombay', 400056, 'Maharashtra', 0)
insert into client_master values('C00005', 'Ravi', 'Delhi', 100001, '', 2000)
insert into client_master values('C00006', 'Rukmini', 'Bombay', 400050, 'Maharashtra', 0)
select * from client_master

--2
create table product_master(
    productno varchar(50) primary key,
    description varchar(50),
    profitpercent numeric(38,2),
    unitmeasured varchar(50),
    qtyonhand numeric(38),
    recorderlvl numeric(38),
    sellprice numeric(38),
    costprice numeric(38)
)
insert into product_master values('P00001','1.44floppies',5,'piece',100,20,525,500)
insert into product_master values('P03453','Monitors',6,'piece',10,3,12000,11200)
insert into product_master values('P06734','Mouse',5,'piece',20,5,1050,500)
insert into product_master values('P07865','1.22 floppies',5,'piece',100,20,525,500)
insert into product_master values('P07868','Keyboards',2,'piece',10,3,3150,3050)
insert into product_master values('P07885','CD Drive',2.50, 'piece',10,3,5250,5100)
insert into product_master values('P07965','540 HDD',4,'piece',10,3,8400,8000)
insert into product_master values('P07975','1.44 Drive',5,'piece',10,3,1050,1000)
insert into product_master values('P08865','1.22 Drive',5,'piece',2,3,1050,1000)
select * from product_master

--3
create table salesman_master(   
    salesman_no varchar(50) primary key,
    salesmanname varchar(50),
    address varchar(50),
    city varchar(50),
    pincode numeric(38),
    state varchar(50),
    salamt numeric(38),
    tgttoget numeric(38),
    ytdsale numeric(38),
    remark varchar(50)
)
insert into salesman_master values ('S00001','Kiran','A/14 worli','Bombay',400002,'Mah',3000,100,50,'Good')
insert into salesman_master values ('S00002','Manish','65,nariman','Bombay',400001,'Mah',3000,200,100,'Good')
insert into salesman_master values ('S00003','Ravi','P-7 Bandra','Bombay',400032,'Mah',3000,200,100,'Good')
insert into salesman_master values ('S00004','Ashish','A/5 Juhu','Bombay',400044,'Mah',3500,200,150,'Good')

select * from salesman_master

--4
create table sales_order(
    orderno varchar(50) primary key,
    orderdate date,
    clientno varchar(50) REFERENCES client_master,
    delytype char(1),
    billyn char(1),
    salesman_no varchar(50) REFERENCES salesman_master,
    delydate date,
    orderstatus varchar(50)
);
insert into sales_order Values('O19001','12-Jan-96','C00001','F','N','S00001','20-Jan-96','In Process');
insert into sales_order Values('O19002','25-Jan-96','C00002','P','N','S00002','27-Jan-96','Cancelled');
insert into sales_order Values('O16865','18-Feb-96','C00003','F','Y','S00003','20-Feb-96','Fulfilled');
insert into sales_order Values('O19003','03-Apr-96','C00001','F','Y','S00001','07-Apr-96','Fulfilled');
insert into sales_order Values('O46866','20-May-96','C00004','P','N','S00002','22-May-96','Cancelled');
insert into sales_order Values('O10008','24-May-96','C00005','F','N','S00004','26-May-96','In Process');

select * from sales_order

--5
create table sales_order_detail(
    orderno varchar(50) references  sales_order, 
    productno varchar(50) references  product_master,
    qtyorderd numeric(38),
    qtydisp numeric(38),
    productrate DEC(10,2)
);

insert into SALES_ORDER_DETAIL values('O19001','P00001','4','4','525');
insert into SALES_ORDER_DETAIL values('O19001','P07965','2','1','8400');
insert into SALES_ORDER_DETAIL values('O19001','P07885','2','1','5250');
insert into SALES_ORDER_DETAIL values('O19002','P00001','10','0','525');
insert into SALES_ORDER_DETAIL values('O16865','P07868','3','3','3150');
insert into SALES_ORDER_DETAIL values('O16865','P07885','10','10','5250');
insert into SALES_ORDER_DETAIL values('O19003','P00001','4','4','1050');
insert into SALES_ORDER_DETAIL values('O19003','P03453','2','2','1050');
insert into SALES_ORDER_DETAIL values('O46866','P06734','1','1','12000');
insert into SALES_ORDER_DETAIL values('O46866','P07965','1','0','8400');
insert into SALES_ORDER_DETAIL values('O10008','P07975','1','0','1050');
insert into SALES_ORDER_DETAIL values('O10008','P00001','10','5','525');

select * from SALES_ORDER_DETAIL


--1
--select client_master.Name,
--	pm.description
	
--from client_master
--inner join sales_order so on so.clientno=client_master.clientno
--inner join sales_order_detail sod on sod.orderno=so.orderno
--inner join product_master pm on sod.productno=pm.productno
--where client_master.Name='Ivan'

--2
-- select pm.description,
-- 	sod.qtydisp
	
-- from client_master
-- inner join sales_order so on so.clientno=client_master.clientno
-- inner join sales_order_detail sod on sod.orderno=so.orderno
-- inner join product_master pm on sod.productno=pm.productno

--3

--4
-- select client_master.Name,
-- 	pm.description
	
-- from client_master
-- inner join sales_order so on so.clientno=client_master.clientno
-- inner join sales_order_detail sod on sod.orderno=so.orderno
-- inner join product_master pm on sod.productno=pm.productno
-- where pm.description='CD Drive'

--5

--6
-- select client_master.Name,
-- 	pm.description,
-- 	sod.qtyorderd
	
-- from client_master
-- inner join sales_order so on so.clientno=client_master.clientno
-- inner join sales_order_detail sod on sod.orderno=so.orderno
-- inner join product_master pm on sod.productno=pm.productno
-- where client_master.Name='Ivan' or client_master.Name='Vandana'

-- 7
-- select client_master.Name,
-- 	pm.description,
-- 	sod.qtyorderd
	
-- from client_master
-- inner join sales_order so on so.clientno=client_master.clientno
-- inner join sales_order_detail sod on sod.orderno=so.orderno
-- inner join product_master pm on sod.productno=pm.productno
-- where client_master.Clientno='C00001' or client_master.Clientno='C00002'



select * from client_master
select * from product_master
select * from salesman_master
select * from sales_order
select * from sales_order_detail


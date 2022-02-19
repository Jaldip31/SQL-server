--1
create table client_master(
   Clientno varchar(50),
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
    productno varchar(50),
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


--Assignment 1  --query
--1
--select Name from client_master

--2
--select Name, city from client_master

--3
--select description from product_master

--4
--select clientno from client_master
--where city = 'Bombay'

--5
--select * from client_master
--where clientno='C00001'or clientno='C00002'

--6
--select * from product_master
--where description='1.44 Drive' or description='1.22 Drive'

--7
--select description from product_master
--where sellprice>5000

--8
--select Name from client_master
--where city = 'Bombay' or city = 'Madras' or city = 'Delhi'

--9
--select description from product_master
--where sellprice<5000 and sellprice>=2000

--10
--select Name,city,state from client_master
--where state not in('Maharashtra')

--Assignment 2  --query

--1
--update product_master
--set costprice=1150
--where description='1.44floppies'

--2
--delete from client_master
--where Clientno='C00001'

--3
--update client_master
--set city='Bombay'
--where Clientno='C00005'

--4

--5
--update product_master
--set sellprice = sellprice*15
--where sellprice>1500

--6
--select Name from client_master
--where city like '_a%'

--7
--select Name from client_master
--where Name like '_a%'

--8
--select * from product_master order by(description) 

--9

--10
--select floor(avg(sellprice)) from product_master

--11
--select min(sellprice) from product_master

--12
--select max(sellprice)max_price,min(sellprice)min_price from product_master

--13
--select count(productno) from product_master
--where sellprice>=1500


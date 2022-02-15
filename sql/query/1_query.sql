--select * from client_master
--a
--where clientname like '_a%'

--b
--where city like 'M%'

--c
--where city='Banglore' or city='manglore' 

--d
--where balDue>10000

--e
-- select *from sales_order
-- where orderdate like '%-06-%'

--f
--select * from sales_order
--where clientno in('C00001','C00002')

--g
--where sellprice >500 and sellprice <=750 

--h
--alter table product_master add new_line numeric(38)
--update product_master
--set new_line=sellprice*15
--where sellprice>500

--i
--select clientname,city,state from client_master
--where state not in('Maharastra')

--select *from product_master
--select * from sales_order

--j
--select sum(qtyorderd) from sales_order_detail

--k
-- select floor(avg(productrate)) from sales_order_detail

--l
-- select min(productrate)min_price ,max(productrate)max_price from sales_order_detail

--m
-- select count(productno)No_of_product from sales_order_detail
-- where productrate<=1000

--n
-- select description from product_master
-- where qtyonhand>recorderlvl




--3
-- select client_master.clientname
-- from client_master
-- inner join salesman_master on salesman_master.clientno=client_master.clientNo
-- inner join product_master on product_master.productno=salesman_master.productno
-- where product_master.description='Shirts'


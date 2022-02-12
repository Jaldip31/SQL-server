--select * from client_master
--a
--where clientname like '_a%'
--b
--where city like 'M%'
--c
--where city='Banglore' or city='manglore' 
--d
--where balDue>10000
--i
--select clientname,city,state from client_master
--where state not in('Maharastra')

--select *from product_master
--select * from sales_order
--e
--where orderdate like '%-06-%'
--g
--where sellprice >500 and sellprice <=750 
--h
--alter table product_master add new_line numeric(38)
--update product_master
--set new_line=sellprice*15
--where sellprice>500

select * from sales_order_detail
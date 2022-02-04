select * from client_master
where clientno = 'C00001'

where clientno,name,state from client_master

where baldue>2000

where baldue in(2000,0) --only 2000 and 0
where baldue not in(2000,0) --without 2000 and 0

where baldue = 5000 and state = 'gujrat'
where baldue = 5000 or state = 'gujrat'

where baldue between 0 and 5000

where name like '%a'
where name like 'a%'
where name like '__a%'
where name like '%a__'
where name like '%a%'

--update
update product_master
set Description='Kurta'
where productNo='P00002'

update product_master
set Description='Kurta',sellprice=300,costprise=200
where productNo='P00002

--delete
delete from product_master
where productNo='P00002'

--alter  -->add column
alter table client_master add city_2 varchar(50)

--delete table
drop table student




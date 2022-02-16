--1
select client_master.clientname,
	product_master.description 
	
from client_master
inner join sales_order on client_master.clientNo=sales_order.clientNo
inner join sales_order_detail on sales_order_detail.orderno=sales_order.orderno
inner join product_master on product_master.productno=sales_order_detail.productno

where client_master.clientname = 'Ivan Baross'

--2
select product_master.description ,
	sales_order_detail.qtyorderd 

from client_master
inner join sales_order on client_master.clientNo=sales_order.clientNo
inner join sales_order_detail on sales_order_detail.orderno=sales_order.orderno
inner join product_master on product_master.productno=sales_order_detail.productno

where sales_order.delydate like '%-07-%'

--4
select client_master.clientname
from client_master
inner join sales_order on client_master.clientNo=sales_order.clientNo
inner join sales_order_detail on sales_order_detail.orderno=sales_order.orderno
inner join product_master on product_master.productno=sales_order_detail.productno

where product_master.description = 'Trousers'

--5
select product_master.description,
	sales_order_detail.qtyorderd
from client_master
inner join sales_order on client_master.clientNo=sales_order.clientNo
inner join sales_order_detail on sales_order_detail.orderno=sales_order.orderno
inner join product_master on product_master.productno=sales_order_detail.productno

where product_master.description = 'Pull Overs'

--6
select client_master.clientname,
	product_master.description ,
	sales_order_detail.qtyorderd

from client_master
inner join sales_order on client_master.clientNo=sales_order.clientNo
inner join sales_order_detail on sales_order_detail.orderno=sales_order.orderno
inner join product_master on product_master.productno=sales_order_detail.productno

where client_master.clientname in ('Ivan Baross','Chhaya Bankar')

--7
select client_master.clientname,
	product_master.description ,
	sales_order_detail.qtyorderd

from client_master
inner join sales_order on client_master.clientNo=sales_order.clientNo
inner join sales_order_detail on sales_order_detail.orderno=sales_order.orderno
inner join product_master on product_master.productno=sales_order_detail.productno

where client_master.clientNo in ('C00001','C00003')

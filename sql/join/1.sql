select client_master.clientname,
		client_master.clientNo,
		sales_order.orderno,
		sales_order_detail.productno,
		product_master.description
from client_master
inner join sales_order on client_master.clientNo=sales_order.clientNo
inner join sales_order_detail on sales_order.orderno=sales_order_detail.orderno
inner join product_master on sales_order_detail.productno=product_master.productno
where client_master.clientNo='C00001'
create table sales_order_detail(
    orderno varchar(10) references  sales_order, 
    productno varchar(10) references  product_master,
    qtyorderd numeric(8),
    qtydisp numeric(8),
    productrate DEC(10,2)
);

insert into SALES_ORDER_DETAIL values('O19001','P00001','4','4','525');
insert into SALES_ORDER_DETAIL values('O19001','P06734','2','1','8400');
insert into SALES_ORDER_DETAIL values('O19001','P0345','2','1','5250');
insert into SALES_ORDER_DETAIL values('O19002','P00001','10','0','525');
insert into SALES_ORDER_DETAIL values('O19001','P08865','3','3','3150');
insert into SALES_ORDER_DETAIL values('O19002','P07975','3','1','5250');
insert into SALES_ORDER_DETAIL values('O19003','P00001','10','10','525');
insert into SALES_ORDER_DETAIL values('O19004','P07965','4','4','1050');
insert into SALES_ORDER_DETAIL values('O19003','P07885','2','2','1050');
insert into SALES_ORDER_DETAIL values('O19003','P07865','1','1','12000');
insert into SALES_ORDER_DETAIL values('O19002','P00001','1','0','8400');
insert into SALES_ORDER_DETAIL values('O19001','P0345','1','0','1050');
insert into SALES_ORDER_DETAIL values('O19003','P00001','10','5','525');
insert into SALES_ORDER_DETAIL values('O19004','P06734','5','3','1050');

select * from SALES_ORDER_DETAIL
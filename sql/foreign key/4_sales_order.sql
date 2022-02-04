create table sales_order(
    orderno varchar(10) primary key,
    clientno varchar(10) REFERENCES client_master,
    orderdate date,
    delyaddr varchar(25),
    salesmanno varchar(6),
    delytype char(1),
    billyn char(1),
    delydate date,
    orderstatus varchar(10)

);

insert into sales_order Values('O19001','C00001','12-June-04','Surat','S00001','F','N','20-July-02','In Process');
insert into sales_order Values('O19006','C00002','25-June-04','Ahemadabad','S00002','P','N','27-June-02','Cancelled');
insert into sales_order Values('O19002','C00003','18-Feb-04', 'Bharuch','S00003','F','Y','20-Feb-02','Fulfilled');
insert into sales_order Values('O19003','C00004','03-Apr-04', 'Navsari','S00001','F','Y','07-Apr-02','Fulfilled');
insert into sales_order Values('O19004','C00005','20-May-04', 'Valsad','S00002','P','N','22-May-02','Cancelled');
insert into sales_order Values('O19005','C00006','24-May-04', 'Vapi','S00003','F','N','26-July-02','In Process');

select * from sales_order

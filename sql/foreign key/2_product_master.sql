create table product_master(
    productno varchar(10) primary key,
    description varchar(50),
    profitpercent numeric(10),
    unitmeasure varchar(50),
    qtyonhand numeric(10),
    recorderlvl numeric(10),
    sellprice numeric(10),
    costprice numeric(10),
)

insert into product_master values('P00001', 'T-Shirts', 5, 'Piece', 200,50,350,250)
insert into product_master values('P0345','Shirts',6,'Piece',150,50,500,350)
insert into product_master values('P06734','Cotton Jeans',5,'Piece',100,20,600,450)
insert into product_master values('P07865','Jeans',5,'Piece',100,20,750,500)
insert into product_master values('P07868','Trousers',2,'Piece',150,20,850,550)
insert into product_master values('P07885','Pull Overs',2.5,'Piece',80,30,700,450)
insert into product_master values('P07965','Denim Shirts',4,'Piece',100,40,350,250)
insert into product_master values('P07975','Lycra Tops',5,'Piece',70,30,300,175)
insert into product_master values('P08865','Skirts',5,'Piece',75,30,450,300)
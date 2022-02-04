create table client_master(
    clientNo varchar(10) primary key,
    clientname varchar(20),
    city varchar(10),
    pincode numeric(6),
    state varchar(20),
    baldue numeric(10) 
)
insert into client_master values('C00001', 'Ivan Baross', 'Mumbai', 400054, 'Maharastra', 15000)
insert into client_master values('C00002', 'Mamta Muzumdar', 'Madras', 780001, 'TamilNadu', 0)
insert into client_master values('C00003', 'Chhaya Bankar', 'Mumbai', 400057, 'Maharastra', 5000)
insert into client_master values('C00004', 'Ashwini Joshi', 'Banglore', 560001, 'Karnataka', 0)
insert into client_master values('C00005', 'Hansel Colaco', 'Mumbai', 400060, 'Maharastra', 2000)
insert into client_master values('C00006', 'Deepak Sharma', 'Manglore', 560050, 'Karnataka', 0)
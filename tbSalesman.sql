
create table tbSalesman(kodeSalesman char(5) primary key not null , namaSalesman varchar (40) not null, noTlpSalesman char(15), alamatSales varchar (40),
kotaSalesman varchar (20), JKSalesman char(1))
go

insert into tbSalesman values ('S0001','Adrian Chen','081234567890','Jln. Maju tak gentar','Palembang','L')
insert into tbSalesman values ('S0002','Andre Kurniawan','0872123980112','Jln. Apa Saja no 75','Durian','L')
insert into tbSalesman values ('S0003','Christian Richie Wijaya','0812389122','Jln.Mendiang No 430','Sabang','L')
insert into tbSalesman values ('S0004', 'Hansen','08738912982','Jln.Aneh No 90','Medan','L')

sp_help tbSalesman

select * from tbSalesman

use lol
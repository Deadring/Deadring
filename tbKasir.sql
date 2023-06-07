

create table tbKasir(KodeKasir char(5) primary key not null , namaKasir varchar (40) not null, noTlpKasir char(15), alamatKasir varchar (40),
kotaKasir varchar (20), JKKasir char(1))
go

use lol
select * from tbKasir
sp_help tbKasir


insert into tbKasir values ('K0005', 'Steven Tribethran', '085728996767','Jln. Perunas no 80', 'Jakarta', 'L')
insert into tbKasir values ('K0006', 'Neilsen Nicholas Komah', '08132789288','Gang Rukun', 'Bandung', 'L')
insert into tbKasir values ('K0007', 'Rio Ferdinand', '08281302182','Perumahan Bahagia No 23', 'Binjai', 'L')





create database dbProjectBD2
go
use dbProjectBD2
go

CREATE TABLE tbPelanggan (
  kode_pelanggan CHAR(5) PRIMARY KEY NOT NULL,
  nama_pelanggan VARCHAR(40) NOT NULL,
  no_telpon CHAR(15) NOT NULL,
  alamat VARCHAR(40),
  kota VARCHAR(20)
)

CREATE TABLE tbKasir (
  kode_kasir CHAR(5) PRIMARY KEY NOT NULL,
  nama_kasir VARCHAR(40) NOT NULL,
  no_telpon CHAR(15),
  alamat VARCHAR(40),
  kota VARCHAR(20),
  jenis_kelamin CHAR(1)
)

CREATE TABLE tbSalesman (
  kode_salesman CHAR(5) PRIMARY KEY NOT NULL,
  nama_salesman VARCHAR(40) NOT NULL,
  no_telpon CHAR(15),
  alamat VARCHAR(40),
  kota VARCHAR(20),
  jenis_kelamin CHAR(1)
)

CREATE TABLE tbBarang (
  kode_barang CHAR(5) PRIMARY KEY NOT NULL,
  nama_barang VARCHAR(40) NOT NULL,
  satuan CHAR(6),
  harga_barang MONEY,
  stok INT
)

select * from tbBarang
select * from tbSalesman
select * from tbKasir
select * from tbPelanggan


INSERT INTO tbPelanggan (kode_pelanggan, nama_pelanggan, no_telpon, alamat, kota)
VALUES
  ('P0001', 'Adrian Chen', '08125234777', 'Jln.Rajawali no 10', 'Palembang'),
  ('P0002', 'Andre Kurniawan', '085380795500', 'Jln. Rahayu', 'Musirawas'),
  ('P0003', 'Christian Richie Wijaya', '087800037118', 'Jln.H Faqih Usman', 'Balikpapan'),
  ('P0004', 'Hansen', '08996649147', 'Jln. Sei Hitam', 'Palembang'),
  ('P0005', 'Steven Tribethran', '081367672739', 'Jln. Sako Baru', 'Jakarta'),
  ('P0006', 'Rio Ferdynand', '082179162552', 'Jln. Ayani', 'Palembang'),
  ('P0007', 'Neilsen Nicholas Komah', '089120242500', 'Jln. Pendawa', 'Lahat'),
  ('P0008', 'Juminten', '081352645256', 'Jln.Salah', 'Jakarta'),
  ('P0009', 'Jaka Tarub', '082121212121', 'Jln.Yang Benar', 'Papua'),
  ('P0010', 'Siti Sintia', '081234567890', 'Jln.SetengahBenar', 'Bekasi'),
  ('P0011', 'Joko Slamet', '081300007979', 'Jln. Pintas', 'Bandung'),
  ('P0012', 'Wahyu Gunawan', '081269969669', 'Jln. Hooh', 'Jambi'),
  ('P0013', 'Ariel Piterpen', '08773777777', 'Jln. Merah', 'Bogor'),
  ('P0014', 'Raffi Cahyadi Ahmad', '0812000000001', 'Jln. Marah', 'Cimahi'),
  ('P0015', 'Alexander Graham Bell', '081913290458', 'Gg. Gajah', 'Cirebon'),
  ('P0016', 'Elon Musk', '081720397241', 'Gg. Semut', 'Batam'),
  ('P0017', 'Issac Newton', '0828712309701', 'Komplek Nusantara', 'Ternate'),
  ('P0018', 'Dendi Buldozer', '081289123890', 'Perumahan Sultan', 'Madiun'),
  ('P0019', 'Mulyadi Anwar', '0811248989412', 'Jln. Ilir Barat 1', 'Malang'),
  ('P0020', 'Bambang Cahaya Utama', '081239808091', 'Jln. Mahoni', 'Mojokerto'),
  ('P0021', 'Intan Puspita Sari', '081237891723', 'Jln.Manggis', 'Banjarmasin'),
  ('P0022', 'Manda Sri Wahyuni', '087849171212', 'Jln. Apa Saja', 'Balikpapan'),
  ('P0023', 'Robert Downey Senior', '0813289012370', 'Jln.Purba', 'Baubau'),
  ('P0024', 'Bruce Banner', '08714892908', 'Jln. Kebenaran', 'Sibolga'),
  ('P0025', 'Tom Hallond', '08192831233', 'Jln. Setan Marah', 'Malang'),
  ('P0026', 'Jimin Utomo', '084712894788', 'Jln Bahagia', 'Bogor'),
  ('P0027', 'Park Jihyo', '089182312389', 'Komplek Rukun', 'Jambi'),
  ('P0028', 'Wendy Agustina', '081238908129', 'Gg. Suci', 'Bekasi'),
  ('P0029', 'Irene Kusumawati', '0812378904907', 'Jln. Anak No.12', 'Bekasi'),
  ('P0030', 'Soimah', '08980231232', 'Jln. Puspa', 'Bangka'),
  ('P0031', 'Karina Sukmawati', '08872388282', 'Jln. Segaran No. 190', 'Banyuasin'),
  ('P0032', 'Susilo Bambang Utomo', '0889329823893', 'Jln. Purbalingga 10', 'Cianjur'),
  ('P0033', 'Megawati Maharani', '081239809822', 'Jln. Pdip No. 13', 'Bekasi'),
  ('P0034', 'Ardhito Pamungkas', '081355557611', 'Jln. Megawati No.42', 'Bekasi'),
  ('P0035', 'Nadine Aminah', '082177765468', 'Jln. Supratman No.90', 'Bekasi'),
  ('P0036', 'Lalisa Puspita Sari', '071125666781', 'Jln. Malang,Komplek Malang A1', 'Malang'),
  ('P0037', 'Jennie', '081366675442', 'Jln. Bogor no.90', 'Bogor'),
  ('P0038', 'Rose Widyawati', '071156777777', 'Jln. Jambi', 'Jambi'),
  ('P0039', 'Popo Barbie', '081345677788', 'Jln. Melati Indah', 'Garut'),
  ('P0040', 'Adellia', '082346688199', 'Gg. Mawar No.01', 'Malang'),
  ('P0041', 'Ningsih Ayu', '081325688899', 'Jln. Juragan No. 15', 'Kayu Agung'),
  ('P0042', 'Budiawan', '082155638909', 'Jln. Margoyoso', 'Palembang'),
  ('P0043', 'Tuginem', '081176890888', 'Jln. Semarang 1', 'Banyuasin'),
  ('P0044', 'Saras Wati', '086788890923', 'Jln. Semar', 'Prabumulih'),
  ('P0045', 'Wati Astuti', '088965777890', 'Jln. Intirub', 'Probolinggo'),
  ('P0046', 'Kimisama Joq', '087237198123', 'Jln. Malibu', 'Papua'),
  ('P0047', 'Mariam Quanita', '07114567890', 'Jln. Jambu Kuning No. 112', 'Bandung'),
  ('P0048', 'Pablo Escobar', '080018182181', 'Jln. Samping Blok B4', 'Jogja'),
  ('P0049', 'Fajero Dakar', '085567890035', 'Jln. Puncak Sekuning', 'Palembang'),
  ('P0050', 'Johnny G. Plate', '08124781633', 'Jln. Apakah Riil', 'Jakarta'),
  ('P0051', 'Albert Einstein', '08676768689', 'Jln. Sulit Dimengerti', 'Aceh'),
  ('P0052', 'Arinal Djunaidi', '08151617182', 'Jln. Suka Suka Saya', 'Lampung'),
  ('P0053', 'Ahmad Zaky Nadimsyah', '08123812123', 'Jln. Mudah dipahami', 'Jakarta'),
  ('P0054', 'Bakti Ananda Fernando', '08385728934', 'Jln. Hemat Uang', 'Bandung'),
  ('P0055', 'Boy Putra', '082394628735', 'Jln. Kerja Bagus', 'Balikpapan'),
  ('P0056', 'Dicko David Koniady', '081254214834', 'Jln. Ga Tau', 'Banyuasin'),
  ('P0057', 'Dika Saputra', '081246783642', 'Jln. Di Mana No.32', 'Jambi'),
  ('P0058', 'Diva Putri Kynta', '081962578642', 'Jln. sini sono', 'malang'),
  ('P0059', 'Fadhil Sa''adat', '081467862313', 'Jln. Jalan', 'Garut'),
  ('P0060', 'Fandy', '081265426735', 'Jln. Bahagia wkwk', 'Bekasi')

  INSERT INTO tbSalesman (kode_salesman, nama_salesman, no_telpon, alamat, kota, jenis_kelamin) VALUES
  ('S0001', 'Adrian Chen', '081234567890', 'Jln. Maju tak gentar', 'Palembang', 'L'),
  ('S0002', 'Andre Kurniawan', '0872123980112', 'Jln. Apa Saja no 75', 'Durian', 'L'),
  ('S0003', 'Christian Richie Wijaya', '0812389122', 'Jln. Mendiang No 430', 'Sabang', 'L'),
  ('S0004', 'Hansen', '08738912982', 'Jln. Aneh No 90', 'Medan', 'L')

  INSERT INTO tbKasir (kode_kasir, nama_kasir, no_telpon, alamat, kota, jenis_kelamin) VALUES
  ('K0001', 'Steven Tribethran', '085728996767', 'Jln. Perunas no 80', 'Jakarta', 'L'),
  ('K0002', 'Rio Ferdynand', '08132789288', 'Gang Rukun', 'Bandung', 'L'),
  ('K0003', 'Neilsen Nicholas Komah', '08281302182', 'Perumahan Bahagia No 23', 'Binjai', 'L')

  INSERT INTO tbBarang (kode_barang, nama_barang, satuan, harga_barang, stok) VALUES
  ('B0001', 'Semen', 'Sak', 50000, 1332),
  ('B0002', 'Semen Putih', 'Sak', 90000, 6032),
  ('B0003', 'Semen Warna', 'Kg', 15000, 7313),
  ('B0004', 'Cat Tembok', 'Liter', 30000, 6484),
  ('B0005', 'Cat Kayu', 'Liter', 75000, 2245),
  ('B0006', 'Thinner', 'Liter', 50000, 3111),
  ('B0007', 'Triplek', 'Lembar', 32000, 1012),
  ('B0008', 'Paku', 'Kotak', 5000, 9408),
  ('B0009', 'Besi Beton', 'Kg', 10000, 3764),
  ('B0010', 'Keramik 40x40', 'Kotak', 50000, 8517),
  ('B0011', 'Pipa PVC', 'Meter', 30000, 3760),
  ('B0012', 'Kayu', 'Meter', 125000, 4956),
  ('B0013', 'Selang', 'Meter', 10000, 4385),
  ('B0014', 'Kran', 'Pcs', 5000, 291),
  ('B0015', 'Pasir', 'Sak', 25000, 2140),
  ('B0016', 'Batu Bata', 'Pcs', 500, 2451),
  ('B0017', 'Alat Listrik', 'Pcs', 400000, 635),
  ('B0018', 'Asbes', 'Lembar', 50000, 1016),
  ('B0019', 'Pintu', 'Pcs', 1000000, 8403),
  ('B0020', 'Jendela', 'Pcs', 200000, 6046),
  ('B0021', 'Gergaji', 'Pcs', 30000, 5130),
  ('B0022', 'Amplas', 'Meter', 5000, 7402),
  ('B0023', 'Slot Pintu', 'Pcs', 70000, 1994),
  ('B0024', 'Engsel', 'Pcs', 30000, 6493),
  ('B0025', 'Sikutan', 'Pcs', 20000, 3354),
  ('B0026', 'Baut Sekrup', 'Pcs', 1000, 4892),
  ('B0027', 'Plat Besi', 'Lembar', 450000, 5929),
  ('B0028', 'Seng', 'Lembar', 5000, 3947),
  ('B0029', 'Talang', 'Pcs', 4000, 2364),
  ('B0030', 'Kawat', 'Meter', 12000, 1125),
  ('B0031', 'Bendrat', 'Meter', 2000, 2463),
  ('B0032', 'Plamir', 'Kg', 15000, 5296),
  ('B0033', 'Lem Putih', 'Kg', 30000, 1687),
  ('B0034', 'Bahan Mebel', 'Meter', 5000000, 2874),
  ('B0035', 'Mesin Air/ Pompa Air', 'Pcs', 415000, 2526),
  ('B0036', 'Bor', 'Pcs', 700000, 1616),
  ('B0037', 'Mata Bor', 'Pcs', 80000, 5065),
  ('B0038', 'Kompon', 'Kg', 47000, 4320),
  ('B0039', 'Lem talang', 'Pcs', 25000, 8049),
  ('B0040', 'Batako', 'Pcs', 4000, 8346),
  ('B0041', 'Cangkul', 'Pcs', 125000, 2655),
  ('B0042', 'Sabit', 'Pcs', 47000, 5402),
  ('B0043', 'Sekop', 'Pcs', 10000, 4059),
  ('B0044', 'Cetok', 'Pcs', 14000, 3560),
  ('B0045', 'Kuas Cat', 'Pcs', 7000, 8637),
  ('B0046', 'Linggis', 'Pcs', 68000, 7716)
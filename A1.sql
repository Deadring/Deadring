CREATE DATABASE dbA1
GO
USE dbA1
GO

CREATE TABLE tbPelanggan (
  kode CHAR(5) PRIMARY KEY NOT NULL,
  nama VARCHAR(40) NOT NULL,
  noTelp CHAR(15) NOT NULL,
  alamat VARCHAR(40) NOT NULL,
  kota VARCHAR(20) NOT NULL
)
GO

CREATE TABLE tbKasir (
	kode CHAR(5) PRIMARY KEY NOT NULL,
	nama VARCHAR(40) NOT NULL,
	noTelp CHAR(15) NOT NULL,
	alamat VARCHAR(40) NOT NULL,
	kota VARCHAR(20) NOT NULL,
	JK CHAR(1) NOT NULL
)
GO

CREATE TABLE tbSalesman (
	kode CHAR(5) PRIMARY KEY NOT NULL,
	nama VARCHAR(40) NOT NULL,
	noTelp CHAR(15) NOT NULL,
	alamat VARCHAR(40) NOT NULL,
	kota VARCHAR(20) NOT NULL,
	JK CHAR(1) NOT NULL
)
GO

CREATE TABLE tbBarang (
	kode CHAR(5) PRIMARY KEY NOT NULL,
	nama VARCHAR(40) NOT NULL,
	satuan CHAR(6) NOT NULL,
	harga MONEY NOT NULL,
	stok INT NOT NULL
)
GO

CREATE TABLE tbDetailFaktur (
	noFaktur CHAR(6) PRIMARY KEY NOT NULL,
	tanggal DATE ,
	kodePelanggan CHAR(5) REFERENCES tbPelanggan(kode),
	kodeKasir CHAR(5) REFERENCES tbKasir(kode),
	kodeSalesman CHAR(5) REFERENCES tbSalesman(kode),
	Total MONEY ,
	persenDiskon TINYINT NOT NULL,
)
GO

CREATE TABLE tbTransaksiBarang (
	idTransaksi CHAR(3) PRIMARY KEY,
	noFaktur CHAR(6) REFERENCES tbDetailFaktur(noFaktur) NOT NULL,
	kodeBarang CHAR(5) REFERENCES tbBarang(kode),
	banyakBarang INT,
	subtotal MONEY NOT NULL,
)
GO

CREATE TABLE tbDetailRetur (
	noRetur CHAR(6) PRIMARY KEY,
	tanggalRetur DATE NOT NULL,
	noFaktur CHAR(6) REFERENCES tbDetailFaktur(noFaktur) NOT NULL,
	total MONEY NOT NULL,
)
GO

CREATE TABLE tbBarangRetur (
	idRetur CHAR(3) PRIMARY KEY,
	noRetur CHAR(6) REFERENCES tbDetailRetur(noRetur)  NOT NULL,
	kodeBarang CHAR(5) REFERENCES tbBarang(kode) NOT NULL,
	banyakBarang INT NOT NULL,
	alasanRetur VARCHAR(20) NOT NULL,
	kondisiBarang VARCHAR(20) NOT NULL,
)
GO
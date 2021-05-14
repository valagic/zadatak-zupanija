drop database if exists zupanija;
create database zupanija;
use zupanija;

create table zupanija(
	sifra int not null primary key auto_increment,
	naziv varchar(40) not null,
	zupan int not null
);

create table opcina(
	sifra int not null primary key auto_increment,
	zupanija int not null,
	naziv varchar(50) not null
);

create table mjesto (
	sifra int not null primary key auto_increment,
	opcina int not null,
	naziv varchar(50) not null
);

create table zupan(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null
);

alter table opcina add foreign key(zupanija) references zupanija(sifra);
alter table mjesto add foreign key(opcina) references opcina(sifra);
alter table zupanija add foreign key(zupan) references zupan(sifra);

insert into zupan(ime,prezime) values
('Ivan','Anušiæ'),('Božo','Galiæ'),('Danijel','Marušiæ');
select * from zupan;

insert into zupanija(naziv,zupan) values
('Osjeèko-baranjska',1),('Vukovarsko-srijemska',2),('Brodsko-posavska',3);
select * from zupanija;

insert into opcina(zupanija,naziv) values
(1,'Antunovac'),(1,'Bilje'),(2,'Drenovci'),(2,'Cerna'),(3,'Bebrina'),(3,'Brodski Stupnik');
select * from opcina;

insert into mjesto(opcina,naziv) values
(1,'Antunovac'),(1,'Ivanovac'),(2,'Bilje'),(2,'Kopaèevo'),(3,'Drenovci'),(3,'Rajevo selo'),(4,'Cerna'),(4,'Šiškovci'),(5,'Bebrina'),(5,'Banovci'),(6,'Brodski Stupnik'),(6,'Stari Slatinik');
select * from mjesto;

UPDATE mjesto
SET naziv = 'novoImeMjesta'
where sifra<6;

/*ako se hoce pojedinacno
 * UPDATE mjesto
SET naziv = 'AntunovacNovo'
where sifra=1;
UPDATE mjesto
SET naziv = 'IvanovacNovo'
where sifra=2;
UPDATE mjesto
SET naziv = 'BiljeNovo'
where sifra=3;
UPDATE mjesto
SET naziv = 'KopaèevoNovo'
where sifra=4;
UPDATE mjesto
SET naziv = 'DrenovciNovo'
where sifra=5;*/

delete from mjesto where sifra=1;
delete from mjesto where sifra=2;
delete from mjesto where sifra=3;
delete from mjesto where sifra=4;

delete from opcina where sifra=1;
delete from opcina where sifra=2;











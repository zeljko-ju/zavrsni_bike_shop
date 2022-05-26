#C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\php\Documents\GitHub\zavrsni_bike_shop\zavrsni_rad_bike_shop.sql

drop database if exists bike_shop;
create database bike_shop;
use bike_shop;

create table djelatnik (
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    iban varchar(50)
);

create table kupac (
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50)
   
);

create table racun (
    sifra int not null primary key auto_increment,
    djelatnik int,
    kupac int 
    
    
);
 create table stavka (
     sifra int not null primary key auto_increment,
     kolicina decimal(10),
     artikl int,
     broj_racuna varchar(50), 
     racun int
     
 );
create table artikl (
    sifra int not null primary key auto_increment,
    brand varchar(50),
    cijena decimal(18,2),
    dostupnost boolean


);   

alter table racun add foreign key (djelatnik) references djelatnik(sifra);
alter table racun add foreign key (kupac) references kupac(sifra);

alter table stavka add foreign key (artikl) references artikl(sifra);
alter table stavka add foreign key (racun) references racun(sifra);


insert into artikl (sifra, brand, cijena, dostupnost)
	values (null, 'fuji', 7999.99, true);
insert into stavka (sifra, kolicina, artikl, broj_racuna)
	values (null, 1, 1, '999lsjjs7788');

insert into djelatnik (sifra, ime, prezime)
	values (null, 'Tvrtko', 'Biciklović');
insert into kupac (sifra, ime, prezime)
	values (null, 'Marko', 'Ivšić');
 insert into racun (sifra, djelatnik, kupac)
 	values (null,1, 1);

 insert into stavka (sifra, kolicina, artikl, broj_racuna, racun)
 	values(null, 3, 1, 'klsakdjsdkasd', 1);
 	

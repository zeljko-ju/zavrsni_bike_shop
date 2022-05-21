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
    broj_racuna varchar(50),
    kupac int

    
);
 create table narudzba (
     sifra int not null primary key auto_increment,
     kolicina decimal(10),
     artikl int,
     racun int
 );
create table artikl (
    sifra int not null primary key auto_increment,
    brand varchar(50),
    kategorija varchar(50),
    veličina varchar(50),
    cijena decimal(18,2),
    dostupnost boolean


);   

alter table racun add foreign key (djelatnik) references djelatnik(sifra);
alter table racun add foreign key (kupac) references kupac(sifra);

alter table narudzba add foreign key (artikl) references artikl(sifra);
alter table narudzba add foreign key (racun) references racun(sifra);


insert into artikl (sifra, brand, cijena, dostupnost)
	values (null, 'fuji', 7999.99, true);

insert into narudzba (sifra, kolicina, artikl)
	values (null, 1, 1);

select *from narudzba;
select * from artikl;
insert into djelatnik (sifra, ime, prezime)
	values (null, 'Tvrtko', 'Biciklović');
insert into kupac (sifra, ime, prezime)
	values (null, 'Marko', 'Ivšić');
insert into racun (sifra, djelatnik, kupac, broj_racuna)
 	values (null, 1, 1, '0099dkji87d66s7ds');
 select * from racun;
 select * from narudzba;
 insert into narudzba (sifra, kolicina, artikl, racun)
	values(null, 3, 1, 1);
	
 select * from narudzba;
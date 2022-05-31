#C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\php\Documents\GitHub\zavrsni_bike_shop_\zavrsni_rad_bike_shop.sql

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
    kategorija varchar(50),
    model varchar(50),
    cijena decimal(18,2),
    dostupnost boolean not null


);   

alter table racun add foreign key (djelatnik) references djelatnik(sifra);
alter table racun add foreign key (kupac) references kupac(sifra);

alter table stavka add foreign key (artikl) references artikl(sifra);
alter table stavka add foreign key (racun) references racun(sifra);


insert into artikl (sifra, brand, kategorija, model, cijena, dostupnost)
	values (null, 'cube', 'MTB', 'Aim RACE', 4999.99, true),
        (null, 'cube', 'MTB', 'Access WS', 4099.99, true),
        (null, 'cube', 'MTB', 'Accsess WS PRO', 5999.99, true),
        (null, 'cube', 'MTB', 'Aim', 3999.99, true),
        (null, 'cube', 'MTB', 'Aim SL', 6999.99, true),
        (null, 'cube', 'MTB', 'Nature', 5999.99, true),
        (null, 'cube', 'cestovni', 'Nuroad', 7999.99, true);
insert into stavka (sifra, kolicina, artikl, broj_racuna)
	values (null, 1, 1, '999lsjjs7788');

insert into djelatnik (sifra, ime, prezime)
	values (null, 'Tvrtko', 'Biciklović'), 
        (null, 'Marko', 'Perišić'),
        (null, 'Ivan', 'Jakobović');
insert into kupac (sifra, ime, prezime)
	values (null, 'Marko', 'Ivšić');
 insert into racun (sifra, djelatnik, kupac)
 	values (null,1, 1);

 insert into stavka (sifra, kolicina, artikl, broj_racuna, racun)
 	values(null, 3, 1, 'klsakdjsdkasd', 1);
 	
select * from racun;
#odradio select naredbu za spajanje podataka

select a.sifra, a.kolicina, d.brand, d.cijena, a.broj_racuna, c.ime, c.prezime 
from stavka a left join racun b
on a.racun =b.sifra 
inner join djelatnik c
on b.djelatnik = c.sifra
inner join artikl d 
on a.artikl =d.sifra; 

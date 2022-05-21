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
    narudzba int,
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
    velicina decimal(8,2),
    cijena decimal(18,2),
    dostupnost boolean


);   

alter table racun add foreign key (djelatnik) references djelatnik(sifra);
alter table racun add foreign key (kupac) references kupac(sifra);

alter table narudzba add foreign key (artikl) references artikl(sifra);
alter table racun add foreign key (narudzba) references narudzba(sifra);

#artikl
insert into artikl (sifra, brand, kategorija, velicina, cijena, dostupnost)
	values (null, 'fuji','MTB', 29, 7999.99, true),
    (null, 'KTM', 'MTB', 27.5, 9999.99, true),
    (null, 'Specialized', 'treking', 27, 3999.99, true);

#narudzba
insert into narudzba (sifra, kolicina, artikl)
	values (null, 1, 1);

insert into narudzba (sifra, kolicina, artikl, racun)
	values(null, 3, 1, 1);
insert into narudzba (sifra, kolicina, artikl, racun)
	values(null, 3, 1, 1);


#djelatnici
insert into djelatnik (sifra, ime, prezime)
	values (null, 'Tvrtko', 'Biciklović'),
    (null, 'Mario', 'Perić'),
    (null, 'Matea', 'Josipović'),
    (null, 'Fabijan', 'Radić');

#kupci
insert into kupac (sifra, ime, prezime)
	values (null, 'Marko', 'Ivšić'),
    (null, 'Adam', 'Zdravić'),
    (null, 'Patrik', 'Jakopović');
#racuni
insert into racun (sifra, djelatnik, kupac, broj_racuna)
 	values (null, 1, 1, '0099dkji87d66s7ds');
 
 
insert into racun (sifra, djelatnik, narudzba, broj_racuna, kupac)
	values(null, 1, 1, 'r998557', 1);

insert into racun (sifra, narudzba, kupac, djelatnik, broj_racuna)
	values(null, 1, 3, 2, 'R-0922211283');
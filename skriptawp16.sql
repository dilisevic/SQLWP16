drop database if exists edunovawp16;
create database edunovawp16;

use edunovawp16;

create table osoba(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
spol boolean,
datumrodjenja varchar(50) not null,
nadimak varchar(12)
);

create table kontakt(
sifra int not null primary key auto_increment,
osoba int not null,
telefon varchar(20) not null
);

alter table kontakt add foreign key (osoba) references osoba(sifra);
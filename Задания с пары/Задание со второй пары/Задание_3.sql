drop database if exists cars;
create database if not exists cars;

use cars;

create table if not exists manufacturer(
    id int not null primary key,
    name varchar(255),
    rang int
);

create table if not exists color (
    id int not null primary key,
    name varchar(255) not null
);

create table if not exists cars (
    id int not null auto_increment primary key,
    model varchar(255),
    manufacturer_id int,
    price int,
    foreign key (manufacturer_id) references manufacturer(id)
);

create table cars_colors(
	id_car int,
    id_color int,
    foreign key (id_car) references cars(id),
    foreign key (id_color) references color(id)
);



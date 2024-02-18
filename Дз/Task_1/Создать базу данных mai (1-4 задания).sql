-- =================================================== 
	##Задание №1
	## Создать базу данных mai
	## Создать таблицу aircrafts с первичным ключом
-- =================================================== 
drop database if exists mai;
create database mai;
use mai;

create table aircrafts (
    aircraft_code char(3) not null primary key,
    model text not null,
    rang int not null check (rang > 0)
);

-- =================================================== 
	# Задание №2
	## Заполнить таблицу aircrafts следующими данными
-- =================================================== 
insert into aircrafts (aircraft_code, model, rang) values
('SU9', 'Sukhoi SuperJet-100', 3000),
('773', 'Boeing 777-300', 11100),
('763', 'Boeing 767-300', 7900),
('733', 'Boeing 737-300', 4200),
('320', 'Airbus A320-200', 5700),
('321', 'Airbus A321-200', 5600),
('319', 'Airbus A319-200', 6700),
('CN1', 'Cessna 208 Caravan', 1200),
('CN2', 'Bombardier CRJ-200', 2700);

-- =================================================== 
	# Задание №3
	## Создать таблицу seats, ссылающуюся на таблицу aircrafts
-- =================================================== 
create table seats (
    aircraft_code char(3) not null,
    seat_no varchar(4) not null,
    fare_conditions varchar(10) not null CHECK (fare_conditions in ("Business", "Comfort", "Economy")),
    foreign key (aircraft_code) references aircrafts (aircraft_code) on delete cascade
);

-- =================================================== 
	# Задание №4
	## Заполнить таблицу seats следующими данными
-- ===================================================
insert into seats (aircraft_code, seat_no, fare_conditions) values
('SU9', '1A', 'Business'),
('SU9', '1B', 'Business'),
('SU9', '10A', 'Economy'),
('SU9', '10B', 'Economy'),
('SU9', '10F', 'Economy'),
('SU9', '20F', 'Economy');
-- =================================================== 
	# ТЕСТЫ
-- ===================================================
-- use mai;

-- select * from seats;

-- select * from aircrafts where aircraft_code = 'SU9';

-- select * from aircrafts as a left join seats as s on a.aircraft_code = s.aircraft_code where a.aircraft_code = 'SU9';

-- delete from aircrafts where aircraft_code = 'SU9';

-- select * from aircrafts as a left join seats as s on a.aircraft_code = s.aircraft_code where a.aircraft_code = 'SU9';



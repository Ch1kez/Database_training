
-- -- =================================================== 
-- 	##	Задание с пары 1
-- -- =================================================== 

-- -- Теория
-- -- order by - по умолчанию стоит asc
-- 	-- desc - по убываюнию
-- 	--  asc - по возрастанию
-- -- Tests
use mai; 

-- -- =================================================== 
-- 	##	Задание 1
-- -- =================================================== 

-- alter table aircrafts ADD COLUMN num_seats int;
-- alter table aircrafts ADD COLUMN max_speed int;

-- -- =================================================== 
-- 	##	Задание 2
-- -- =================================================== 

-- update aircrafts set num_seats = 50, max_speed = 800 where aircraft_code = '763';
-- update aircrafts set num_seats = 40, max_speed = 700 where aircraft_code = '733';
-- update aircrafts set num_seats = 200, max_speed = 900 where aircraft_code = '321';
-- update aircrafts set num_seats = 180, max_speed = 850 where aircraft_code = '320';
-- update aircrafts set num_seats = 160, max_speed = 800 where aircraft_code = '319';
-- update aircrafts set num_seats = 100, max_speed = 900 where aircraft_code = 'SU9';
-- update aircrafts set num_seats = 80, max_speed = 600 where aircraft_code = 'CN2';
-- update aircrafts set num_seats = 70, max_speed = 550 where aircraft_code = 'CN1';
-- update aircrafts set num_seats = 85, max_speed = 456 where aircraft_code = '773';

-- -- =================================================== 
-- 	##	Задание 3
-- -- =================================================== 

-- select * from aircrafts order by models desc;

-- -- =================================================== 
-- 	##	Задание 4
-- -- ===================================================

-- select * from aircrafts where rang between 4000 and 6000; 

-- -- =================================================== 
-- 	##	Задание 5
-- -- ===================================================

-- select * from aircrafts where model = 'Sukhoi SuperJet-100';

-- -- =================================================== 
-- 	##	Задание 6
-- -- ===================================================

-- select * from aircrafts order by num_seets desc;
-- select * from aircrafts order by num_seets asc;

-- -- =================================================== 
-- 	##	Задание 7
-- -- ===================================================

-- select 
-- 	sum(a.num_seats)  as "sum seats" , s.fare_conditions 
-- from aircrafts a 
-- join seats s 
-- 	on s.aircraft_code = a.aircraft_code
-- group by s.fare_conditions;

-- -- =================================================== 
-- 	##	Задание 8
-- -- =================================================== 

-- update aircrafts set rang = 5600 where model = "Airbus A320-200";

-- select * from aircrafts;
 
-- -- =================================================== 
-- 	##	Задание 9
-- -- ===================================================
 
--  select distinct rang from aircrafts order by rang;
 
 -- -- =================================================== 
-- 	##	Задание 10
-- -- ===================================================
 
 -- insert into aircrafts values ('S32', 'Airbus A320-200', 4323, 213, 603); 
 -- insert into aircrafts values ('S31', 'Airbus A320-200', 4323, 213, 602); 
 -- insert into aircrafts values ('S33', 'Airbus A320-200', 4323, 213, 601); 
 
 -- select * from aircrafts
 
 -- -- =================================================== 
-- 	##	Задание 11
-- -- ===================================================
 
 -- select * from aircrafts where model = 'Airbus A320-200' and num_seats > 100;
 
 -- -- =================================================== 
-- 	##	Задание 12
-- -- ===================================================
 
 -- select * from aircrafts where max_speed > 550 and rang > 4500;
 
 -- -- =================================================== 
-- 	##	Задание 13
-- -- ===================================================
 
-- alter table aircrafts modify column model char(32);

-- -- =================================================== 
-- 	##	Задание 14
-- -- ===================================================

-- alter table aircrafts add column first_flight date;

-- update aircrafts set first_flight="2000-02-01" where aircraft_code = "319";
-- update aircrafts set first_flight="2003-05-10" where aircraft_code = "320";
-- update aircrafts set first_flight="2024-02-29" where aircraft_code = "321";
-- update aircrafts set first_flight="2011-03-17" where aircraft_code = "322";
-- update aircrafts set first_flight="2022-05-03" where aircraft_code = "323";
-- update aircrafts set first_flight="2014-09-11" where aircraft_code = "324";
-- update aircrafts set first_flight="2019-09-19" where aircraft_code = "733";
-- update aircrafts set first_flight="1997-02-07" where aircraft_code = "763";
-- update aircrafts set first_flight="2001-10-02" where aircraft_code = "773";
-- update aircrafts set first_flight="2002-02-25" where aircraft_code = "cn1";
-- update aircrafts set first_flight="0001-01-01" where aircraft_code = "cn2";
-- update aircrafts set first_flight="1991-07-01" where aircraft_code = "su9";
  
-- select * from aircrafts where rang between 4200 and 7900 and rang not in (4200, 7900);

-- -- =================================================== 
-- 	##	Задание 15
-- -- ===================================================

-- select * from aircrafts where model like "%rd%";

-- -- =================================================== 
-- 	##	Задание 16
-- -- ===================================================

-- select * from aircrafts where model like "%-%";

-- -- =================================================== 
-- 	##	Задание 17
-- -- ===================================================

-- update aircrafts set first_flight="2020-07-20" where year(first_flight) > 2000;

-- -- =================================================== 
-- 	##	Задание 18
-- -- ===================================================

-- update aircrafts set aircraft_code="cn1" where aircraft_code = "cn3";

create schema cars;

Select*from cars.car_dekho;

Use cars;
-- READ DATA --
Select* from car_dekho;
-- Total cars: To get a count of total records--
select count(*)from car_dekho;
-- The manager asked the emplaye how manu cars will be available in 2023--
select count(*) from car_dekho where year = 2023; #6

-- The manager asked the emplaye how manu cars will be available in 2020, 2021,2022--
select count(*) from car_dekho where year = 2020; #74
select count(*) from car_dekho where year = 2021; #7
select count(*) from car_dekho where year = 2022; #7
-- Group by--
select count(*) from car_dekho where year in (2020,2021,2022) group by year;

-- Client asked me to print the total of all cars by year. I dont't see all the deatils--
select year, count(*) from car_dekho group by year;

-- Client asked the car dealer ageny how many diesel car will there be in 2020--
select count(*) from car_dekho where year = 2020 and fuel ="Diesel";

-- Client asked the car dealer ageny how many petrol car will there be in 2020--
select count(*) from car_dekho where year = 2020 and fuel ="Petrol";

-- The manage told the employee to give a print of all thr fuel car(petrol, diesel, CNG )all years--
select year, count(*) from car_dekho where fuel = "petrol" group by year;
select year, count(*) from car_dekho where fuel = "diesel" group by year;
select year, count(*) from car_dekho where fuel = "CNG" group by year;

-- Manager said there were more than 100 cars in a given year, which has more than 100 cars?--
select year, count(*) from car_dekho group by year having count(*)>100;

-- The manager said to the employee all cars count details between 2015 and 2023; we need complete list--
select count(*) from car_dekho where year between 2015 and 2023;

-- The manager said to the employee all cars count details between 2015 and 2023; we need complete list--
select* from car_dekho where year between 2015 and 2023;
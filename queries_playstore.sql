--1
select * from analytics where id = 1880;

--2
select id, app_name from analytics where last_updated = '2018-08-01';

--3
select category, count(*) from analytics group by category;

--4
select app_name, reviews from analytics order by reviews desc limit 5;

--5
select app_name from analytics
  where rating >= 4.8
  order by reviews desc limit 1;

--6
select category, avg(rating) as average_rating from analytics group by category order by average_rating desc;

--7
select app_name, price, rating from analytics
  where rating < 3
  order by price desc
  limit 1;

--8
select app_name, rating from analytics
  where min_installs <= 50 and rating is not null
  order by rating desc;

--9
select app_name from analytics where rating < 3 and reviews >= 10000;

--10
select app_name, price, reviews from analytics
  where price between .1 and 1
  order by reviews desc
  limit 10;

--11
select * from analytics where last_updated = (
  select min(last_updated) from analytics)
  limit 1;

--12
select * from analytics order by price desc limit 1;

--13
select sum (reviews) from analytics;

--14
select category, count(*) from analytics group by category having count(*) > 300;

--15
select app_name, reviews, min_installs, (min_installs / reviews) as proportion
  from analytics
  where min_installs >= 100000
  order by proportion desc
  limit 1;
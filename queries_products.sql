--#1 add chair
insert into products (name, price, can_be_returned) values ('chair', 44.00, false);

--#2 add stool
insert into products (name, price, can_be_returned) values ('stool', 25.99, true);

--#3 add table to products
insert into products (name, price, can_be_returned) values ('table', 124.00, false);

--#4 display entire products table
select * from products;

--#5 display names
select name from products;

--#6 display names and prices
select name, price from products;

--#7 add new product
insert into products (name, price, can_be_returned) values ('sofa', 300.00, false);

--#8 display returnable products
select * from products where can_be_returned = true;

--#9 display products under $44
select * from products where price < 44;

--#10 display products between $22.50 and $99.99
select * from products where price between 22.5 and 99.99;

--#11 update -$20 on everything
update products set price = price - 20;

--#12 remove products under $25
delete from products where price < 25;

--#13 update +$20 on everything
update products set price = price + 20;

--#14 update everything is returnable
update products set can_be_returned = true;
-- Problem 1
select * from salespeople

-- Problem 2
select * from salespeople where region = 'Northwest'

-- Problem 3
select email from salespeople where region = 'Southwest';

-- Problem 4
select givenname, surname, email from salespeople where region = 'Northwest';

-- Problem 5
select common_name from melons where price > 5;

-- Problem 6
select melon_type, common_name from melons where melon_type = 'Watermelon' and price > 5;

-- Problem 7
select common_name from melons where common_name LIKE 'C%';

-- Problem 8
select common_name from melons where common_name LIKE '%Golden%';

-- Problem 9
select distinct region from salespeople;

-- Problem 10
select email from salespeople where region = 'Northwest' or region = 'Southwest';

-- Problem 11
select email from salespeople where region IN ('Northwest', 'Southwest');

-- Problem 12
select email, givenname, surname from salespeople where region IN ('Northwest', 'Southwest') and surname LIKE 'M%';

-- Problem 13
select melon_type, common_name, price, price * 0.735693 as euro from melons;

-- Problem 14
select count (id) from customers;

-- Problem 15
select count(*) from orders where shipto_state = 'CA';

-- Problem 16
select sum(order_total) from orders;

-- Problem 17
select avg(order_total) from orders;

-- Problem 18
select min(order_total) from orders;

-- Problem 19
select id from customers where email = 'phyllis@demizz.edu';

-- Problem 20
select id, status, order_total from orders where customer_id = '100';

-- Problem 21
select id, status, order_total from orders where customer_id = (select id from customers where email = 'phyllis@demizz.edu');

-- Problem 22
select orders.id, status, order_total from orders JOIN customers on (orders.customer_id = customers.id) WHERE email = 'phyllis@demizz.edu';

-- Problem 23
select * from order_items where order_id = 2725;

-- Problem 24
select common_name, melon_type, order_items.quantity, order_items.unit_price, order_items.total_price from melons JOIN order_items ON (melons.id = order_items.melon_id) WHERE order_items.order_id = 2725;

-- Problem 25
select sum(order_total) from orders where salesperson_id IS NULL;

-- Problem 26
SELECT S.givenname, S.surname, SUM(O.order_total), SUM(O.order_total) * .15 FROM salespeople AS S LEFT JOIN orders AS O ON(O.salesperson_id = S.id) GROUP BY S.id;


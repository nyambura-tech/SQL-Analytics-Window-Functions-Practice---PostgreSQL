
create schema assignment;

CREATE TABLE assignment.customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(50),
    registration_date DATE,
    membership_status VARCHAR(10)
);

SET search_path to assignment;

show search_path;

CREATE TABLE assignment.products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    supplier VARCHAR(100),
    stock_quantity INT
);

CREATE TABLE assignment.sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES assignment.customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);


CREATE TABLE assignment.inventory (
    product_id INT PRIMARY KEY,
    stock_quantity INT,
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

INSERT INTO assignment.Customers 
(customer_id, first_name, last_name, email, phone_number, registration_date, membership_status) 
VALUES
(1, 'Karen', 'Molina', 'gonzalezkimberly@glass.com', '(728)697-1206', '2020-08-27', 'Bronze'),
(2, 'Elizabeth', 'Archer', 'tramirez@gmail.com', '778.104.6553', '2023-08-28', 'Silver'),
(3, 'Roberta', 'Massey', 'davislori@gmail.com', '+1-365-606-7458x399', '2024-06-12', 'Bronze'),
(4, 'Jacob', 'Adams', 'andrew72@hotmail.com', '246-459-1425x462', '2023-02-10', 'Gold'),
(5, 'Cynthia', 'Lowery', 'suarezkiara@ramsey.com', '001-279-688-8177x4015', '2020-11-13', 'Silver'),
(6, 'Emily', 'King', 'igoodwin@howard.com', '(931)575-5422x5900', '2021-05-01', 'Silver'),
(7, 'Linda', 'Larsen', 'pware@yahoo.com', '289-050-2028x7673', '2021-08-20', 'Silver'),
(8, 'Angela', 'Hanson', 'zanderson@gmail.com', '+1-403-917-3585', '2023-03-17', 'Bronze'),
(9, 'Whitney', 'Wilson', 'norma70@yahoo.com', '001-594-317-6656', '2024-01-27', 'Bronze'),
(10, 'Angela', 'Atkins', 'burnsjorge@medina.org', '344.217.5788', '2025-02-05', 'Silver'),
(11, 'Gary', 'Lucero', 'ssnyder@hotmail.com', '001-842-595-7853', '2024-10-08', 'Silver'),
(12, 'Matthew', 'Romero', 'jennifer22@gmail.com', '556.328.91896', '2022-04-07', 'Bronze'),
(13, 'Ronald', 'Thompson', 'hramos@hayes.biz', '298-487-2483', '2023-07-31', 'Bronze'),
(14, 'Suzanne', 'Anderson', 'michaelcole@ruiz-ware.com', '+1-018-029-7257', '2023-11-02', 'Bronze'),
(15, 'Mary', 'Kelly', 'matthewmurphy@gmail.com', '(845)934-9x286', '2021-01-20', 'Bronze'),
(16, 'John', 'George', 'burnettlauren@gmail.com', '+1-708-200-4286', '2022-05-17', 'Bronze'),
(17, 'James', 'Rodriguez', 'brownbrian@blair-sanford.com', '8826047658', '2022-11-25', 'Gold'),
(18, 'Steven', 'Burnett', 'zblackburn@yahoo.com', '(055)912-6726x1246', '2020-01-28', 'Gold'),
(19, 'Jonathan', 'White', 'millsseth@choi-kelly.org', '755-979-1934x772', '2022-02-06', 'Bronze'),
(20, 'Christopher', 'Santiago', 'heidimaddox@hotmail.com', '118-589-6973x058', '2021-10-16', 'Silver'),
(21, 'John', 'Diaz', 'gsmith@hotmail.com', '369.915.4337', '2022-09-17', 'Gold'),
(22, 'Curtis', 'Rose', 'ryanmartinez@moore.com', '(921)461-2128', '2021-12-14', 'Bronze'),
(23, 'Charles', 'Hughes', 'jonesangela@frank-lynn.com', '(152)603-5387x8994', '2024-07-29', 'Silver'),
(24, 'Sarah', 'Cooke', 'whitedennis@tucker.org', '(641)830-6756x56741', '2024-12-15', 'Bronze'),
(25, 'Luis', 'Harrison', 'melvin70@gmail.com', '516.509.9493', '2021-08-19', 'Silver'),
(26, 'Annette', 'Greene', 'aaron68@hall.com', '(733)734-1847x1078', '2025-04-12', 'Bronze'),
(27, 'Melissa', 'Jacobson', 'becklarry@gmail.com', '562-245-7784x4729', '2023-04-28', 'Bronze'),
(28, 'Julie', 'Gardner', 'adamsrodney@hall.com', '+1-014-029-3206x188', '2024-03-31', 'Gold'),
(29, 'Margaret', 'Taylor', 'lfuller@hotmail.com', '(299)340-8900x297', '2021-09-06', 'Bronze'),
(30, 'Erika', 'Mckee', 'wsmith@gmail.com', '(160)040-7321', '2021-05-25', 'Silver'),
(31, 'Donna', 'Whitney', 'justinnicholson@gmail.com', '7086491657', '2022-08-07', 'Gold'),
(32, 'Kristina', 'Wade', 'ashley30@richards-young.com', '603-604-2831x303', '2024-03-16', 'Silver'),
(33, 'Joshua', 'Green', 'ihartman@yahoo.com', '988-232-8285x00933', '2024-05-14', 'Silver'),
(34, 'John', 'Leblanc', 'herickson@green.info', '229.016.2527x20209', '2022-12-24', 'Silver'),
(35, 'Nicholas', 'Campbell', 'ghernandez@hotmail.com', '(982)215-6626', '2022-06-06', 'Gold'),
(36, 'Christopher', 'Hicks', 'ryan48@gmail.com', '884.881.7758', '2021-04-03', 'Silver'),
(37, 'Craig', 'Miller', 'scampbell@johnson.net', '390-328-7286x021', '2024-04-30', 'Silver'),
(38, 'Jennifer', 'Bailey', 'dwright@hotmail.com', '001-992-011-9250', '2022-09-07', 'Silver'),
(39, 'Emma', 'Davis', 'lisalester@hotmail.com', '911.706.3025', '2021-06-04', 'Gold'),
(40, 'Michael', 'Wilson', 'lmerritt@wallace-wang.com', '462.021.3233', '2025-01-14', 'Bronze'),
(41, 'Sarah', 'Church', 'deniseramos@gmail.com', '(840)285-3653x61868', '2021-03-14', 'Silver'),
(42, 'Carolyn', 'Stevenson', 'george62@garrison.net', '040.179.1155', '2024-07-26', 'Silver'),
(43, 'Sarah', 'Cole', 'amandamartin@hotmail.com', '481-651-5206x4800', '2024-07-27', 'Silver'),
(44, 'Jeremiah', 'Lozano', 'bethany38@lopez.net', '846-327-7426', '2023-01-02', 'Bronze'),
(45, 'Leslie', 'Boyd', 'cartermorgan@scott-franco.com', '+1-583-786-3525', '2022-10-22', 'Silver'),
(46, 'Carrie', 'Anderson', 'stevenlivingston@yahoo.com', '+1-086-709-5530x6149', '2024-08-23', 'Gold'),
(47, 'Jared', 'Davis', 'mooretodd@cook.com', '001-069-544-8807x2397', '2022-08-29', 'Bronze'),
(48, 'James', 'Soto', 'patriciaburns@yahoo.com', '129.857.8193x421', '2023-01-27', 'Gold'),
(49, 'Cody', 'Kline', 'bradfordleslie@hotmail.com', '+1-710-706-3703x7998', '2022-06-28', 'Bronze'),
(50, 'Jennifer', 'Perkins', 'austinowens@hill.info', '762.009.1882', '2020-10-19', 'Silver');


select * from assignment.customers;


INSERT INTO assignment.Products 
(product_id, product_name, category, price, supplier, stock_quantity) 
VALUES
(1, 'Laptop', 'Electronics', 999.99, 'Dell', 50),
(2, 'Smartphone', 'Electronics', 799.99, 'Samsung', 150),
(3, 'Washing Machine', 'Appliances', 499.99, 'LG', 30),
(4, 'Headphones', 'Accessories', 199.99, 'Sony', 100),
(5, 'Refrigerator', 'Appliances', 1200.00, 'Whirlpool', 40),
(6, 'Smart TV', 'Electronics', 1500.00, 'Samsung', 20),
(7, 'Microwave', 'Appliances', 180.00, 'Panasonic', 75),
(8, 'Blender', 'Appliances', 50.00, 'Ninja', 200),
(9, 'Gaming Console', 'Electronics', 350.00, 'Sony', 60),
(10, 'Wireless Mouse', 'Accessories', 25.00, 'Logitech', 300),
(11, 'Keyboard', 'Accessories', 49.99, 'Logitech', 250),
(12, 'Monitor', 'Electronics', 250.00, 'Acer', 120),
(13, 'External Hard Drive', 'Electronics', 80.00, 'Seagate', 90),
(14, 'Tablet', 'Electronics', 400.00, 'Apple', 70),
(15, 'Smartwatch', 'Electronics', 199.99, 'Apple', 120);

select * from assignment.products;

INSERT INTO assignment.Sales 
(sale_id, customer_id, product_id, quantity_sold, sale_date, total_amount) 
VALUES
(1, 1, 1, 1, '2023-07-15', 999.99),
(2, 2, 2, 2, '2023-08-20', 1599.98),
(3, 3, 3, 1, '2023-09-10', 499.99),
(4, 4, 4, 3, '2023-07-25', 599.97),
(5, 5, 5, 1, '2023-06-18', 1200.00),
(6, 6, 6, 1, '2023-10-05', 1500.00),
(7, 7, 7, 1, '2023-08-01', 180.00),
(8, 8, 8, 2, '2023-09-02', 100.00),
(9, 9, 9, 1, '2023-10-10', 350.00),
(10, 10, 10, 3, '2023-11-12', 75.00),
(11, 11, 11, 2, '2023-12-01', 100.00),
(12, 12, 12, 1, '2023-12-07', 250.00),
(13, 13, 13, 1, '2024-01-15', 80.00),
(14, 14, 14, 1, '2024-02-05', 400.00),
(15, 15, 15, 1, '2024-01-05', 199.99);

select * from assignment.sales;

INSERT INTO assignment.inventory 
(product_id, stock_quantity) 
VALUES
(1, 50),
(2, 150),
(3, 30),
(4, 100),
(5, 40),
(6, 20),
(7, 75),
(8, 200),
(9, 60),
(10, 300),
(11, 250),
(12, 120),
(13, 90),
(14, 70),
(15, 120);

select * from assignment.inventory;

select * from assignment.customers;

select * from assignment.products;

select * from assignment.sales;

SELECT table_name FROM information_schema.tables WHERE table_schema = 'assignment';

-- =====================================================
-- PART 2
-- =====================================================
-- =====================================================
-- SUBQUERY QUESTIONS
-- =====================================================

-- 51. Which customers have spent more than the average spending of all customers?
select * from assignment.customers;
select * from assignment.sales;

select c.first_name || ' ' || c.last_name as full_name, 
sum(s.total_amount) total_spending
from customers c 
join sales s
on c.customer_id = s.customer_id
group by c.first_name, c.last_name
having sum(s.total_amount) > (
select avg(s.total_amount)as avg_spending
from sales s);

-- 52. Which products are priced higher than the average price of all products?
select * from assignment.products;
select * from assignment.sales;

select p.product_name, p.product_id, p.price 
from products p 
where p.price > (
select avg(p.price) as avg_price 
from products p);

-- 53. Which customers have never made a purchase?
select * from assignment.customers;
select * from assignment.sales;

select  c.first_name || ' ' || c.last_name as full_name
from  customers c
where  c.customer_id not in (
    select  customer_id
   from sales
);

-- 54. Which products have never been sold?
select p.product_name
from products p
where p.product_id not in (
select product_id
from sales s);

-- 55. Which customer made the single most expensive purchase?
select * from assignment.customers;
select * from assignment.sales;

select c.first_name||' '||c.last_name as full_name, s.total_amount
from customers c 
join sales s 
on c.customer_id = s.customer_id 
where s.total_amount = (
select max(s.total_amount)
from sales s 
);

-- 56. Which products have total sales greater than the average total sales across all products?
select p.product_name, p.product_id, s.total_amount
from products p 
join sales s 
on p.product_id = s.product_id 
where s.total_amount > (
select avg(s.total_amount) 
from sales s);

-- 57. Which customers registered earlier than the average registration date?
select c.first_name||' '|| c.last_name, c.registration_date
from customers c 
where c.registration_date < (
select avg(c.registration_date) as avg_registration_date
from customers c);


-- 58. Which products have a price higher than the average price within their own category?
select product_name, category, price, category_avg_price
from (
    select p.product_name,
           p.category,
           p.price,
           avg(p.price) over (partition by p.category) as category_avg_price
    from products p
) ranked
where price > category_avg_price
order by category, price desc;
-- 59. Which customers have spent more than the customer with ID = 10?
select full_name, total_spent
from (
    select c.first_name || ' ' || c.last_name as full_name,
           sum(s.total_amount) as total_spent,
           c.customer_id
    from customers c
    join sales s on c.customer_id = s.customer_id
    group by c.first_name, c.last_name, c.customer_id
) ranked
where total_spent > (
    select sum(s2.total_amount)
    from sales s2
    where s2.customer_id = 10
)
order by total_spent desc;
-- 60. Which products have total quantity sold greater than the overall average quantity sold?
select full_name, total_spent
from (
    select c.first_name || ' ' || c.last_name as full_name,
           sum(s.total_amount) as total_spent
    from customers c
    join sales s on c.customer_id = s.customer_id
    group by c.first_name, c.last_name, c.customer_id
) ranked
where total_spent > (
    select sum(total_amount)
    from sales
    where customer_id = 10
)
order by total_spent desc;


-- =====================================================
-- COMMON TABLE EXPRESSIONS (CTEs)
-- =====================================================

-- 61. Create an intermediate result that calculates the total amount spent by each customer,
--     then determine which customers are the top 5 highest spenders.
with total_sales as (
select sum(s.total_amount) as total_spent, c.customer_id 
from sales s 
join customers c
on c.customer_id = s.customer_id
group by c.customer_id)
select customer_id, total_spent
from total_sales 
order by total_spent desc
limit 5;


-- 62. Create an intermediate result that calculates total quantity sold per product,
--     then determine which products are the top 3 most sold.

select * from assignment.products;

select * from assignment.sales;


with total_quantity as (
select sum(s.quantity_sold) as quantity_sold, p.product_id
from sales s
join products p
on s.product_id = p.product_id
group by p.product_id)
select product_id, quantity_sold
from total_quantity
order by quantity_sold desc
limit 3;

-- 63. Create an intermediate result showing total sales per product category,
--     then determine which category generates the highest revenue.
select * from assignment.products;

select * from assignment.sales;

with product_total_sales as (
 select sum(s.total_amount * s.quantity_sold) as revenue, p.category
 from sales s 
 join products p
 on s.product_id = p.product_id
 group by p.category)
 select revenue, category
 from product_total_sales
 order by revenue desc
 limit 1;
 

-- 64. Create an intermediate result that calculates the number of purchases per customer,
--     then identify customers who purchased more than twice.

select * from assignment.customers;

select * from assignment.sales;

with customer_purchase as (
select count(s.total_amount) as purchase_per_customer, c.customer_id
from sales s 
join customers c 
on s.customer_id = c.customer_id 
group by c.customer_id
having count(s.total_amount) > 2)

select purchase_per_customer, customer_id
from customer_purchase;


-- 65. Create an intermediate result that calculates the total quantity sold per product,
--     then determine which products sold more than the average quantity sold.

select * from assignment.products;

select * from assignment.sales;

with total_quantity_sold as (
select sum(s.quantity_sold) as total_quantity, avg(s.quantity_sold) as avg_quantity_sold, s.product_id, p.product_name
from sales s 
join products p 
on s.product_id = p.product_id
group by  s.product_id, p.product_name )
select total_quantity, avg_quantity_sold, product_id, product_name 
from total_quantity_sold  
where total_quantity > avg_quantity_sold;

-- 66. Create an intermediate result that calculates total spending per customer,
--     then determine which customers spent more than the average spending.
select * from assignment.customers;

select * from assignment.products;

select * from assignment.sales;

with total_customer_spending as ( 
select sum(s.total_amount) as total_spending, avg(s.total_amount)as avg_spending, s.customer_id, c.first_name
from sales s 
join customers c 
on s.customer_id = c.customer_id 
group by s.customer_id, c.first_name )
 select total_spending, avg_spending, customer_id, first_name 
 from total_customer_spending 
 where total_spending > avg_spending;

-- 67. Create an intermediate result that calculates total revenue per product,
--     then list the products ordered from highest revenue to lowest.
select * from assignment.products;

select * from assignment.sales;
 
with total_product_revenue as ( 
select sum(s.quantity_sold * s.total_amount) as total_revenue, s.product_id, p.product_name 
from sales s 
join products p 
on s.product_id = p.product_id 
group by s.product_id, p.product_name)
select total_revenue, product_id, product_name 
from total_product_revenue 
order by total_revenue desc;

-- 68. Create an intermediate result showing monthly sales totals,
--     then determine which month had the highest revenue.
select * from assignment.sales;

with monthly_total_sales as (
select sum(s.total_amount) as sales_total,
EXTRACT(MONTH FROM s.sale_date) as sale_month
from sales s 
group by EXTRACT(MONTH FROM s.sale_date))
select sales_total, sale_month 
from monthly_total_sales 
order by sales_total  desc
limit 1;



-- 69. Create an intermediate result that calculates the number of sales per product,
--     then determine which products were purchased by more than three customers.
select * from assignment.products;

select * from assignment.sales;

with product_sales as (
select product_id,count(sale_id)as sum_sales,count(customer_id )as customer_purchases 
from sales group by product_id 
having count(customer_id) > 0 )
select * from product_sales;


-- 70. Create an intermediate result showing total quantity sold per product,
--     then identify products that sold less than the average quantity sold.
select * from assignment.products;

select * from assignment.sales;

with total_quantity_sold as ( 
select sum(s.quantity_sold) as total_quantity, avg(s.quantity_sold) as avg_quantity, p.product_id, p.product_name 
from sales s 
join products p 
on s.product_id = p.product_id 
group by  p.product_id, p.product_name)
select total_quantity, avg_quantity, product_id, product_name 
from total_quantity_sold 
where total_quantity < avg_quantity ;

-- =====================================================
-- WINDOW FUNCTION QUESTIONS
-- =====================================================

-- 71. Rank customers based on the total amount they have spent.
select c.first_name||' '||c.last_name as full_name, 
sum(s.total_amount) as total_spent,
rank() over (order by (sum(s.total_amount)) desc) as spent_rank 
from customers c 
join sales s 
on c.customer_id = s.customer_id 
group by c.first_name, c.last_name;


-- 72. Rank products based on total quantity sold.
select * from assignment.products;
select * from assignment.sales;

select p.product_id, 
sum(s.quantity_sold) as total_quantity_sold,
rank() over (order by(sum(s.quantity_sold))desc) as rank_quantity_sold 
from products p 
join sales s 
on p.product_id = s.product_id
group by p.product_id;

-- 73. Identify the 3rd highest spending customer.
select * from assignment.customers;
select * from assignment.sales;

select full_name, total_spent, spending_rank
from ( select c.first_name || ' ' || c.last_name AS full_name,
        sum(s.total_amount) as total_spent,
       dense_rank() over (order by sum(s.total_amount) desc) as spending_rank
    from customers c
    join sales s
        on c.customer_id = s.customer_id
    group by c.first_name, c.last_name
) as ranked_customers
where spending_rank = 3;

-- 74. Identify the 2nd most expensive product.
select * from assignment.products;

select product_name, price, price_rank
from (
 select 
        p.product_name,
        p.price,
        dense_rank() over (order by p.price desc) as price_rank
    from products p
) as ranked_products
where price_rank = 2;


-- 75. Show the ranking of products within each category based on price.
select * from assignment.products;
select * from assignment.sales;

select p.product_name,
       p.category,
       p.price,
       dense_rank() over (partition by p.category 
                          order by p.price desc) as price_rank
from products p
order by p.category, price_rank;

-- 76. Show the ranking of customers based on the number of purchases they made.
select c.first_name || ' ' || c.last_name as full_name,
       count(s.customer_id) as total_purchases,
       dense_rank() over (order by count(s.customer_id) desc) as purchase_rank
from customers c
join sales s on c.customer_id = s.customer_id
group by c.first_name, c.last_name, c.customer_id
order by purchase_rank;
-- 77. Show the running total of sales amounts ordered by sale_date.
select s.sale_date,
       s.total_amount,
       sum(s.total_amount) over (order by s.sale_date) as running_total
from sales s
order by s.sale_date;

-- 78. Show the previous sale amount for each sale ordered by sale_date.
select s.sale_date,
       s.total_amount,
       lag(s.total_amount) over (order by s.sale_date) as previous_sale_amount
from sales s
order by s.sale_date;
-- 79. Show the next sale amount for each sale ordered by sale_date.
select s.sale_date,
       s.total_amount,
       lead(s.total_amount) over (order by s.sale_date) as next_sale_amount
from sales s
order by s.sale_date;
-- 80. Divide customers into 4 groups based on total spending.
select c.first_name || ' ' || c.last_name as full_name,
       sum(s.total_amount) as total_spent,
       ntile(4) over (order by sum(s.total_amount) desc) as spending_group
from customers c
join sales s on c.customer_id = s.customer_id
group by c.first_name, c.last_name, c.customer_id
order by spending_group;

-- =====================================================
-- ADVANCED ANALYTICAL QUESTIONS
-- =====================================================

-- 81. Which customers bought products in more than one category?
select * from assignment.customers;

select * from assignment.products;


select 
    c.first_name || ' ' || c.last_name as full_name,
    count(distinct p.category) as total_categories
from customers c
join sales s
    on c.customer_id = s.customer_id
join products p
    on p.product_id = s.product_id
group by c.first_name, c.last_name
having count(distinct p.category) > 1;

-- 82. Which customers purchased products within 7 days of registering?
select * from assignment.customers;
select * from assignment.sales;

select 
    c.first_name || ' ' || c.last_name as full_name,
    c.registration_date,
    s.sale_date,
    (s.sale_date - c.registration_date) as days_after_registration
from customers c
join sales s
    on c.customer_id = s.customer_id
where s.sale_date >= c.registration_date
    and s.sale_date <= c.registration_date + interval '7 days'
order by c.last_name, days_after_registration;
    

-- 83. Which products have lower stock remaining than the average stock quantity?
select * from assignment.products;

select p.product_name, p.stock_quantity
from products p
where p.stock_quantity < (select avg(stock_quantity) from products)
order by p.stock_quantity asc;

-- 84. Which customers purchased the same product more than once?
select * from assignment.customers;
select * from assignment.products;
select * from assignment.sales;

select c.first_name || ' ' || c.last_name as full_name, 
       p.product_name, 
       count(s.product_id) as purchase_count
from customers c
join sales s on c.customer_id = s.customer_id
join products p on s.product_id = p.product_id
group by c.first_name, c.last_name, p.product_name
having count(s.product_id) > 1
order by full_name;

-- 85. Which product categories generated the highest total revenue?

select * from assignment.products;
select * from assignment.sales;


select p.category, sum(s.total_amount) as total_revenue 
 from products p 
 join sales s 
 on p.product_id = s.product_id  
 group by p.category
order by total_revenue desc;

-- 86. Which products are among the top 3 most sold products?
select * from assignment.products;

select p.product_name, count(s.product_id) as times_sold
from products p
join sales s on p.product_id = s.product_id
group by p.product_name
order by times_sold desc
limit 3;

-- 87. Which customers purchased the most expensive product?
select * from assignment.customers;
select * from assignment.products;

select c.first_name || ' ' || c.last_name as full_name, 
       p.product_name, p.price
from customers c
join sales s on c.customer_id = s.customer_id
join products p on s.product_id = p.product_id
where p.price = (select max(price) from products)
order by full_name;

-- 88. Which products were purchased by the highest number of unique customers?
select * from assignment.customers;
select * from assignment.products;
select * from assignment.sales;

select p.product_name, 
       count(distinct c.customer_id) as unique_customers
from products p
join sales s on p.product_id = s.product_id
join customers c on s.customer_id = c.customer_id
group by p.product_name
order by unique_customers desc
limit 1;

-- 89. Which customers made purchases above the average sale amount?
select * from assignment.customers;
select * from assignment.products;
select * from assignment.sales;

select c.first_name || ' ' || c.last_name as full_name,
       s.total_amount
from customers c
join sales s on c.customer_id = s.customer_id
where s.total_amount > (select avg(total_amount) from sales)
order by s.total_amount desc;

-- 90. Which customers purchased more products than the average quantity purchased per customer?
select * from assignment.customers;
select * from assignment.products;
select * from assignment.sales;

select c.first_name||' '||c.last_name as full_name, p.product_name, s.quantity_sold
from customers c 
join sales s 
on c.customer_id = s.customer_id 
join products p 
on s.product_id = p.product_id 
where s.quantity_sold >(select avg(quantity_sold)from sales)
order by s.quantity_sold desc;

-- =====================================================
-- ADVANCED WINDOW + ANALYTICAL PROBLEMS
-- =====================================================

-- 91. Which customers rank in the top 10% of spending?
select * from assignment.customers;
select * from assignment.products;
select * from assignment.sales;

select full_name, total_spent
from (
    select c.first_name || ' ' || c.last_name as full_name,
           sum(s.total_amount) as total_spent,
           percent_rank() over (order by sum(s.total_amount) desc) as pct_rank
    from customers c
    join sales s on c.customer_id = s.customer_id
    group by c.first_name, c.last_name
) ranked
where pct_rank <= 0.1
order by total_spent desc;

-- 92. Which products contribute to the top 50% of total revenue?

select product_name, total_revenue 
from(
select p.product_name, sum(s.total_amount) as total_revenue,
percent_rank() over (order by sum(s.total_amount) desc) as pct_rank
from products p 
join sales s 
on p.product_id = s.product_id 
group by p.product_name 
) ranked
where pct_rank <= 0.5 
order by total_revenue desc;

-- 93. Which customers made purchases in consecutive months?
select * from assignment.customers;
select * from assignment.products;
select * from assignment.sales;

with customer_months as (
    select c.first_name || ' ' || c.last_name as full_name,
           date_trunc('month', s.sale_date) as purchase_month,
           lag(date_trunc('month', s.sale_date)) 
               over (partition by c.customer_id 
                     order by s.sale_date) as previous_month
    from customers c
    join sales s on c.customer_id = s.customer_id
)
select full_name, purchase_month, previous_month
from customer_months
where purchase_month = previous_month + interval '1 month'
order by full_name;

-- 94. Which products experienced the largest difference between stock quantity and total quantity sold?
select * from assignment.customers;
select * from assignment.products;
select * from assignment.sales;

with quantity_diff as (
    select p.product_name, 
           p.stock_quantity,
           sum(s.quantity_sold) as total_quantity_sold,
           p.stock_quantity - sum(s.quantity_sold) as difference
    from products p
    join sales s on p.product_id = s.product_id
    group by p.product_name, p.stock_quantity
)
select product_name, 
       stock_quantity, 
       total_quantity_sold,
       difference
from quantity_diff
order by difference desc;

-- 95. Which customers have spending above the average spending of their membership tier?
select * from assignment.customers;
select * from assignment.products;
select * from assignment.sales;

with customer_spending as (
    select c.first_name || ' ' || c.last_name as full_name,
           c.membership_status,
           avg(s.total_amount) as avg_spent,
           avg(avg(s.total_amount)) over (partition by c.membership_status) as avg_tier_spending
    from customers c
    join sales s on c.customer_id = s.customer_id
    group by c.first_name, c.last_name, c.membership_status
)
select full_name, membership_status, avg_spent, avg_tier_spending
from customer_spending
where avg_spent > avg_tier_spending
order by membership_status, avg_spent desc;

-- 96. Which products have higher sales than the average sales within their category?
select * from assignment.products;
select * from assignment.sales;

with product_sales as (
    select p.product_name,
           p.category,
           avg(s.total_amount) as product_avg,
           avg(avg(s.total_amount)) over (partition by p.category) as category_avg
    from products p
    join sales s on p.product_id = s.product_id
    group by p.product_name, p.category
)
select product_name, category, product_avg, category_avg
from product_sales
where product_avg > category_avg
order by category, product_avg desc;

-- 97. Which customer made the largest single purchase relative to their total spending?
select * from assignment.customers;
select * from assignment.products;
select * from assignment.sales;

with customer_spending as (
    select c.first_name || ' ' || c.last_name as full_name,
           max(s.total_amount) as largest_purchase,
           sum(s.total_amount) as total_spent,
           max(s.total_amount) / sum(s.total_amount) as purchase_ratio
    from customers c
    join sales s on c.customer_id = s.customer_id
    group by c.first_name, c.last_name, c.customer_id
)
select full_name, largest_purchase, total_spent, 
       round(purchase_ratio::numeric, 2) as purchase_ratio
from customer_spending
order by purchase_ratio desc
limit 1;

-- 98. Which products rank among the top 3 most sold products within each category?
with product_sales as (
    select p.product_name,
           p.category,
           count(s.product_id) as times_sold,
           dense_rank() over (partition by p.category 
                              order by count(s.product_id) desc) as rank_within_category
    from products p
    join sales s on p.product_id = s.product_id
    group by p.product_name, p.category
)
select product_name, category, times_sold, rank_within_category
from product_sales
where rank_within_category <= 3
order by category, rank_within_category;
-- 99. Which customers are tied for the highest total spending?
with product_sales as (
    select p.product_name,
           p.category,
           count(s.product_id) as times_sold,
           dense_rank() over (partition by p.category 
                              order by count(s.product_id) desc) as rank_within_category
    from products p
    join sales s on p.product_id = s.product_id
    group by p.product_name, p.category
)
select product_name, category, times_sold, rank_within_category
from product_sales
where rank_within_category <= 3
order by category, rank_within_category;

-- 100. Which products generated sales every year present in the dataset?

with product_years as (
    select p.product_name,
           count(distinct extract(year from s.sale_date)) as years_sold
    from products p
    join sales s on p.product_id = s.product_id
    group by p.product_name
),
total_years as (
    select count(distinct extract(year from sale_date)) as total_years
    from sales
)
select py.product_name, py.years_sold, ty.total_years
from product_years py
cross join total_years ty
where py.years_sold = ty.total_years
order by py.product_name;
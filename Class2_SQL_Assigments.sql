-- select * from SH.CUSTOMERS
------------------------------------------------------
-- 1. From SH.CUSTOMERS, display customer ID, first name, last name, gender, and marital status for all female customers.

-- SELECT CUST_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CUST_GENDER,CUST_MARITAL_STATUS
-- FROM SH.CUSTOMERS WHERE CUST_GENDER = 'F';

------------------------------------------------------
-- 2. From SH.CUSTOMERS, find customers whose last name starts with S and whose 
-- year of birth is greater than 1970.

-- SELECT * FROM SH.CUSTOMERS WHERE CUST_LAST_NAME LIKE 'S%'
-- AND CUST_YEAR_OF_BIRTH > 1970;

------------------------------------------------------
-- 3. From SH.PRODUCTS, display product ID, product name, category, and list
-- price for products whose list price is between 100 and 500.

-- select * from sh.PRODUCTS
-- SELECT PROD_ID,PROD_NAME,PROD_CATEGORY,PROD_LIST_PRICE from SH.PRODUCTS
-- where PROD_LIST_PRICE BETWEEN 100 AND 500;

------------------------------------------------------
-- 4. From SH.PRODUCTS, find products whose minimum price is less than 50 and whose 
-- status is available.

-- SELECT * FROM SH.PRODUCTS WHERE PROD_MIN_PRICE < 50 AND PROD_STATUS = 'STATUS';

------------------------------------------------------
-- 5. From SH.SALES, display product ID, customer ID, quantity sold, and amount sold
-- for transactions where the amount sold is greater than 1000.

-- SELECT * FROM SH.SALES;
-- SELECT DISTINCT QUANTITY_SOLD FROM SH.SALES
-- SELECT PROD_ID,CUST_ID,QUANTITY_SOLD,AMOUNT_SOLD FROM SH.SALES WHERE AMOUNT_SOLD > 1000;

------------------------------------------------------
-- 6. From SH.SALES, find transactions where the quantity sold is greater 
-- than 2 and the channel ID is 3.

-- SELECT * FROM SH.SALES WHERE QUANTITY_SOLD > 2 AND CHANNEL_ID=3;

------------------------------------------------------
-- 7. From SH.CHANNELS, display channel ID and channel description for channels 
-- whose description contains the word Direct.
-- SELECT * FROM SH.CHANNELS

-- SELECT CHANNEL_ID,CHANNEL_DESC FROM SH.CHANNELS WHERE CHANNEL_DESC LIKE '%Direct%'

------------------------------------------------------
-- 8. From SH.PROMOTIONS, display promotion ID, promotion name, cost, and category 
-- where promotion cost is greater than 1000.

-- SELECT * FROM SH.PROMOTIONS
-- SELECT PROMO_ID,PROMO_NAME,PROMO_COST,PROMO_CATEGORY FROM SH.PROMOTIONS WHERE PROMO_COST>1000;

------------------------------------------------------
-- 9. From SH.PROMOTIONS, find promotions whose end date is greater than 
-- their begin date and whose promotion cost is greater than 500.

-- SELECT * FROM SH.PROMOTIONS WHERE PROMO_END_DATE > PROMO_BEGIN_DATE AND PROMO_COST >500;

------------------------------------------------------
-- 10. From SH.COUNTRIES, display country ID, country name, and region ID for
-- countries belonging to region ID 52790.

-- SELECT COUNTRY_ID,COUNTRY_NAME,COUNTRY_REGION_ID FROM SH.COUNTRIES WHERE COUNTRY_REGION_ID = 52790;
-- SELECT COUNTRY_ID,COUNTRY_NAME,COUNTRY_REGION_ID FROM SH.COUNTRIES WHERE COUNTRY_REGION_ID = '52790';
-- DESC SH.COUNTRIES;
------------------------------------------------------
-- 11. From SH.TIMES, display time ID, day name, calendar month name, and 
-- calendar year for dates belonging to the year 2000.

-- desc SH.TIMES;
-- SELECT TIME_ID,DAY_NAME,CALENDAR_MONTH_NAME,CALENDAR_YEAR
-- FROM SH.TIMES WHERE CALENDAR_YEAR = 2000;
------------------------------------------------------
-- 12. From SH.TIMES, find all dates where the calendar month name is December 
-- and the calendar year is 2001.

-- SELECT * FROM SH.TIMES WHERE CALENDAR_MONTH_NAME = 'December' AND
-- CALENDAR_YEAR = 2001;

------------------------------------------------------
-- 13. From SH.COSTS, display product ID, time ID, unit cost, and unit price
--  where unit price is greater than unit cost.

-- SELECT PROD_ID,TIME_ID,UNIT_COST,UNIT_PRICE FROM SH.COSTS
--  WHERE UNIT_PRICE > UNIT_COST;

------------------------------------------------------
-- 14.From SH.COSTS, find records where unit cost is greater than 100 and 
-- unit price is less than 1000.

-- SELECT * FROM SH.COSTS WHERE UNIT_COST > 100 AND UNIT_PRICE < 1000;

------------------------------------------------------
-- 15. From SH.SUPPLEMENTARY_DEMOGRAPHICS, display customer ID, education, 
-- occupation,and household size for customers whose household size is 
-- greater than 3.

-- SELECT CUST_ID,EDUCATION,OCCUPATION,HOUSEHOLD_SIZE FROM 
-- SH.SUPPLEMENTARY_DEMOGRAPHICS WHERE TO_NUMBER(REPLACE(HOUSEHOLD_SIZE,'+','')) > 3;


-- SELECT DISTINCT HOUSEHOLD_SIZE
-- FROM SH.SUPPLEMENTARY_DEMOGRAPHICS;

------------------------------------------------------

-- ============    GROUP BY – DIFFERENT BUSINESS QUESTIONS    ================

------------------------------------------------------
-- 16. Using SH.CUSTOMERS, find the number of customers belonging to each 
-- marital status.

-- SELECT CUST_MARITAL_STATUS,COUNT(*) AS MARITAL_STATUS_COUNT FROM SH.CUSTOMERS GROUP BY CUST_MARITAL_STATUS;

------------------------------------------------------
-- 17. Using SH.CUSTOMERS, find the average customer year of birth for each gender.

-- SELECT CUST_GENDER, AVG(CUST_YEAR_OF_BIRTH) FROM SH.CUSTOMERS GROUP BY CUST_GENDER;

------------------------------------------------------
-- 18. Using SH.PRODUCTS, find the average list price of products in each
--  product category.

-- SELECT PROD_CATEGORY,AVG(PROD_LIST_PRICE) FROM SH.PRODUCTS GROUP BY 
-- PROD_CATEGORY;

------------------------------------------------------
-- 19. Using SH.PRODUCTS, find the highest minimum price in each 
-- product subcategory.

-- SELECT PROD_SUBCATEGORY, MAX(PROD_MIN_PRICE) AS HIGHEST_MIN_PRICE 
-- FROM SH.PRODUCTS GROUP BY PROD_SUBCATEGORY;

------------------------------------------------------
-- 20.Using SH.SALES, calculate the total sales amount generated by each channel.

-- SELECT * FROM SH.SALES;
-- select CHANNEL_ID, sum(AMOUNT_SOLD) as total_sales_amount from sh.SALES 
-- group by CHANNEL_ID;

------------------------------------------------------
-- 21. Using SH.SALES, calculate the total quantity sold for each product.

-- SELECT PROD_ID, sum(QUANTITY_SOLD) as total_quantity_sold from sh.SALES 
-- group by PROD_ID

------------------------------------------------------
-- 22. Using SH.SALES, find the average sales amount for each promotion.
-- SELECT PROMO_ID, AVG(AMOUNT_SOLD)as total_sales_amount from sh.SALES
--     GROUP BY PROMO_ID;

------------------------------------------------------
-- 23. Using SH.PROMOTIONS, calculate the total promotion cost for 
-- each promotion category.

-- SELECT PROMO_CATEGORY, SUM(PROMO_COST) as total_promo_cost from SH.PROMOTIONS
-- GROUP BY PROMO_CATEGORY;

------------------------------------------------------
-- 24. Using SH.COUNTRIES, count the number of countries belonging to each region.

-- SELECT COUNTRY_REGION,count(*) as Countries_count FROM SH.COUNTRIES 
-- GROUP BY COUNTRY_REGION;

------------------------------------------------------
-- 25. Using SH.COSTS, calculate the average unit cost for each product.

-- SELECT PROD_ID, avg(UNIT_COST) from SH.COSTS GROUP BY PROD_ID;

------------------------------------------------------

-- ============    TWO-LEVEL GROUP BY    ================

------------------------------------------------------

-- 26. Using SH.CUSTOMERS, count customers by gender and marital status.

-- select CUST_GENDER,CUST_MARITAL_STATUS,COUNT(*)as Count_Customers from SH.CUSTOMERS
-- GROUP BY CUST_GENDER, CUST_MARITAL_STATUS;

------------------------------------------------------
-- 27. Using SH.PRODUCTS, count products by product category
--  and product subcategory.

-- SELECT PROD_CATEGORY,PROD_SUBCATEGORY,count(*) as Count_products from SH.PRODUCTS
--  GROUP BY PROD_CATEGORY,PROD_SUBCATEGORY;

------------------------------------------------------
-- 28. Using SH.SALES, calculate total sales amount for each product and 
-- channel combination.

-- select PROD_ID,CHANNEL_ID,SUM(AMOUNT_SOLD)as total_sales_amount 
-- from sh.SALES GROUP BY PROD_ID,CHANNEL_ID;

------------------------------------------------------
-- 29. Using SH.SALES, calculate total quantity sold for each channel and 
-- promotion combination.

-- select CHANNEL_ID,PROMO_ID,SUM(QUANTITY_SOLD)as total_quantity_amount 
-- from sh.SALES GROUP BY CHANNEL_ID,PROMO_ID;

------------------------------------------------------
-- 30. Using SH.COSTS, find the average unit cost for each product and 
-- promotion combination.

-- SELECT PROD_ID,PROMO_ID, AVG(UNIT_COST) AS Avg_unit_cost from SH.COSTS GROUP BY
--  PROD_ID,PROMO_ID;

------------------------------------------------------

-- ============    GROUP BY – WHERE + GROUP BY    ================

------------------------------------------------------
-- 31. From SH.SALES, consider only transactions where AMOUNT_SOLD > 500 and 
-- calculate total sales amount for each channel.

-- SELECT CHANNEL_ID, SUM(AMOUNT_SOLD) AS TOTAL_SALE_AMOUNT FROM SH.SALES WHERE 
-- AMOUNT_SOLD > 500 GROUP BY CHANNEL_ID;

------------------------------------------------------
-- 32. From SH.PRODUCTS, consider only products whose list price is greater 
-- than 100 and find the average list price for each product category.

-- SELECT PROD_CATEGORY,AVG(PROD_LIST_PRICE) AS AVG_LIST_PRICE FROM SH.PRODUCTS
--  WHERE PROD_LIST_PRICE > 100 GROUP BY PROD_CATEGORY;

------------------------------------------------------
-- 33. From SH.CUSTOMERS, consider only customers born after 1970 and count
--  them by marital status.

-- SELECT CUST_MARITAL_STATUS,COUNT(*) AS COUNTMARITAL_STATUS FROM SH.CUSTOMERS
--  WHERE CUST_YEAR_OF_BIRTH > 1970 GROUP BY CUST_MARITAL_STATUS;


------------------------------------------------------
-- 34. From SH.PROMOTIONS, consider only promotions whose cost is greater than 500 
-- and calculate the average promotion cost for each promotion category.

-- SELECT PROMO_CATEGORY, AVG(PROMO_COST) AS AVG_PROMO_COST FROM SH.PROMOTIONS
--  WHERE PROMO_COST>500 GROUP BY PROMO_CATEGORY;


------------------------------------------------------
-- 35. From SH.COSTS, consider records where unit cost is greater than 50 and
--  calculate the maximum unit price for each product.

-- SELECT PROD_ID, MAX(UNIT_COST) AS MAX_UNIT_PRICE FROM SH.COSTS WHERE UNIT_COST>50
--  GROUP BY PROD_ID;

------------------------------------------------------

-- ============    GROUP BY – GROUP BY + HAVING    ================

------------------------------------------------------

-- 36. Using SH.CUSTOMERS, display marital statuses having more 
-- than 100 customers.

-- SELECT CUST_MARITAL_STATUS, COUNT(*) AS MARITAL_STATUS_COUNT FROM 
-- SH.CUSTOMERS GROUP BY CUST_MARITAL_STATUS HAVING COUNT(*) >100

------------------------------------------------------
-- 37. Using SH.PRODUCTS, display product categories whose average
--  list price is greater than 500.

-- SELECT PROD_CATEGORY, AVG(PROD_LIST_PRICE) AS AVG_LIST_PRICE FROM SH.PRODUCTS
--  GROUP BY PROD_CATEGORY HAVING AVG(PROD_LIST_PRICE) > 500;

------------------------------------------------------
-- 38. Using SH.SALES, display channels whose total sales amount
--  is greater than 100000.

-- SELECT CHANNEL_ID, SUM(AMOUNT_SOLD) AS SALES_TOTAL_AMOUNT FROM SH.SALES
--  GROUP BY CHANNEL_ID HAVING SUM(AMOUNT_SOLD)>100000

------------------------------------------------------
-- 39. Using SH.PROMOTIONS, display promotion categories whose average 
-- promotion cost is greater than 1000.

-- SELECT PROMO_CATEGORY, AVG(PROMO_COST) AS AVG_PROMO_COST FROM SH.PROMOTIONS
--     GROUP BY PROMO_CATEGORY HAVING AVG(PROMO_COST) > 1000;

------------------------------------------------------
-- 40. Using SH.COSTS, display products whose average unit price 
-- is greater than 500.

-- SELECT PROD_ID, AVG(UNIT_PRICE)AS AVG_UNIT_PRICE FROM SH.COSTS GROUP BY PROD_ID
-- HAVING AVG(UNIT_PRICE)>500;
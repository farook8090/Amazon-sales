-- Question - 1 : List all products with a discounted price below ₹500.
select * from mytable;
SELECT 
    product_name, discounted_price
FROM
    mytable
WHERE
    discounted_price < 500;


-- Question - 2 : Find products with a discount percentage of 50% or more.

SELECT 
    product_name, discount_percentage
FROM
    mytable
WHERE
    discount_percentage >= 0.50;

-- Question - 3 : Retrieve all products where the name contains the word "Cable."

SELECT 
    product_name
FROM
    mytable
WHERE
    product_name LIKE '%Cable%';



-- Question - 4 : Display the difference between 
-- the average of the actual price and the discounted price for each product.
-- (AVG(actual_price) - AVG(discounted_price)) AS 'Avg. Diff'

SELECT 
    product_name,
    AVG(actual_price),
    AVG(discounted_price),
    (AVG(actual_price) - AVG(discounted_price)) AS 'Avg. Diff'
FROM
    mytable
GROUP BY product_name;


-- Question - 5 : Query reviews that mention "fast charging" in their content.

SELECT 
    product_name,review_content
FROM
    mytable
WHERE
    review_content LIKE '%fast charging%';


-- Question - 6 : Identify products with a discount percentage between 20% and 40%.

SELECT 
    product_name,discount_percentage
FROM
    mytable
WHERE
    discount_percentage BETWEEN 0.20 AND 0.40;


-- Question - 7 : Find products that have an actual price above ₹1,000 
-- and are rated 4 stars or above.

SELECT 
    product_name,actual_price,rating
FROM
    mytable
WHERE
    actual_price > 1000 AND rating >= 4;
    


-- Question - 8 : Find products where the discounted price ends with "9" .

SELECT 
    product_name,discounted_price
FROM
    mytable
WHERE
    discounted_price LIKE '%9';


-- Question - 9 : Display review contents that contains words like worst, waste, poor, or not good.

SELECT 
    product_name,review_content
FROM
    mytable
WHERE
    review_content LIKE '%worst%'
        OR review_content LIKE '%waste%'
        OR review_content LIKE '%poor%'
        OR review_content LIKE '%not good%';


-- Question - 10 : List all products where the category includes "Accessories".

SELECT 
    product_name, category
FROM
    mytable
WHERE
    category LIKE '%Accessories%';


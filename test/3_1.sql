EXPLAIN
SELECT
  customer_id,
  title,
  content
FROM `product_comment`
WHERE audit_status = 1 AND product_id = 199726
LIMIT 0, 5;


EXPLAIN
SELECT
  c.`category_name`,
  a.`product_name`,
  b.`title`
FROM product_info a
  JOIN product_comment b ON a.`product_id` = b.`product_id`
  JOIN product_category c ON c.`category_id` = a.`one_category_id`;


EXPLAIN
SELECT title
FROM product_comment
WHERE product_id IN (
  SELECT max(product_id)
  FROM product_info
  WHERE one_category_id IN (SELECT min(category_id)
                            FROM product_category)
);


EXPLAIN
SELECT title
FROM (
       SELECT
         one_category_id,
         max(product_id) AS pid
       FROM product_info
       GROUP BY one_category_id
     ) a
  JOIN product_comment b ON a.pid = b.`product_id`

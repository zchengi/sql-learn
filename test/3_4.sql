# 查询重复评论
SELECT
  order_id,
  product_id,
  count(*)
FROM product_comment
GROUP BY order_id, product_id
HAVING count(*) > 1;

# MySQL 备份表
CREATE TABLE bak_product_comment_180529
  AS
    SELECT *
    FROM product_comment;
# 另一种写法
CREATE TABLE bak_product_comment_180529
  LIKE product_comment;

# 插入数据到备份表
INSERT INTO bak_product_comment_180529
  SELECT *
  FROM product_comment;

# 删除重复评论
DELETE a FROM product_comment a
  JOIN (
         SELECT
           order_id,
           product_id,
           min(comment_id) AS common_id
         FROM product_comment
         GROUP BY order_id, product_id
         HAVING count(*) >= 2)
       b ON a.order_id = b.order_id AND a.product_id = b.product_id AND a.comment_id > b.common_id
# 统计消费总金额大于1000元的，800到1000元的，500到800元的，以及500以下的人数
SELECT
  count(CASE WHEN ifnull(total_money, 0) >= 1000
    THEN a.customer_id END) AS '大于1000',
  count(CASE WHEN ifnull(total_money, 0) >= 800 AND ifnull(total_money, 0) < 1000
    THEN a.customer_id END) AS '800~1000',
  count(CASE WHEN ifnull(total_money, 0) >= 500 AND ifnull(total_money, 0) < 800
    THEN a.customer_id END) AS '500~800',
  count(CASE WHEN ifnull(total_money, 0) < 500
    THEN a.customer_id END) AS '小于500'
FROM `customer_login` a
  LEFT JOIN (
              SELECT
                customer_id,
                sum(order_money) AS total_money
              FROM mc_orderdb.`order_master`
              GROUP BY customer_id
            ) b
    ON a.`customer_id` = b.`customer_id`;

# 统计总人数
SELECT count(*)
FROM `customer_login`;
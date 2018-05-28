CREATE TABLE order_detail (
  order_detail_id INT UNSIGNED  NOT NULL  AUTO_INCREMENT
  COMMENT '自增主键ID,订单详情表ID',
  order_id        INT UNSIGNED  NOT NULL
  COMMENT '订单表ID',
  product_id      INT UNSIGNED  NOT NULL
  COMMENT '订单商品ID',
  product_name    VARCHAR(50)   NOT NULL
  COMMENT '商品名称',
  product_cnt     INT           NOT NULL  DEFAULT 1
  COMMENT '购买商品数量',
  product_proce   DECIMAL(8, 2) NOT NULL
  COMMENT '购买商品单价',
  average_cost    DECIMAL(8, 2) NOT NULL  DEFAULT 0.00
  COMMENT '平均成本价格',
  weight          FLOAT COMMENT '商品重量',
  fee_money       DECIMAL(8, 2) NOT NULL  DEFAULT 0.00
  COMMENT '优惠分摊金额',
  w_id            INT UNSIGNED  NOT NULL
  COMMENT '仓库ID',
  nodified_time   TIMESTAMP     NOT NULL  DEFAULT current_timestamp ON UPDATE current_timestamp
  COMMENT '最后修改时间',
  FOREIGN KEY pk_orderdetailid (order_detail_id)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COMMENT = '订单详情表';
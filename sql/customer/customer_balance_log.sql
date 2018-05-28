CREATE TABLE customer_balance_log (
  balance_id  INT UNSIGNED     NOT NULL  AUTO_INCREMENT
  COMMENT '余额日志ID',
  customer_id INT UNSIGNED     NOT NULL
  COMMENT '用户ID',
  source      TINYINT UNSIGNED NOT NULL
  COMMENT '记录来源: 1 订单,2 退货单',
  source_sn   INT UNSIGNED     NOT NULL
  COMMENT '相关单据ID',
  create_time TIMESTAMP        NOT NULL  DEFAULT current_timestamp
  COMMENT '记录生成时间',
  amount      DECIMAL(8, 2)    NOT NULL  DEFAULT 0.00
  COMMENT '变动金额',
  PRIMARY KEY pk_balanceid (balance_id)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COMMENT = '用户余额变动表';
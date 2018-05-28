CREATE TABLE order_master (
  order_id           INT UNSIGNED    NOT NULL  AUTO_INCREMENT
  COMMENT '订单ID',
  ordet_sn           BIGINT UNSIGNED NOT NULL
  COMMENT '订单编号 yyyymmddnnnnnnn',
  customer_id        INT UNSIGNED    NOT NULL
  COMMENT '下单人ID',
  shipping_user      VARCHAR(10)     NOT NULL
  COMMENT '收货人姓名',
  province           SMALLINT        NOT NULL
  COMMENT '省',
  city               SMALLINT        NOT NULL
  COMMENT '市',
  district           SMALLINT        NOT NULL
  COMMENT '区',
  address            VARCHAR(100)    NOT NULL
  COMMENT '地址',
  payment_method     TINYINT         NOT NULL
  COMMENT '支付方式: 1.现金,2.余额,3.网银,4.支付宝,5.微信',
  order_money        DECIMAL(8, 2)   NOT NULL  DEFAULT 0.00
  COMMENT '订单金额',
  district_money     DECIMAL(8, 2)   NOT NULL  DEFAULT 0.00
  COMMENT '优惠金额',
  shipping_money     DECIMAL(8, 2)   NOT NULL  DEFAULT 0.00
  COMMENT '运费金额',
  payment_money      DECIMAL(8, 2)   NOT NULL  DEFAULT 0.00
  COMMENT '支付金额',
  shipping_comp_name VARCHAR(10) COMMENT '快递公司名称',
  shipping_sn        VARCHAR(50) COMMENT '快递单号',
  create_time        TIMESTAMP       NOT NULL  DEFAULT current_timestamp
  COMMENT '下单时间',
  shipping_time      DATETIME COMMENT '发货时间',
  pay_time           DATETIME COMMENT '支付时间',
  receive_time       DATETIME COMMENT '收货时间',
  order_status       TINYINT         NOT NULL  DEFAULT 0
  COMMENT '订单状态',
  order_point        INT UNSIGNED    NOT NULL  DEFAULT 0
  COMMENT '订单积分',
  invoice_title      VARCHAR(100) COMMENT '发票抬头',
  modified_time      TIMESTAMP       NOT NULL  DEFAULT current_timestamp ON UPDATE current_timestamp
  COMMENT '最后修改时间',
  PRIMARY KEY pk_orderid(order_id)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COMMENT = '订单主表';
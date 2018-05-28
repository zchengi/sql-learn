CREATE TABLE warehouse_product (
  wp_id          INT UNSIGNED      NOT NULL  AUTO_INCREMENT
  COMMENT '商品库存ID',
  product_id     INT UNSIGNED      NOT NULL
  COMMENT '商品ID',
  w_id           SMALLINT UNSIGNED NOT NULL
  COMMENT '仓库ID',
  current_cnt    INT UNSIGNED      NOT NULL  DEFAULT 0
  COMMENT '当前商品数量',
  lock_cnt       INT UNSIGNED      NOT NULL  DEFAULT 0
  COMMENT '当前占用数据',
  in_transit_cnt INT UNSIGNED      NOT NULL  DEFAULT 0
  COMMENT '在途数据',
  average_cost   DECIMAL(8, 2)     NOT NULL  DEFAULT 0.00
  COMMENT '移动加权成本',
  modified_time  TIMESTAMP         NOT NULL  DEFAULT current_cnt ON UPDATE current_timestamp
  COMMENT '最后修改时间',
  PRIMARY KEY pk_wpid(wp_id)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COMMENT = '商品库存表';
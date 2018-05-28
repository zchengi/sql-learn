CREATE TABLE customer_addr (
  customer_addr_id INT UNSIGNED AUTO_INCREMENT NOT NULL
  COMMENT '自增主键ID',
  customer_id      INT UNSIGNED                NOT NULL
  COMMENT 'customer_login表的自增ID',
  zip              SMALLINT                    NOT NULL
  COMMENT '邮编',
  province         SMALLINT                    NOT NULL
  COMMENT '地区表中省份的id',
  city             SMALLINT                    NOT NULL
  COMMENT '地区表中城市的id',
  distict          SMALLINT                    NOT NULL
  COMMENT '地区表中的区id',
  address          VARCHAR(200)                NOT NULL
  COMMENT '具体的地址门牌号',
  is_default       TINYINT                     NOT NULL
  COMMENT '是否默认',
  modified_time    TIMESTAMP                   NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp
  COMMENT '最后修改时间',
  PRIMARY KEY pk_customeraddrid (customer_addr_id)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COMMENT = '用户地址表';
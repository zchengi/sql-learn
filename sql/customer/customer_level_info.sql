CREATE TABLE customer_level_info (
  customer_level TINYINT      NOT NULL  AUTO_INCREMENT
  COMMENT '会员级别ID',
  level_name     VARCHAR(10)  NOT NULL
  COMMENT '会员级别名称',
  min_point      INT UNSIGNED NOT NULL  DEFAULT 0
  COMMENT '该级别最低积分',
  max_point      INT UNSIGNED NOT NULL  DEFAULT 0
  COMMENT '该级别最高积分',
  modifide_time  TIMESTAMP    NOT NULL  DEFAULT current_timestamp ON UPDATE current_timestamp
  COMMENT '最后修改时间',
  PRIMARY KEY pk_levelid (customer_level)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COMMENT '用户级别信息表';
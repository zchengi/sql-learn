CREATE TABLE customer_point_log (
  point_id     INT UNSIGNED     NOT NULL  AUTO_INCREMENT
  COMMENT '积分日志ID',
  customer_id  INT UNSIGNED     NOT NULL
  COMMENT '用户ID',
  source       TINYINT UNSIGNED NOT NULL
  COMMENT '积分来源: 0 订单,1 登录,2 活动',
  refer_number INT UNSIGNED     NOT NULL  DEFAULT 0
  COMMENT '积分来源相关编号',
  change_point SMALLINT         NOT NULL  DEFAULT 0
  COMMENT '变更积分数',
  create_time  TIMESTAMP        NOT NULL  DEFAULT current_timestamp
  COMMENT '积分日志生成时间',
  PRIMARY KEY pk_pointid (point_id)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COMMENT = '用户积分日志表';
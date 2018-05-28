CREATE TABLE customer_login_log (
  login_id    INT UNSIGNED NOT NULL  AUTO_INCREMENT
  COMMENT '登录日志ID',
  customer_id INT UNSIGNED NOT NULL
  COMMENT '登录用户ID',
  login_time  TIMESTAMP    NOT NULL  DEFAULT current_timestamp
  COMMENT '用户登录时间',
  login_ip    INT UNSIGNED NOT NULL
  COMMENT '登录IP',
  login_type  TINYINT      NOT NULL
  COMMENT '登录类型: 0 未成功,1 成功',
  PRIMARY KEY pk_loginid (login_id)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COMMENT = '用户登录日志表';



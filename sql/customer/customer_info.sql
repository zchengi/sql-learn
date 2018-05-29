CREATE TABLE customer_info (
  customer_info_id   INT UNSIGNED AUTO_INCREMENT NOT NULL
  COMMENT '自增主键ID',
  customer_id        INT UNSIGNED                NOT NULL
  COMMENT 'customer_login表的自增主键ID',
  customer_name      VARCHAR(20)                 NOT NULL
  COMMENT '用户真实姓名',
  identify_card_type TINYINT(4)                  NOT NULL DEFAULT 1
  COMMENT '证件类型: 1 身份证,2 军官证,3 护照',
  `identity_card_no` varchar(20) DEFAULT NULL COMMENT '证件号码',
  mobile_phone       INT UNSIGNED COMMENT '手机号',
  customer_email     VARCHAR(50) COMMENT '邮箱',
  gender             CHAR(1) COMMENT '性别',
  user_point         INT                         NOT NULL DEFAULT 0
  COMMENT '用户积分',
  register_time      TIMESTAMP                   NOT NULL
  COMMENT '注册时间',
  birthday           DATETIME COMMENT '会员生日',
  customer_level     TINYINT(4)                  NOT NULL DEFAULT 1
  COMMENT '会员级别: 1 普通会员,2 青铜会员,3 白银会员,4 黄金会员,5 钻石会员',
  user_money         DECIMAL(8, 2)               NOT NULL DEFAULT 0.00
  COMMENT '用户余额',
  modified_time      TIMESTAMP                   NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp
  COMMENT '最后修改时间',
  PRIMARY KEY pk_customerinfoid (customer_info_id)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COMMENT ='用户信息表';
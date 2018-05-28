CREATE TABLE supplier_info (
  supplier_id     INT UNSIGNED AUTO_INCREMENT NOT NULL
  COMMENT '供应商ID',
  supplier_code   CHAR(8)                     NOT NULL
  COMMENT '供应商编码',
  supplier_name   CHAR(50)                    NOT NULL
  COMMENT '供应商名称',
  supplier_type   TINYINT                     NOT NULL
  COMMENT '供应商类型: 1.自营,2.平台',
  link_man        VARCHAR(10)                 NOT NULL
  COMMENT '供应商联系人',
  phone_number    VARCHAR(50)                 NOT NULL
  COMMENT '联系电话',
  bank_name       VARCHAR(50)                 NOT NULL
  COMMENT '供应商开户银行名称',
  bank_account    VARCHAR(50)                 NOT NULL
  COMMENT '银行帐号',
  address         VARCHAR(200)                NOT NULL
  COMMENT '供应商地址',
  supplier_status TINYINT                     NOT NULL  DEFAULT 0
  COMMENT '状态: 0.禁用,1.启用',
  modified_time   TIMESTAMP                   NOT NULL  DEFAULT current_timestamp ON UPDATE current_timestamp
  COMMENT '最后修改时间',
  PRIMARY KEY pk_supplierid(supplier_id)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COMMENT = '供应商信息表';
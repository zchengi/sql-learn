CREATE TABLE brand_info (
  brand_id      SMALLINT UNSIGNED AUTO_INCREMENT NOT NULL
  COMMENT '品牌ID',
  brand_name    VARCHAR(50)                      NOT NULL
  COMMENT '品牌名称',
  telephone     VARCHAR(50)                      NOT NULL
  COMMENT '联系电话',
  brand_web     VARCHAR(100) COMMENT '品牌网络',
  brand_logo    VARCHAR(100) COMMENT '品牌logo URL',
  brand_desc    VARCHAR(150) COMMENT '品牌描述',
  brand_status  TINYINT                          NOT NULL DEFAULT 0
  COMMENT '品牌状态,0 禁用,1 启用',
  brand_order   TINYINT                          NOT NULL DEFAULT 0
  COMMENT '排序',
  modified_time TIMESTAMP                        NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp
  COMMENT '最后修改时间',
  PRIMARY KEY pk_brandid(brand_id)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COMMENT = '品牌信息表';

CREATE TABLE product_pic_info (
  product_pic_id INT UNSIGNED AUTO_INCREMENT NOT NULL
  COMMENT '商品图片ID',
  product_id     INT UNSIGNED                NOT NULL
  COMMENT '商品ID',
  pic_desc       VARCHAR(50) COMMENT '图片描述',
  pic_url        VARCHAR(200)                NOT NULL
  COMMENT '图片URL',
  is_master      TINYINT                     NOT NULL  DEFAULT 0
  COMMENT '是否主图: 0,非主图,1.主图',
  pic_order      TINYINT                     NOT NULL  DEFAULT 0
  COMMENT '图片排序',
  pic_status     TINYINT                     NOT NULL  DEFAULT 1
  COMMENT '图片是否有效: 0.无效,1.有效',
  modified_time  TIMESTAMP                   NOT NULL  DEFAULT current_timestamp ON UPDATE current_timestamp
  COMMENT '最后修改时间',
  PRIMARY KEY pk_picid (product_pic_id)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COMMENT = '商品图片信息表';
CREATE TABLE product_info (
  product_id        INT UNSIGNED AUTO_INCREMENT NOT NULL
  COMMENT '商品ID',
  product_code      CHAR(16)                    NOT NULL
  COMMENT '商品编码',
  product_name      VARCHAR(50)                 NOT NULL
  COMMENT '商品名称',
  bar_code          VARCHAR(50)                 NOT NULL
  COMMENT '国条码',
  brand_id          INT(10) UNSIGNED            NOT NULL
  COMMENT '品牌表的ID',
  one_category_id   SMALLINT UNSIGNED           NOT NULL
  COMMENT '一级分类ID',
  two_category_id   SMALLINT UNSIGNED           NOT NULL
  COMMENT '二级分类ID',
  three_category_id SMALLINT UNSIGNED           NOT NULL
  COMMENT '三级分类ID',
  supplier_id       INT UNSIGNED                NOT NULL
  COMMENT '商品的供应商id',
  price             DECIMAL(8, 2)               NOT NULL
  COMMENT '商品销售价格',
  average_cost      DECIMAL(18, 2)              NOT NULL
  COMMENT '商品加权平均成本',
  publish_status    TINYINT                     NOT NULL  DEFAULT 0
  COMMENT '上下架状态: 0.下架,1.上架',
  audit_status      TINYINT                     NOT NULL  DEFAULT 0
  COMMENT '审核状态: 0.未审核,1.已审核',
  weight            FLOAT COMMENT '商品重量',
  length            FLOAT COMMENT '商品长度',
  height            FLOAT COMMENT '商品高度',
  width             FLOAT COMMENT '商品宽度',
  color_type        ENUM ('红', '黄', '蓝', '黑'),
  production_date   DATETIME                    NOT NULL
  COMMENT '生产日期',
  shelf_life        INT                         NOT NULL
  COMMENT '商品有效期',
  description       TEXT                        NOT NULL
  COMMENT '商品描述',
  indate            TIMESTAMP                   NOT NULL  DEFAULT current_timestamp
  COMMENT '商品录入时间',
  modified_time     TIMESTAMP                   NOT NULL  DEFAULT current_timestamp ON UPDATE current_timestamp
  COMMENT '最后修改时间',
  PRIMARY KEY pk_productid (product_id)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COMMENT = '商品信息表';
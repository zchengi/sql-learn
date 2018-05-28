CREATE TABLE product_comment (
  comment_id    INT UNSIGNED AUTO_INCREMENT NOT NULL
  COMMENT '评论ID',
  product_id    INT UNSIGNED                NOT NULL
  COMMENT '商品ID',
  order_id      BIGINT UNSIGNED             NOT NULL
  COMMENT '订单ID',
  customer_id   INT UNSIGNED                NOT NULL
  COMMENT '用户ID',
  title         VARCHAR(50)                 NOT NULL
  COMMENT '评论标题',
  content       VARCHAR(300)                NOT NULL
  COMMENT '评论内容',
  audit_status  TINYINT                     NOT NULL
  COMMENT '审核状态: 0.未审核,1.已审核',
  audit_time    TIMESTAMP                   NOT NULL
  COMMENT '评论时间',
  modified_time TIMESTAMP                   NOT NULL  DEFAULT current_timestamp ON UPDATE current_timestamp
  COMMENT '最后修改时间',
  PRIMARY KEY pk_commentid(comment_id)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COMMENT = '商品评论表';
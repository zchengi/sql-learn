CREATE TABLE `region_info` (
  `region_id`    SMALLINT(6)  NOT NULL AUTO_INCREMENT
  COMMENT '主键id',
  `parent_id`    SMALLINT(6)  NOT NULL DEFAULT '0'
  COMMENT '上级地区id',
  `region_name`  VARCHAR(150) NOT NULL
  COMMENT '城市名称',
  `region_level` TINYINT(1)   NOT NULL
  COMMENT '级别',
  PRIMARY KEY (`region_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COMMENT ='地区信息表';
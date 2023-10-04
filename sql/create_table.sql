-- 数据库初始化


-- 创建库
create
    database if not exists bi;

-- 切换库
use
    bi;

-- 用户表
create table if not exists user
(
    id
                 bigint
        auto_increment
        comment
            'id'
        primary
            key,
    userAccount
                 varchar(256)                           not null comment '账号',
    userPassword varchar(512)                           not null comment '密码',
    unionId      varchar(256)                           null comment '微信开放平台id',
    mpOpenId     varchar(256)                           null comment '公众号openId',
    userName     varchar(256)                           null comment '用户昵称',
    userAvatar   varchar(1024)                          null comment '用户头像',
    userProfile  varchar(512)                           null comment '用户简介',
    userRole     varchar(256) default 'user'            not null comment '用户角色：user/admin/ban',
    createTime   datetime     default CURRENT_TIMESTAMP not null comment '创建时间',
    updateTime   datetime     default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    isDelete     tinyint      default 0                 not null comment '是否删除',
    index idx_unionId
        (
         unionId
            )
) comment '用户' collate = utf8mb4_unicode_ci;


-- 图表信息表
CREATE TABLE `chart`
(
    `id`          bigint                                  NOT NULL AUTO_INCREMENT COMMENT 'id',
    `goal`        text COLLATE utf8mb4_unicode_ci COMMENT '分析目标',
    `name`        varchar(128) COLLATE utf8mb4_unicode_ci          DEFAULT NULL COMMENT '图表名称',
    `chartData`   text COLLATE utf8mb4_unicode_ci COMMENT '图表数据',
    `chartType`   varchar(128) COLLATE utf8mb4_unicode_ci          DEFAULT NULL COMMENT '图表类型',
    `genChart`    text COLLATE utf8mb4_unicode_ci COMMENT '生成的图表数据',
    `genResult`   text COLLATE utf8mb4_unicode_ci COMMENT '生成的分析结论',
    `status`      varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'wait' COMMENT 'wait,running,succeed,failed',
    `execMessage` text COLLATE utf8mb4_unicode_ci COMMENT '执行信息',
    `userId`      bigint                                           DEFAULT NULL COMMENT '创建用户 id',
    `createTime`  datetime                                NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `updateTime`  datetime                                NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `isDelete`    tinyint                                 NOT NULL DEFAULT '0' COMMENT '是否删除',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1709153977739694082
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci COMMENT ='图表信息表'



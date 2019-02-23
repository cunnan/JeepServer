#设置数据库客户端编码
SET NAMES UTF8;
#若存在数据库jeep,则删除
DROP DATABASE IF EXISTS jeep;
#新建数据库jeep
CREATE DATABASE jeep CHARSET=UTF8;
#进入数据库jeep
USE jeep

##创建新表
CREATE TABLE jeep_nav(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nav VARCHAR(255),
    sid INT
)DEFAULT CHARSET=utf8;

##插入数据
INSERT INTO jeep_nav VALUES
(NULL,'../../assets/images/logo.png',10),
(NULL,'品牌车型▼',20),
(NULL,'Jeep&nbsp;Life',30),
(NULL,'购车支持',40),
(NULL,'Jeep全境界',50),
(NULL,'品牌信息',60),
(NULL,'查询经销商',70),
(NULL,'预约试驾',80),
(NULL,'../../assets/images/search.png',90),
(NULL,'../../assets/images/sc.png',100),
(NULL,'../../assets/images/dt.png',110);

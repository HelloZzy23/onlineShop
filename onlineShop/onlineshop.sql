/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : localhost:3306
 Source Schema         : onlineshop

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 05/06/2019 09:32:00
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`adminId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'zzy', '123456');

-- ----------------------------
-- Table structure for commodity
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity`  (
  `comId` int(11) NOT NULL AUTO_INCREMENT,
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '商品',
  `basicPrice` float NOT NULL,
  `currentPrice` float NOT NULL,
  `count` int(11) NOT NULL DEFAULT 20,
  `imgUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=4019618613,3405954363&fm=58&bpow=1024&bpoh=1024',
  PRIMARY KEY (`comId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES (9, '霸王育发防脱洗发水80ml防脱发 育发增发密发固发 控油洗发露', 12.9, 12.9, 50, 'https://gw.alicdn.com/bao/uploaded/i1/725677994/TB2J044dQvoK1RjSZFNXXcxMVXa_!!725677994-0-item_pic.jpg');
INSERT INTO `commodity` VALUES (10, '浪奇手洗除菌瓶装洗衣液400g（薰衣草香型）有效除菌', 29.9, 29.9, 20, 'https://gw.alicdn.com/bao/uploaded/i4/725677994/TB2.zw0cY2pK1RjSZFsXXaNlXXa_!!725677994-0-sm.jpg');
INSERT INTO `commodity` VALUES (11, 'Diesel迪赛潮虎头夏季男短袖POLO衫休闲翻领上衣 00SMP0 0NAVL', 290, 290, 20, 'https://gw.alicdn.com/bao/uploaded/i2/2200783431665/O1CN01MmE28p1OAbxubPRfE_!!0-item_pic.jpg');
INSERT INTO `commodity` VALUES (12, 'Warrior/回力经典男女款低帮休闲帆布鞋百搭单鞋透气学生布鞋', 39, 39, 20, 'https://gw.alicdn.com/bao/uploaded/i3/TB1JiYUFXXXXXaqaVXXXXXXXXXX_!!0-item_pic.jpg');
INSERT INTO `commodity` VALUES (13, '清仓 李宁男鞋休闲鞋男春夏季运动鞋耐磨透气经典复古休闲鞋', 79, 79, 100, 'https://gw.alicdn.com/bao/uploaded/i1/2082378922/O1CN01k5Cygc2FmKCsDb4ZK_!!0-item_pic.jpg');
INSERT INTO `commodity` VALUES (14, 'Romon/罗蒙长袖衬衫男春季商务休闲青年白色正装男士纯色常规衬衣', 69, 69, 20, 'https://gw.alicdn.com/bao/uploaded/i3/1702895677/TB17_3EfnvI8KJjSspjXXcgjXXa_!!0-item_pic.jpg');
INSERT INTO `commodity` VALUES (15, '贝尔2019新款牛皮斜挎包菱格包链条单肩包小方包锁扣真皮女包包', 198, 198, 20, 'https://gw.alicdn.com/bao/uploaded/i4/713767843/O1CN01Ri9pum27o8rd7iukz_!!0-item_pic.jpg');
INSERT INTO `commodity` VALUES (16, '[热销]							陌森太阳眼镜男女2016偏光定制驾驶近视							', 518.7, 518.7, 20, 'https://img.alicdn.com/bao/uploaded/i4/3414602489/O1CN01XsENXT1UG0IDVdu76_!!0-item_pic.jpg');
INSERT INTO `commodity` VALUES (17, '北通阿修罗se2有线游戏手柄usb电脑PC360电视盒子实况足球NBA2K18', 138, 138, 20, 'https://gw.alicdn.com/bao/uploaded/i4/3462422888/O1CN011XCkJ0XyYK74SMS_!!0-item_pic.jpg');
INSERT INTO `commodity` VALUES (19, '女士T恤', 100, 100, 90, 'https://img.alicdn.com/imgextra/i2/2615125783/TB2laKlng0kpuFjSspdXXX4YXXa_!!2615125783.jpg_Q0s50.jpg');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `memId` int(255) NOT NULL AUTO_INCREMENT,
  `memName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '男',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '兰州',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '111111',
  PRIMARY KEY (`memId`, `memName`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES (1, 'zzy', '男', 'lanzhou', '123456', '18893843078');
INSERT INTO `member` VALUES (2, 'yz', 'male', 'gansu', '111', '1888888');
INSERT INTO `member` VALUES (3, 'yhq', 'male', 'sc', '22', '1111');
INSERT INTO `member` VALUES (4, 'yz', '男', '兰州', '1', '231313');

-- ----------------------------
-- Table structure for shopcart
-- ----------------------------
DROP TABLE IF EXISTS `shopcart`;
CREATE TABLE `shopcart`  (
  `memName` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `buyCount` int(11) NOT NULL DEFAULT 1,
  `imgUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1557565501319&di=56ca97925f302e0233a0390bf96dd776&imgtype=0&src=http%3A%2F%2Fku.90sjimg.com%2Felement_origin_min_pic%2F16%2F11%2F04%2F3c46173360b7cd2fc8d8a47a36d2f9e8.jpg',
  `basicPrice` float NULL DEFAULT NULL,
  `currentPrice` float NOT NULL,
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '天猫商品',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of shopcart
-- ----------------------------
INSERT INTO `shopcart` VALUES ('zzy', 1, 'https://img.alicdn.com/imgextra/i2/1901612258/O1CN01pv5aTI1SYCqFc74Z5_!!0-item_pic.jpg_430x430q90.jpg', 1000, 2000, '衣服', 4);
INSERT INTO `shopcart` VALUES ('zzy', 1, 'https://img.alicdn.com/bao/uploaded/i3/2616970884/O1CN01I8be0i1IOudM9JWud_!!2616970884.jpg', 3000, 4000, '电脑', 9);
INSERT INTO `shopcart` VALUES ('zzy', 1, 'https://img.alicdn.com/bao/uploaded/i2/TB1.zuUDG6qK1RjSZFmvk00PFXa_043412.jpg', 4000, 4400, '手机', 10);
INSERT INTO `shopcart` VALUES ('zzy', 1, 'https://img.alicdn.com/bao/uploaded/i5/TB1OCArhZfpK1RjSZFORAi6nFXa_025954.jpg', 5499, 5499, 'Huawei/华为 Mate 20 Pro', 35);
INSERT INTO `shopcart` VALUES ('zzy', 1, 'https://img.alicdn.com/bao/uploaded/i4/3414602489/O1CN01XsENXT1UG0IDVdu76_!!0-item_pic.jpg', 518.7, 518.7, '[热销]							陌森太阳眼镜男女2016偏光定制驾驶近视							', 36);

SET FOREIGN_KEY_CHECKS = 1;

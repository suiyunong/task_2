/*
 Navicat Premium Data Transfer

 Source Server         : aliyun
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : task2

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 17/11/2018 23:53:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qq` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entro_time` bigint(20) NOT NULL,
  `school` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number` int(11) NOT NULL,
  `diary_link` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slogan` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `brother` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_at` bigint(20) NOT NULL,
  `update_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 81 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '朱丽', '3319729010', 'PM2', 0, '湖北工程学院', 0, 'http://www.jnshu.com/daily/54684?dailyType=others&total=7&page=1&uid=21830&sort=0&orderBy=3', '学而不思则罔，思而不学则殆', '刘宁', 0, 0);
INSERT INTO `user` VALUES (2, '魏强', '384018993', 'Java', 152373500, '河南财专', 1192, 'http://www.jnshu.com/school/23400/daily', '学而不思则罔，思而不学则殆', '桂楠', 0, 0);
INSERT INTO `user` VALUES (3, '杨问宇', '370491118', '前端工程师', 0, '华北理工大学', 0, 'http://www.jnshu.com/daily/55068?dailyType=others&total=7&page=2&uid=23587&sort=0&orderBy=3', '再努力一点！', '姬小璇', 0, 0);
INSERT INTO `user` VALUES (4, '祝宇昊', '404364280', 'PM', 156234590, '齐鲁理工学院', 1076, 'http://www.jnshu.com/daily/55214?dailyType=others&total=7&page=1&uid=21757&sort=0&orderBy=3', '路漫漫其修远兮，吾将上下而求索。', '桂楠', 1533007894916, 1533007894916);
INSERT INTO `user` VALUES (5, '刘仁瑞', '936997223', '前端工程师', 173323234, '哈尔滨信息工程学院', 5656, 'http://www.jnshu.com/daily/55102?dailyType=others&total=8&page=1&uid=23387&sort=0&orderBy=3', '如果不不能修真院丧心病狂的学习，就让我天天吃泡面还不带调料包！', '李劲宏', 1533007894916, 1532590981495);
INSERT INTO `user` VALUES (6, '尚小雨', '750611451', 'QA', 153727281, '国家开放大学', 12232, 'http://www.jnshu.com/daily/53594?dailyType=others&total=7&page=1&uid=19204&sort=0&orderBy=3', '不想当开发的PM 不是好QA', '万朋', 1533007894916, 1532837050724);
INSERT INTO `user` VALUES (7, '郭超', '804276993', 'Java', 154672833, '安徽电子信息职业技术学院', 5483, 'http://www.jnshu.com/daily/53939?dailyType=others&total=15&page=1&uid=22610&sort=0&orderBy=3', '无穷无尽的知识，就是我的力量。', '黄苏威', 1533007894916, 1532837050724);
INSERT INTO `user` VALUES (8, '李恪非', '1393197963', 'Java', 167346900, '北京科技大学', 3576, 'http://www.jnshu.com/daily/54527?dailyType=others&total=10&page=1&uid=23189&sort=0&orderBy=3', '无穷无尽的知识，就是我的力量。', '段文凯', 1533007894916, 1533007894916);
INSERT INTO `user` VALUES (9, '廖友', '759388801', 'Java', 134523380, '西南大学', 3386, 'http://www.jnshu.com/daily/54561?dailyType=others&total=15&page=1&uid=21816&sort=0&orderBy=3', '心之所向，不可阻挡', '牛涛', 1532524826281, 1532524826281);
INSERT INTO `user` VALUES (10, '吴则鸣', '523026724', 'PM', 145237890, '郑州大学', 12, 'http://www.jnshu.com/daily/54496?dailyType=others', '........不想当运营的PM不是好PM', '刘宁', 1532524826281, 1532524826281);
INSERT INTO `user` VALUES (26, '小柏', '22223333', 'java', 125126126, '郑州大学', 51188, 'aily/54496?dailyType=others', '无穷无尽的知识，就是我的力量。', '刘宁', 1532524826281, 1532524826281);
INSERT INTO `user` VALUES (27, '高云鹏', '2918072349', '运营', 135567342, '大连理工大学', 9527, 'https://blog.csdn.net/tounaobun/article/details/8485832', '我最萌', '刘宁', 1532521558921, 1532871405343);
INSERT INTO `user` VALUES (28, '高大壮', '2718392560', '运营', 134563245, '烟台大学', 10056, 'https://blog.csdn.net/tounaobun/article/details/8485832', '加油呐', '刘宁', 1532524826281, 1532871405385);
INSERT INTO `user` VALUES (29, '高效蛮', '12536364645', '运营', 125636445, '陕西科技大学', 9089, 'https://blog.csdn.net/tounaobun/article/details/8485832', '我是最棒的', '刘宁', 1532590280896, 1532871405414);
INSERT INTO `user` VALUES (30, '张小白', '2718273478', '运营', 152363400, '西北大学', 2344, 'https://blog.csdn.net/tounaobun/article/details/8485832', '无穷无尽的知识，就是我的力量。', '刘宁', 1532590981495, 1532871405430);
INSERT INTO `user` VALUES (32, '张文革', '1213771373', '运营', 12516233, '山东建筑大学', 9877, 'http://www.jnshu.com/daily/54496?dailyType=others', '加油', '刘宁', 1532837050724, 1532871405385);
INSERT INTO `user` VALUES (33, '路人甲', '2637178384', 'java', 182182192, '西南大学', 77653, 'https://blog.csdn.net/tounaobun/article/details/8485832', '无穷无尽的知识，就是我的力量。', '刘宁', 1532521558921, 1532871405385);
INSERT INTO `user` VALUES (34, '路人乙', '2372328384', 'java', 12173712737, '西北大学', 121626, 'https://blog.csdn.net/tounaobun/article/details/8485832', '无穷无尽的知识，就是我的力量。', '刘宁', 1532521558921, 1533007695237);
INSERT INTO `user` VALUES (35, '贾宝玉', '12616271273', 'java', 2162712172773, '西北大学', 1271723, 'http://www.jnshu.com/daily/54496?dailyType=others', '加油', '刘宁', 1533007894916, 1533009833096);
INSERT INTO `user` VALUES (36, '林黛玉', '1251226162', '运营', 23626372372, '西安科技大学', 9877, 'http://www.jnshu.com/daily/54496?dailyType=others', '坚持一下', '刘宁', 1533009101527, 1532871405385);
INSERT INTO `user` VALUES (37, '高抗', '1251521626', 'PM', 1521521223, '西安建筑学院', 9877, 'https://blog.csdn.net/tounaobun/article/details/8485832', '加油啊啊啊啊', '万朋', 1532521558921, 1532871405385);
INSERT INTO `user` VALUES (38, '高抗', '136136345', '运营', 172182781223, '西安音乐学院', 232673, 'https://www.cnblogs.com/xdp-gacl/p/4261895.html', '坚持', '刘宁', 1281928912912, 12121212121212);
INSERT INTO `user` VALUES (39, '王语嫣', '61212773747', 'java', 121727127, '东北大学', 27373, 'https://www.cnblogs.com/xingyunblog/p/6243179.html', '我欲乘风', '刘宁', 1533634028643, 1533634028643);
INSERT INTO `user` VALUES (40, '王之和', '61212773747', 'java', 121727127, '东北大学', 27373, 'https://www.cnblogs.com/xingyunblog/p/6243179.html', '我欲乘风', '刘宁', 1533634110209, 1533634110209);
INSERT INTO `user` VALUES (41, '刘霜', '61212773747', 'java', 121727127, '东北大学', 27373, 'https://www.cnblogs.com/xingyunblog/p/6243179.html', '我欲乘风', '刘宁', 1533634676922, 1533634676922);
INSERT INTO `user` VALUES (42, '南宫小鸡', '61212773747', 'PM22', 0, '东北大学', 0, 'https://www.cnblogs.com/xingyunblog/p/6243179.html', '我欲乘风', '刘宁', 0, 0);
INSERT INTO `user` VALUES (43, '刘文', '61212773747', 'java', 121727127, '东北大学', 27373, 'https://www.cnblogs.com/xingyunblog/p/6243179.html', '我欲乘风', '刘宁', 1533825810506, 1533825810506);
INSERT INTO `user` VALUES (45, '何注解', '61212773747', 'java', 121727127, '西南大学', 27373, 'https://www.cnblogs.com/xingyunblog/p/6243179.html', '我欲乘风', '刘宁', 1537255839367, 1537255839367);
INSERT INTO `user` VALUES (46, 'zhao武器', '61212773747', 'PM', 121727127, '西南大学', 27373, 'https://www.cnblogs.com/xingyunblog/p/6243179.html', '我欲乘风', '刘宁', 1537272377001, 1537272377001);
INSERT INTO `user` VALUES (47, '随注解', '61212773747', 'java', 121727127, '西南大学', 27373, 'https://www.cnblogs.com/xingyunblog/p/6243179.html', '我欲乘风', '刘宁', 1537270594137, 1537270594137);
INSERT INTO `user` VALUES (48, '阳注解', '61212773747', 'PM', 121727127, '西南大学', 27373, 'https://www.cnblogs.com/xingyunblog/p/6243179.html', '我欲乘风', '刘宁', 1537274339674, 1537274339674);
INSERT INTO `user` VALUES (49, '阳注解', '61212773747', 'PM', 121727127, '西南大学', 27373, 'https://www.cnblogs.com/xingyunblog/p/6243179.html', '我欲乘风', '刘宁', 1539175000501, 1539175000501);
INSERT INTO `user` VALUES (50, '阳注解', '61212773747', 'java', 121727127, '西南大学', 27373, 'https://www.cnblogs.com/xingyunblog/p/6243179.html', '我欲乘风', '刘宁', 1539175230204, 1539175230205);
INSERT INTO `user` VALUES (51, '阳注解', '61212773747', 'java', 121727127, '西南大学', 27373, 'https://www.cnblogs.com/xingyunblog/p/6243179.html', '我欲乘风', '刘宁', 1539176459742, 1539176459742);
INSERT INTO `user` VALUES (52, '阳注解', '61212773747', 'java', 121727127, '西南大学', 27373, 'https://www.cnblogs.com/xingyunblog/p/6243179.html', '我欲乘风', '刘宁', 1539177708694, 1539177708694);
INSERT INTO `user` VALUES (53, '阳注解', '61212773747', 'java', 121727127, '西南大学', 27373, 'https://www.cnblogs.com/xingyunblog/p/6243179.html', '我欲乘风', '刘宁', 1539178931038, 1539178931038);
INSERT INTO `user` VALUES (54, '阳注解', '61212773747', 'java', 121727127, '西南大学', 27373, 'https://www.cnblogs.com/xingyunblog/p/6243179.html', '我欲乘风', '刘宁', 1539179324744, 1539179324744);
INSERT INTO `user` VALUES (55, '阳注解', '61212773747', 'java', 121727127, '西南大学', 27373, 'https://www.cnblogs.com/xingyunblog/p/6243179.html', '我欲乘风', '刘宁', 1539247593228, 1539247593228);
INSERT INTO `user` VALUES (56, '阳注解', '61212773747', 'java', 121727127, '西南大学', 27373, 'https://www.cnblogs.com/xingyunblog/p/6243179.html', '我欲乘风', '刘宁', 1539248119568, 1539248119568);
INSERT INTO `user` VALUES (57, '阳注解', '61212773747', 'java', 121727127, '西南大学', 27373, 'https://www.cnblogs.com/xingyunblog/p/6243179.html', '我欲乘风', '刘宁', 1539248145507, 1539248145507);
INSERT INTO `user` VALUES (59, '盐22注解', '61212773747', 'java', 121727127, '西南大学', 274455, 'https://www.cnblogs.com/xingyunblog/p/6243179.html', '我欲乘风', '刘宁', 1539940108161, 1539940108161);
INSERT INTO `user` VALUES (60, '盐22注解', '61212773747', 'java', 121727127, '西南大学', 274455, 'https://www.cnblogs.com/xingyunblog/p/6243179.html', '我欲乘风', '刘宁', 1539940161772, 1539940161772);
INSERT INTO `user` VALUES (62, 'mao添加2', '612127737472', 'java', 121727127, '西南大学', 27375, 'https://www.cnblogs.com/xingyunblog/p/6243179.html', '我欲乘风', '刘宁', 1539940929141, 1539940929141);
INSERT INTO `user` VALUES (63, 'mao添加3', '612127737473', 'java', 121727127, '西南大学', 27376, 'https://www.cnblogs.com/xingyunblog/p/6243179.html', '我欲乘风', '刘宁', 1539940929141, 1539940929141);
INSERT INTO `user` VALUES (64, 'ma添加1', '612127737471', 'java', 121727127, '西南大学', 27374, 'https://www.cnblogs.com/xingyunblog/p/6243179.html', '我欲乘风', '刘宁', 1539941066826, 1539941066826);
INSERT INTO `user` VALUES (65, 'ma添加2', '612127737472', 'java', 121727127, '西南大学', 27375, 'https://www.cnblogs.com/xingyunblog/p/6243179.html', '我欲乘风', '刘宁', 1539941066827, 1539941066827);
INSERT INTO `user` VALUES (66, 'ma添加3', '612127737473', 'java', 121727127, '西南大学', 27376, 'https://www.cnblogs.com/xingyunblog/p/6243179.html', '我欲乘风', '刘宁', 1539941066827, 1540949496012);
INSERT INTO `user` VALUES (67, '盐22注解', '61212773747', 'java', 121727127, '西南大学', 274455, 'https://www.cnblogs.com/xingyunblog/p/6243179.html', '我欲乘风', '刘宁', 1540478752744, 1540478752744);
INSERT INTO `user` VALUES (68, '盐22注解', '61212773747', 'java', 121727127, '西南大学', 274455, 'https://www.cnblogs.com/xingyunblog/p/6243179.html', '我欲乘风', '刘宁', 1540479713528, 1540479713528);
INSERT INTO `user` VALUES (69, '张安电脑网', '12123313', 'PM', 238232393424, '西安交大', 274455, 'https://www.cnblogs.com/xingyunblog/p/6243179.html', '我欲乘风', '刘宁', 1540562633775, 1540562633775);
INSERT INTO `user` VALUES (70, '朱达达', '281945273', '前端工程师', 21319313, '电子科技大学', 99870, 'http://www.jnshu.com/school/28154/class', '静等枫叶', '张琳', 1540563589374, 1540563589374);
INSERT INTO `user` VALUES (71, 'zhang', '121233', 'P', 0, '南方科技大学', 0, 'http://localhost:8080/task2_ssm/user/toAdd.do?', '企鹅企鹅去', '张三', 0, 0);
INSERT INTO `user` VALUES (73, '张前进', '24141', 'PM', 1424241414, '重庆大学', 1313, 'http://localhost:8080/task2_ssm2/user/toAddUser', '爱我的九五', '我打黑雾', 1540820536723, 1540904465482);
INSERT INTO `user` VALUES (75, '12', '123', '23', 32, '34', 43, '54', '34', '5', 0, 1540954592088);
INSERT INTO `user` VALUES (76, '131', '313', '231', 13, '13', 13, '13', '13', '哇哈哈2', 0, 1540956963128);
INSERT INTO `user` VALUES (77, '55', '56', '67', 76, '767', 76, '89', '787', '67', 1540987702532, 1540987702532);
INSERT INTO `user` VALUES (78, '盐22注解', '61212773747', 'java', 121727127, '西南大学', 274455, 'https://www.cnblogs.com/xingyunblog/p/6243179.html', '我欲乘风', '刘宁', 1541037450279, 1541037450279);
INSERT INTO `user` VALUES (79, '盐22注解', '61212773747', 'java', 121727127, '西南大学', 274455, 'https://www.cnblogs.com/xingyunblog/p/6243179.html', '我欲乘风', '刘宁', 1541059526360, 1541059526360);
INSERT INTO `user` VALUES (80, '盐22注解', '61212773747', 'java', 121727127, '西北大学', 274455, 'https://www.cnblogs.com/xingyunblog/p/6243179.html', '我欲乘风', '刘宁2', 1541063713310, 1541493094675);

SET FOREIGN_KEY_CHECKS = 1;

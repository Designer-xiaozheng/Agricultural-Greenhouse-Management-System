DROP TABLE IF EXISTS `ordinary_users`;
CREATE TABLE `ordinary_users`(
	   `ordinary_users_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '普通用户ID',
`remarks` varchar(64) comment '备注',
`examine_state` varchar(16) DEFAULT '已通过' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`user_id` int(11) DEFAULT '0' NOT NULL comment '用户ID',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (ordinary_users_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '普通用户';

DROP TABLE IF EXISTS `photographic_classification`;
CREATE TABLE `photographic_classification`(
	   `photographic_classification_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '摄影分类ID',
`photography_type` varchar(64) comment '摄影类型',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (photographic_classification_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '摄影分类';
insert into `photographic_classification` values (1,'摄影类型1','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `photographic_classification` values (2,'摄影类型2','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `photographic_classification` values (3,'摄影类型3','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `photographic_classification` values (4,'摄影类型4','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `photographic_classification` values (5,'摄影类型5','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `photographic_classification` values (6,'摄影类型6','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `photographic_classification` values (7,'摄影类型7','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `photographic_classification` values (8,'摄影类型8','0','2022-05-14 15:47:06','2022-05-14 15:47:06');

DROP TABLE IF EXISTS `photographic_works`;
CREATE TABLE `photographic_works`(
	   `photographic_works_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '摄影作品ID',
`work_name` varchar(64) comment '作品名称',
`photography_type` varchar(64) comment '摄影类型',
`photographic_cover` varchar(255) comment '摄影封面',
`shooting_time` date comment '拍摄时间',
`shooting_location` varchar(64) comment '拍摄地点',
`photographer` varchar(64) comment '摄影师',
`work_details` longtext comment '作品详情',
`hits` int(11) DEFAULT 0 NOT NULL comment '点击数',
`praise_len` int(11) DEFAULT 0 NOT NULL comment '点赞数',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (photographic_works_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '摄影作品';
insert into `photographic_works` values (1,'作品名称1','摄影类型1','/api/upload/image_1615198957772.jpg','2022-5-14','拍摄地点1','摄影师1','此处可上传文字、图片、视频、超链接、表格等内容区1','710','669','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `photographic_works` values (2,'作品名称2','摄影类型2','/api/upload/image_1615206273499.jpg','2022-5-14','拍摄地点2','摄影师2','此处可上传文字、图片、视频、超链接、表格等内容区2','446','970','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `photographic_works` values (3,'作品名称3','摄影类型3','/api/upload/image_1615206273499.jpg','2022-5-14','拍摄地点3','摄影师3','此处可上传文字、图片、视频、超链接、表格等内容区3','348','430','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `photographic_works` values (4,'作品名称4','摄影类型4','/api/upload/image_1615198958415.jpg','2022-5-14','拍摄地点4','摄影师4','此处可上传文字、图片、视频、超链接、表格等内容区4','898','223','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `photographic_works` values (5,'作品名称5','摄影类型5','/api/upload/image_1615198957772.jpg','2022-5-14','拍摄地点5','摄影师5','此处可上传文字、图片、视频、超链接、表格等内容区5','914','616','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `photographic_works` values (6,'作品名称6','摄影类型6','/api/upload/image_1615206273485.jpg','2022-5-14','拍摄地点6','摄影师6','此处可上传文字、图片、视频、超链接、表格等内容区6','407','955','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `photographic_works` values (7,'作品名称7','摄影类型7','/api/upload/image_1615206273491.jpg','2022-5-14','拍摄地点7','摄影师7','此处可上传文字、图片、视频、超链接、表格等内容区7','180','936','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `photographic_works` values (8,'作品名称8','摄影类型8','/api/upload/image_1615198965330.jpg','2022-5-14','拍摄地点8','摄影师8','此处可上传文字、图片、视频、超链接、表格等内容区8','483','392','0','2022-05-14 15:47:06','2022-05-14 15:47:06');

DROP TABLE IF EXISTS `photographer`;
CREATE TABLE `photographer`(
	   `photographer_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '摄影师ID',
`photographer_name` varchar(64) comment '摄影师姓名',
`photographic_grade` varchar(64) comment '摄影等级',
`head_portrait` varchar(255) comment '头像',
`reservation_price` varchar(64) comment '预约价格',
`subject_type` varchar(64) comment '主摄类型',
`award_record` text comment '获奖记录',
`curriculum_vitae` longtext comment '个人简历',
`hits` int(11) DEFAULT 0 NOT NULL comment '点击数',
`praise_len` int(11) DEFAULT 0 NOT NULL comment '点赞数',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (photographer_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '摄影师';
insert into `photographer` values (1,'摄影师姓名1','摄影等级1','/api/upload/image_1644486079694.jpg','预约价格1','主摄类型1','获奖记录1','此处可上传文字、图片、视频、超链接、表格等内容区1','153','470','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `photographer` values (2,'摄影师姓名2','摄影等级2','/api/upload/image_1644486079694.jpg','预约价格2','主摄类型2','获奖记录2','此处可上传文字、图片、视频、超链接、表格等内容区2','148','539','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `photographer` values (3,'摄影师姓名3','摄影等级3','/api/upload/image_1644486079693.jpeg','预约价格3','主摄类型3','获奖记录3','此处可上传文字、图片、视频、超链接、表格等内容区3','488','407','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `photographer` values (4,'摄影师姓名4','摄影等级4','/api/upload/image_1644486079689.jpg','预约价格4','主摄类型4','获奖记录4','此处可上传文字、图片、视频、超链接、表格等内容区4','379','880','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `photographer` values (5,'摄影师姓名5','摄影等级5','/api/upload/image_1644486079709.jpg','预约价格5','主摄类型5','获奖记录5','此处可上传文字、图片、视频、超链接、表格等内容区5','83','709','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `photographer` values (6,'摄影师姓名6','摄影等级6','/api/upload/image_1644486079694.jpg','预约价格6','主摄类型6','获奖记录6','此处可上传文字、图片、视频、超链接、表格等内容区6','629','533','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `photographer` values (7,'摄影师姓名7','摄影等级7','/api/upload/image_1644486079691.jpg','预约价格7','主摄类型7','获奖记录7','此处可上传文字、图片、视频、超链接、表格等内容区7','888','954','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `photographer` values (8,'摄影师姓名8','摄影等级8','/api/upload/image_1644486079709.jpg','预约价格8','主摄类型8','获奖记录8','此处可上传文字、图片、视频、超链接、表格等内容区8','73','722','0','2022-05-14 15:47:06','2022-05-14 15:47:06');

DROP TABLE IF EXISTS `reservation_information`;
CREATE TABLE `reservation_information`(
	   `reservation_information_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '预约信息ID',
`photographer_name` varchar(64) comment '摄影师姓名',
`photographic_grade` varchar(64) comment '摄影等级',
`reservation_price` varchar(64) comment '预约价格',
`user` int(11) DEFAULT 0 comment '用户',
`time_of_appointment` date comment '预约时间',
`photography_location` varchar(64) comment '摄影地点',
`reservation_status` varchar(64) comment '预约状态',
`reservation_reply` varchar(64) comment '预约回复',
`pay_state` varchar(16) DEFAULT '未支付' NOT NULL comment '支付状态',
`pay_type` varchar(16) DEFAULT '' comment '支付类型: 微信、支付宝、网银',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (reservation_information_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '预约信息';
insert into `reservation_information` values (1,'摄影师姓名1','摄影等级1','预约价格1',0,'2022-5-14','摄影地点1','预约状态1','预约回复1','未支付','支付宝','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `reservation_information` values (2,'摄影师姓名2','摄影等级2','预约价格2',0,'2022-5-14','摄影地点2','预约状态2','预约回复2','未支付','支付宝','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `reservation_information` values (3,'摄影师姓名3','摄影等级3','预约价格3',0,'2022-5-14','摄影地点3','预约状态3','预约回复3','未支付','支付宝','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `reservation_information` values (4,'摄影师姓名4','摄影等级4','预约价格4',0,'2022-5-14','摄影地点4','预约状态4','预约回复4','未支付','支付宝','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `reservation_information` values (5,'摄影师姓名5','摄影等级5','预约价格5',0,'2022-5-14','摄影地点5','预约状态5','预约回复5','未支付','支付宝','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `reservation_information` values (6,'摄影师姓名6','摄影等级6','预约价格6',0,'2022-5-14','摄影地点6','预约状态6','预约回复6','未支付','支付宝','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `reservation_information` values (7,'摄影师姓名7','摄影等级7','预约价格7',0,'2022-5-14','摄影地点7','预约状态7','预约回复7','未支付','支付宝','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `reservation_information` values (8,'摄影师姓名8','摄影等级8','预约价格8',0,'2022-5-14','摄影地点8','预约状态8','预约回复8','未支付','支付宝','0','2022-05-14 15:47:06','2022-05-14 15:47:06');

DROP TABLE IF EXISTS `cancel_reservation`;
CREATE TABLE `cancel_reservation`(
	   `cancel_reservation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '取消预约ID',
`photographer_name` varchar(64) comment '摄影师姓名',
`photographic_grade` varchar(64) comment '摄影等级',
`reservation_price` varchar(64) comment '预约价格',
`user` int(11) DEFAULT 0 comment '用户',
`time_of_appointment` date comment '预约时间',
`photography_location` varchar(64) comment '摄影地点',
`cancellation_reason` text comment '取消原因',
`examine_state` varchar(16) DEFAULT '未审核' NOT NULL comment '审核状态',
`examine_reply` varchar(16) DEFAULT '' comment '审核回复',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (cancel_reservation_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '取消预约';
insert into `cancel_reservation` values (1,'摄影师姓名1','摄影等级1','预约价格1',0,'2022-5-14','摄影地点1','取消原因1','未审核','','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `cancel_reservation` values (2,'摄影师姓名2','摄影等级2','预约价格2',0,'2022-5-14','摄影地点2','取消原因2','未审核','','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `cancel_reservation` values (3,'摄影师姓名3','摄影等级3','预约价格3',0,'2022-5-14','摄影地点3','取消原因3','未审核','','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `cancel_reservation` values (4,'摄影师姓名4','摄影等级4','预约价格4',0,'2022-5-14','摄影地点4','取消原因4','未审核','','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `cancel_reservation` values (5,'摄影师姓名5','摄影等级5','预约价格5',0,'2022-5-14','摄影地点5','取消原因5','未审核','','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `cancel_reservation` values (6,'摄影师姓名6','摄影等级6','预约价格6',0,'2022-5-14','摄影地点6','取消原因6','未审核','','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `cancel_reservation` values (7,'摄影师姓名7','摄影等级7','预约价格7',0,'2022-5-14','摄影地点7','取消原因7','未审核','','0','2022-05-14 15:47:06','2022-05-14 15:47:06');
insert into `cancel_reservation` values (8,'摄影师姓名8','摄影等级8','预约价格8',0,'2022-5-14','摄影地点8','取消原因8','未审核','','0','2022-05-14 15:47:06','2022-05-14 15:47:06');

DROP TABLE IF EXISTS `access_token`;
CREATE TABLE `access_token` (
  `token_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '临时访问牌ID',
  `token` varchar(64) DEFAULT NULL COMMENT '临时访问牌',
  `info` text,
  `maxage` int(2) NOT NULL DEFAULT '2' COMMENT '最大寿命：默认2小时',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户编号:',
  PRIMARY KEY (`token_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='临时访问牌';
insert into `access_token` values ('57','5accf85cb6a7f06f0aa2968deadaec1b',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('58','46ff1d4d07714f046ba07b34bffe0af9',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('59','ed9d6cba9826fda1beafcd9326be7a86',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('60','c99763c1833ea0785d9e2b81da3fd28f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('61','33fbfaccd6d1cb9143e4129bd919d4b0',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('62','493e13da5f293ba67a56a0fe3e1fa6cf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('63','c4b48e9e2160db09c703041a8fee0a1f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('64','d13cdaefd3823c360c959a02a262f71d',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('65','6c6ff426fd77ea5a2025ce5ed2e42c8a',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('66','80930065a61ffcdd5cbb75f60932973c',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('67','94114763cf2e3b020495d8a27096d4ef',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('68','761052c551c97c9317bc3aa475c85b84',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('69','7c44ef14131a0ba7c16aa16cef104065',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('70','96380f3d9542c80d04bdade1cf7635a5',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('71','bfdc7acfcbf5763fda81945b60961222',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('72','170a598e51ae8ae2badde20a42fe171d',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('73','c82c357488c75926a92d8a9608d4b367',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('74','4d35290c023f407a820f37dbbb1ceb09',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('75','8d19162776682b695c0f62f3c7a92fec',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('76','a7ea2cdc9a2be179e19200e593ad5a69',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('77','c79a554f9832adc01f19682c5d576bc4',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('78','1c7d95001fa09951a679841c8100ad1f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('79','776da1bcdd01ddb3cbf0a37fa13fc5b0',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('80','d336e88e57c329d0166931292c1fac41',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('81','37a40f526a6c82fc6110b512802d35bf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('82','691ad331771f4109206d58aeee572371',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('83','9942e458886219960d3344b4a6a6fbec',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('84','e9939a8b7ccf9f548f0bbb5664981f96',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('85','f5b27912060d1909bef61fab9d96faae',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('86','7c5888682f1d449eb1b62f0054a79fbf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('87','00dfdc6ac21c4a9da80fd71c990764d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('88','3cce592bc72840ab932ce96d85a194da',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('89','43fdaa989a644ad683ef4b4d488e8629',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('90','d6a3cecadacff0dbd6b43b25372cc2a2',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('91','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('92','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('93','26c553bd2ee2ab6605d18dfd310d85f9',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('94','3fd52f81236ed2c37ff91a6696d4e47a',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('95','893332e9ee67d60d8312b3700c58a359',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('96','b7844068ade535b2e517df4a40948703',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('97','179b37a5e1893c3af6b946bd5a1c8625',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('98','3a47b8a040a83ebbc9194cb255dc668c',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('99','afa60196afb77dcc2b520ed13a817560',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('100','7fc6d9b324f8c0a3a1784d04ef132692',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `article_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章id：[0,8388607]',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题：[0,125]用于文章和html的title标签中',
  `type` varchar(64) NOT NULL DEFAULT '0' COMMENT '文章分类：[0,1000]用来搜索指定类型的文章',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击数：[0,1000000000]访问这篇文章的人次',
  `praise_len` int(11) NOT NULL DEFAULT '0' COMMENT '点赞数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source` varchar(255) DEFAULT NULL COMMENT '来源：[0,255]文章的出处',
  `url` varchar(255) DEFAULT NULL COMMENT '来源地址：[0,255]用于跳转到发布该文章的网站',
  `tag` varchar(255) DEFAULT NULL COMMENT '标签：[0,255]用于标注文章所属相关内容，多个标签用空格隔开',
  `content` longtext COMMENT '正文：文章的主体内容',
  `img` varchar(255) DEFAULT NULL COMMENT '封面图',
  `description` text COMMENT '文章描述',
  PRIMARY KEY (`article_id`,`title`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章：用于内容管理系统的文章';
DROP TABLE IF EXISTS `article_type`;
CREATE TABLE `article_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID：[0,10000]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]决定分类显示的先后顺序',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '分类名称：[2,16]',
  `father_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID：[0,32767]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该分类的作用',
  `icon` text COMMENT '分类图标：',
  `url` varchar(255) DEFAULT NULL COMMENT '外链地址：[0,255]如果该分类是跳转到其他网站的情况下，就在该URL上设置',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章频道：用于汇总浏览文章，在不同频道下展示不同文章。';
DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth` (
  `auth_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '授权ID：',
  `user_group` varchar(64) DEFAULT NULL COMMENT '用户组：',
  `mod_name` varchar(64) DEFAULT NULL COMMENT '模块名：',
  `table_name` varchar(64) DEFAULT NULL COMMENT '表名：',
  `page_title` varchar(255) DEFAULT NULL COMMENT '页面标题：',
  `path` varchar(255) DEFAULT NULL COMMENT '路由路径：',
  `position` varchar(32) DEFAULT NULL COMMENT '位置：',
  `mode` varchar(32) NOT NULL DEFAULT '_blank' COMMENT '跳转方式：',
  `add` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可增加：',
  `del` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可删除：',
  `set` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可修改：',
  `get` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可查看：',
  `field_add` varchar(500) DEFAULT NULL COMMENT '添加字段：',
  `field_set` varchar(500) DEFAULT NULL COMMENT '修改字段：',
  `field_get` varchar(500) DEFAULT NULL COMMENT '查询字段：',
  `table_nav_name` varchar(255) DEFAULT NULL COMMENT '跨表导航名称：',
  `table_nav` varchar(255) DEFAULT NULL COMMENT '跨表导航：',
  `option` text COMMENT '配置：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`auth_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='定制授权';
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `collect_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '收藏ID：',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏人ID：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `title` varchar(255) DEFAULT NULL COMMENT '标题：',
  `img` varchar(255) DEFAULT NULL COMMENT '封面：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`collect_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='收藏：';
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论人ID：',
  `reply_to_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '回复评论ID：空为0',
  `content` longtext COMMENT '内容：',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称：',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='评论：';
DROP TABLE IF EXISTS `praise`;
CREATE TABLE `praise` (
  `praise_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '点赞状态:1为点赞，0已取消',
  PRIMARY KEY (`praise_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='点赞：';
insert into `praise` values ('2','1',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('25','5',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'article','article_id','9','1');
insert into `praise` values ('26','5',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('27','5',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('44','2',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'forum','forum_id','2','1');
insert into `praise` values ('50','2',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'forum','forum_id','2','1');
insert into `praise` values ('54','2',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'article','article_id','9','1');
insert into `praise` values ('57','0',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'article','article_id','10','1');
insert into `praise` values ('86','0',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'article','article_id','6','1');
insert into `praise` values ('101','7',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('108','2',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'article','article_id','8','1');
insert into `praise` values ('221','0',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'article','article_id','2','1');
DROP TABLE IF EXISTS `slides`;
CREATE TABLE `slides` (
  `slides_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '轮播图ID：',
  `title` varchar(64) DEFAULT NULL COMMENT '标题：',
  `content` varchar(255) DEFAULT NULL COMMENT '内容：',
  `url` varchar(255) DEFAULT NULL COMMENT '链接：',
  `img` varchar(255) DEFAULT NULL COMMENT '轮播图：',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击量：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`slides_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='轮播图：';
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '上传ID',
  `name` varchar(64) DEFAULT NULL COMMENT '文件名',
  `path` varchar(255) DEFAULT NULL COMMENT '访问路径',
  `file` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `display` varchar(255) DEFAULT NULL COMMENT '显示顺序',
  `father_id` int(11) DEFAULT '0' COMMENT '父级ID',
  `dir` varchar(255) DEFAULT NULL COMMENT '文件夹',
  `type` varchar(32) DEFAULT NULL COMMENT '文件类型',
  PRIMARY KEY (`upload_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
insert into `upload` values ('1','movie.mp4','/upload/movie.mp4','',null,'0',null,'video');
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `state` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '账户状态：[0,10](1可用|2异常|3已冻结|4已注销)',
  `user_group` varchar(32) DEFAULT NULL COMMENT '所在用户组：[0,32767]决定用户身份和权限',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上次登录时间：',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号码：[0,11]用户的手机号码，用于找回密码时或登录时',
  `phone_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '手机认证：[0,1](0未认证|1审核中|2已认证)',
  `username` varchar(16) NOT NULL DEFAULT '' COMMENT '用户名：[0,16]用户登录时所用的账户名称',
  `nickname` varchar(16) DEFAULT '' COMMENT '昵称：[0,16]',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT '密码：[0,32]用户登录所需的密码，由6-16位数字或英文组成',
  `email` varchar(64) DEFAULT '' COMMENT '邮箱：[0,64]用户的邮箱，用于找回密码时或登录时',
  `email_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '邮箱认证：[0,1](0未认证|1审核中|2已认证)',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户账户：用于保存用户登录信息';
insert into `user` values ('1','1','管理员',"2022-04-30 12:03:25.000 ",null,'0','admin','admin','bfd59291e825b5f2bbf1eb76569f8fe7','','0','/api/upload/avatar.jpg',"2022-05-19 07:32:09.000 ");
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组ID：[0,8388607]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '名称：[0,16]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该用户组的特点或权限范围',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `register` smallint(1) unsigned DEFAULT '0' COMMENT '注册位置:',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户组：用于用户前端身份和鉴权';
DROP TABLE IF EXISTS `hits`;
CREATE TABLE `hits` (
  `hits_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`hits_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
insert into `auth` values ('1','游客','普通用户','ordinary_users','普通用户','/ordinary_users/table','','_blank','0','0','0','0','remarks','remarks','remarks',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('2','游客','普通用户','ordinary_users','普通用户详情','/ordinary_users/view','','_blank','0','0','0','0','remarks','remarks','remarks',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('3','游客','摄影分类','photographic_classification','摄影分类','/photographic_classification/table','','_blank','0','0','0','0','photography_type','photography_type','photography_type',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('4','游客','摄影分类','photographic_classification','摄影分类详情','/photographic_classification/view','','_blank','0','0','0','0','photography_type','photography_type','photography_type',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('5','游客','摄影作品','photographic_works','摄影作品','/photographic_works/table','','_blank','0','0','0','0','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('6','游客','摄影作品','photographic_works','摄影作品详情','/photographic_works/view','','_blank','0','0','0','0','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('7','游客','摄影作品','photographic_works','摄影作品','/photographic_works/list','top','_blank','0','0','0','1','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('8','游客','摄影作品','photographic_works','摄影作品详情','/photographic_works/details','','_blank','0','0','0','1','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('9','游客','摄影师','photographer','摄影师','/photographer/table','','_blank','0','0','0','0','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('10','游客','摄影师','photographer','摄影师详情','/photographer/view','','_blank','0','0','0','0','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('11','游客','摄影师','photographer','摄影师','/photographer/list','top','_blank','0','0','0','1','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('12','游客','摄影师','photographer','摄影师详情','/photographer/details','','_blank','0','0','0','1','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('13','游客','预约信息','reservation_information','预约信息','/reservation_information/table','','_blank','0','0','0','0','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,reservation_status,reservation_reply','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,reservation_status,reservation_reply','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,reservation_status,reservation_reply',null,'0','{"pay":false}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('14','游客','预约信息','reservation_information','预约信息详情','/reservation_information/view','','_blank','0','0','0','0','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,reservation_status,reservation_reply','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,reservation_status,reservation_reply','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,reservation_status,reservation_reply',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('15','游客','预约信息','reservation_information','预约信息编辑','/reservation_information/edit','','_blank','0','0','0','0','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,reservation_status,reservation_reply','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,reservation_status,reservation_reply','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,reservation_status,reservation_reply',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('16','游客','取消预约','cancel_reservation','取消预约','/cancel_reservation/table','','_blank','0','0','0','0','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,cancellation_reason','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,cancellation_reason','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,cancellation_reason',null,'0','{"examine":false}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('17','游客','取消预约','cancel_reservation','取消预约详情','/cancel_reservation/view','','_blank','0','0','0','0','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,cancellation_reason','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,cancellation_reason','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,cancellation_reason',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('18','游客','我的收藏','collect','我的收藏','/collect/list','','_blank','0','0','0','0','','','',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('19','游客','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('20','游客','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('21','游客','评论','comment','我的评论','/comment/list','','_blank','0','0','0','0','','','',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('22','游客','评论','comment','评论详情','/comment/details','','_blank','0','0','0','0','','','',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('23','游客','新闻','article','新闻列表','/article/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"import_db":false,"export_db":false}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('24','游客','新闻','article','新闻详情','/article/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('25','游客','新闻','article','小店新闻','/article/list','','_blank','0','0','0','1','','','',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('26','游客','新闻','article','小店新闻','/article/details','','_blank','0','0','0','1','','','',null,'0','{"can_show_comment":false,"can_comment":false}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('27','游客','新闻分类','article_type','新闻分类列表','/article_type/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('28','游客','新闻分类','article_type','新闻分类详情','/article_type/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('29','管理员','普通用户','ordinary_users','普通用户','/ordinary_users/table','','_blank','1','1','1','1','remarks','remarks','remarks',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('30','管理员','普通用户','ordinary_users','普通用户详情','/ordinary_users/view','','_blank','1','1','1','1','remarks','remarks','remarks',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('31','管理员','摄影分类','photographic_classification','摄影分类','/photographic_classification/table','','_blank','1','1','1','1','photography_type','photography_type','photography_type',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('32','管理员','摄影分类','photographic_classification','摄影分类详情','/photographic_classification/view','','_blank','1','1','1','1','photography_type','photography_type','photography_type',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('33','管理员','摄影作品','photographic_works','作品管理','/photographic_works/table','','_blank','1','1','1','1','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('34','管理员','摄影作品','photographic_works','摄影作品详情','/photographic_works/view','','_blank','1','1','1','1','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('35','管理员','摄影作品','photographic_works','摄影作品','/photographic_works/list','top','_blank','1','1','1','1','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('36','管理员','摄影作品','photographic_works','摄影作品详情','/photographic_works/details','','_blank','1','1','1','1','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('37','管理员','摄影师','photographer','摄影师管理','/photographer/table','','_blank','1','1','1','1','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('38','管理员','摄影师','photographer','摄影师详情','/photographer/view','','_blank','1','1','1','1','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('39','管理员','摄影师','photographer','摄影师','/photographer/list','top','_blank','1','1','1','1','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('40','管理员','摄影师','photographer','摄影师详情','/photographer/details','','_blank','1','1','1','1','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('41','管理员','预约信息','reservation_information','预约管理','/reservation_information/table','','_blank','1','1','1','1','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,reservation_status,reservation_reply','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,reservation_status,reservation_reply','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,reservation_status,reservation_reply',null,'0','{"pay":true}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('42','管理员','预约信息','reservation_information','预约信息详情','/reservation_information/view','','_blank','1','1','1','1','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,reservation_status,reservation_reply','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,reservation_status,reservation_reply','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,reservation_status,reservation_reply',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('43','管理员','预约信息','reservation_information','预约信息编辑','/reservation_information/edit','','_blank','1','1','1','1','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,reservation_status,reservation_reply','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,reservation_status,reservation_reply','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,reservation_status,reservation_reply',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('44','管理员','取消预约','cancel_reservation','取消预约管理','/cancel_reservation/table','','_blank','1','1','1','1','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,cancellation_reason','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,cancellation_reason','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,cancellation_reason',null,'0','{"examine":true}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('45','管理员','取消预约','cancel_reservation','取消预约详情','/cancel_reservation/view','','_blank','1','1','1','1','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,cancellation_reason','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,cancellation_reason','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,cancellation_reason',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('46','管理员','我的收藏','collect','我的收藏','/collect/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('47','管理员','评论','comment','评论列表','/comment/table','','_blank','1','1','1','1','','','',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('48','管理员','评论','comment','评论详情','/comment/view','','_blank','1','1','1','1','','','',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('49','管理员','评论','comment','我的评论','/comment/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('50','管理员','评论','comment','评论详情','/comment/details','','_blank','1','1','1','1','','','',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('51','管理员','新闻','article','新闻管理','/article/table','','_blank','1','1','1','1','','','',null,'0','{"print":true,"import_db":true,"export_db":true}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('52','管理员','新闻','article','新闻详情','/article/view','','_blank','1','1','1','1','','','',null,'0','{"print":true}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('53','管理员','新闻','article','小店新闻','/article/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('54','管理员','新闻','article','小店新闻','/article/details','','_blank','1','1','1','1','','','',null,'0','{"can_show_comment":true,"can_comment":true}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('55','管理员','新闻分类','article_type','新闻分类','/article_type/table','','_blank','1','1','1','1','','','',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('56','管理员','新闻分类','article_type','新闻分类','/article_type/view','','_blank','1','1','1','1','','','',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('57','普通用户','普通用户','ordinary_users','普通用户','/ordinary_users/table','','_blank','0','0','0','0','remarks','remarks','remarks',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('58','普通用户','普通用户','ordinary_users','普通用户详情','/ordinary_users/view','','_blank','0','0','0','0','remarks','remarks','remarks',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('59','普通用户','摄影分类','photographic_classification','摄影分类','/photographic_classification/table','','_blank','0','0','0','0','photography_type','photography_type','photography_type',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('60','普通用户','摄影分类','photographic_classification','摄影分类详情','/photographic_classification/view','','_blank','0','0','0','0','photography_type','photography_type','photography_type',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('61','普通用户','摄影作品','photographic_works','摄影作品','/photographic_works/table','','_blank','0','0','0','0','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('62','普通用户','摄影作品','photographic_works','摄影作品详情','/photographic_works/view','','_blank','0','0','0','0','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('63','普通用户','摄影作品','photographic_works','摄影作品','/photographic_works/list','top','_blank','1','1','1','1','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('64','普通用户','摄影作品','photographic_works','摄影作品详情','/photographic_works/details','','_blank','1','1','1','1','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details','work_name,photography_type,photographic_cover,shooting_time,shooting_location,photographer,work_details',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('65','普通用户','摄影师','photographer','摄影师','/photographer/table','','_blank','0','0','0','0','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('66','普通用户','摄影师','photographer','摄影师详情','/photographer/view','','_blank','0','0','0','0','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('67','普通用户','摄影师','photographer','摄影师','/photographer/list','top','_blank','1','1','1','1','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('68','普通用户','摄影师','photographer','摄影师详情','/photographer/details','','_blank','1','1','1','1','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae','photographer_name,photographic_grade,head_portrait,reservation_price,subject_type,award_record,curriculum_vitae',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('69','普通用户','预约信息','reservation_information','预约信息','/reservation_information/table','','_blank','0','0','0','1','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,reservation_status,reservation_reply','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,reservation_status,reservation_reply','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,reservation_status,reservation_reply',null,'0','{"pay":true}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('70','普通用户','预约信息','reservation_information','预约信息详情','/reservation_information/view','','_blank','0','0','0','1','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,reservation_status,reservation_reply','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,reservation_status,reservation_reply','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,reservation_status,reservation_reply',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('71','普通用户','预约信息','reservation_information','预约信息编辑','/reservation_information/edit','','_blank','1','1','1','1','time_of_appointment,photography_location,reservation_price,user,photographic_grade,photographer_name','time_of_appointment,photography_location,reservation_price,user,photographic_grade,photographer_name','time_of_appointment,photography_location,reservation_price,user,photographic_grade,photographer_name',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('72','普通用户','取消预约','cancel_reservation','取消预约','/cancel_reservation/table','','_blank','1','0','0','1','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,cancellation_reason','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,cancellation_reason','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,cancellation_reason',null,'0','{"examine":false}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('73','普通用户','取消预约','cancel_reservation','取消预约详情','/cancel_reservation/view','','_blank','1','0','0','1','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,cancellation_reason','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,cancellation_reason','photographer_name,photographic_grade,reservation_price,user,time_of_appointment,photography_location,cancellation_reason',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('74','普通用户','我的收藏','collect','我的收藏','/collect/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('75','普通用户','评论','comment','评论列表','/comment/table','','_blank','1','1','1','1','','','',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('76','普通用户','评论','comment','评论详情','/comment/view','','_blank','1','1','1','1','','','',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('77','普通用户','评论','comment','我的评论','/comment/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('78','普通用户','评论','comment','评论详情','/comment/details','','_blank','1','1','1','1','','','',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('79','普通用户','新闻','article','新闻列表','/article/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"import_db":false,"export_db":false}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('80','普通用户','新闻','article','新闻详情','/article/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('81','普通用户','新闻','article','小店新闻','/article/list','','_blank','1','1','1','1','','','',null,'1','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('82','普通用户','新闻','article','小店新闻','/article/details','','_blank','1','1','1','1','','','',null,'1','{"can_show_comment":true,"can_comment":true}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('83','普通用户','新闻分类','article_type','新闻分类列表','/article_type/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `auth` values ('84','普通用户','新闻分类','article_type','新闻分类详情','/article_type/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `user_group` values ('1','100','游客',null,'','','0','0',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `user_group` values ('2','100','管理员',null,'','','0',null,"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `user_group` values ('3','100','普通用户',null,'ordinary_users','ordinary_users_id','0','3',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `slides` values ('1','轮播图1','内容1','/article/details?article=1','/api/upload/image_1615206245041.jpg','704',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `slides` values ('2','轮播图2','内容2','/article/details?article=2','/api/upload/image_1615198875981.jpg','884',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `slides` values ('3','轮播图3','内容3','/article/details?article=3','/api/upload/image_1615206244488.jpg','84',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `slides` values ('4','轮播图4','内容4','/article/details?article=4','/api/upload/image_1615198876367.jpg','735',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `slides` values ('5','轮播图5','内容5','/article/details?article=5','/api/upload/image_1615198876392.jpg','15',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `slides` values ('6','轮播图6','内容6','/article/details?article=6','/api/upload/image_1615198875942.jpg','893',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");
insert into `article` values ('1','深圳旅游景点排行','风景','471','0',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ",null,null,null,'<p>深圳作为中国的四大一线城市之一，虽然没有北京文化古城的韵味，却有着现代化的时尚感。如果，您打算去深圳旅游，那么，您应该去品牌网小编为您推荐的<span style="color: rgb(51, 51, 51);">几个好看的旅游景点</span>。下面一起来看看<span style="color: rgb(51, 51, 51);">深圳旅游景点排名</span>吧。</p><p><span style="color: rgb(51, 51, 51);"> 一，世界之窗</span></p><p>世界之窗位于深圳湾畔的华侨城内，占地48万平方米。她以弘扬世界文化为宗旨，把世界奇观、历史遗迹、古今名胜、民间歌舞表演汇集一园，以"您给我一天，我给您一个美妙的世界"为号召，营造了一个精彩美妙的世界。世界之窗景区按五大洲划分，与世界广场、世界雕塑园、国际街、侏罗纪天地共同构成千姿万态、美妙绝伦的世界。118个景点按不同比例自由仿建，精巧别致，惟妙惟肖，令游客叹为观止。如果说世界之窗的一个个景点是一首首凝固的交响诗，那么异彩纷呈的民俗表演则是一幅幅活动的风情画。每当华灯初上，在世界广场上演的大型歌舞和狂欢巡游，更是把世界之窗的主题--"世界与您共欢乐"表现得淋漓尽致。</p><p><span style="color: rgb(51, 51, 51);"> 二，野生动物园</span></p><p>野生动物园建于深圳西丽湖畔，占地面积120万平方米，是我国第一家集动物园、植物园、科普园等多种园艺、观赏功能为一体的亚热带新型园林生态环境风景区。园内放养着来自世界各洲的300多个品种、一万多头(只)动物，有不少属于世界珍禽名曾和我国一、二级保护动物。马戏、群象、海豹、鸟类四个表演馆将游客带入一座座神奇、欢乐的世界;还有别具情趣的百鸟乐园、儿童乐园、猴山、鳄鱼湖、水族馆、鹦鹉小径、观景天桥和了望塔等。每日推出的大型动物广场艺术表演是目前世界动物园中绝无仅有的大制作，节目刺激惊险，场面神秘壮观，使人有"体验野性，回归自然"之感。</p><p><span style="color: rgb(51, 51, 51);"> 三，锦绣中华微缩景区</span></p><p>锦绣中华微缩景区坐落在深圳湾畔，是一座反映中国历史、文化艺术、古代建筑和民族风情比较丰富、比较生动、比较全面的微缩景区，占地450亩。景区中，近百处景点大致按中国区域版图分布。这里有名列世界八大奇迹的万里长城、秦陵兵马俑有比较古老的石拱桥，比较大的宫殿和佛像比较大的皇家园林，比较长的石窟画廊，海拔比较高比较宏伟的建筑等众多世界之比较;有肃穆庄严的黄帝陵，金碧辉粕的孔庙，雄伟壮观的泰山，险峻挺拔的长江三峡;还有如诗如画的漓江山水，千姿百态的名塔、名寺、名楼、名石窟以及具有民族风情的地方民居;此外，皇帝祭天、光绪大婚、孔庙祭典的场面与民间婚丧嫁娶风俗尽呈眼前，让游客大饱眼福。使游客"一步迈进历史，一天游遍中国"，它可以称做是中国历史之窗、文化之窗、旅游之窗。</p><p><span style="color: rgb(51, 51, 51);"> 四，中国民俗文化村</span></p><p>中国民俗文化村是国内第一个荟萃各民族民间艺术、民俗风情和居民建筑于一园的大型文化游览区，坐落在深圳湾畔，毗邻锦绣中华微缩景区，占地20万平方米。民俗文化村以"源于生活、高于生活、荟集景区、有所取舍"作为建村的指导原则，从不同角度反映我国民族的民俗文化。景区现有21个民族的24个村寨，均按原景的1：1比例建造。游客在村寨里可以了解民族的建筑风格，还可以欣赏和参与各民族的歌舞表演、民族工艺品制作，品尝民族风味食品，观赏民族艺术广场表演和专业水平的歌舞晚会，欢度民间喜庆节日，领略56个民族多姿多彩的文化艺术。</p><p><span style="color: rgb(51, 51, 51);"> 五，青青世界</span></p><p>青青世界位于深圳大南山的月亮湾畔，占地20万平方米，在这里，自然风情与民族文化相融，精致农业与旅游观光互补，形成一种具有浓厚现代色彩的山林野趣，被誉为"第四代旅游产品"的典范。依山而筑的小木屋供游客小住;园艺馆里，引种培植了来自日本，荷兰等国家和地区的数百种花卉;果园也汇集了十多种果树，常年果实累累。陶艺馆，不但可以领略中国传统的陶艺精品，亦让人们体验自己制作的乐趣;侏罗纪公园，藏卧着大大小小，形态逼真的恐龙和鳄鱼;蝴蝶谷内成群的蝴蝶在游客周围翩翩起舞、上下翻飞;还有充满野趣的露营区、烧烤场、钓鱼池、民艺广场等景点。让人实实在在的跳出城市生活节奏，放松心情去体验自然。</p><p><span style="color: rgb(51, 51, 51);"> 六，仙湖植物园</span></p><p>仙湖植物园是以旅游为主，科研科普为辅的风景植物园，坐落在梧桐山。全园分天上人间、天池、湖区、庙区、沙漠和松柏杜鹃五大景区，建有别有洞天、迷宫、天池、芦汀乡渡、仙渡、玉带桥、逍遥谷、野营区、龙蹲塔、听涛阁、揽胜亭等十几处园林景点和棕榈园、竹区、荫生植物区、沙漠植物区、百果园、水生植物园、裸子植物区、国际苏铁保存中心、盆景园、珍稀树木园等十几个植物专类园，保存的植物达三千多种，还有世界上比较大的化石森林。棕榈区草绿茵茵，林葵树分布其间，呈现出一派浓郁的热带风光;室内观赏植物区内，食虫植物伺机捕食，跳舞兰鲜艳的花朵宛然宫女踩着优美的舞步;晨曦中，弘法寺钟声回响，诵经曲徐疾有致，令人肃穆;夕阳下，湖水波光潋潋，绿树亭倒影其中，景色如画……</p><p><span style="color: rgb(51, 51, 51);"> 七，小梅沙</span></p><p>素有"东方夏威夷"之美誉的著名海滨旅游景区--小梅沙位于深圳东部大鹏湾。小梅沙三面青山环抱，一面海水蔚蓝，一弯新月似的沙滩镶嵌在兰天碧波之间。她的环海沙滩延绵千里，海滨浴场洁净开阔，兰色的大海碧波万顷，茂盛的椰树婆娑起舞。放眼望去，海滨沙滩被鲜艳的太阳伞装点得五彩缤纷，游艇犁出浪花，降落伞迎风绽开，墩洲岛巨浪拍岸，千人烧烤场篝火通红。</p><p>来源 品牌网 转载请注明出处</p>','','2022年05月23日 12:51 新浪网');
insert into `article` values ('2','广西这座中越边境小城,素有“风景小桂林”之称,却少有人知','风景','767','0',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ",null,null,null,'<p>广西是一个美丽的地方，对于没去过的人，广西就是一个梦幻的美梦，充满了期待。特别是桂林，素来就有“桂林山水甲天下之说，相信大家去广西旅游的时候，大多数人还是首选桂林。</p><p><img src="http://n.sinaimg.cn/sinakd20210325ac/168/w606h362/20210325/1958-kmvwsvx7590076.jpg"></p><p>但除了桂林之外，你知道在广西西部毗邻云南和越南的山水间，还有一座宛如世外桃源般的小城吗？它有不输桂林的清泉，颜色时蓝时绿，令人心醉。这里青山环绕，田园如画，它就是地处中越边境的靖西市，</p><p><img src="http://n.sinaimg.cn/sinakd20210325ac/197/w626h371/20210325/42e4-kmvwsvx7590081.jpg"></p><p>靖西地处桂西南边陲，边境线绵长，是一个典型的壮族聚居县，也是中国境内一处充满诱惑和魅力的边关旅游胜地。在这里，游客不仅能感受边境风情，加上这里夏无酷暑，冬无严寒，年均气温19.1℃。</p><p><img src="http://n.sinaimg.cn/sinakd20210325ac/204/w630h374/20210325/535e-kmvwsvx7590086.jpg"></p><p>所以靖西一直以四季如春的自然风光闻名遐迩，素有“山水似桂林，气候胜昆明”的美誉。这里有一步一景的美丽峡谷—通灵大峡谷，结合了热带雨林、河流瀑布、峡谷溶洞等多种景观的自然风景区，也是靖西最著名的景点之一，被称为“地球上一道美丽的伤痕”。</p><p><img src="http://n.sinaimg.cn/sinakd20210325ac/184/w621h363/20210325/2728-kmvwsvx7590082.jpg"></p><p>而通灵大峡谷最壮丽的景观，是高168米、宽30米的中国落差最大的瀑布——通灵大瀑布。位于一处地缝边缘，水流从崖顶凌空而下，飞溅到数百米外，让游人难以靠近。当你沿着栈道还可以走到山壁内部溶洞，瀑布轰隆声震耳欲聋，</p><p><img src="http://n.sinaimg.cn/sinakd20210325ac/192/w624h368/20210325/7ed3-kmvwsvx7590079.jpg"></p><p>位于市区南约5公里的鹅泉，也是靖西最有名的景点之一，它与大理蝴蝶泉、桂林西山乳泉并称为中国西南三大名泉。这里的水绿得让人心动，像是一块翡翠。周边翠峰如屏。田园似锦，景色如画，正是陶渊明笔下的田园生活模样。</p><p><img src="http://n.sinaimg.cn/sinakd20210325ac/187/w621h366/20210325/de2c-kmvwsvx7590078.jpg"></p><p>据记载，明成化六年(1470)年，嘉靖皇帝得知鹅泉山川灵秀，于是赐名“灵泉晚照”，因而鹅泉又被称为灵泉。</p><p><img src="http://n.sinaimg.cn/sinakd20210325ac/186/w621h365/20210325/fe5f-kmvwsvx7590083.jpg"></p><p>沿着鹅泉下游开车15分钟，便可到达有“壮族活的博物馆”之称的旧州古镇。旧州古称“那签”，历史可追溯700多年前的南宋，是明朝著名抗倭女老英雄瓦氏夫人的故乡。荟萃了壮族建筑文化、宗教文化和土司文化。</p><p><img src="http://n.sinaimg.cn/sinakd20210325ac/170/w606h364/20210325/6935-kmvwsvx7590088.jpg"></p><p>这里有全国闻名的绣球一条街，依河而建，石板地面，两边有众多古建筑，大青砖，厚木门。在这里你会发现每家每户的门口，旧州的壮族绣娘仍旧一针一线地缝制绣球。</p><p><img src="http://n.sinaimg.cn/sinakd20210325ac/204/w631h373/20210325/383a-kmvwsvx7590077.jpg"></p><p>在靖西，除了以上知名景点外，还有很多值得一去的地方，比如古龙山峡谷漂流、巴泽梯田、渠洋湖、爱布村等。当然，如果想去靖西旅游，自驾游可能是到靖西旅游最好的交通方式，因为在广西南部的山水之间，隐藏着一条“世界最美公路”。</p><p><img src="http://n.sinaimg.cn/sinakd20210325ac/207/w630h377/20210325/0692-kmvwsvx7590084.jpg"></p>','','2022年05月23日 12:51 新浪网');
insert into `article` values ('3','捷映 | 胜日寻芳，美丽的春日风景，记录在视频里的春天故事','风景','961','0',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ",null,null,null,'<p>胜日寻芳泗水滨，无边光景一时新。几处早莺争暖树，谁家新燕啄春泥。春天来了，脑海中不由得就会浮现出诗中那般美好的事物。春天是万物复苏的季节，阳光明媚，春风轻拂，更能带来好心情，欣赏春日风景，记录下春日生活中美好的点点滴滴。</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10116/533/w1280h853/20210325/d624-kmvwsvx9676473.jpg"></p><p>阳光照耀大地，春风带走寒冬的凛冽，天气变暖，搬上一张摇椅，在院子里晒晒太阳，偶尔翻上几本小说，享受一份春日的慵懒。与家人一起在公园中散散步，河水轻荡，波光粼粼，柳树随风招展，小草吐露新芽，花儿开始绽放，鸟儿在枝头雀跃，一片祥和的景象，如此美好，净化心灵。</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10116/640/w1280h960/20210325/336a-kmvwsvx9677403.jpg"></p><p>春天是郊游踏青的好季节，约上三两好友，来一场春游，看看田间风吹麦浪，犹如绿色的海洋，金黄油菜花在太阳下闪闪发光，偶尔有几个小孩子在田间奔跑追逐，或放风筝，或嬉戏打闹。春风送来阵阵泥土的芬芳，天上云朵片片，美丽的春天田野，如诗如画。和好友一起畅游在天地间，感受春天的气息，一起回忆往昔的美好。</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10116/533/w1280h853/20210325/3b74-kmvwsvx9678046.jpg"></p><p>春天也是一个谈恋爱的好季节，去年春日此门中，人面桃花相映红。桃花绽放，与喜欢的人一起欣赏桃花林，樱花树下，洁白的樱花飘落，为爱情装点一份浪漫。春水初生，春林初盛，春风十里不如你。桃花，杏花，樱花，各种花儿绽放，万紫千红，点缀大地，但最美的风景不过身边的人，落花人独立，微雨燕双飞。佳人如仙子，宛若画中来。</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10116/480/w1280h800/20210325/78b5-kmvwsvx9678643.jpg"></p>','','2022年05月23日 12:51 新浪网');
insert into `article` values ('4','风景这边独好——沿着高速看中国','风景','519','0',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ",null,null,null,'<p>沿着高速看中国</p><p>趁着春光正好</p><p>来一场说走就走的旅行</p><p>沐春光 赏花海</p><p>漫游城镇乡野</p><p>走遍山川湖海</p><p>如在画中穿行</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021325s/308/w554h554/20210325/74ad-kmvwsvx8027849.jpg"></p><p><strong>跨越山海气贯长虹</strong></p><p><strong>包茂国家高速公路渝湘段</strong></p><p><strong>阿蓬江特大桥</strong></p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021325s/360/w180h180/20210325/8c84-kmvwsvx8027856.gif"><strong>阿蓬江特大桥</strong></p><p>横跨在重庆市黔江区阿蓬江大峡谷上</p><p>让昔日天堑变通途</p><p>道通则人兴 路通则民富</p><p>阡陌交通托起人民的小康梦想</p><p><strong>连霍国家高速果子沟大桥</strong></p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021325s/360/w180h180/20210325/239d-kmvwsvx8028049.gif"></p><p><strong>连霍国家高速</strong></p><p>是我国最长的高速公路</p><p>打通了西北、中原及东部沿海</p><p>是著名的亚欧大陆桥通道</p><p><strong>果子沟大桥</strong>上</p><p>汽车在峡谷间巡回漫游</p><p>既有怪石嵯峨、峭壁悬空的险境</p><p>又有开满杏花的茂密山林</p><p>犹如行走在天上云间</p><p>恍入童话仙境</p><p><strong>神州筑梦 大道纵横</strong></p><p><strong>景婺黄高速</strong></p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021325s/360/w180h180/20210325/e20e-kmvwsvx8028051.gif"><strong>景婺黄高速公路</strong></p><p>是杭瑞国家高速公路的重要路段</p><p>沿线风景秀美 风光绮丽</p><p>白墙青瓦的徽派建筑</p><p>漫山遍野的油菜花海</p><p>“五岳归来不看山，黄山归来不看岳”</p><p>无一不在邀请你加入这场</p><p>春的盛宴</p><p><strong>黄黄高速</strong></p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021325s/360/w180h180/20210325/e8ab-kmvwsvx8028283.gif"><strong>湖北省黄黄高速公路</strong></p><p>是沪渝、福银两条国家高速公路的共线路段</p><p>西起黄石长江公路大桥</p><p>止于鄂皖交界的界子墩</p><p>途径浠水 蕲春 武穴 黄梅</p><p>你将路过</p><p>广袤绿洲 万顷良田</p><p>一派春意盎然 生机勃勃</p><p><strong>京新国家高速</strong></p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021325s/360/w180h180/20210325/473c-kmvwsvx8028496.gif"><strong>京新国家高速</strong></p><p>贯穿北京 河北 山西 内蒙古 甘肃 新疆</p><p>迈过高山深谷</p><p>穿越沙漠戈壁</p><p>每次一经过</p><p>让我们更懂山河天地的魅力</p><p><strong>开往春天 锦绣未来</strong></p><p><strong>京昆国家高速公路</strong></p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021325s/360/w180h180/20210325/b2fe-kmvwsvx8028604.gif"><strong>京昆国家高速公路</strong></p><p>从北京出发</p><p>开往彩云之南</p><p>途经河北 山西 陕西 四川</p><p>路上</p><p>一边赏山花烂漫 一边打卡人文胜地</p><p>十渡 晋祠 平遥古镇</p><p>西安古都 秦岭山脉 三星堆</p><p>武侯祠 杜甫草堂 都江堰</p><p>元谋人化石遗址</p><p>感悟文化生生不息</p><p>传承发展</p><p><strong>海南环岛高速</strong></p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021325s/360/w180h180/20210325/c6f7-kmvwsvx8028605.gif"><strong>海南环岛高速公路自建设至今</strong></p><p>仍然是海南路网中最繁忙的</p><p>交通主动脉</p><p>环岛一圈</p><p>天水一色 长滩椰林</p><p>尽赏南国旖旎 海的深沉与浪漫</p><p><strong>拉林高等级公路</strong></p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021325s/360/w180h180/20210325/7b83-kmvwsvx8028673.gif"><strong>这条路带你从“日光之城”拉萨</strong></p><p><br></p>','','2022年05月23日 12:51 新浪网');
insert into `article` values ('5','潍坊科技学院：万物生 春意浓 莫负好风景','风景','159','0',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ",null,null,null,'<p>【潍坊科技学院：万物生 春意浓 莫负好风景】春回大地，万物复苏，潍坊科技学院内，朵朵洋红，开得恣意汪洋。在教学楼外徘徊，看室内书香云霭，闻室外花香成海。碧湖倒影映白云，湖中柳，柳中湖。我还是很喜欢你，潍科的春天。</p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/358/w1200h758/20210326/ce67-kmvwsvy1582392.jpg"></p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/784/w1200h1984/20210326/9604-kmvwsvy1582489.jpg"></p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/120/w1080h1440/20210326/3827-kmvwsvy1582590.jpg"></p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/400/w1200h800/20210326/e26d-kmvwsvy1582860.jpg"></p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/223/w1200h623/20210326/f589-kmvwsvy1582957.jpg"></p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/337/w1200h737/20210326/2f54-kmvwsvy1583185.jpg"></p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/474/w800h474/20210326/ab8b-kmvwsvy1583399.jpg"></p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/752/w1080h1272/20210326/506e-kmvwsvy1583479.jpg"></p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/379/w1200h779/20210326/8d2f-kmvwsvy1583645.jpg"></p>','','2022年05月23日 12:51 新浪网');
insert into `article` values ('6','它是沈从文《边城》的原型，处在三省交界处，风景如画游客不多','风景','980','0',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ",null,null,null,'<p>很多人旅游都是为了放松自己紧张的心情，所以很多人都想要找一个风景秀美而且比较僻静的地方，这样不仅可以更好的放松心情，而且还能够增进一同旅行的人的感情，正是因为这样的人多了，所以古镇文化才会慢慢兴起。</p><p><img src="http://n.sinaimg.cn/sinakd20210324ac/258/w640h418/20210324/766a-kmvwsvx6547318.png"></p><p>地处三省交界</p><p>周边游让古镇文化一度非常火热，很多城市都斥巨资兴建了不少的仿古城，虽然没有古城的古色古香，但是跟平时见到的景色也有很大的不同。很多传承已久的古城也再度散发出了魅力，吸引了不少旅客的游览。</p><p>而在重庆东南部就有一个风景秀丽可是游览人数却不是很多的古镇，这个地方就是洪安古镇。</p><p><img src="http://n.sinaimg.cn/sinakd20210324ac/256/w640h416/20210324/bb25-kmvwsvx6547323.png"></p><p>古镇介绍</p><p>很多人听到洪安古镇都是一愣，因为重庆的热门景点中很少提及这个古镇，但其实这座古镇却是大有来头，因为是大文豪沈从文的小说《边城》的原型，所以有不少人慕名而来，全镇总面积有52平方公里，所以景点还是不少的。</p><p><img src="http://n.sinaimg.cn/sinakd20210324ac/257/w640h417/20210324/9a8e-kmvwsvx6547320.png"></p><p>洪安古镇位于湖南、重庆、贵州三个省的交界处，之前是一个三不管的地方，所以经济比较落后，但是后来划入重庆之后得到了快速的发展，镇民们的生活也过的越来越富足，很多游客到这里都可以感受到乡亲们的热情和友善。</p><p><img src="http://n.sinaimg.cn/sinakd20210324ac/252/w640h412/20210324/44ea-kmvwsvx6547327.png"></p><p>秀美风光</p><p>洪安古镇的自然风光十分秀丽，这里依山傍水气候湿润，成片的绿树让古镇空气十分清新，河水在微风的吹拂下泛起了点点波光，美得就像一幅画一样。</p><p>而且洪安古镇是土家族风格的建筑，由石板铺成的街道配上青砖黑瓦风格的土家族建筑，让人可以感到浓郁的历史气息，不仅沈从文先生描写过这个地方，就连二野大军进入大西南的时候，司令部都在这里驻扎过很长一段时间。</p><p><img src="http://n.sinaimg.cn/sinakd20210324ac/269/w640h429/20210324/e034-kmvwsvx6547326.png"></p><p>特色美食</p><p>除了特色的风光和历史之外，洪安古镇还有“一锅煮三省”的洪安腌菜鱼，为什么说是一锅煮三省呢？湖南的鱼鲜和贵州的豆腐再加上重庆的腌菜，三省的美食汇聚一锅，才能形成特色的洪安腌菜鱼。三种味道融合成一道菜，你中有我我中有你，不仅鲜辣可口而且相互不冲味，显得十分和谐。</p><p><img src="http://n.sinaimg.cn/sinakd20210324ac/263/w640h423/20210324/ce96-kmvwsvx6547325.png"></p>','','2022年05月23日 12:51 新浪网');
insert into `article` values ('7','有“广东最美湖泊”之称,还曾登上小学课本,风景优美却鲜少人知','风景','101','0',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ",null,null,null,'<p>说起广东，大家肯定不会陌生，作为我国经济最发达的省份，境内很多城市都家喻户晓，而随着近几年来我国旅游业的兴起，越来越多游客也来到了广东旅游，不过，大家所观光的，无非就是像广州、珠海此类的大城市，殊不知，在广东境内，还藏有一个美丽的湖北，它有“广东最美湖泊”的美誉，同时还登上过小学课本，风景优美却鲜少人知。</p><p><img src="http://n.sinaimg.cn/sinakd20210324ac/272/w640h432/20210324/dc34-kmvwsvx6922641.jpg"></p><p>这座湖泊就是湖光岩风景区，想必很多广东的朋友都或多或少听说过，它地处于湛江市区西南18公里处，总面积达38平方公里，是一座以玛珥火山地质地貌为主体的自然生态公园，境内由雷琼世界地质公园博物馆、楞严寺、李纲醉月雕像、美食欢乐园、清风林、火山地质遗迹、白牛仙女雕像等20个景点组成的4A级国家景区。</p><p><img src="http://n.sinaimg.cn/sinakd20210324ac/272/w640h432/20210324/598a-kmvwsvx6922649.jpg"></p><p>很多人都以为湖光岩风景区是一座现代所建造的风景区，其实不然，景区内有很多景点都是古代所建，例如依岩而建的楞严寺，就是始建于隋代末年，同时还是全国十八大古刹之一，还有宋朝所建的白衣庵，就连景区的名字，也是宋朝丞相李纲所起。当时正值金军犯境，李纲作为宋朝抗金名将，与奸臣秦桧不合，所以被其所害，被贬海南，在路途中看到了此地，于是便在摩崖石上刻下了“湖光岩”。</p><p><img src="http://n.sinaimg.cn/sinakd20210324ac/272/w640h432/20210324/7fd9-kmvwsvx6922647.jpg"></p><p>而湖光岩风景区是在2001年才正式对外开放，其中最具代表性的景点就是玛珥湖，玛珥湖是距今14—16万年前由平地火山爆炸后冷却下沉形成的玛珥式火山湖，湖深400多米，由于四周被山体包围，常年不受外界干扰，所以湖底有很多具有历史价值的样本。</p><p><img src="http://n.sinaimg.cn/sinakd20210324ac/270/w640h430/20210324/a103-kmvwsvx6922645.jpg"></p><p>其次还有龙鱼神龟，想必很多人都在景区之中见到过这两尊雕像，而这两座雕像并不是平白无故建立在此的，传说在1998年的5月28日，国防大学将军班在游览景区时，发现了传说中4米多长的龙鱼和近2米宽的大龟遨游湖中的奇观，并且有60人看见，在此之后陆续又有很多人看到这一奇观，景区也为此在东门广场修建龙鱼神龟雕像。</p><p><img src="http://n.sinaimg.cn/sinakd20210324ac/272/w640h432/20210324/a8d8-kmvwsvx6922650.jpg"></p>','','2022年05月23日 12:51 新浪网');
insert into `article` values ('8','驻马店：这里风景如画','风景','250','0',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ",null,null,null,'<p><strong>天中晚报全媒体记者&nbsp;王建成</strong></p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10118/360/w720h440/20210325/28e4-kmvwsvy0072477.jpg"></p><p>3月25日，市练江河西段，两岸的油菜花盛开，让人流连忘返。</p><p><img src="http://n.sinaimg.cn/sinakd20210325ac/89/w720h969/20210325/e061-kmvwsvy0072896.jpg"></p><p>一名市民驾驶橡皮船一边欣赏美丽的风景，一边在河中撒网捕鱼。</p><p><img src="http://n.sinaimg.cn/sinakd20210325ac/370/w720h450/20210325/44e5-kmvwsvy0072891.jpg"></p><p>初春的小河边，金黄的油菜花与悠然自得捕鱼的市民相映成趣。</p><p><img src="http://n.sinaimg.cn/sinakd20210325ac/364/w720h444/20210325/d3d8-kmvwsvy0072875.jpg"></p>','','2022年05月23日 12:51 新浪网');
insert into `article` values ('9','捷映 | 胜日寻芳，美丽的春日风景，记录在视频里的春天故事','风景','27','0',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ",null,null,null,'<p>胜日寻芳泗水滨，无边光景一时新。几处早莺争暖树，谁家新燕啄春泥。春天来了，脑海中不由得就会浮现出诗中那般美好的事物。春天是万物复苏的季节，阳光明媚，春风轻拂，更能带来好心情，欣赏春日风景，记录下春日生活中美好的点点滴滴。</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10116/533/w1280h853/20210325/d624-kmvwsvx9676473.jpg"></p><p>阳光照耀大地，春风带走寒冬的凛冽，天气变暖，搬上一张摇椅，在院子里晒晒太阳，偶尔翻上几本小说，享受一份春日的慵懒。与家人一起在公园中散散步，河水轻荡，波光粼粼，柳树随风招展，小草吐露新芽，花儿开始绽放，鸟儿在枝头雀跃，一片祥和的景象，如此美好，净化心灵。</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10116/640/w1280h960/20210325/336a-kmvwsvx9677403.jpg"></p><p>春天是郊游踏青的好季节，约上三两好友，来一场春游，看看田间风吹麦浪，犹如绿色的海洋，金黄油菜花在太阳下闪闪发光，偶尔有几个小孩子在田间奔跑追逐，或放风筝，或嬉戏打闹。春风送来阵阵泥土的芬芳，天上云朵片片，美丽的春天田野，如诗如画。和好友一起畅游在天地间，感受春天的气息，一起回忆往昔的美好。</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10116/533/w1280h853/20210325/3b74-kmvwsvx9678046.jpg"></p><p>春天也是一个谈恋爱的好季节，去年春日此门中，人面桃花相映红。桃花绽放，与喜欢的人一起欣赏桃花林，樱花树下，洁白的樱花飘落，为爱情装点一份浪漫。春水初生，春林初盛，春风十里不如你。桃花，杏花，樱花，各种花儿绽放，万紫千红，点缀大地，但最美的风景不过身边的人，落花人独立，微雨燕双飞。佳人如仙子，宛若画中来。</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10116/480/w1280h800/20210325/78b5-kmvwsvx9678643.jpg"></p>','','2022年05月23日 12:51 新浪网');
insert into `article` values ('10','捷映 | 胜日寻芳，美丽的春日风景，记录在视频里的春天故事','风景','44','0',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ",null,null,null,'<p>胜日寻芳泗水滨，无边光景一时新。几处早莺争暖树，谁家新燕啄春泥。春天来了，脑海中不由得就会浮现出诗中那般美好的事物。春天是万物复苏的季节，阳光明媚，春风轻拂，更能带来好心情，欣赏春日风景，记录下春日生活中美好的点点滴滴。</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10116/533/w1280h853/20210325/d624-kmvwsvx9676473.jpg"></p><p>阳光照耀大地，春风带走寒冬的凛冽，天气变暖，搬上一张摇椅，在院子里晒晒太阳，偶尔翻上几本小说，享受一份春日的慵懒。与家人一起在公园中散散步，河水轻荡，波光粼粼，柳树随风招展，小草吐露新芽，花儿开始绽放，鸟儿在枝头雀跃，一片祥和的景象，如此美好，净化心灵。</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10116/640/w1280h960/20210325/336a-kmvwsvx9677403.jpg"></p><p>春天是郊游踏青的好季节，约上三两好友，来一场春游，看看田间风吹麦浪，犹如绿色的海洋，金黄油菜花在太阳下闪闪发光，偶尔有几个小孩子在田间奔跑追逐，或放风筝，或嬉戏打闹。春风送来阵阵泥土的芬芳，天上云朵片片，美丽的春天田野，如诗如画。和好友一起畅游在天地间，感受春天的气息，一起回忆往昔的美好。</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10116/533/w1280h853/20210325/3b74-kmvwsvx9678046.jpg"></p><p>春天也是一个谈恋爱的好季节，去年春日此门中，人面桃花相映红。桃花绽放，与喜欢的人一起欣赏桃花林，樱花树下，洁白的樱花飘落，为爱情装点一份浪漫。春水初生，春林初盛，春风十里不如你。桃花，杏花，樱花，各种花儿绽放，万紫千红，点缀大地，但最美的风景不过身边的人，落花人独立，微雨燕双飞。佳人如仙子，宛若画中来。</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10116/480/w1280h800/20210325/78b5-kmvwsvx9678643.jpg"></p>','','2022年05月23日 12:51 新浪网');
insert into `article` values ('11','风景这边独好——沿着高速看中国','风景','63','0',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ",null,null,null,'<p>沿着高速看中国</p><p>趁着春光正好</p><p>来一场说走就走的旅行</p><p>沐春光 赏花海</p><p>漫游城镇乡野</p><p>走遍山川湖海</p><p>如在画中穿行</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021325s/308/w554h554/20210325/74ad-kmvwsvx8027849.jpg"></p><p><strong>跨越山海气贯长虹</strong></p><p><strong>包茂国家高速公路渝湘段</strong></p><p><strong>阿蓬江特大桥</strong></p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021325s/360/w180h180/20210325/8c84-kmvwsvx8027856.gif"><strong>阿蓬江特大桥</strong></p><p>横跨在重庆市黔江区阿蓬江大峡谷上</p><p>让昔日天堑变通途</p><p>道通则人兴 路通则民富</p><p>阡陌交通托起人民的小康梦想</p><p><strong>连霍国家高速果子沟大桥</strong></p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021325s/360/w180h180/20210325/239d-kmvwsvx8028049.gif"></p><p><strong>连霍国家高速</strong></p><p>是我国最长的高速公路</p><p>打通了西北、中原及东部沿海</p><p>是著名的亚欧大陆桥通道</p><p><strong>果子沟大桥</strong>上</p><p>汽车在峡谷间巡回漫游</p><p>既有怪石嵯峨、峭壁悬空的险境</p><p>又有开满杏花的茂密山林</p><p>犹如行走在天上云间</p><p>恍入童话仙境</p><p><strong>神州筑梦 大道纵横</strong></p><p><strong>景婺黄高速</strong></p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021325s/360/w180h180/20210325/e20e-kmvwsvx8028051.gif"><strong>景婺黄高速公路</strong></p><p>是杭瑞国家高速公路的重要路段</p><p>沿线风景秀美 风光绮丽</p><p>白墙青瓦的徽派建筑</p><p>漫山遍野的油菜花海</p><p>“五岳归来不看山，黄山归来不看岳”</p><p>无一不在邀请你加入这场</p><p>春的盛宴</p><p><strong>黄黄高速</strong></p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021325s/360/w180h180/20210325/e8ab-kmvwsvx8028283.gif"><strong>湖北省黄黄高速公路</strong></p><p>是沪渝、福银两条国家高速公路的共线路段</p><p>西起黄石长江公路大桥</p><p>止于鄂皖交界的界子墩</p><p>途径浠水 蕲春 武穴 黄梅</p><p>你将路过</p><p>广袤绿洲 万顷良田</p><p>一派春意盎然 生机勃勃</p><p><strong>京新国家高速</strong></p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021325s/360/w180h180/20210325/473c-kmvwsvx8028496.gif"><strong>京新国家高速</strong></p><p>贯穿北京 河北 山西 内蒙古 甘肃 新疆</p><p>迈过高山深谷</p><p>穿越沙漠戈壁</p><p>每次一经过</p><p>让我们更懂山河天地的魅力</p><p><strong>开往春天 锦绣未来</strong></p><p><strong>京昆国家高速公路</strong></p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021325s/360/w180h180/20210325/b2fe-kmvwsvx8028604.gif"><strong>京昆国家高速公路</strong></p><p>从北京出发</p><p>开往彩云之南</p><p>途经河北 山西 陕西 四川</p><p>路上</p><p>一边赏山花烂漫 一边打卡人文胜地</p><p>十渡 晋祠 平遥古镇</p><p>西安古都 秦岭山脉 三星堆</p><p>武侯祠 杜甫草堂 都江堰</p><p>元谋人化石遗址</p><p>感悟文化生生不息</p><p>传承发展</p><p><strong>海南环岛高速</strong></p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021325s/360/w180h180/20210325/c6f7-kmvwsvx8028605.gif"><strong>海南环岛高速公路自建设至今</strong></p><p>仍然是海南路网中最繁忙的</p><p>交通主动脉</p><p>环岛一圈</p><p>天水一色 长滩椰林</p><p>尽赏南国旖旎 海的深沉与浪漫</p><p><strong>拉林高等级公路</strong></p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021325s/360/w180h180/20210325/7b83-kmvwsvx8028673.gif"><strong>这条路带你从“日光之城”拉萨</strong></p><p><br></p>','','2022年05月23日 12:51 新浪网');
insert into `article` values ('12','驻马店：这里风景如画','风景','522','0',"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ",null,null,null,'<p><strong>天中晚报全媒体记者&nbsp;王建成</strong></p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10118/360/w720h440/20210325/28e4-kmvwsvy0072477.jpg"></p><p>3月25日，市练江河西段，两岸的油菜花盛开，让人流连忘返。</p><p><img src="http://n.sinaimg.cn/sinakd20210325ac/89/w720h969/20210325/e061-kmvwsvy0072896.jpg"></p><p>一名市民驾驶橡皮船一边欣赏美丽的风景，一边在河中撒网捕鱼。</p><p><img src="http://n.sinaimg.cn/sinakd20210325ac/370/w720h450/20210325/44e5-kmvwsvy0072891.jpg"></p><p>初春的小河边，金黄的油菜花与悠然自得捕鱼的市民相映成趣。</p><p><img src="http://n.sinaimg.cn/sinakd20210325ac/364/w720h444/20210325/d3d8-kmvwsvy0072875.jpg"></p>','','2022年05月23日 12:51 新浪网');
insert into `article_type` values ('1','100','风景','0',null,null,null,"2022-05-14 07:47:06.000 ","2022-05-14 07:47:06.000 ");

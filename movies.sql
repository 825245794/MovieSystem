# Host: localhost  (Version: 5.5.22)
# Date: 2018-11-14 23:27:41
# Generator: MySQL-Front 5.3  (Build 4.9)

/*!40101 SET NAMES utf8 */;

#
# Source for table "f_film"
#

DROP TABLE IF EXISTS `f_film`;
CREATE TABLE `f_film` (
  `filmid` int(11) NOT NULL AUTO_INCREMENT,
  `filmname` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `filminfo` text CHARACTER SET utf8,
  `filmactor` text CHARACTER SET utf8,
  `filmstar` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `price` double DEFAULT NULL,
  `activity` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `img` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `filmtype` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `filmtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`filmid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

#
# Data for table "f_film"
#

INSERT INTO `f_film` VALUES (1,'天才枪手','影片根据2014年轰动一时的亚洲考场作弊案改编，讲述了天才学霸利用高智商考场作弊牟取暴利的故事……','茱蒂蒙．琼查容苏因 /Eisaya Hosuwan /披纳若．苏潘平佑','3.5',23,'1','1.jpg','悬疑',99),(2,'全球风暴','故事设定在未来世界，人类已经拥有了通过卫星来操控天气的科技，从此极端天气成为历史。然而，数颗卫星却突现出现故障，原本应该保护地球的卫星系统开始攻击地球，一场席卷整个世界、摧毁一切的灭世浩劫从天而降。','杰拉德．巴特勒 /吉姆．斯特吉斯 /艾比．考尼什 ','4.0',40,'1','2.jpg','灾难',128),(3,'我的爸爸是森林之王','亚当，一个十三岁的、不合群的男孩，为了发现父亲失踪背后的秘密,踏上了一段惊心动魄、令人难忘的征程。他很快发现他的父亲正是传说中的大脚怪，他多年来一直躲藏在森林里，以保护他自己和家人不被大型公司 HairCo纠缠。','鲍勃．巴伦 /卡尔．布伦克尔 /乔伊．卡门','3.6',37,'1','3.jpg','动画',120),(4,'情遇曼哈顿','在《情遇曼哈顿》中，王丽坤饰演女一白淇，一名在纽约挣扎找机会的年轻演员。百老汇大制作《木兰歌剧》公开征选女主角，白淇面试非常出色，让白淇惊讶万分的是，与她争夺女主角的唯一对手，竟然是之前多次邂逅、颇有好感的宋苇东（高以翔 饰），一场竞争就此展开。','王丽坤 /高以翔 /王传君 /李媛','3.1',38,'1','4.jpg','爱情',88),(5,'回到火星','火星男友Gardner（阿沙．巴特菲尔德饰）从天而降，一段关于亲情与爱情的寻觅之旅跨星际上演。16岁的火星男孩Gardner回到地球，带着对一切新奇美好的向往冲破科学家及医护人员的防护，与名叫Tulsa（布丽特妮．罗伯森饰）的地球少女，展开了一段动人心弦的历险，一起追寻自己的出生之谜，一起品尝纯真初恋……','阿萨．巴特菲尔德 /布丽特．罗伯森 /加里．奥德曼 /卡拉．古奇诺','4.1',36,'1','5.jpg','科幻',124),(6,'英伦对决','《英伦对决》讲述了生活在英国唐人街小餐馆老板关玉明（成龙 饰），因女儿（梁佩诗 饰）在恐怖袭击中不幸遇难陷入绝望，而有关部门的不作为更使他悲愤莫名。为给女儿讨回一个公道，他拒绝了林宝怡（刘涛饰）的挽留，独自踏上向恐怖组织以牙还牙以血还血的复仇之路。此时，关键人物汉尼斯（皮尔斯．布鲁斯南 饰）的出现，揭开了一个错综复杂的大阴谋……','成龙 /皮尔斯．布鲁斯南 /刘涛 /夏莉．墨菲 /斯蒂芬．霍根','3.5',42,'1','6.jpg','惊悚',110),(7,'羞羞的铁拳','艾迪生本是一个想要成为拳王的男人，自从三年前被吴良打断手臂后，他就放弃了拳手自尊，和黑道健哥勾结打假拳，令他没想到的是，健哥的女儿，竟然是那个专门揭发假拳、专门和他作对的麻辣女记者马小……','艾伦 /马丽 /沈腾 /宋阳 /田雨 /薛皓文','3.8',56,'1','7.jpg','喜剧',115),(8,'缝纫机乐队','小镇青年胡亮（乔杉 饰）为守护家乡摇滚公园，高薪请来音乐经纪人程宫（董成鹏 饰）筹办演唱会。最后集合了鼓手-炸药（李鸿其 饰），贝斯手-丁建国（娜扎 饰），吉他手-杨双树（韩童生 饰），键盘手-希希（曲隽希 饰）组建了“缝纫机乐队”，演出筹备之际，当地房地产大亨为尽快拆除公园，表示愿出高价迫使程宫取消演出。面对高额诱惑和音乐梦想，程宫该何去何从？摇滚小镇集安的摇滚公园能否保全，集安人的摇滚梦想又将何去何从呢……','大鹏 /乔杉 /古力娜扎 /韩童生 /李鸿其 /曲隽希','3.5',32,'1','8.jpg','喜剧',123),(9,'追龙','电影讲述了香港现代史上两大著名狠角色大毒枭跛豪（甄子丹饰）、五亿探长雷洛（刘德华饰）的传奇故事。上世纪六七十年代，香港由英国殖民，权势腐败、社会混乱。1963年，穷困潦倒的青年阿豪（甄子丹饰）偷渡至香港，抱着“生死有命、富贵在天”之心决意一搏人生。阿豪带着几个兄弟，从九龙城寨底层开始一路刀刃舔血，爬上香港毒品霸主之位，一手掌控香港十大黑帮，江湖人称“跛豪”。而雷洛（刘德华饰）则从一位普通探长一步步爬上华人总探长高位，统领全香港三万警察，手握香港治安“潜规则”。为垄断香港黄赌毒三大经济产业，跛豪与雷洛结拜为兄弟，两人一黑一白两手遮天，权势滔天，家财亿万，独霸香港岛……','甄子丹 /刘德华 /姜皓文 /郑则仕 /刘浩龙 /汤镇业 /喻亢 /胡然 /徐冬冬 /黄日','3.1',34,'1','9.jpg','动作',145),(10,'空天猎','一场空天战场的猎杀传奇。霸天狼，一支神秘的空军顶级团队，每一名飞行员都是“金头盔”级别的王牌飞行员，吴迪（李晨饰）、亚莉（范冰冰饰）、巴图（郭洺宇饰）、高原（李晨浩饰）通过层层考核，成为了霸天狼秘密基地的一员。可谁也没有想到，吴迪的好友浩辰（李佳航饰）却在任务中陷入一场境外战乱的阴谋。更大的威胁接踵而至，恐怖势力突发其来的导弹危机和人质危机，空前地挑战着中国空军的实战能力！十万火急之下，最新式的中国战机和最顶级的飞行员，与掌握导弹密码和先进战机的敌人，在境外天空展开一场生死对决……','李晨 /范冰冰 /王千源 /李佳航 /赵达 /李晨浩 /郭洺宇 /叶浏 /陆思宇','3.4',28,'1','10.jpg','战争',106),(11,'王牌特工2','塔伦．埃格顿饰演的艾格西由前集中的特工“菜鸟”升级为特工老手，他与马克．斯特朗饰演的梅林将前往美国，与王牌特工组织的美国同行——由哈莉．贝瑞饰演的政治家一起并肩作战。而他们所面对的敌人则是朱丽安．摩尔饰演的美艳狠毒的大反派Poppy。','科林．费尔斯 /塔伦．埃格顿 /朱丽安．摩尔 /马克．斯特朗 /哈莉．贝瑞','3.7',36,'1','11.jpg','喜剧',105),(12,'极致追击','前SAS特工，声名显赫的安保专家丹尼·斯特拉顿（奥兰多．布鲁姆饰）遭遇了人生中最大的劫难：藏品被盗，女友离去，身败名裂。沉寂已久的他决定东山再起，一次看似简单的任务背后，却藏着更为惊人的阴谋。面对警方的误会，队友的背叛，爱人的失踪，反派的追杀，他该何去何从……','奥兰多．布鲁姆 /任达华 /昆凌 /熊黛林 /吴磊 /梁静 /释彦能 /英达 /常戎 /白','3.6',34,'1','12.jpg','动作',124),(13,'钢铁飞龙之再见奥特曼 ','保护地球、维护和平，奥特曼对于地球人来说曾经是神一样的存在，但是近几十年，他却消失不见行踪成谜……随之取替他的是钢铁飞龙精锐小分队——隶属于GSB地球安全保卫组织。而GSB近期不断收到地球能源异常报告，全球各地纷纷出现巨大灾难。GSB组织派出钢铁飞龙，查明能源异常原因，却意外发现事件与奥特曼有关系……新旧两代地球守护者的意外相见，却成为你死我活的敌对双方。到底，这是一场意外还是一场阴谋，是谁看到了最后的事实真相？','向佐 /罗云熙 /郝劭文 /汪铎 /屈菁菁/向佐 /罗云熙 ','2.5',32,'1','13.jpg','动画',112),(14,'你往哪里跑','电影《你往哪里跑》讲述的是单亲爸爸天山（王迅饰）为了救患有先天性心脏病的儿子天佑佑（张峻豪饰），在做“蜘蛛人”的时候，不小心看到了正在洗澡的大龄剩女七剑（张瑶饰），又目睹了一起抢劫杀人案。恰巧负责协查这起杀人案的七剑，自然对天山紧追不舍，而后展开一系列曲折离奇的故事。','王迅 /张瑶 /张峻豪 /安志杰 /陈国坤 /孔连顺 /刘浩 /王双宝 /巴多','3.7',48,'1','14.jpg','喜剧',126),(15,'猩球崛起3','故事发生在第二部《猩球崛起：黎明之战》的后两年。猿族和人类的战争已经持续了两年之久，凯撒一直生活在暴力与疯狂之中。他被科巴的死折磨着，同时也看够了猿族的同胞死于战争之中，他想要复仇。所以凯撒发起了一场“史诗远征”，以刺杀人类军队的领导者“上校”（伍迪．哈里森饰演），一场人猿之间的生死决战一触即发。','安迪．瑟金斯 /伍迪．哈里森 /朱迪．格雷尔 /史蒂夫．茨恩','3.5',31,'1','15.jpg','科幻',96),(16,'坑爹游戏','十五年前，倪小蛮（黄一琳 饰）7岁。父亲张胜利（于谦 饰）去香港奋斗，母亲倪玉兰独自抚养倪小蛮成长。十五年后，倪小蛮是一名可爱又毛躁的狗仔，身边赖着一名对她一见钟情的大男孩-宋扬（汪东城 饰）。单亲的生活没有影响倪小蛮性格，反而在倪玉兰的教育下，倪小蛮变得乐观、坚强，懂事又孝顺。此时离家的张胜利则与年轻貌美女人莎莎（倪虹洁 饰）生活在香港摩天大厦顶层，婚姻美满，事业成功，堪称精品男人。父亲的离开是倪小蛮心中的一根刺，早在7岁的时候，她就在心里发誓，从此没有父亲，当张胜利是陌生人。张胜利见到曾经被自己抛弃的女儿倪小蛮，企图弥补，却不料倪小蛮为他准备了一场空前绝后的坑爹游戏盛宴，并进行偷拍，原以为[展开]一次轻松的认亲成为张先生“悲剧”的开始。就在张胜利满以为事情圆满结束的时候，小蛮的坑爹游戏再次升级，并启动了终极坑爹模式，为了真正的认回女儿，张胜利开始认命且认真的继续游戏...... ','于谦 /黄一琳 /汪东城 /李立群 /李勤勤 /倪虹洁 /韩彦博 /傅奕晨','3.4',39,'1','16.jpg','喜剧',98),(17,'怨灵2','影片讲述了白灵（李海娜 饰）与恋人卫军（李川 饰）在去马来西亚云顶高原赌场度假的过程中，阴差阳错住进了传言中亚洲十大猛鬼酒店“彩云阁”，并遭遇了一系列离奇诡异的恐怖事件。','苏查拉．玛娜英 /倪慕斯 /宋词 /陈立谦 /李川 /卢洋','3.6',37,'1','17.jpg','惊悚',95),(18,'看不见的客人','某日幽会过后，两人驱车离开别墅，却在路上发生了车祸，为了掩盖事件的真相，两人决定将在车祸中死去的青年丹尼尔联同他的车一起沉入湖底。之后，劳拉遇见了一位善良的老人，老人将劳拉坏掉的车拉回家中修理，然而，令劳拉没有想到的是，这位老人，竟然就是丹尼尔的父亲。','马里奥．卡萨斯 /阿娜．瓦格纳 /何塞．科罗纳多 /巴巴拉．莱涅','3.5',45,'1','18.jpg','悬疑',92),(19,'真假森林王','本片为经典故事《狐假虎威》新编，主要讲述的是杂毛狐狸福斯为了救自己的儿子小福，假冒虎王洛克，与象龟一族战斗，最后成功粉碎了象龟及其冷血族统治森林的阴谋，虽然没有成为真正的森林之王，却赢得了虎王信任，成为森林之王的智囊。','张洋/吴凡/唐泽宗/陈新月/杨进/邓磊/凡洋/张吴','3.5',25,'1','19.jpg','动画',87),(20,'战狼2','冷锋突然被卷入了一场非洲国家叛乱，本可以安全撤离，却因无法忘记曾经为军人的使命，孤身犯险冲回沦陷区，带领身陷屠杀中的同胞和难民，展开生死逃亡。','吴京 /弗兰克．格里罗 /吴刚 /张翰 /卢靖姗 /丁海峰 /淳于珊珊 /余男','4.8',35,'1','20.jpg','动作',110),(21,'托马斯大电影之了不起的比赛','托马斯想要参加了不起的火车比赛，却遭到了大火车头们的嘲笑，他们觉得托马斯的身形不够高大威猛、速度也不够快，很难与世界各地最优秀的火车们匹敌，但托马斯仍决意一试。首先，他尝试升级为流线型造型以提高速度，可是胖总管认为流线型更适合高登。之后，托马斯又想把自己装饰得和印度火车头艾西娅一样美丽动人……然而他的这些计划全部折戟。托马斯终于意识到只有坚持自我才能在竞赛中赢得希望，而当他最后抵达竞赛现场时，一场柴油火车策划的阴谋再度阻拦了他的去路……托马斯和他的第一个中国火车朋友勇宝的友谊之旅也随之开启……','大卫．拜德拉 /Jonathan Brent / 奥利维娅','3.1',18,'1','21.jpg','动画',81),(22,'王牌保镖','影片讲述了瑞安．雷诺兹饰演的一名经验十足、身手不凡的保镖不得已要保护他多年的死对头——脾气极爆、臭名昭著、惹尽麻烦的杀手（塞缪尔．杰克逊 饰）所发生的惊险爆笑故事。','瑞恩．雷诺兹 /塞缪尔．杰克逊 /艾洛蒂．袁 /萨尔玛．海耶克','3.6',38,'1','22.jpg','动作',99);

#
# Source for table "f_placeroom"
#

DROP TABLE IF EXISTS `f_placeroom`;
CREATE TABLE `f_placeroom` (
  `placeroomid` int(11) NOT NULL AUTO_INCREMENT,
  `placeroom` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`placeroomid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

#
# Data for table "f_placeroom"
#

INSERT INTO `f_placeroom` VALUES (1,'1号厅'),(2,'2号厅'),(3,'3号厅'),(4,'贵宾1号厅'),(5,'贵宾2号厅');

#
# Source for table "f_place"
#

DROP TABLE IF EXISTS `f_place`;
CREATE TABLE `f_place` (
  `placeid` int(11) NOT NULL AUTO_INCREMENT,
  `placeroomid` int(11) DEFAULT NULL,
  `filmid` int(11) DEFAULT NULL,
  `placedate` date DEFAULT NULL,
  `begintime` time DEFAULT NULL,
  `endtime` time DEFAULT NULL,
  `store` int(11) DEFAULT '324',
  PRIMARY KEY (`placeid`),
  KEY `f_place_ibfk_1_idx` (`filmid`),
  KEY `placeroomid_idx` (`placeroomid`),
  CONSTRAINT `filmid` FOREIGN KEY (`filmid`) REFERENCES `f_film` (`filmid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `placeroomid` FOREIGN KEY (`placeroomid`) REFERENCES `f_placeroom` (`placeroomid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

#
# Data for table "f_place"
#

INSERT INTO `f_place` VALUES (1,1,10,'2017-10-21','08:00:00','10:30:00',324),(3,2,20,'2017-10-21','08:00:00','10:20:00',327),(5,3,22,'2017-10-21','08:00:00','10:15:00',319),(6,4,20,'2017-10-21','11:00:00','13:15:00',324),(7,2,20,'2017-10-29','08:00:00','10:30:00',323),(8,2,20,'2017-10-31','08:00:00','10:30:00',314),(12,1,10,'2017-11-06','10:00:00','11:46:00',324),(13,1,1,'2017-11-08','09:05:00','10:44:00',324),(14,1,1,'2017-11-07','11:10:00','12:49:00',324),(15,1,1,'2017-11-07','23:10:00','00:49:00',324),(17,1,2,'2017-11-24','08:00:00','10:08:00',324),(18,1,20,'2017-11-06','08:00:00','09:39:00',324),(19,4,20,'2017-11-07','12:00:00','13:50:00',324),(20,1,13,'2017-11-30','19:00:00','20:52:00',324),(21,1,13,'2017-11-30','13:30:00','15:22:00',324);

#
# Source for table "f_seat"
#

DROP TABLE IF EXISTS `f_seat`;
CREATE TABLE `f_seat` (
  `placeid` int(11) NOT NULL,
  `seat_a` text,
  `seat_b` text,
  `seat_c` text,
  `seat_d` text,
  `seat_e` text,
  `seat_f` text,
  `seat_g` text,
  `seat_h` text,
  `seat_i` text,
  `seat_j` text,
  `seat_k` text,
  `seat_l` text,
  `seat_m` text,
  `seat_n` text,
  `seat_o` text,
  `seat_p` text,
  `seat_q` text,
  `seat_r` text,
  PRIMARY KEY (`placeid`),
  CONSTRAINT `placeid` FOREIGN KEY (`placeid`) REFERENCES `f_place` (`placeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "f_seat"
#

INSERT INTO `f_seat` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'A6;A17;A18;','B2;','C3;C7;C15;','D4;','E5;','','','H8;','','','K6;K10;','','','N6;','','P6;','',''),(5,'','B4;','','','E2;','','','','','','K6;','L12;','','','','P2;','',''),(6,'A1;','B2;','','','','','','','','','','','','','','','',''),(7,'','','','','','','','','','','','','','','O4;','','',''),(8,'A1;A2;A17;A18;','','','','E1;','','','H5;','','','','','','N5;','O15;','P5;P8;','',''),(12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

#
# Source for table "f_status"
#

DROP TABLE IF EXISTS `f_status`;
CREATE TABLE `f_status` (
  `statusid` int(11) NOT NULL AUTO_INCREMENT,
  `statusname` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`statusid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

#
# Data for table "f_status"
#

INSERT INTO `f_status` VALUES (1,'交易取消'),(2,'交易成功');

#
# Source for table "f_user"
#

DROP TABLE IF EXISTS `f_user`;
CREATE TABLE `f_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `admin` char(5) DEFAULT NULL,
  `vip` char(5) DEFAULT '0',
  `mail` varchar(100) DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL,
  `activity` char(5) DEFAULT NULL,
  `vipdate` int(11) DEFAULT '0',
  `registerdate` datetime DEFAULT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `money` double DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

#
# Data for table "f_user"
#

INSERT INTO `f_user` VALUES (6,'LJLS','root11','0','1','admin@qq.com','6.jpg','1',473,'2017-10-31 08:51:51','m','2017-10-31 00:00:00',10134),(7,'test','1234','0','1','123@qq.com',NULL,'0',1170,'2017-10-31 08:51:51','m','2017-10-31 00:00:00',0),(8,'zjl','123','0','0','321@qq.com',NULL,'1',0,'2017-10-31 08:51:51','m','2017-10-31 00:00:00',0),(9,'pojo','123','0','0','pojo@qq.com',NULL,'1',0,'2017-10-31 08:51:51','m','2017-10-31 00:00:00',0),(11,'hellos','1234','0','0','111@qq.com',NULL,'1',0,'2017-10-31 08:51:51','m','2017-10-31 00:00:00',0),(12,'root','root','1','0','root@qq.com',NULL,'1',0,NULL,NULL,NULL,0);

#
# Source for table "f_payorder"
#

DROP TABLE IF EXISTS `f_payorder`;
CREATE TABLE `f_payorder` (
  `pay_orderid` int(11) NOT NULL AUTO_INCREMENT,
  `pay_userid` int(11) DEFAULT NULL,
  `pay_money` int(11) DEFAULT NULL,
  `pay_orderdate` datetime DEFAULT NULL,
  `pay_statusid` int(11) DEFAULT NULL,
  `pay_content` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`pay_orderid`),
  KEY `fk_payorder_userid_idx` (`pay_userid`),
  KEY `fk_payorder_statusid_idx` (`pay_statusid`),
  CONSTRAINT `fk_payorder_statusid` FOREIGN KEY (`pay_statusid`) REFERENCES `f_status` (`statusid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_payorder_userid` FOREIGN KEY (`pay_userid`) REFERENCES `f_user` (`userid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

#
# Data for table "f_payorder"
#

INSERT INTO `f_payorder` VALUES (1,6,50,'2017-10-29 14:14:21',2,'充值'),(2,6,50,'2017-10-29 14:15:30',2,'充值'),(3,6,50,'2017-10-29 14:16:41',2,'充值'),(4,6,60,'2017-10-29 15:08:50',2,'开通会员30天'),(5,6,60,'2017-10-29 15:10:05',2,'开通会员30天'),(6,6,1000,'2017-10-29 15:17:31',2,'充值'),(7,6,360,'2017-10-29 15:17:38',2,'开通会员180天'),(8,7,50,'2017-10-29 15:25:49',2,'充值'),(9,7,60,'2017-10-29 15:25:54',2,'开通会员30天'),(10,7,1000,'2017-10-29 15:28:39',2,'充值'),(11,7,360,'2017-10-29 15:28:44',2,'开通会员180天'),(12,7,1000,'2017-10-29 15:29:07',2,'充值'),(13,7,1000,'2017-10-29 15:29:18',2,'充值'),(14,6,1000,'2017-10-29 15:32:24',2,'充值'),(15,6,1000,'2017-10-29 15:32:31',2,'充值'),(16,7,1000,'2017-10-29 15:33:10',2,'充值'),(17,7,1000,'2017-10-29 15:33:20',2,'充值'),(18,7,10,'2017-10-29 15:35:53',2,'充值'),(19,6,1000,'2017-10-29 15:37:59',2,'充值'),(20,7,500,'2017-10-29 15:41:33',2,'充值'),(21,7,60,'2017-10-29 15:41:52',2,'开通会员30天'),(22,7,60,'2017-10-29 15:41:59',2,'开通会员30天'),(23,7,1000,'2017-10-29 15:43:53',2,'充值'),(24,7,60,'2017-10-29 15:43:58',2,'开通会员30天'),(25,7,60,'2017-10-29 15:44:03',2,'开通会员30天'),(26,7,720,'2017-10-29 15:44:47',2,'开通会员360天'),(27,7,1000,'2017-10-29 15:46:09',2,'充值'),(28,7,360,'2017-10-29 15:46:12',2,'开通会员180天'),(29,7,240,'2017-10-29 15:47:45',2,'开通会员120天'),(30,7,360,'2017-10-29 15:51:36',2,'开通会员180天'),(31,6,360,'2017-10-29 15:52:43',2,'开通会员180天'),(32,6,10,'2017-10-31 09:18:03',2,'充值'),(33,6,60,'2017-10-31 09:30:52',2,'开通会员30天'),(34,6,60,'2017-10-31 09:31:09',2,'开通会员30天'),(35,6,300,'2017-11-26 21:24:47',2,'充值');

#
# Source for table "f_order"
#

DROP TABLE IF EXISTS `f_order`;
CREATE TABLE `f_order` (
  `orderid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `placeid` int(11) NOT NULL,
  `orderdate` datetime DEFAULT NULL,
  `statusid` int(11) NOT NULL,
  `ordersum` double DEFAULT NULL,
  `seat` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`orderid`),
  KEY `userid` (`userid`),
  KEY `statusid` (`statusid`),
  KEY `placeid_idx` (`placeid`),
  CONSTRAINT `fk_placeid` FOREIGN KEY (`placeid`) REFERENCES `f_place` (`placeid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `statusid` FOREIGN KEY (`statusid`) REFERENCES `f_status` (`statusid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `f_user` (`userid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;

#
# Data for table "f_order"
#

INSERT INTO `f_order` VALUES (70,6,3,'2017-10-22 20:54:26',1,35,'A3'),(71,6,3,'2017-10-22 21:02:55',1,35,'A1'),(72,6,3,'2017-10-22 21:02:55',2,35,'B2'),(73,6,3,'2017-10-22 21:02:55',2,35,'C3'),(74,6,3,'2017-10-22 21:02:55',2,35,'D4'),(75,6,3,'2017-10-22 21:02:55',2,35,'E5'),(76,6,6,'2017-10-22 21:03:28',2,35,'A1'),(77,6,6,'2017-10-22 21:03:28',2,35,'B2'),(78,6,3,'2017-10-22 21:03:50',2,35,'A6'),(79,6,3,'2017-10-22 21:03:50',2,35,'K6'),(80,6,3,'2017-10-22 21:03:50',2,35,'C7'),(81,6,3,'2017-10-22 21:03:50',2,35,'H8'),(82,6,3,'2017-10-22 21:03:50',2,35,'K10'),(83,6,3,'2017-10-22 21:03:50',1,35,'H11'),(84,6,3,'2017-10-22 21:30:26',2,35,'C15'),(85,6,3,'2017-10-22 21:30:26',1,35,'E15'),(86,6,3,'2017-10-22 21:30:40',2,35,'N6'),(87,6,3,'2017-10-22 21:30:40',2,35,'P6'),(88,7,3,'2017-10-25 14:14:12',2,35,'A17'),(89,7,3,'2017-10-25 14:14:12',2,35,'A18'),(90,6,3,'2017-10-27 21:17:56',1,35,'A3'),(91,6,3,'2017-10-27 21:30:22',1,35,'A3'),(92,6,3,'2017-10-27 21:31:16',1,28,'A9'),(93,6,3,'2017-10-27 21:31:50',1,28,'A7'),(94,6,3,'2017-10-27 21:33:16',1,28,'H3'),(95,6,5,'2017-10-27 22:23:08',2,30,'K6'),(96,6,5,'2017-10-27 22:23:08',2,30,'L12'),(97,6,5,'2017-10-27 22:23:08',1,30,'Q14'),(98,6,5,'2017-10-27 22:25:43',2,30,'P2'),(99,6,5,'2017-10-27 22:50:56',2,30,'E2'),(100,6,5,'2017-10-27 22:50:56',2,30,'B4'),(101,6,7,'2017-10-28 20:55:30',2,28,'O4'),(102,6,8,'2017-10-30 16:42:32',2,28,'H5'),(103,6,8,'2017-10-30 16:42:32',2,28,'N5'),(104,7,8,'2017-10-30 16:52:33',2,28,'A1'),(105,7,8,'2017-10-30 16:52:33',2,28,'A2'),(106,6,8,'2017-10-30 16:53:25',2,28,'E1'),(107,6,8,'2017-10-30 16:53:25',2,28,'P5'),(108,6,8,'2017-10-30 16:53:25',2,28,'P8'),(109,6,8,'2017-10-30 16:53:25',2,28,'O15'),(110,6,8,'2017-10-31 09:17:50',2,28,'A17'),(111,6,8,'2017-10-31 09:17:50',2,28,'A18');

#
# Source for table "f_comment"
#

DROP TABLE IF EXISTS `f_comment`;
CREATE TABLE `f_comment` (
  `commentid` int(11) NOT NULL AUTO_INCREMENT,
  `commentcontent` text CHARACTER SET utf8,
  `userid` int(11) DEFAULT NULL,
  `commentdate` datetime DEFAULT NULL,
  `activity` int(11) DEFAULT NULL,
  `filmid` int(11) DEFAULT NULL,
  PRIMARY KEY (`commentid`),
  KEY `f_comment_ibfk_1` (`userid`),
  KEY `fk_comment_filmid_idx` (`filmid`),
  CONSTRAINT `fk_comment_filmid` FOREIGN KEY (`filmid`) REFERENCES `f_film` (`filmid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `f_comment_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `f_user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

#
# Data for table "f_comment"
#

INSERT INTO `f_comment` VALUES (1,'123',6,'2017-10-18 21:32:17',1,21),(2,'很好看啊～（不是会员）',7,'2017-10-18 22:06:57',1,21),(3,'非常不错～～～（我是会员）',6,'2017-10-18 22:07:25',1,21),(4,'haha',6,'2017-10-19 18:55:33',1,21),(5,'hello',6,'2017-10-29 10:37:23',1,20),(6,'我是李佩玲',6,'2017-10-30 17:01:07',1,20);

#
# Source for procedure "sp_addplace"
#

DROP PROCEDURE IF EXISTS `sp_addplace`;
CREATE PROCEDURE `sp_addplace`(_placeroomid int,_filmid int,_da text,_beginti text, out result int)
begin 
set result=-2;
set @filmti=(select filmtime from f_film where filmid=_filmid);
set @endti=(select time(date_add(concat(_da,' ',_beginti) ,interval @filmti minute)));

set @flagbegin=(select count(*) from f_place where placedate=_da and placeroomid=_placeroomid and begintime<=_beginti and endtime>=_beginti );
set @flagend=(select count(*) from f_place where placedate=_da and placeroomid=_placeroomid and begintime<=@endti and endtime>=@endti);
if @flagbegin=0 then set result=-1;
if @flagend=0 then set result=0;
insert into f_place(placeroomid,filmid,placedate,begintime,endtime) values (_placeroomid,_filmid,_da,_beginti,@endti);
set @placemaxid=(select max(placeid) from f_place);
insert into f_seat(placeid) values (@placemaxid);
set result=1;
else
set result=-2;

end if;
else
set result=-2;
end if;
select result;
end;

#
# Source for procedure "sp_buy"
#

DROP PROCEDURE IF EXISTS `sp_buy`;
CREATE PROCEDURE `sp_buy`(_userid int,_placeid int,_muti double,_seat varchar(45)  character set utf8,out rs int)
begin
set @num=(select count(seat) from f_order where seat=_seat and placeid=_placeid and statusid=2);
set @m=(select money from f_user where userid=_userid);
set @p=(select price from f_film,f_place where f_place.filmid=f_film.filmid and f_place.placeid=_placeid);
set @result=(@m-(@p*_muti));
set rs=-1;
if @result<0 then 
set rs=-1;
else 
if @num>0 then 
set rs= -2;
else 
insert into f_order (userid,placeid,orderdate,statusid,ordersum,seat) values(_userid,_placeid,now(),2,convert((@p*_muti),decimal),_seat);
update f_place set store=store-1 where placeid=_placeid;
update f_user set money=money-convert((@p*_muti),decimal) where userid=_userid;
set rs=1;
end if;
end if;
select rs;
end;

#
# Source for procedure "sp_edituserinfo"
#

DROP PROCEDURE IF EXISTS `sp_edituserinfo`;
CREATE PROCEDURE `sp_edituserinfo`(_username varchar(45)  character set utf8,_sex varchar(10)  character set utf8,_userid varchar(45)  character set utf8,_img varchar(45)  character set utf8,_birthday varchar(45)  character set utf8)
begin
if _img='null' then
update f_user set username=_username where userid=_userid;
else
update f_user set username=_username,img=_img where userid=_userid;
end if;
update f_user set sex=_sex,birthday=_birthday where userid=_userid;
end;

#
# Source for procedure "sp_insertcomment"
#

DROP PROCEDURE IF EXISTS `sp_insertcomment`;
CREATE PROCEDURE `sp_insertcomment`(_userid int,_filmid int,_commentcontent text  character set utf8)
begin
insert into f_comment (userid, activity, commentdate, commentcontent,filmid) values(_userid,1,now(),_commentcontent,_filmid);
end;

#
# Source for procedure "sp_insertfilm"
#

DROP PROCEDURE IF EXISTS `sp_insertfilm`;
CREATE PROCEDURE `sp_insertfilm`(_filmname text  character set utf8,_filminfo text  character set utf8,_filmactor text  character set utf8,_filmstar text  character set utf8,_price text  character set utf8,_img text  character set utf8,_filmtype text  character set utf8,_filmtime int)
begin
    INSERT INTO `movies`.`f_film`
(`filmname`,
`filminfo`,
`filmactor`,
`filmstar`,
`price`,
`activity`,
`img`,
`filmtype`,
`filmtime`
)
VALUES(
_filmname,
_filminfo,
_filmactor,
_filmstar,
_price,
'1',
_img,
_filmtype,
_filmtime
);
end;

#
# Source for procedure "sp_pay"
#

DROP PROCEDURE IF EXISTS `sp_pay`;
CREATE PROCEDURE `sp_pay`(in _userid int,in _money int)
begin
DECLARE result_code INTEGER DEFAULT 0;
DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET result_code=-1;
start transaction;
insert into f_payorder(pay_userid,pay_money,pay_orderdate,pay_statusid,pay_content) values(_userid,_money,now(),2,'充值');
update f_user set money=money+_money where userid=_userid;
if result_code = -1 THEN
rollback;
else
commit;
end if;
end;

#
# Source for procedure "sp_payvip"
#

DROP PROCEDURE IF EXISTS `sp_payvip`;
CREATE PROCEDURE `sp_payvip`(in _userid int,in _day int,in _m double,out result int)
begin
DECLARE result_code INTEGER DEFAULT 0;
DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET result_code=-1;
set @money=(select money from f_user where userid=_userid);

set @r=@money-_m;
set result=-1;
if @r>=0 then set result=0;
start transaction;
insert into f_payorder(pay_userid,pay_money,pay_orderdate,pay_statusid,pay_content) values(_userid,_m,now(),2,concat('开通会员',_day,'天'));
update f_user set money=money-_m,vip=1,vipdate=vipdate+_day where userid=_userid;
set result=1;
if result_code = -1 THEN
rollback;
else
commit;
end if;
end if;
select result;
end;

#
# Source for procedure "sp_refund"
#

DROP PROCEDURE IF EXISTS `sp_refund`;
CREATE PROCEDURE `sp_refund`(in _orderid int)
begin
select @_placeid:=placeid,@_userid:=userid,@_seat:=seat,@_ordersum:=ordersum from f_order where orderid=_orderid;
if locate("A",@_seat)>0 then
select @selected:=seat_a from f_seat where placeid=@_placeid;
update f_seat set seat_a= replace(@selected,concat(@_seat,';'),'') where placeid=@_placeid;
end if;
if locate("B",@_seat)>0 then
select @selected:=seat_b from f_seat where placeid=@_placeid;
update f_seat set seat_b= replace(@selected,concat(@_seat,';'),'') where placeid=@_placeid;
end if;
if locate("C",@_seat)>0 then
select @selected:=seat_c from f_seat where placeid=@_placeid;
update f_seat set seat_c= replace(@selected,concat(@_seat,';'),'') where placeid=@_placeid;
end if;
if locate("D",@_seat)>0 then
select @selected:=seat_d from f_seat where placeid=@_placeid;
update f_seat set seat_d= replace(@selected,concat(@_seat,';'),'') where placeid=@_placeid;
end if;
if locate("E",@_seat)>0 then
select @selected:=seat_e from f_seat where placeid=@_placeid;
update f_seat set seat_e= replace(@selected,concat(@_seat,';'),'') where placeid=@_placeid;
end if;
if locate("F",@_seat)>0 then
select @selected:=seat_f from f_seat where placeid=@_placeid;
update f_seat set seat_f= replace(@selected,concat(@_seat,';'),'') where placeid=@_placeid;
end if;
if locate("G",@_seat)>0 then
select @selected:=seat_g from f_seat where placeid=@_placeid;
update f_seat set seat_g= replace(@selected,concat(@_seat,';'),'') where placeid=@_placeid;
end if;
if locate("H",@_seat)>0 then
select @selected:=seat_h from f_seat where placeid=@_placeid;
update f_seat set seat_h= replace(@selected,concat(@_seat,';'),'') where placeid=@_placeid;
end if;
if locate("I",@_seat)>0 then
select @selected:=seat_i from f_seat where placeid=@_placeid;
update f_seat set seat_i= replace(@selected,concat(@_seat,';'),'') where placeid=@_placeid;
end if;
if locate("J",@_seat)>0 then
select @selected:=seat_j from f_seat where placeid=@_placeid;
update f_seat set seat_j= replace(@selected,concat(@_seat,';'),'') where placeid=@_placeid;
end if;
if locate("K",@_seat)>0 then
select @selected:=seat_k from f_seat where placeid=@_placeid;
update f_seat set seat_k= replace(@selected,concat(@_seat,';'),'') where placeid=@_placeid;
end if;
if locate("L",@_seat)>0 then
select @selected:=seat_l from f_seat where placeid=@_placeid;
update f_seat set seat_l= replace(@selected,concat(@_seat,';'),'') where placeid=@_placeid;
end if;
if locate("M",@_seat)>0 then
select @selected:=seat_m from f_seat where placeid=@_placeid;
update f_seat set seat_m= replace(@selected,concat(@_seat,';'),'') where placeid=@_placeid;
end if;
if locate("N",@_seat)>0 then
select @selected:=seat_n from f_seat where placeid=@_placeid;
update f_seat set seat_n= replace(@selected,concat(@_seat,';'),'') where placeid=@_placeid;
end if;
if locate("O",@_seat)>0 then
select @selected:=seat_o from f_seat where placeid=@_placeid;
update f_seat set seat_o= replace(@selected,concat(@_seat,';'),'') where placeid=@_placeid;
end if;
if locate("P",@_seat)>0 then
select @selected:=seat_p from f_seat where placeid=@_placeid;
update f_seat set seat_p= replace(@selected,concat(@_seat,';'),'') where placeid=@_placeid;
end if;
if locate("Q",@_seat)>0 then
select @selected:=seat_q from f_seat where placeid=@_placeid;
update f_seat set seat_q= replace(@selected,concat(@_seat,';'),'') where placeid=@_placeid;
end if;
if locate("R",@_seat)>0 then
select @selected:=seat_r from f_seat where placeid=@_placeid;
update f_seat set seat_r= replace(@selected,concat(@_seat,';'),'') where placeid=@_placeid;
end if;
update f_user set money=money+@_ordersum where userid=@_userid;
update f_place set store=store+1 where placeid=@_placeid;
update f_order set statusid=1 where orderid=_orderid;
end;

#
# Source for procedure "sp_register"
#

DROP PROCEDURE IF EXISTS `sp_register`;
CREATE PROCEDURE `sp_register`(_username text  character set utf8,_mail text  character set utf8,_password text  character set utf8)
BEGIN 
    start transaction;
	INSERT INTO f_user ( username, PASSWORD, admin, vip, mail, img, activity,registerdate, sex, birthday )
	VALUES
	( _username, _password, '0', '0', _mail, null, '1' ,now(), 'm', CURRENT_DATE);

	commit;
END;

#
# Source for procedure "sp_vipstatus"
#

DROP PROCEDURE IF EXISTS `sp_vipstatus`;
CREATE PROCEDURE `sp_vipstatus`()
begin 
update f_user set vipdate=vipdate-1 where vipdate>0;
update f_user set vip=0 where vipdate=0 and vip=1;
end;

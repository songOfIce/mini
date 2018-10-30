SET NAMES UTF8;
DROP DATABASE IF EXISTS xm;
CREATE DATABASE xm CHARSET=utf8;
USE xm;
#用户
drop TABLE IF EXISTS users; 
CREATE TABLE users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    uid CHAR(11) not null,
    uname VARCHAR(16),
    upwd VARCHAR(24),
    phone CHAR(11) not null,
    img VARCHAR(255)
);
INSERT INTO users VALUES(null,15962677205,'夜色不再','123456',15962677205,'//s1.mi-img.com/mfsv2/download/fdsc3/p0160alHO1RK/XmH4xhtJEERVC6.jpg');

CREATE TABLE banner(
    bid INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(16),
    img VARCHAR(255),
    icon VARCHAR(255)
);
INSERT INTO banner VALUES(NULL,'commend','http://localhost:5050/img/banner/1.jpg','http://localhost:5050/img/icon/1.png');
INSERT INTO banner VALUES(NULL,'commend','http://localhost:5050/img/banner/2.jpg','http://localhost:5050/img/icon/2.png');
INSERT INTO banner VALUES(NULL,'commend','http://localhost:5050/img/banner/3.jpg','http://localhost:5050/img/icon/3.jpg');
INSERT INTO banner VALUES(NULL,'commend','','http://localhost:5050/img/icon/4.png');
INSERT INTO banner VALUES(NULL,'commend','','http://localhost:5050/img/icon/5.png');

INSERT INTO banner VALUES(NULL,'phone','http://localhost:5050/img/banner/4.jpg','');
INSERT INTO banner VALUES(NULL,'phone','http://localhost:5050/img/banner/5.jpg','');

INSERT INTO banner VALUES(NULL,'tv','http://localhost:5050/img/banner/9.jpg','http://localhost:5050/img/icon/9.jpg');
INSERT INTO banner VALUES(NULL,'tv','','http://localhost:5050/img/icon/10.jpg');
INSERT INTO banner VALUES(NULL,'tv','','http://localhost:5050/img/icon/11.jpg');
INSERT INTO banner VALUES(NULL,'tv','','http://localhost:5050/img/icon/12.jpg');
INSERT INTO banner VALUES(NULL,'tv','','http://localhost:5050/img/icon/13.jpg');

INSERT INTO banner VALUES(NULL,'smart','http://localhost:5050/img/banner/6.jpg','http://localhost:5050/img/icon/4.jpg');
INSERT INTO banner VALUES(NULL,'smart','http://localhost:5050/img/banner/7.jpg','http://localhost:5050/img/icon/5.jpg');
INSERT INTO banner VALUES(NULL,'smart','http://localhost:5050/img/banner/8.jpg','http://localhost:5050/img/icon/6.jpg');
INSERT INTO banner VALUES(NULL,'smart','','http://localhost:5050/img/icon/7.jpg');
INSERT INTO banner VALUES(NULL,'smart','','http://localhost:5050/img/icon/8.jpg');

INSERT INTO banner VALUES(NULL,'laptop','http://localhost:5050/img/banner/10.jpg','http://localhost:5050/img/icon/14.jpg');
INSERT INTO banner VALUES(NULL,'laptop','','http://localhost:5050/img/icon/15.jpg');
INSERT INTO banner VALUES(NULL,'laptop','','http://localhost:5050/img/icon/16.jpg');
INSERT INTO banner VALUES(NULL,'laptop','','http://localhost:5050/img/icon/17.jpg');
INSERT INTO banner VALUES(NULL,'laptop','','http://localhost:5050/img/icon/18.jpg');

INSERT INTO banner VALUES(NULL,'products','http://localhost:5050/img/banner/11.jpg','http://localhost:5050/img/icon/19.jpg');
INSERT INTO banner VALUES(NULL,'products','http://localhost:5050/img/banner/12.jpg','http://localhost:5050/img/icon/20.jpg');
INSERT INTO banner VALUES(NULL,'products','','http://localhost:5050/img/icon/21.jpg');
INSERT INTO banner VALUES(NULL,'products','','http://localhost:5050/img/icon/22.jpg');
INSERT INTO banner VALUES(NULL,'products','','http://localhost:5050/img/icon/23.jpg');

#home 列表内容数据
-- USE xm;
CREATE TABLE home_list(
    lid INT PRIMARY KEY AUTO_INCREMENT,
    pid INT,
    name VARCHAR(16),
    img VARCHAR(255),
    title VARCHAR(64),
    subtitle VARCHAR(64),
    nowPrice VARCHAR(12),
    oldPrice VARCHAR(12)
);
INSERT INTO home_list VALUES(NULL,111,'phone','http://localhost:5050/img/list/phone/1-1.jpg','红米6','小屏高性能的双摄手机','769','799');
INSERT INTO home_list VALUES(NULL,112,'phone','http://localhost:5050/img/list/phone/1-2.jpg','红米6A','好用好看不贵','569','599');
INSERT INTO home_list VALUES(NULL,113,'phone','http://localhost:5050/img/list/phone/1-3.jpg','小米6X','轻薄美观的拍照手机','1199','1499');
INSERT INTO home_list VALUES(NULL,114,'phone','http://localhost:5050/img/list/phone/1-4.jpg','小米SE','三星AMOLED 全面屏 小屏旗舰','1649','1799');
INSERT INTO home_list VALUES(NULL,115,'phone','http://localhost:5050/img/list/phone/1-5.jpg','小米MIX 2S','陶瓷机身 手机中的艺术品','2899','3299');
INSERT INTO home_list VALUES(NULL,116,'phone','http://localhost:5050/img/list/phone/1-6.jpg','黑鲨游戏手机 液冷更快','液冷散热,独立图像处理芯片','2899','2999');
INSERT INTO home_list VALUES(NULL,111,'phone','http://localhost:5050/img/list/phone/2-1.jpg','红米6','小屏高性能的双摄手机','769','799');
INSERT INTO home_list VALUES(NULL,112,'phone','http://localhost:5050/img/list/phone/2-2.jpg','红米6A','好用好看不贵','569','599');
INSERT INTO home_list VALUES(NULL,113,'phone','http://localhost:5050/img/list/phone/2-3.jpg','红米5 Plus','全面屏,4000mAh大电量','999','');
INSERT INTO home_list VALUES(NULL,114,'phone','http://localhost:5050/img/list/phone/2-4.jpg','红米Note 5','红米国民品质,拍照专家','899','1099');
INSERT INTO home_list VALUES(NULL,115,'phone','http://localhost:5050/img/list/phone/2-5.jpg','红米自拍手机S2','1600万像素自拍手机','999','');
INSERT INTO home_list VALUES(NULL,116,'phone','http://localhost:5050/img/list/phone/2-6.jpg','红米5','12MP旗舰相机,晓龙处理器','799','');
INSERT INTO home_list VALUES(NULL,111,'phone','http://localhost:5050/img/list/phone/3-1.jpg','小米6X','轻薄美观的拍照手机','1199','1499');
INSERT INTO home_list VALUES(NULL,112,'phone','http://localhost:5050/img/list/phone/3-2.jpg','小米MIX 2S','陶瓷机身 手机中的艺术品','2899','3299');
INSERT INTO home_list VALUES(NULL,113,'phone','http://localhost:5050/img/list/phone/3-3.jpg','小米Max 2','6.44"大屏,5300mAh大电量','1699','');
INSERT INTO home_list VALUES(NULL,114,'phone','http://localhost:5050/img/list/phone/3-4.jpg','小米MIX 2','大内存,128G容量','2699','4699');

#smart
INSERT INTO home_list VALUES(NULL,201,'smart','http://localhost:5050/img/list/smart/1.jpg','小米AI音响','听音乐、语音遥控家电的人工智能音箱','299','');
INSERT INTO home_list VALUES(NULL,202,'smart','http://localhost:5050/img/list/smart/2.jpg','米家扫地机器人','智商高，扫得干净扫得快','1699','');
INSERT INTO home_list VALUES(NULL,203,'smart','http://localhost:5050/img/list/smart/3.jpg','小米净水器（厨下式）','400加仑大流量，隐藏安装','1999','');
INSERT INTO home_list VALUES(NULL,204,'smart','http://localhost:5050/img/list/smart/4.jpg','米家电水壶 ','一杯水，是一家人的安心','99','');
INSERT INTO home_list VALUES(NULL,205,'smart','http://localhost:5050/img/list/smart/5.jpg','小米米家空气净化器 2S','经典再升级，好空气看得见','899','');
INSERT INTO home_list VALUES(NULL,206,'smart','http://localhost:5050/img/list/smart/6.jpg','九号平衡车','年轻人的酷玩具','1999','');
INSERT INTO home_list VALUES(NULL,201,'smart','http://localhost:5050/img/list/smart/7.jpg','小米运动蓝牙耳机青春版','音随你动','99','');
INSERT INTO home_list VALUES(NULL,202,'smart','http://localhost:5050/img/list/smart/8.jpg','小米米家智能摄像机云台版','高清画质，守护家的每一面','199','');
INSERT INTO home_list VALUES(NULL,203,'smart','http://localhost:5050/img/list/smart/9.jpg','米兔儿童电话手表3 ｜ 4G版','带你探索植物园的智能电话手表','599','');
INSERT INTO home_list VALUES(NULL,204,'smart','http://localhost:5050/img/list/smart/10.jpg','米家电动剃须刀','剃得干净，剃得快','199','');
INSERT INTO home_list VALUES(NULL,205,'smart','http://localhost:5050/img/list/smart/11.jpg','小米路由器Pro','全新一代智能家庭中心','449','');
INSERT INTO home_list VALUES(NULL,206,'smart','http://localhost:5050/img/list/smart/12.jpg','小米手环3 NFC版','能刷公交卡的手环','199','');
INSERT INTO home_list VALUES(NULL,201,'smart','http://localhost:5050/img/list/smart/13.jpg','小米VR一体机 超级玩家版','为VR游戏而生','1999','');
INSERT INTO home_list VALUES(NULL,202,'smart','http://localhost:5050/img/list/smart/14.jpg','小米米家对讲机1S','再次出发，陪你轻聊一路','249','');
INSERT INTO home_list VALUES(NULL,203,'smart','http://localhost:5050/img/list/smart/15.jpg','小米米家小白智能摄像机增强版','智能看护， AI你所爱','399','');
INSERT INTO home_list VALUES(NULL,204,'smart','http://localhost:5050/img/list/smart/16.jpg','小米小爱智能闹钟','能听会说的人工智能闹钟','149','');
INSERT INTO home_list VALUES(NULL,205,'smart','http://localhost:5050/img/list/smart/17.jpg','小米米家对讲机1S','再次出发，陪你轻聊一路','249','');
INSERT INTO home_list VALUES(NULL,206,'smart','http://localhost:5050/img/list/smart/18.jpg','贝医生声波电动牙刷','声波净齿，软毛护龈','99','');
INSERT INTO home_list VALUES(NULL,201,'smart','http://localhost:5050/img/list/smart/19.jpg','小米蓝牙耳机mini','美妙动听之声','79','');
INSERT INTO home_list VALUES(NULL,201,'smart','http://localhost:5050/img/list/smart/20.jpg','Pinlo搅拌料理机','更高性能，游刃有余','199','');
INSERT INTO home_list VALUES(NULL,202,'smart','http://localhost:5050/img/list/smart/21.jpg','小米运动蓝牙耳机青春版','音随你动','99','');
INSERT INTO home_list VALUES(NULL,203,'smart','http://localhost:5050/img/list/smart/22.jpg','华来小方智能摄像机 1S','1080P清晰画质，安全看家','99','');
INSERT INTO home_list VALUES(NULL,204,'smart','http://localhost:5050/img/list/smart/23.jpg','小米路由器4C','全向四天线，更快更智能','99','');
INSERT INTO home_list VALUES(NULL,205,'smart','http://localhost:5050/img/list/smart/24.jpg','小米蓝牙电脑音箱','无损音频播放','399','');
INSERT INTO home_list VALUES(NULL,206,'smart','http://localhost:5050/img/list/smart/25.jpg','米家石英表','腕上的科技与美学','349','');
INSERT INTO home_list VALUES(NULL,201,'smart','http://localhost:5050/img/list/smart/26.jpg','米兔儿童电话手表3 ｜ 4G版','带你探索植物园的智能电话手表','599','');
INSERT INTO home_list VALUES(NULL,202,'smart','http://localhost:5050/img/list/smart/27.jpg','小米双单元半入耳式耳机Type-C版','由耳入心，聆听初音','99','');
INSERT INTO home_list VALUES(NULL,203,'smart','http://localhost:5050/img/list/smart/28.jpg','米家投影仪','三秒自动对焦，好用又好看','3999','');
INSERT INTO home_list VALUES(NULL,204,'smart','http://localhost:5050/img/list/smart/29.jpg','小米VR一体机','超乎寻常的虚拟体验','1499','');
INSERT INTO home_list VALUES(NULL,205,'smart','http://localhost:5050/img/list/smart/30.jpg','小米AI音箱','听音乐、语音遥控家电的人工智能音箱','299','');
INSERT INTO home_list VALUES(NULL,206,'smart','http://localhost:5050/img/list/smart/31.jpg','米家投影仪','三秒自动对焦，好用又好看','3999','');
INSERT INTO home_list VALUES(NULL,201,'smart','http://localhost:5050/img/list/smart/32.jpg','小米净水器（厨下式）','400加仑大流量，隐藏安装','1999','');
INSERT INTO home_list VALUES(NULL,202,'smart','http://localhost:5050/img/list/smart/33.jpg','米家空气净化器Pro','大空间，快循环','1499','');
INSERT INTO home_list VALUES(NULL,203,'smart','http://localhost:5050/img/list/smart/34.jpg','米家电磁炉','双频火力，精准控温','299','');
INSERT INTO home_list VALUES(NULL,204,'smart','http://localhost:5050/img/list/smart/35.jpg','医用电子体温计','安心测体温，守护家人健康','19','');
INSERT INTO home_list VALUES(NULL,205,'smart','http://localhost:5050/img/list/smart/36.jpg','米家iHealth血压计','爸妈上手就会用的血压计','','');
INSERT INTO home_list VALUES(NULL,206,'smart','http://localhost:5050/img/list/smart/37.jpg','贝医生巴氏牙刷','进口刷毛，好品质','39','');
INSERT INTO home_list VALUES(NULL,201,'smart','http://localhost:5050/img/list/smart/38.jpg','小米体重秤','高精度压力传感器','99','');

INSERT INTO home_list VALUES(NULL,202,'products','http://localhost:5050/img/list/smart/2.jpg','米家扫地机器人','智商高，扫得干净扫得快','1699','');
INSERT INTO home_list VALUES(NULL,204,'products','http://localhost:5050/img/list/smart/4.jpg','米家电水壶 ','一杯水，是一家人的安心','99','');
INSERT INTO home_list VALUES(NULL,202,'products','http://localhost:5050/img/list/smart/8.jpg','小米米家智能摄像机云台版','高清画质，守护家的每一面','199','');
INSERT INTO home_list VALUES(NULL,206,'products','http://localhost:5050/img/list/smart/31.jpg','米家投影仪','三秒自动对焦，好用又好看','3999','');
INSERT INTO home_list VALUES(NULL,201,'products','http://localhost:5050/img/list/smart/32.jpg','小米净水器（厨下式）','400加仑大流量，隐藏安装','1999','');
INSERT INTO home_list VALUES(NULL,202,'products','http://localhost:5050/img/list/smart/33.jpg','米家空气净化器Pro','大空间，快循环','1499','');
INSERT INTO home_list VALUES(NULL,203,'products','http://localhost:5050/img/list/smart/34.jpg','米家电磁炉','双频火力，精准控温','299','');
INSERT INTO home_list VALUES(NULL,204,'products','http://localhost:5050/img/list/smart/35.jpg','医用电子体温计','安心测体温，守护家人健康','19','');
INSERT INTO home_list VALUES(NULL,206,'products','http://localhost:5050/img/list/smart/18.jpg','贝医生声波电动牙刷','声波净齿，软毛护龈','99','');
INSERT INTO home_list VALUES(NULL,201,'products','http://localhost:5050/img/list/smart/19.jpg','小米蓝牙耳机mini','美妙动听之声','79','');
INSERT INTO home_list VALUES(NULL,201,'products','http://localhost:5050/img/list/smart/20.jpg','Pinlo搅拌料理机','更高性能，游刃有余','199','');
INSERT INTO home_list VALUES(NULL,202,'products','http://localhost:5050/img/list/smart/8.jpg','小米米家智能摄像机云台版','高清画质，守护家的每一面','199','');
INSERT INTO home_list VALUES(NULL,203,'products','http://localhost:5050/img/list/smart/9.jpg','米兔儿童电话手表3 ｜ 4G版','带你探索植物园的智能电话手表','599','');

#tv
INSERT INTO home_list VALUES(NULL,301,'tv','http://localhost:5050/img/list/tv/1.jpg','小米电视4C 40英寸','FHD全高清人工智能电视','1299','');
INSERT INTO home_list VALUES(NULL,302,'tv','http://localhost:5050/img/list/tv/2.jpg','小米电视4X 43英寸','大内存，人工智能语音电视','1499','');
INSERT INTO home_list VALUES(NULL,303,'tv','http://localhost:5050/img/list/tv/3.jpg','小米电视4A 50英寸','4K HDR，人工智能语音系统','1999','');
INSERT INTO home_list VALUES(NULL,304,'tv','http://localhost:5050/img/list/tv/4.jpg','小米电视4A 32英寸','64位处理器，高清智能电视','2499','');
INSERT INTO home_list VALUES(NULL,305,'tv','http://localhost:5050/img/list/tv/5.jpg','小米电视4A 55英寸','4K HDR，64位处理器','1299','');
INSERT INTO home_list VALUES(NULL,306,'tv','http://localhost:5050/img/list/tv/6.jpg','小米电视4A 40英寸','FHD全高清屏，四核处理器','899','');

#laptop
INSERT INTO home_list VALUES(NULL,401,'laptop','http://localhost:5050/img/list/laptop/1.jpg','15.6" i5 8G MX110','全面均衡的国民轻薄本','4599','');
INSERT INTO home_list VALUES(NULL,402,'laptop','http://localhost:5050/img/list/laptop/2.jpg','15.6" i5 4G MX110	','全面均衡的国民轻薄本','3999','');
INSERT INTO home_list VALUES(NULL,403,'laptop','http://localhost:5050/img/list/laptop/3.jpg','13.3" 四核i5 MX150 ','四核增强版，独立显卡','5199','');
INSERT INTO home_list VALUES(NULL,404,'laptop','http://localhost:5050/img/list/laptop/4.jpg','15.6" i5 MX150','更强悍的专业笔记本','5399','');
INSERT INTO home_list VALUES(NULL,405,'laptop','http://localhost:5050/img/list/laptop/5.jpg','15.6" i5 8G MX110','全面均衡的国民轻薄本','4299','');
INSERT INTO home_list VALUES(NULL,406,'laptop','http://localhost:5050/img/list/laptop/6.jpg','15.6"8代i5 1050Ti ','冷酷的性能怪兽','6699','');
INSERT INTO home_list VALUES(NULL,401,'laptop','http://localhost:5050/img/list/laptop/7.jpg','12.5" M3 4G 128G','长续航全金属，超窄边框','3599','');
INSERT INTO home_list VALUES(NULL,402,'laptop','http://localhost:5050/img/list/laptop/8.jpg','12.5" M3 4G 128G 银色','轻薄长续航，超窄边框','3599','');
INSERT INTO home_list VALUES(NULL,403,'laptop','http://localhost:5050/img/list/laptop/9.jpg','13.3" 四核i5 MX150','带独立显卡的轻薄笔记本','5199','');
INSERT INTO home_list VALUES(NULL,404,'laptop','http://localhost:5050/img/list/laptop/10.jpg','15.6" i5 MX150','更强悍的专业笔记本','5399','');
INSERT INTO home_list VALUES(NULL,405,'laptop','http://localhost:5050/img/list/laptop/11.jpg','15.6" i7 MX150','高性能独显 第八代处理器','5199','');
INSERT INTO home_list VALUES(NULL,406,'laptop','http://localhost:5050/img/list/laptop/12.jpg','15.6" i5 8G MX110','全面均衡的国民轻薄本','4999','');


INSERT INTO home_list VALUES(NULL,1,'commend','http://localhost:5050/img/list/commend/1.jpg','小米8 青春版','潮流镜面渐变色，自拍旗舰','1399','');
INSERT INTO home_list VALUES(NULL,2,'commend','http://localhost:5050/img/list/commend/2.jpg','小米8 屏幕指纹版','压感屏幕指纹，潮流外观','3199','');
INSERT INTO home_list VALUES(NULL,112,'commend','http://localhost:5050/img/list/commend/3.jpg','红米6A','好用好看不贵','569','');
INSERT INTO home_list VALUES(NULL,113,'commend','http://localhost:5050/img/list/commend/4.jpg','小米6X','轻薄美观的拍照手机','1199','');
INSERT INTO home_list VALUES(NULL,114,'commend','http://localhost:5050/img/list/commend/5.jpg','小米8 SE','三星 AMOLED 全面屏 小屏旗舰','1649','');
INSERT INTO home_list VALUES(NULL,114,'commend','http://localhost:5050/img/list/commend/6.jpg','小米平板4','追剧神器 / 支持AI人脸识别','1099','');
INSERT INTO home_list VALUES(NULL,115,'commend','http://localhost:5050/img/list/commend/8.jpg','小米MIX 2S','陶瓷机身 手机中的艺术品','2899','');
INSERT INTO home_list VALUES(NULL,116,'commend','http://localhost:5050/img/list/commend/7.jpg','黑鲨游戏手机 液冷更快','液冷散热，独立图像处理芯片','2899s','');
INSERT INTO home_list VALUES(NULL,301,'commend','http://localhost:5050/img/list/commend/9.jpg','小米电视4A 32英寸','64位处理器，高清智能电视','899','999');
INSERT INTO home_list VALUES(NULL,302,'commend','http://localhost:5050/img/list/commend/10.jpg','43"电视4A 青春版','全高清屏，人工智能语音','1499','1699');
INSERT INTO home_list VALUES(NULL,303,'commend','http://localhost:5050/img/list/commend/11.jpg','小米电视4C 50英寸','钢琴烤漆，4K HDR','1999','2199');
INSERT INTO home_list VALUES(NULL,304,'commend','http://localhost:5050/img/list/commend/12.jpg','小米电视4X 55英寸','4K HDR，人工智能语音','2499','2799');
INSERT INTO home_list VALUES(NULL,206,'commend','http://localhost:5050/img/list/commend/13.jpg','小米手环3 NFC版','能刷公交卡的手环','199','');
INSERT INTO home_list VALUES(NULL,305,'commend','http://localhost:5050/img/list/commend/14.jpg','小米电视4A 43英寸','全高清 HDR，64位处理器','1499','1799');
INSERT INTO home_list VALUES(NULL,205,'commend','http://localhost:5050/img/list/commend/15.jpg','小米路由器4','双频双核 更快更稳定','199','');
INSERT INTO home_list VALUES(NULL,202,'commend','http://localhost:5050/img/list/commend/16.jpg','小米双单元半入耳式耳机Type-C版','由耳入心，聆听初音','99','');
INSERT INTO home_list VALUES(NULL,204,'commend','http://localhost:5050/img/list/commend/17.jpg','米家便携电动剃须刀','超便携，男人必备的第二把剃须刀','179','');
INSERT INTO home_list VALUES(NULL,201,'commend','http://localhost:5050/img/list/commend/18.jpg','小米无线充电器（通用快充版）','铝合金外观，金属质感好','69','');


# class nav 表
CREATE TABLE class_nav(
    id INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(255),
    title VARCHAR(12)
);
INSERT INTO class_nav VALUES(null,'http://localhost:5050/img/class/nav/2.jpg','小米手机');
INSERT INTO class_nav VALUES(null,'http://localhost:5050/img/class/nav/3.jpg','电视');
INSERT INTO class_nav VALUES(null,'http://localhost:5050/img/class/nav/4.jpg','电脑');
INSERT INTO class_nav VALUES(null,'http://localhost:5050/img/class/nav/5.jpg','家电');
INSERT INTO class_nav VALUES(null,'http://localhost:5050/img/class/nav/6.jpg','路由器');
INSERT INTO class_nav VALUES(null,'http://localhost:5050/img/class/nav/7.jpg','出行');
INSERT INTO class_nav VALUES(null,'http://localhost:5050/img/class/nav/8.jpg','穿戴');
INSERT INTO class_nav VALUES(null,'http://localhost:5050/img/class/nav/9.jpg','智能');
INSERT INTO class_nav VALUES(null,'http://localhost:5050/img/class/nav/10.jpg','电源');
INSERT INTO class_nav VALUES(null,'http://localhost:5050/img/class/nav/11.jpg','健康');
INSERT INTO class_nav VALUES(null,'http://localhost:5050/img/class/nav/12.jpg','灯具');
INSERT INTO class_nav VALUES(null,'http://localhost:5050/img/class/nav/13.jpg','儿童');
INSERT INTO class_nav VALUES(null,'http://localhost:5050/img/class/nav/14.jpg','插线板');
INSERT INTO class_nav VALUES(null,'http://localhost:5050/img/class/nav/15.jpg','音频');
INSERT INTO class_nav VALUES(null,'http://localhost:5050/img/class/nav/16.jpg','箱包');
INSERT INTO class_nav VALUES(null,'http://localhost:5050/img/class/nav/17.jpg','生活');
INSERT INTO class_nav VALUES(null,'http://localhost:5050/img/class/nav/18.jpg','配件');
INSERT INTO class_nav VALUES(null,'http://localhost:5050/img/class/nav/19.jpg','家装');
INSERT INTO class_nav VALUES(null,'http://localhost:5050/img/class/nav/20.jpg','礼品');
INSERT INTO class_nav VALUES(null,'http://localhost:5050/img/class/nav/21.jpg','服务');
INSERT INTO class_nav VALUES(null,'http://localhost:5050/img/class/nav/22.jpg','米粉卡');
INSERT INTO class_nav VALUES(null,'http://localhost:5050/img/class/nav/22.jpg','零售店');

#class 分类表
CREATE TABLE class_detail(
    id INT PRIMARY KEY AUTO_INCREMENT,
    pid INT,
    name VARCHAR(24),
    img VARCHAR(255),
    subtitle VARCHAR(24)
);
INSERT INTO class_detail VALUES(null,1,'小米手机','http://localhost:5050/img/class/101.png','小米8 青春版');
INSERT INTO class_detail VALUES(null,2,'小米手机','http://localhost:5050/img/class/102.png','小米8 屏幕指纹版');
INSERT INTO class_detail VALUES(null,111,'小米手机','http://localhost:5050/img/class/103.png','小米8');
INSERT INTO class_detail VALUES(null,112,'小米手机','http://localhost:5050/img/class/104.png','小米8 SE');
INSERT INTO class_detail VALUES(null,113,'小米手机','http://localhost:5050/img/class/105.png','小米MIX 2S');
INSERT INTO class_detail VALUES(null,114,'小米手机','http://localhost:5050/img/class/106.png','小米Max 3');
INSERT INTO class_detail VALUES(null,115,'小米手机','http://localhost:5050/img/class/107.png','小米6X');
INSERT INTO class_detail VALUES(null,113,'小米手机','http://localhost:5050/img/class/108.png','小米MIX 2');
INSERT INTO class_detail VALUES(null,116,'小米手机','http://localhost:5050/img/class/109.png','黑鲨手机 Helo');

INSERT INTO class_detail VALUES(null,301,'电视','http://localhost:5050/img/class/201.jpg','32-40英寸');
INSERT INTO class_detail VALUES(null,302,'电视','http://localhost:5050/img/class/202.jpg','43英寸');
INSERT INTO class_detail VALUES(null,303,'电视','http://localhost:5050/img/class/203.jpg','49-50英寸');
INSERT INTO class_detail VALUES(null,304,'电视','http://localhost:5050/img/class/204.jpg','55-58英寸');
INSERT INTO class_detail VALUES(null,305,'电视','http://localhost:5050/img/class/205.jpg','65-75英寸');
INSERT INTO class_detail VALUES(null,306,'电视','http://localhost:5050/img/class/206.jpg','激光投影电视');

INSERT INTO class_detail VALUES(null,401,'电脑','http://localhost:5050/img/class/301.jpg','小米Air 12.5"');
INSERT INTO class_detail VALUES(null,402,'电脑','http://localhost:5050/img/class/302.jpg','小米Air 13.3"');
INSERT INTO class_detail VALUES(null,403,'电脑','http://localhost:5050/img/class/303.jpg','小米Ruby 15.6"');
INSERT INTO class_detail VALUES(null,404,'电脑','http://localhost:5050/img/class/304.jpg','小米Pro 15.6"');
INSERT INTO class_detail VALUES(null,405,'电脑','http://localhost:5050/img/class/305.jpg','小米游戏本');
INSERT INTO class_detail VALUES(null,406,'电脑','http://localhost:5050/img/class/306.jpg','小米平板');

INSERT INTO class_detail VALUES(null,201,'家电','http://localhost:5050/img/class/401.jpg','空调');
INSERT INTO class_detail VALUES(null,202,'家电','http://localhost:5050/img/class/402.jpg','净化器');
INSERT INTO class_detail VALUES(null,203,'家电','http://localhost:5050/img/class/403.jpg','落地扇');
INSERT INTO class_detail VALUES(null,204,'家电','http://localhost:5050/img/class/404.jpg','扫地机');
INSERT INTO class_detail VALUES(null,205,'家电','http://localhost:5050/img/class/405.jpg','米家投影仪');
INSERT INTO class_detail VALUES(null,206,'家电','http://localhost:5050/img/class/406.jpg','净水器');

INSERT INTO class_detail VALUES(null,206,'路由器','http://localhost:5050/img/class/501.jpg','路由器4C');
INSERT INTO class_detail VALUES(null,203,'路由器','http://localhost:5050/img/class/5012.jpg','小米路由器HD');
INSERT INTO class_detail VALUES(null,202,'路由器','http://localhost:5050/img/class/5013.jpg','小米路由器3A');
INSERT INTO class_detail VALUES(null,111,'路由器','http://localhost:5050/img/class/5014.jpg','路由器');
INSERT INTO class_detail VALUES(null,303,'路由器','http://localhost:5050/img/class/5015.jpg','放大器');
INSERT INTO class_detail VALUES(null,301,'路由器','http://localhost:5050/img/class/501.jpg','路由器4C');

INSERT INTO class_detail VALUES(null,206,'出行','http://localhost:5050/img/class/502.jpg','滑板车');
INSERT INTO class_detail VALUES(null,203,'出行','http://localhost:5050/img/class/5022.jpg','自行车');
INSERT INTO class_detail VALUES(null,202,'出行','http://localhost:5050/img/class/5023.jpg','车载逆变器');
INSERT INTO class_detail VALUES(null,111,'出行','http://localhost:5050/img/class/5024.jpg','净化器');
INSERT INTO class_detail VALUES(null,303,'出行','http://localhost:5050/img/class/5025.jpg','对讲机');
INSERT INTO class_detail VALUES(null,301,'出行','http://localhost:5050/img/class/502.jpg','滑板车');

INSERT INTO class_detail VALUES(null,206,'穿戴','http://localhost:5050/img/class/503.jpg','VR');
INSERT INTO class_detail VALUES(null,203,'穿戴','http://localhost:5050/img/class/5032.jpg','手环');
INSERT INTO class_detail VALUES(null,202,'穿戴','http://localhost:5050/img/class/5033.jpg','智能手表');

INSERT INTO class_detail VALUES(null,206,'智能','http://localhost:5050/img/class/504.jpg','摄像机');
INSERT INTO class_detail VALUES(null,203,'智能','http://localhost:5050/img/class/5042.jpg','照相机');
INSERT INTO class_detail VALUES(null,202,'智能','http://localhost:5050/img/class/5043.jpg','小爱智能闹钟');
INSERT INTO class_detail VALUES(null,111,'智能','http://localhost:5050/img/class/5044.jpg','无人机');
INSERT INTO class_detail VALUES(null,303,'智能','http://localhost:5050/img/class/5045.jpg','智能家庭');
INSERT INTO class_detail VALUES(null,301,'智能','http://localhost:5050/img/class/5046.jpg','洗手机');

INSERT INTO class_detail VALUES(null,206,'电源','http://localhost:5050/img/class/505.jpg','移动电源');
INSERT INTO class_detail VALUES(null,203,'电源','http://localhost:5050/img/class/5052.jpg','随身手电');
INSERT INTO class_detail VALUES(null,202,'电源','http://localhost:5050/img/class/5053.jpg','ZMI充电宝');
INSERT INTO class_detail VALUES(null,111,'电源','http://localhost:5050/img/class/5054.jpg','电源配件');

INSERT INTO class_detail VALUES(null,206,'健康','http://localhost:5050/img/class/506.jpg','剃须刀');
INSERT INTO class_detail VALUES(null,203,'健康','http://localhost:5050/img/class/5062.jpg','牙刷');
INSERT INTO class_detail VALUES(null,202,'健康','http://localhost:5050/img/class/5063.jpg','体脂称');
INSERT INTO class_detail VALUES(null,111,'健康','http://localhost:5050/img/class/5064.jpg','体重秤');
INSERT INTO class_detail VALUES(null,303,'健康','http://localhost:5050/img/class/5065.jpg','血压计');
INSERT INTO class_detail VALUES(null,301,'健康','http://localhost:5050/img/class/5066.jpg','体温计');

INSERT INTO class_detail VALUES(null,206,'灯具','http://localhost:5050/img/class/507.jpg','吸顶灯');
INSERT INTO class_detail VALUES(null,203,'灯具','http://localhost:5050/img/class/5072.jpg','台灯');
INSERT INTO class_detail VALUES(null,202,'灯具','http://localhost:5050/img/class/5073.jpg','床头灯');
INSERT INTO class_detail VALUES(null,111,'灯具','http://localhost:5050/img/class/5074.jpg','夜灯');
INSERT INTO class_detail VALUES(null,303,'灯具','http://localhost:5050/img/class/5075.jpg','筒灯');
INSERT INTO class_detail VALUES(null,301,'灯具','http://localhost:5050/img/class/5076.jpg','灯泡');

INSERT INTO class_detail VALUES(null,206,'儿童','http://localhost:5050/img/class/508.jpg','儿童手表');
INSERT INTO class_detail VALUES(null,203,'儿童','http://localhost:5050/img/class/5082.jpg','早教启智');
INSERT INTO class_detail VALUES(null,202,'儿童','http://localhost:5050/img/class/5083.jpg','遥控电动');
INSERT INTO class_detail VALUES(null,111,'儿童','http://localhost:5050/img/class/5085.jpg','益智积木');
INSERT INTO class_detail VALUES(null,303,'儿童','http://localhost:5050/img/class/5086.jpg','儿童滑板车');
INSERT INTO class_detail VALUES(null,301,'儿童','http://localhost:5050/img/class/5087.jpg','儿童书包');

INSERT INTO class_detail VALUES(null,206,'插线板','http://localhost:5050/img/class/509.jpg','插线板');
INSERT INTO class_detail VALUES(null,203,'插线板','http://localhost:5050/img/class/509.jpg','插线板');
INSERT INTO class_detail VALUES(null,202,'插线板','http://localhost:5050/img/class/509.jpg','转换器');

INSERT INTO class_detail VALUES(null,206,'音频','http://localhost:5050/img/class/510.jpg','小爱音响');
INSERT INTO class_detail VALUES(null,203,'音频','http://localhost:5050/img/class/5102.jpg','线控耳机');
INSERT INTO class_detail VALUES(null,202,'音频','http://localhost:5050/img/class/5103.jpg','蓝牙耳机');
INSERT INTO class_detail VALUES(null,111,'音频','http://localhost:5050/img/class/5104.jpg','头戴式耳机');
INSERT INTO class_detail VALUES(null,303,'音频','http://localhost:5050/img/class/5105.jpg','品牌耳机');
INSERT INTO class_detail VALUES(null,301,'音频','http://localhost:5050/img/class/5106.jpg','蓝牙音箱');

INSERT INTO class_detail VALUES(null,206,'箱包','http://localhost:5050/img/class/511.jpg','小背包');
INSERT INTO class_detail VALUES(null,203,'箱包','http://localhost:5050/img/class/5112.jpg','旅行箱');
INSERT INTO class_detail VALUES(null,202,'箱包','http://localhost:5050/img/class/5113.jpg','双肩包');
INSERT INTO class_detail VALUES(null,111,'箱包','http://localhost:5050/img/class/5114.jpg','钱包');
INSERT INTO class_detail VALUES(null,303,'箱包','http://localhost:5050/img/class/5115.jpg','胸包');
INSERT INTO class_detail VALUES(null,301,'箱包','http://localhost:5050/img/class/5116.jpg','收纳包');

INSERT INTO class_detail VALUES(null,206,'生活','http://localhost:5050/img/class/512.jpg','驱蚊器');
INSERT INTO class_detail VALUES(null,203,'生活','http://localhost:5050/img/class/5122.jpg','眼镜');
INSERT INTO class_detail VALUES(null,202,'生活','http://localhost:5050/img/class/5123.jpg','毛巾/浴巾');
INSERT INTO class_detail VALUES(null,111,'生活','http://localhost:5050/img/class/5124.jpg','螺丝刀');
INSERT INTO class_detail VALUES(null,303,'生活','http://localhost:5050/img/class/5125.jpg','保温杯');
INSERT INTO class_detail VALUES(null,301,'生活','http://localhost:5050/img/class/5126.jpg','针织件套');

INSERT INTO class_detail VALUES(null,206,'配件','http://localhost:5050/img/class/513.jpg','数据线');
INSERT INTO class_detail VALUES(null,203,'配件','http://localhost:5050/img/class/5132.jpg','车充');
INSERT INTO class_detail VALUES(null,202,'配件','http://localhost:5050/img/class/5133.jpg','充电器');
INSERT INTO class_detail VALUES(null,111,'配件','http://localhost:5050/img/class/5134.jpg','自拍杆');
INSERT INTO class_detail VALUES(null,303,'配件','http://localhost:5050/img/class/5135.jpg','贴膜');
INSERT INTO class_detail VALUES(null,301,'配件','http://localhost:5050/img/class/5136.jpg','黑鲨配件');

INSERT INTO class_detail VALUES(null,206,'家装','http://localhost:5050/img/class/514.png','客厅');
INSERT INTO class_detail VALUES(null,203,'家装','http://localhost:5050/img/class/5142.png','餐厅');
INSERT INTO class_detail VALUES(null,202,'家装','http://localhost:5050/img/class/5143.png','主卧');
INSERT INTO class_detail VALUES(null,111,'家装','http://localhost:5050/img/class/5144.png','次卧');
INSERT INTO class_detail VALUES(null,303,'家装','http://localhost:5050/img/class/5145.png','厨房');
INSERT INTO class_detail VALUES(null,301,'家装','http://localhost:5050/img/class/5146.png','卫生间');
INSERT INTO class_detail VALUES(null,301,'家装','http://localhost:5050/img/class/5147.png','阳台');

INSERT INTO class_detail VALUES(null,206,'礼品','http://localhost:5050/img/class/515.png','送女生');
INSERT INTO class_detail VALUES(null,203,'礼品','http://localhost:5050/img/class/5152.png','送男生');
INSERT INTO class_detail VALUES(null,111,'礼品','http://localhost:5050/img/class/5153.png','新品');
INSERT INTO class_detail VALUES(null,202,'礼品','http://localhost:5050/img/class/5156.png','优惠套装');
INSERT INTO class_detail VALUES(null,303,'礼品','http://localhost:5050/img/class/5154.png','送长辈');
INSERT INTO class_detail VALUES(null,301,'礼品','http://localhost:5050/img/class/5155.png','送孩子');

INSERT INTO class_detail VALUES(null,206,'服务','http://localhost:5050/img/class/516.png','手机保障服务');
INSERT INTO class_detail VALUES(null,203,'服务','http://localhost:5050/img/class/5162.png','以旧换新');
INSERT INTO class_detail VALUES(null,202,'服务','http://localhost:5050/img/class/5163.png','手机上门维修');
INSERT INTO class_detail VALUES(null,111,'服务','http://localhost:5050/img/class/5164.png','安装服务');

INSERT INTO class_detail VALUES(null,206,'米粉卡','http://localhost:5050/img/class/517.png','日租卡');
INSERT INTO class_detail VALUES(null,203,'米粉卡','http://localhost:5050/img/class/5172.png','自由日租卡');
INSERT INTO class_detail VALUES(null,202,'米粉卡','http://localhost:5050/img/class/5173.png','任我行');

INSERT INTO class_detail VALUES(null,206,'零售店','http://localhost:5050/img/class/518.png','小米之家');
INSERT INTO class_detail VALUES(null,203,'零售店','http://localhost:5050/img/class/519.png','服务网点');
INSERT INTO class_detail VALUES(null,202,'零售店','http://localhost:5050/img/class/520.png','线下专区');

#商品详情表
CREATE TABLE products_img(
    id INT PRIMARY KEY AUTO_INCREMENT,
    pid INT,
    img VARCHAR(255)
);
#小米8
INSERT INTO products_img VALUES(null,1,'http://localhost:5050/img/detail/big/11.jpg');
INSERT INTO products_img VALUES(null,1,'http://localhost:5050/img/detail/big/12.jpg');
INSERT INTO products_img VALUES(null,1,'http://localhost:5050/img/detail/big/13.jpg');
INSERT INTO products_img VALUES(null,1,'http://localhost:5050/img/detail/big/14.jpg');
#小米8 指纹版
INSERT INTO products_img VALUES(null,2,'http://localhost:5050/img/detail/big/21.jpg');
INSERT INTO products_img VALUES(null,2,'http://localhost:5050/img/detail/big/22.jpg');
INSERT INTO products_img VALUES(null,2,'http://localhost:5050/img/detail/big/23.jpg');
# 6A
INSERT INTO products_img VALUES(null,112,'http://localhost:5050/img/detail/big/1121.jpg');
INSERT INTO products_img VALUES(null,112,'http://localhost:5050/img/detail/big/1122.jpg');
INSERT INTO products_img VALUES(null,112,'http://localhost:5050/img/detail/big/1123.jpg');
INSERT INTO products_img VALUES(null,112,'http://localhost:5050/img/detail/big/1124.jpg');
#6X
INSERT INTO products_img VALUES(null,113,'http://localhost:5050/img/detail/big/1131.jpg');
INSERT INTO products_img VALUES(null,113,'http://localhost:5050/img/detail/big/1132.jpg');
INSERT INTO products_img VALUES(null,113,'http://localhost:5050/img/detail/big/1133.jpg');
INSERT INTO products_img VALUES(null,113,'http://localhost:5050/img/detail/big/1134.jpg');
INSERT INTO products_img VALUES(null,113,'http://localhost:5050/img/detail/big/1135.jpg');
# 小米SE 
INSERT INTO products_img VALUES(null,114,'http://localhost:5050/img/detail/big/1141.jpg');
INSERT INTO products_img VALUES(null,114,'http://localhost:5050/img/detail/big/1142.jpg');
INSERT INTO products_img VALUES(null,114,'http://localhost:5050/img/detail/big/1143.jpg');
INSERT INTO products_img VALUES(null,114,'http://localhost:5050/img/detail/big/1144.jpg');
# MIX 2
INSERT INTO products_img VALUES(null,115,'http://localhost:5050/img/detail/big/1151.jpg');
INSERT INTO products_img VALUES(null,115,'http://localhost:5050/img/detail/big/1152.jpg');
INSERT INTO products_img VALUES(null,115,'http://localhost:5050/img/detail/big/1153.jpg');
INSERT INTO products_img VALUES(null,115,'http://localhost:5050/img/detail/big/1154.jpg');
INSERT INTO products_img VALUES(null,115,'http://localhost:5050/img/detail/big/1155.jpg');
INSERT INTO products_img VALUES(null,115,'http://localhost:5050/img/detail/big/1156.jpg');
#黑鲨游戏手机
INSERT INTO products_img VALUES(null,116,'http://localhost:5050/img/detail/big/1161.jpg');
INSERT INTO products_img VALUES(null,116,'http://localhost:5050/img/detail/big/1162.jpg');
INSERT INTO products_img VALUES(null,116,'http://localhost:5050/img/detail/big/1163.jpg');
INSERT INTO products_img VALUES(null,116,'http://localhost:5050/img/detail/big/1164.jpg');
# 红米6
INSERT INTO products_img VALUES(null,111,'http://localhost:5050/img/detail/big/1121.jpg');
INSERT INTO products_img VALUES(null,111,'http://localhost:5050/img/detail/big/1122.jpg');
INSERT INTO products_img VALUES(null,111,'http://localhost:5050/img/detail/big/1123.jpg');
INSERT INTO products_img VALUES(null,111,'http://localhost:5050/img/detail/big/1124.jpg');
# 手机 1,2,111,112,113,114,115,116 
# 201 小米音响
INSERT INTO products_img VALUES(null,201,'http://localhost:5050/img/detail/big/2011.jpg');
INSERT INTO products_img VALUES(null,201,'http://localhost:5050/img/detail/big/2012.jpg');
INSERT INTO products_img VALUES(null,201,'http://localhost:5050/img/detail/big/2013.jpg');
INSERT INTO products_img VALUES(null,201,'http://localhost:5050/img/detail/big/2014.jpg');
#202 扫地机器人
INSERT INTO products_img VALUES(null,202,'http://localhost:5050/img/detail/big/2021.jpg');
INSERT INTO products_img VALUES(null,202,'http://localhost:5050/img/detail/big/2022.jpg');

#203 净水器
INSERT INTO products_img VALUES(null,203,'http://localhost:5050/img/detail/big/2031.jpg');
INSERT INTO products_img VALUES(null,203,'http://localhost:5050/img/detail/big/2032.jpg');
INSERT INTO products_img VALUES(null,203,'http://localhost:5050/img/detail/big/2033.jpg');

#204 茶水壶
INSERT INTO products_img VALUES(null,204,'http://localhost:5050/img/detail/big/2041.jpg');
INSERT INTO products_img VALUES(null,204,'http://localhost:5050/img/detail/big/2042.jpg');
INSERT INTO products_img VALUES(null,204,'http://localhost:5050/img/detail/big/2043.jpg');
INSERT INTO products_img VALUES(null,204,'http://localhost:5050/img/detail/big/2044.jpg');

#205 空气净化器
INSERT INTO products_img VALUES(null,205,'http://localhost:5050/img/detail/big/2051.jpg');
INSERT INTO products_img VALUES(null,205,'http://localhost:5050/img/detail/big/2052.jpg');
INSERT INTO products_img VALUES(null,205,'http://localhost:5050/img/detail/big/2053.jpg');
INSERT INTO products_img VALUES(null,205,'http://localhost:5050/img/detail/big/2054.jpg');

#206 平衡车
INSERT INTO products_img VALUES(null,206,'http://localhost:5050/img/detail/big/2061.jpg');
INSERT INTO products_img VALUES(null,206,'http://localhost:5050/img/detail/big/2062.jpg');
INSERT INTO products_img VALUES(null,206,'http://localhost:5050/img/detail/big/2063.jpg');
INSERT INTO products_img VALUES(null,206,'http://localhost:5050/img/detail/big/2064.jpg');
# 智能 201,202,203,204,205,206

# 301
INSERT INTO products_img VALUES(null,301,'http://localhost:5050/img/detail/big/3011.jpg');
INSERT INTO products_img VALUES(null,301,'http://localhost:5050/img/detail/big/3012.jpg');
# 302
INSERT INTO products_img VALUES(null,302,'http://localhost:5050/img/detail/big/3021.jpg');
INSERT INTO products_img VALUES(null,302,'http://localhost:5050/img/detail/big/3022.jpg');
# 303
INSERT INTO products_img VALUES(null,303,'http://localhost:5050/img/detail/big/3031.jpg');
INSERT INTO products_img VALUES(null,303,'http://localhost:5050/img/detail/big/3032.jpg');
#304
INSERT INTO products_img VALUES(null,304,'http://localhost:5050/img/detail/big/3041.jpg');
INSERT INTO products_img VALUES(null,304,'http://localhost:5050/img/detail/big/3042.jpg');
INSERT INTO products_img VALUES(null,304,'http://localhost:5050/img/detail/big/3043.jpg');
INSERT INTO products_img VALUES(null,304,'http://localhost:5050/img/detail/big/3044.jpg');
INSERT INTO products_img VALUES(null,304,'http://localhost:5050/img/detail/big/3045.jpg');
#305
INSERT INTO products_img VALUES(null,305,'http://localhost:5050/img/detail/big/3051.jpg');
INSERT INTO products_img VALUES(null,305,'http://localhost:5050/img/detail/big/3052.jpg');
#306
INSERT INTO products_img VALUES(null,306,'http://localhost:5050/img/detail/big/3061.jpg');
INSERT INTO products_img VALUES(null,306,'http://localhost:5050/img/detail/big/3062.jpg');
# 电视 301,302,303,304,305,306

#401
INSERT INTO products_img VALUES(null,401,'http://localhost:5050/img/detail/big/4011.jpg');
INSERT INTO products_img VALUES(null,401,'http://localhost:5050/img/detail/big/4012.jpg');
INSERT INTO products_img VALUES(null,401,'http://localhost:5050/img/detail/big/4013.jpg');
INSERT INTO products_img VALUES(null,401,'http://localhost:5050/img/detail/big/4014.jpg');
#402
INSERT INTO products_img VALUES(null,402,'http://localhost:5050/img/detail/big/4021.jpg');
INSERT INTO products_img VALUES(null,402,'http://localhost:5050/img/detail/big/4022.jpg');
INSERT INTO products_img VALUES(null,402,'http://localhost:5050/img/detail/big/4023.jpg');
INSERT INTO products_img VALUES(null,402,'http://localhost:5050/img/detail/big/4024.jpg');
#403
INSERT INTO products_img VALUES(null,403,'http://localhost:5050/img/detail/big/4031.jpg');
INSERT INTO products_img VALUES(null,403,'http://localhost:5050/img/detail/big/4032.jpg');
INSERT INTO products_img VALUES(null,403,'http://localhost:5050/img/detail/big/4033.jpg');
INSERT INTO products_img VALUES(null,403,'http://localhost:5050/img/detail/big/4034.jpg');
INSERT INTO products_img VALUES(null,403,'http://localhost:5050/img/detail/big/4035.jpg');
INSERT INTO products_img VALUES(null,403,'http://localhost:5050/img/detail/big/4036.jpg');
#404
INSERT INTO products_img VALUES(null,404,'http://localhost:5050/img/detail/big/4041.jpg');
INSERT INTO products_img VALUES(null,404,'http://localhost:5050/img/detail/big/4036.jpg');

#405
INSERT INTO products_img VALUES(null,405,'http://localhost:5050/img/detail/big/4051.jpg');
INSERT INTO products_img VALUES(null,405,'http://localhost:5050/img/detail/big/4052.jpg');
INSERT INTO products_img VALUES(null,405,'http://localhost:5050/img/detail/big/4053.jpg');
INSERT INTO products_img VALUES(null,405,'http://localhost:5050/img/detail/big/4054.jpg');
#406
INSERT INTO products_img VALUES(null,406,'http://localhost:5050/img/detail/big/4061.jpg');
INSERT INTO products_img VALUES(null,406,'http://localhost:5050/img/detail/big/4062.jpg');
# 电脑 401,402,403,404,405,406

CREATE TABLE products_icon(
    id INT PRIMARY KEY AUTO_INCREMENT,
    pid INT,
    icon VARCHAR(255),
    icontitle VARCHAR(64),
    icondetail VARCHAR(64)
);
INSERT INTO products_icon VALUES(null,1,'http://localhost:5050/img/detail/icon/11.png','超大屏','6.26英寸');
INSERT INTO products_icon VALUES(null,1,'http://localhost:5050/img/detail/icon/12.png','高清拍摄','1200万像素');
INSERT INTO products_icon VALUES(null,1,'http://localhost:5050/img/detail/icon/13.png','持久待机','3350mAh');
INSERT INTO products_icon VALUES(null,1,'http://localhost:5050/img/detail/icon/14.png','高速','4GB');
INSERT INTO products_icon VALUES(null,1,'http://localhost:5050/img/detail/icon/15.png','运营商网络','4G全网通');
INSERT INTO products_icon VALUES(null,1,'http://localhost:5050/img/detail/icon/16.png','屏幕清晰度','2280×1080');
INSERT INTO products_icon VALUES(null,1,'http://localhost:5050/img/detail/icon/17.png','CPU核心数','八核');
INSERT INTO products_icon VALUES(null,1,'http://localhost:5050/img/detail/icon/18.png','存储容量','64GB');
INSERT INTO products_icon VALUES(null,1,'http://localhost:5050/img/detail/icon/19.png','薄','7.5mm');
INSERT INTO products_icon VALUES(null,1,'http://localhost:5050/img/detail/icon/20.png','网络模式','双卡双待');

INSERT INTO products_icon VALUES(null,301,'http://localhost:5050/img/detail/icon/21.png','屏幕尺寸','32英寸');
INSERT INTO products_icon VALUES(null,301,'http://localhost:5050/img/detail/icon/22.png','分辨率','高清');
INSERT INTO products_icon VALUES(null,301,'http://localhost:5050/img/detail/icon/23.png','处理器','64位四核');
INSERT INTO products_icon VALUES(null,301,'http://localhost:5050/img/detail/icon/24.png','存储','1GB+4GB');
INSERT INTO products_icon VALUES(null,301,'http://localhost:5050/img/detail/icon/25.png','HDMI','2个');

INSERT INTO products_icon VALUES(null,401,'http://localhost:5050/img/detail/icon/26.png','较大屏幕','15.6英寸');
INSERT INTO products_icon VALUES(null,401,'http://localhost:5050/img/detail/icon/27.png','Intel i7','CPU');
INSERT INTO products_icon VALUES(null,401,'http://localhost:5050/img/detail/icon/28.png','独立显卡','显卡类型');
INSERT INTO products_icon VALUES(null,401,'http://localhost:5050/img/detail/icon/29.png','正常厚度','厚度');
INSERT INTO products_icon VALUES(null,401,'http://localhost:5050/img/detail/icon/30.png','256GB','含固态硬盘');
INSERT INTO products_icon VALUES(null,401,'http://localhost:5050/img/detail/icon/31.png','1TB','含机械硬盘');
INSERT INTO products_icon VALUES(null,401,'http://localhost:5050/img/detail/icon/32.png','超大内存','16GB');
INSERT INTO products_icon VALUES(null,401,'http://localhost:5050/img/detail/icon/33.png','全高清屏','屏幕分辨率');
INSERT INTO products_icon VALUES(null,401,'http://localhost:5050/img/detail/icon/34.png','待机时长','＞6.5小时');
INSERT INTO products_icon VALUES(null,401,'http://localhost:5050/img/detail/icon/35.png','2.7kg','重量');
CREATE TABLE product(
    id INT PRIMARY KEY AUTO_INCREMENT,
    pid INT,
    title VARCHAR(24),
    subtitle VARCHAR(255),
    price VARCHAR(12),
    option  VARCHAR(255),
    label VARCHAR(120)
);
INSERT INTO product VALUES(null,1,'小米8 青春版','潮流镜面渐变色 / 2400万自拍旗舰 / 7.5mm超薄机身 / 6.26"小刘海全面屏 / AI裸妆美颜 / 骁龙660AIE处理器','1399','小米8 青春版 4GB+64GB 深空灰 x 1','「现货在售」「赠送标准高透贴膜」');
INSERT INTO product VALUES(null,2,'小米8 屏幕指纹版','全球首款 压感屏幕指纹 / 双频GPS超精准定位 / 支持红外人脸识别 / 骁龙845 AIE 旗舰处理器','3599','小米8 屏幕指纹版 8GB+128GB 透明 x 1','「现货在售」「赠送标准高透贴膜」');
INSERT INTO product VALUES(null,112,'红米6A','好用好看不贵 / 12nm高性能处理器 / 1300万高清相机 / “小杨柳腰”机身','669','红米6A 3GB+32GB 流沙金 x 1','「现货在售」「赠送标准高透贴膜」');
INSERT INTO product VALUES(null,113,'小米6X','轻薄美观的拍照手机 / 前置2000万“治愈系”自拍 / 后置2000万 AI双摄 / 标配骁龙660 AIE处理器','1749','小米6X 6GB+128GB 曜石黑 x 1','「现货在售」「赠送标准高透贴膜」');
INSERT INTO product VALUES(null,114,'小米8 SE','三星 AMOLED 全面屏 小屏旗舰 / 骁龙710处理器 / AI 超感光双摄 / 前置2000万柔光自拍','1699','小米8 SE 4GB+64GB 亮红 x 1','「现货在售」「赠送标准高透贴膜」');
INSERT INTO product VALUES(null,115,'小米MIX 2','全面屏2.0，5.99"大屏 / 骁龙835旗舰处理器 / 4轴光学防抖 / 6模43频，全球频段','2699','小米MIX 2 全陶瓷尊享版 8GB+128GB 黑色 x 1','「现货在售」「赠送标准高透贴膜」');
INSERT INTO product VALUES(null,116,'黑鲨游戏手机 Helo','双液冷 / 独显+AMOLED全面屏 / Gamer Studio / X+1天线 / 骁龙845 / 正面双扬声器 / 标配二代手柄 / 一键Shark模式 / AI灯效','3499','黑鲨游戏手机 Helo 8GB+128GB 黑色 x 1','「现货在售」「赠送标准高透贴膜」');
INSERT INTO product VALUES(null,111,'红米6','小屏高性能的双摄手机 / 后置1200万 AI双摄 / 12nm八核处理器 / AI 人脸解锁','769','红米6 3GB+32GB 流沙金 x 1','「现货在售」「赠送标准高透贴膜」');

# 手机 1小米8 ,2小米8 指纹版,111红米6,1126A,1136X,114小米SE ,115 MIX 2,116黑鲨游戏手机

# 201 小米音响 #202 扫地机器人 #203 净水器 #204 茶水壶 #205 空气净化器 #206 平衡车
INSERT INTO product VALUES(null,201,'小米AI音箱','小米AI音箱 / 能播音乐 / 讲故事 / 听相声 / 查路况 / 设闹钟 / 还能控制智能设备','299','小米AI音箱 x 1','【送30元小米电视优惠券（11.1-11.12可用）】');
INSERT INTO product VALUES(null,202,'米家扫地机器人','高精度激光测距，智能规划路径 / 1800Pa 大风压澎湃吸力 / 远程智能控制 ，定时清扫 / 大电池持久清扫','1699','米家扫地机器人 x 1','【送30元小米电视优惠券（11.1-11.12可用）】');
INSERT INTO product VALUES(null,203,'小米净水器（厨下式）','含上门安装服务费 / 400加仑大流量 / RO反渗透直出纯净水 / 隐藏安装 / 健康家庭必备','1999','小米净水器（厨下式）白色 x 1','【送30元小米电视优惠券（11.1-11.12可用）】');
INSERT INTO product VALUES(null,204,'米家电水壶 ','快速沸腾 / 304不锈钢内胆 / 1.5L大容量 / 双层防烫 / 13cm大口径​','99','米家电水壶 白色 x 1','【送30元小米电视优惠券（11.1-11.12可用）】');
INSERT INTO product VALUES(null,205,'小米米家空气净化器 2S','OLED显示屏 / 激光颗粒物传感器 / 310m³/h颗粒物CADR / 360°进风3层净化','899','小米米家空气净化器 2S x 1','【送30元小米电视优惠券（11.1-11.12可用）】');
INSERT INTO product VALUES(null,206,'九号平衡车','年轻人的酷玩具 / 骑行遥控两种玩法 / 22公里超长续航  / 轻、小、便携 / 重心驱动 / 15重安全保障','1999','九号平衡车 白色 x 1','【送30元小米电视优惠券（11.1-11.12可用）】');

INSERT INTO product VALUES(null,301,'小米电视4A 65英寸','4K超高清屏 / 四核64位高性能处理器，支持HDR10 / 2GB+8GB大存储 / 人工智能语音 / 支持壁挂','3999','小米电视4A 65英寸 黑色 x 1','【“小米11.11来了！”10月24日-10月31日付订金100抵700，特惠价仅3399元！11月1日支付尾款开始发货】');
INSERT INTO product VALUES(null,302,'小米电视4C 40英寸','人工智能系统 / 海量片源 / FHD全高清 / 64位四核处理器 / 1GB+4GB内存','1299','小米电视4C 40英寸 黑色 40英寸 x 1','【“小米11.11来了！”10月24日-10月31日新品预售订金100抵300，特惠价仅1099元！11月1日支付尾款开始发货】');
INSERT INTO product VALUES(null,303,'小米电视4C 32英寸','人工智能系统 | 64位处理器 | 1GB+4GB 内存','899','小米电视4C 32英寸 黑色 32英寸 x 1','【“小米11.11来了！”10月24日-10月31日新品预售订金100抵300，特惠价仅1099元！11月1日支付尾款开始发货】');
INSERT INTO product VALUES(null,304,'小米电视4 55英寸','4.9mm 极超薄机身 / 无边框式设计 / 2GB+8GB大内存','3699','小米电视4 55英寸 黑色 55英寸 x 1','【“小米11.11来了！”10月24日-10月31日新品预售订金100抵300，特惠价仅1099元！11月1日支付尾款开始发货】');
INSERT INTO product VALUES(null,305,'55'' 电视4C 体育版','4K HDR 人工智能电视 / 2GB+8GB大内存 / 64位四核处理器 / 超窄边','2499','小米电视4C 55英寸体育版 x 1','【“小米11.11来了！”10月24日-10月31日新品预售订金100抵300，特惠价仅1099元！11月1日支付尾款开始发货】');
INSERT INTO product VALUES(null,306,'小米电视4A 32英寸','64位四核处理器 / 1GB+4GB大内存 / 高清液晶屏 / 第6代画质引擎 / 人工智能系统PatchWall / 轻至4kg','899','小米电视4A 32英寸 x 1','【10月26日-10月27日限时特惠！】');

INSERT INTO product VALUES(null,401,'15.6"笔记本 i5 8G MX110','全新第八代 ／ 独立显卡，2GB显存 ／ 双风扇散热系统 ／ 双内存大硬盘可扩展 ／ 7大接口 ／ 独立数字键盘','4599','15.6"笔记本 i5 8G MX110 白色 x 1','');
INSERT INTO product VALUES(null,402,'15.6"笔记本 i5 4G MX110','全新第八代 ／ 独立显卡，2GB显存 ／ 双风扇散热系统 ／ 双内存大硬盘可扩展 ／ 7大接口 ／ 独立数字键盘','3999','15.6"笔记本 i5 4G MX110 深空灰 x 1','');
INSERT INTO product VALUES(null,403,'13.3"笔记本 四核i5 8G 256G MX150 ','四核增强版 / 带独立显卡的轻薄笔记本 / 散热系统升级 / 全金属机身 / office激活【不支持7天无理由退货】','5399','小米笔记本Air 13 四核i5 8G 256G MX150 2G 深空灰 x 1','');
INSERT INTO product VALUES(null,404,'15.6"笔记本 i5 8G 256G MX150 ','NVIDIA MX150 2G独显 / 第八代i5处理器 / office激活不支持7天无理由退货【温馨提示：请在系统激活后6个月内完成Office激活，逾期将无法使用】','5599','小米笔记本Pro 15 i5 8G x 1','');
INSERT INTO product VALUES(null,405,'15.6"笔记本 i7 8G MX110','全新第八代 ／ 独立显卡，2GB显存 ／ 双风扇散热系统 ／ 双内存大硬盘可扩展 ／ 7大接口 ／ 独立数字键盘','4999','15.6"笔记本 i7 8G MX110 深空灰 x 1','');
INSERT INTO product VALUES(null,406,'15.6"游戏本 8代i7 16G 1060','第八代酷睿处理器 ／ 72%NTSC高色域窄边框全高清屏 ／ 256G PCIe高速固态 ／ 双烤不限频不降频','8999','小米游戏本15.6”8代i7 16G 1T+256G 1060 6G x 1','');
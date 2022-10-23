-- 데이터베이스 생성 : jinsookdb는 데이터베이스명
CREATE DATABASE springdb;
USE springdb;
-- 사용자 생성
CREATE USER jinsook@localhost IDENTIFIED BY '1111';

-- 사용자의 db에 대한 권한 부여
GRANT ALL privileges ON jinsookdb.* TO jinsook@localhost WITH GRANT OPTION;

-- 권한 갱신
FLUSH PRIVILEGES;

-- 데이터베이스 조회
SHOW DATABASES;

-- MEMBER 테이블 DDL
create table member(
    id varchar(20),
    pwd varchar(20),
    name varchar(50),
    email varchar(50),
    joinDate date
);

-- 데이터 입력
insert into member values('gildong', '1111','홍길동','gildong@naver.com', now());
insert into member values('sunshin', '1111','이순신','lee@gmail.com', now());
insert into member values('jongsuh', '1111','김종서','jong@gmail.com', now());

select * from member;

SELECT * FROM member;

SELECT * FROM member LIMIT 0, 10;



insert into member values('gildong', '1111','홍길동','gildong@naver.com', now());
insert into member values('sunshin', '1111','이순신','lee@gmail.com', now());
insert into member values('jongsuh', '1111','김종서','jong@gmail.com', NOW());




insert into member values('id0', '0','이름0','0@gmail.com', now());
insert into member values('id1', '1','이름1','1@gmail.com', now());
insert into member values('id2', '2','이름2','2@gmail.com', now());
insert into member values('id3', '3','이름3','3@gmail.com', now());
insert into member values('id4', '4','이름4','4@gmail.com', now());
insert into member values('id5', '5','이름5','5@gmail.com', now());
insert into member values('id6', '6','이름6','6@gmail.com', now());
insert into member values('id7', '7','이름7','7@gmail.com', now());
insert into member values('id8', '8','이름8','8@gmail.com', now());
insert into member values('id9', '9','이름9','9@gmail.com', now());
insert into member values('id10', '10','이름10','10@gmail.com', now());
insert into member values('id11', '11','이름11','11@gmail.com', now());
insert into member values('id12', '12','이름12','12@gmail.com', now());
insert into member values('id13', '13','이름13','13@gmail.com', now());
insert into member values('id14', '14','이름14','14@gmail.com', now());
insert into member values('id15', '15','이름15','15@gmail.com', now());
insert into member values('id16', '16','이름16','16@gmail.com', now());
insert into member values('id17', '17','이름17','17@gmail.com', now());
insert into member values('id18', '18','이름18','18@gmail.com', now());
insert into member values('id19', '19','이름19','19@gmail.com', now());
insert into member values('id20', '20','이름20','20@gmail.com', now());
insert into member values('id21', '21','이름21','21@gmail.com', now());
insert into member values('id22', '22','이름22','22@gmail.com', now());
insert into member values('id23', '23','이름23','23@gmail.com', now());
insert into member values('id24', '24','이름24','24@gmail.com', now());
insert into member values('id25', '25','이름25','25@gmail.com', now());
insert into member values('id26', '26','이름26','26@gmail.com', now());
insert into member values('id27', '27','이름27','27@gmail.com', now());
insert into member values('id28', '28','이름28','28@gmail.com', now());
insert into member values('id29', '29','이름29','29@gmail.com', now());
insert into member values('id30', '30','이름30','30@gmail.com', now());
insert into member values('id31', '31','이름31','31@gmail.com', now());
insert into member values('id32', '32','이름32','32@gmail.com', now());
insert into member values('id33', '33','이름33','33@gmail.com', now());
insert into member values('id34', '34','이름34','34@gmail.com', now());
insert into member values('id35', '35','이름35','35@gmail.com', now());
insert into member values('id36', '36','이름36','36@gmail.com', now());
insert into member values('id37', '37','이름37','37@gmail.com', now());
insert into member values('id38', '38','이름38','38@gmail.com', now());
insert into member values('id39', '39','이름39','39@gmail.com', now());
insert into member values('id40', '40','이름40','40@gmail.com', now());
insert into member values('id41', '41','이름41','41@gmail.com', now());
insert into member values('id42', '42','이름42','42@gmail.com', now());
insert into member values('id43', '43','이름43','43@gmail.com', now());
insert into member values('id44', '44','이름44','44@gmail.com', now());
insert into member values('id45', '45','이름45','45@gmail.com', now());
insert into member values('id46', '46','이름46','46@gmail.com', now());
insert into member values('id47', '47','이름47','47@gmail.com', now());
insert into member values('id48', '48','이름48','48@gmail.com', now());
insert into member values('id49', '49','이름49','49@gmail.com', now());
insert into member values('id50', '50','이름50','50@gmail.com', now());
insert into member values('id51', '51','이름51','51@gmail.com', now());
insert into member values('id52', '52','이름52','52@gmail.com', now());
insert into member values('id53', '53','이름53','53@gmail.com', now());
insert into member values('id54', '54','이름54','54@gmail.com', now());
insert into member values('id55', '55','이름55','55@gmail.com', now());
insert into member values('id56', '56','이름56','56@gmail.com', now());
insert into member values('id57', '57','이름57','57@gmail.com', now());
insert into member values('id58', '58','이름58','58@gmail.com', now());
insert into member values('id59', '59','이름59','59@gmail.com', now());
insert into member values('id60', '60','이름60','60@gmail.com', now());
insert into member values('id61', '61','이름61','61@gmail.com', now());
insert into member values('id62', '62','이름62','62@gmail.com', now());
insert into member values('id63', '63','이름63','63@gmail.com', now());
insert into member values('id64', '64','이름64','64@gmail.com', now());
insert into member values('id65', '65','이름65','65@gmail.com', now());
insert into member values('id66', '66','이름66','66@gmail.com', now());
insert into member values('id67', '67','이름67','67@gmail.com', now());
insert into member values('id68', '68','이름68','68@gmail.com', now());
insert into member values('id69', '69','이름69','69@gmail.com', now());
insert into member values('id70', '70','이름70','70@gmail.com', now());
insert into member values('id71', '71','이름71','71@gmail.com', now());
insert into member values('id72', '72','이름72','72@gmail.com', now());
insert into member values('id73', '73','이름73','73@gmail.com', now());
insert into member values('id74', '74','이름74','74@gmail.com', now());
insert into member values('id75', '75','이름75','75@gmail.com', now());
insert into member values('id76', '76','이름76','76@gmail.com', now());
insert into member values('id77', '77','이름77','77@gmail.com', now());
insert into member values('id78', '78','이름78','78@gmail.com', now());
insert into member values('id79', '79','이름79','79@gmail.com', now());
insert into member values('id80', '80','이름80','80@gmail.com', now());
insert into member values('id81', '81','이름81','81@gmail.com', now());
insert into member values('id82', '82','이름82','82@gmail.com', now());
insert into member values('id83', '83','이름83','83@gmail.com', now());
insert into member values('id84', '84','이름84','84@gmail.com', now());
insert into member values('id85', '85','이름85','85@gmail.com', now());
insert into member values('id86', '86','이름86','86@gmail.com', now());
insert into member values('id87', '87','이름87','87@gmail.com', now());
insert into member values('id88', '88','이름88','88@gmail.com', now());
insert into member values('id89', '89','이름89','89@gmail.com', now());
insert into member values('id90', '90','이름90','90@gmail.com', now());
insert into member values('id91', '91','이름91','91@gmail.com', now());
insert into member values('id92', '92','이름92','92@gmail.com', now());
insert into member values('id93', '93','이름93','93@gmail.com', now());
insert into member values('id94', '94','이름94','94@gmail.com', now());
insert into member values('id95', '95','이름95','95@gmail.com', now());
insert into member values('id96', '96','이름96','96@gmail.com', now());
insert into member values('id97', '97','이름97','97@gmail.com', now());
insert into member values('id98', '98','이름98','98@gmail.com', now());
insert into member values('id99', '99','이름99','99@gmail.com', now());
insert into member values('id100', '100','이름100','100@gmail.com', now());
insert into member values('id101', '101','이름101','101@gmail.com', now());
insert into member values('id102', '102','이름102','102@gmail.com', now());
insert into member values('id103', '103','이름103','103@gmail.com', now());
insert into member values('id104', '104','이름104','104@gmail.com', now());
insert into member values('id105', '105','이름105','105@gmail.com', now());
insert into member values('id106', '106','이름106','106@gmail.com', now());
insert into member values('id107', '107','이름107','107@gmail.com', now());
insert into member values('id108', '108','이름108','108@gmail.com', now());
insert into member values('id109', '109','이름109','109@gmail.com', now());
insert into member values('id110', '110','이름110','110@gmail.com', now());
insert into member values('id111', '111','이름111','111@gmail.com', now());
insert into member values('id112', '112','이름112','112@gmail.com', now());
insert into member values('id113', '113','이름113','113@gmail.com', now());
insert into member values('id114', '114','이름114','114@gmail.com', now());
insert into member values('id115', '115','이름115','115@gmail.com', now());
insert into member values('id116', '116','이름116','116@gmail.com', now());
insert into member values('id117', '117','이름117','117@gmail.com', now());
insert into member values('id118', '118','이름118','118@gmail.com', now());
insert into member values('id119', '119','이름119','119@gmail.com', now());
insert into member values('id120', '120','이름120','120@gmail.com', now());
insert into member values('id121', '121','이름121','121@gmail.com', now());
insert into member values('id122', '122','이름122','122@gmail.com', now());
insert into member values('id123', '123','이름123','123@gmail.com', now());
insert into member values('id124', '124','이름124','124@gmail.com', now());
insert into member values('id125', '125','이름125','125@gmail.com', now());
insert into member values('id126', '126','이름126','126@gmail.com', now());
insert into member values('id127', '127','이름127','127@gmail.com', now());
insert into member values('id128', '128','이름128','128@gmail.com', now());
insert into member values('id129', '129','이름129','129@gmail.com', now());
insert into member values('id130', '130','이름130','130@gmail.com', now());
insert into member values('id131', '131','이름131','131@gmail.com', now());
insert into member values('id132', '132','이름132','132@gmail.com', now());
insert into member values('id133', '133','이름133','133@gmail.com', now());
insert into member values('id134', '134','이름134','134@gmail.com', now());
insert into member values('id135', '135','이름135','135@gmail.com', now());
insert into member values('id136', '136','이름136','136@gmail.com', now());
insert into member values('id137', '137','이름137','137@gmail.com', now());
insert into member values('id138', '138','이름138','138@gmail.com', now());
insert into member values('id139', '139','이름139','139@gmail.com', now());
insert into member values('id140', '140','이름140','140@gmail.com', now());
insert into member values('id141', '141','이름141','141@gmail.com', now());
insert into member values('id142', '142','이름142','142@gmail.com', now());
insert into member values('id143', '143','이름143','143@gmail.com', now());
insert into member values('id144', '144','이름144','144@gmail.com', now());
insert into member values('id145', '145','이름145','145@gmail.com', now());
insert into member values('id146', '146','이름146','146@gmail.com', now());
insert into member values('id147', '147','이름147','147@gmail.com', now());
insert into member values('id148', '148','이름148','148@gmail.com', now());
insert into member values('id149', '149','이름149','149@gmail.com', now());
insert into member values('id150', '150','이름150','150@gmail.com', now());
insert into member values('id151', '151','이름151','151@gmail.com', now());
insert into member values('id152', '152','이름152','152@gmail.com', now());
insert into member values('id153', '153','이름153','153@gmail.com', now());
insert into member values('id154', '154','이름154','154@gmail.com', now());
insert into member values('id155', '155','이름155','155@gmail.com', now());
insert into member values('id156', '156','이름156','156@gmail.com', now());
insert into member values('id157', '157','이름157','157@gmail.com', now());
insert into member values('id158', '158','이름158','158@gmail.com', now());
insert into member values('id159', '159','이름159','159@gmail.com', now());
insert into member values('id160', '160','이름160','160@gmail.com', now());
insert into member values('id161', '161','이름161','161@gmail.com', now());
insert into member values('id162', '162','이름162','162@gmail.com', now());
insert into member values('id163', '163','이름163','163@gmail.com', now());
insert into member values('id164', '164','이름164','164@gmail.com', now());
insert into member values('id165', '165','이름165','165@gmail.com', now());
insert into member values('id166', '166','이름166','166@gmail.com', now());
insert into member values('id167', '167','이름167','167@gmail.com', now());
insert into member values('id168', '168','이름168','168@gmail.com', now());
insert into member values('id169', '169','이름169','169@gmail.com', now());
insert into member values('id170', '170','이름170','170@gmail.com', now());
insert into member values('id171', '171','이름171','171@gmail.com', now());
insert into member values('id172', '172','이름172','172@gmail.com', now());
insert into member values('id173', '173','이름173','173@gmail.com', now());
insert into member values('id174', '174','이름174','174@gmail.com', now());
insert into member values('id175', '175','이름175','175@gmail.com', now());
insert into member values('id176', '176','이름176','176@gmail.com', now());
insert into member values('id177', '177','이름177','177@gmail.com', now());
insert into member values('id178', '178','이름178','178@gmail.com', now());
insert into member values('id179', '179','이름179','179@gmail.com', now());
insert into member values('id180', '180','이름180','180@gmail.com', now());
insert into member values('id181', '181','이름181','181@gmail.com', now());
insert into member values('id182', '182','이름182','182@gmail.com', now());
insert into member values('id183', '183','이름183','183@gmail.com', now());
insert into member values('id184', '184','이름184','184@gmail.com', now());
insert into member values('id185', '185','이름185','185@gmail.com', now());
insert into member values('id186', '186','이름186','186@gmail.com', now());
insert into member values('id187', '187','이름187','187@gmail.com', now());
insert into member values('id188', '188','이름188','188@gmail.com', now());
insert into member values('id189', '189','이름189','189@gmail.com', now());
insert into member values('id190', '190','이름190','190@gmail.com', now());
insert into member values('id191', '191','이름191','191@gmail.com', now());
insert into member values('id192', '192','이름192','192@gmail.com', now());
insert into member values('id193', '193','이름193','193@gmail.com', now());
insert into member values('id194', '194','이름194','194@gmail.com', now());
insert into member values('id195', '195','이름195','195@gmail.com', now());
insert into member values('id196', '196','이름196','196@gmail.com', now());
insert into member values('id197', '197','이름197','197@gmail.com', now());
insert into member values('id198', '198','이름198','198@gmail.com', now());
insert into member values('id199', '199','이름199','199@gmail.com', now());
insert into member values('id200', '200','이름200','200@gmail.com', now());
insert into member values('id201', '201','이름201','201@gmail.com', now());
insert into member values('id202', '202','이름202','202@gmail.com', now());
insert into member values('id203', '203','이름203','203@gmail.com', now());
insert into member values('id204', '204','이름204','204@gmail.com', now());
insert into member values('id205', '205','이름205','205@gmail.com', now());
insert into member values('id206', '206','이름206','206@gmail.com', now());
insert into member values('id207', '207','이름207','207@gmail.com', now());
insert into member values('id208', '208','이름208','208@gmail.com', now());
insert into member values('id209', '209','이름209','209@gmail.com', now());
insert into member values('id210', '210','이름210','210@gmail.com', now());
insert into member values('id211', '211','이름211','211@gmail.com', now());
insert into member values('id212', '212','이름212','212@gmail.com', now());
insert into member values('id213', '213','이름213','213@gmail.com', now());
insert into member values('id214', '214','이름214','214@gmail.com', now());
insert into member values('id215', '215','이름215','215@gmail.com', now());
insert into member values('id216', '216','이름216','216@gmail.com', now());
insert into member values('id217', '217','이름217','217@gmail.com', now());
insert into member values('id218', '218','이름218','218@gmail.com', now());
insert into member values('id219', '219','이름219','219@gmail.com', now());
insert into member values('id220', '220','이름220','220@gmail.com', now());
insert into member values('id221', '221','이름221','221@gmail.com', now());
insert into member values('id222', '222','이름222','222@gmail.com', now());
insert into member values('id223', '223','이름223','223@gmail.com', now());
insert into member values('id224', '224','이름224','224@gmail.com', now());
insert into member values('id225', '225','이름225','225@gmail.com', now());
insert into member values('id226', '226','이름226','226@gmail.com', now());
insert into member values('id227', '227','이름227','227@gmail.com', now());
insert into member values('id228', '228','이름228','228@gmail.com', now());
insert into member values('id229', '229','이름229','229@gmail.com', now());
insert into member values('id230', '230','이름230','230@gmail.com', now());
insert into member values('id231', '231','이름231','231@gmail.com', now());
insert into member values('id232', '232','이름232','232@gmail.com', now());
insert into member values('id233', '233','이름233','233@gmail.com', now());
insert into member values('id234', '234','이름234','234@gmail.com', now());
insert into member values('id235', '235','이름235','235@gmail.com', now());
insert into member values('id236', '236','이름236','236@gmail.com', now());
insert into member values('id237', '237','이름237','237@gmail.com', now());
insert into member values('id238', '238','이름238','238@gmail.com', now());
insert into member values('id239', '239','이름239','239@gmail.com', now());
insert into member values('id240', '240','이름240','240@gmail.com', now());
insert into member values('id241', '241','이름241','241@gmail.com', now());
insert into member values('id242', '242','이름242','242@gmail.com', now());
insert into member values('id243', '243','이름243','243@gmail.com', now());
insert into member values('id244', '244','이름244','244@gmail.com', now());
insert into member values('id245', '245','이름245','245@gmail.com', now());
insert into member values('id246', '246','이름246','246@gmail.com', now());
insert into member values('id247', '247','이름247','247@gmail.com', now());
insert into member values('id248', '248','이름248','248@gmail.com', now());
insert into member values('id249', '249','이름249','249@gmail.com', now());
insert into member values('id250', '250','이름250','250@gmail.com', now());
insert into member values('id251', '251','이름251','251@gmail.com', now());
insert into member values('id252', '252','이름252','252@gmail.com', now());
insert into member values('id253', '253','이름253','253@gmail.com', now());
insert into member values('id254', '254','이름254','254@gmail.com', now());
insert into member values('id255', '255','이름255','255@gmail.com', now());
insert into member values('id256', '256','이름256','256@gmail.com', now());
insert into member values('id257', '257','이름257','257@gmail.com', now());
insert into member values('id258', '258','이름258','258@gmail.com', now());
insert into member values('id259', '259','이름259','259@gmail.com', now());
insert into member values('id260', '260','이름260','260@gmail.com', now());
insert into member values('id261', '261','이름261','261@gmail.com', now());
insert into member values('id262', '262','이름262','262@gmail.com', now());
insert into member values('id263', '263','이름263','263@gmail.com', now());
insert into member values('id264', '264','이름264','264@gmail.com', now());
insert into member values('id265', '265','이름265','265@gmail.com', now());
insert into member values('id266', '266','이름266','266@gmail.com', now());
insert into member values('id267', '267','이름267','267@gmail.com', now());
insert into member values('id268', '268','이름268','268@gmail.com', now());
insert into member values('id269', '269','이름269','269@gmail.com', now());
insert into member values('id270', '270','이름270','270@gmail.com', now());
insert into member values('id271', '271','이름271','271@gmail.com', now());
insert into member values('id272', '272','이름272','272@gmail.com', now());
insert into member values('id273', '273','이름273','273@gmail.com', now());
insert into member values('id274', '274','이름274','274@gmail.com', now());
insert into member values('id275', '275','이름275','275@gmail.com', now());
insert into member values('id276', '276','이름276','276@gmail.com', now());
insert into member values('id277', '277','이름277','277@gmail.com', now());
insert into member values('id278', '278','이름278','278@gmail.com', now());
insert into member values('id279', '279','이름279','279@gmail.com', now());
insert into member values('id280', '280','이름280','280@gmail.com', now());
insert into member values('id281', '281','이름281','281@gmail.com', now());
insert into member values('id282', '282','이름282','282@gmail.com', now());
insert into member values('id283', '283','이름283','283@gmail.com', now());
insert into member values('id284', '284','이름284','284@gmail.com', now());
insert into member values('id285', '285','이름285','285@gmail.com', now());
insert into member values('id286', '286','이름286','286@gmail.com', now());
insert into member values('id287', '287','이름287','287@gmail.com', now());
insert into member values('id288', '288','이름288','288@gmail.com', now());
insert into member values('id289', '289','이름289','289@gmail.com', now());
insert into member values('id290', '290','이름290','290@gmail.com', now());
insert into member values('id291', '291','이름291','291@gmail.com', now());
insert into member values('id292', '292','이름292','292@gmail.com', now());
insert into member values('id293', '293','이름293','293@gmail.com', now());
insert into member values('id294', '294','이름294','294@gmail.com', now());
insert into member values('id295', '295','이름295','295@gmail.com', now());
insert into member values('id296', '296','이름296','296@gmail.com', now());
insert into member values('id297', '297','이름297','297@gmail.com', now());
insert into member values('id298', '298','이름298','298@gmail.com', now());
insert into member values('id299', '299','이름299','299@gmail.com', now());
insert into member values('id300', '300','이름300','300@gmail.com', now());
insert into member values('id301', '301','이름301','301@gmail.com', now());
insert into member values('id302', '302','이름302','302@gmail.com', now());
insert into member values('id303', '303','이름303','303@gmail.com', now());
insert into member values('id304', '304','이름304','304@gmail.com', now());
insert into member values('id305', '305','이름305','305@gmail.com', now());
insert into member values('id306', '306','이름306','306@gmail.com', now());
insert into member values('id307', '307','이름307','307@gmail.com', now());
insert into member values('id308', '308','이름308','308@gmail.com', now());
insert into member values('id309', '309','이름309','309@gmail.com', now());
insert into member values('id310', '310','이름310','310@gmail.com', now());
insert into member values('id311', '311','이름311','311@gmail.com', now());
insert into member values('id312', '312','이름312','312@gmail.com', now());
insert into member values('id313', '313','이름313','313@gmail.com', now());
insert into member values('id314', '314','이름314','314@gmail.com', now());
insert into member values('id315', '315','이름315','315@gmail.com', now());
insert into member values('id316', '316','이름316','316@gmail.com', now());
insert into member values('id317', '317','이름317','317@gmail.com', now());
insert into member values('id318', '318','이름318','318@gmail.com', now());
insert into member values('id319', '319','이름319','319@gmail.com', now());
insert into member values('id320', '320','이름320','320@gmail.com', now());
insert into member values('id321', '321','이름321','321@gmail.com', now());
insert into member values('id322', '322','이름322','322@gmail.com', now());
insert into member values('id323', '323','이름323','323@gmail.com', now());
insert into member values('id324', '324','이름324','324@gmail.com', now());
insert into member values('id325', '325','이름325','325@gmail.com', now());
insert into member values('id326', '326','이름326','326@gmail.com', now());
insert into member values('id327', '327','이름327','327@gmail.com', now());
insert into member values('id328', '328','이름328','328@gmail.com', now());
insert into member values('id329', '329','이름329','329@gmail.com', now());
insert into member values('id330', '330','이름330','330@gmail.com', now());
insert into member values('id331', '331','이름331','331@gmail.com', now());
insert into member values('id332', '332','이름332','332@gmail.com', now());
insert into member values('id333', '333','이름333','333@gmail.com', now());
insert into member values('id334', '334','이름334','334@gmail.com', now());
insert into member values('id335', '335','이름335','335@gmail.com', now());
insert into member values('id336', '336','이름336','336@gmail.com', now());
insert into member values('id337', '337','이름337','337@gmail.com', now());
insert into member values('id338', '338','이름338','338@gmail.com', now());
insert into member values('id339', '339','이름339','339@gmail.com', now());
insert into member values('id340', '340','이름340','340@gmail.com', now());
insert into member values('id341', '341','이름341','341@gmail.com', now());
insert into member values('id342', '342','이름342','342@gmail.com', now());
insert into member values('id343', '343','이름343','343@gmail.com', now());
insert into member values('id344', '344','이름344','344@gmail.com', now());
insert into member values('id345', '345','이름345','345@gmail.com', now());
insert into member values('id346', '346','이름346','346@gmail.com', now());
insert into member values('id347', '347','이름347','347@gmail.com', now());
insert into member values('id348', '348','이름348','348@gmail.com', now());
insert into member values('id349', '349','이름349','349@gmail.com', now());
insert into member values('id350', '350','이름350','350@gmail.com', now());
insert into member values('id351', '351','이름351','351@gmail.com', now());
insert into member values('id352', '352','이름352','352@gmail.com', now());
insert into member values('id353', '353','이름353','353@gmail.com', now());
insert into member values('id354', '354','이름354','354@gmail.com', now());
insert into member values('id355', '355','이름355','355@gmail.com', now());
insert into member values('id356', '356','이름356','356@gmail.com', now());
insert into member values('id357', '357','이름357','357@gmail.com', now());
insert into member values('id358', '358','이름358','358@gmail.com', now());
insert into member values('id359', '359','이름359','359@gmail.com', now());
insert into member values('id360', '360','이름360','360@gmail.com', now());
insert into member values('id361', '361','이름361','361@gmail.com', now());
insert into member values('id362', '362','이름362','362@gmail.com', now());
insert into member values('id363', '363','이름363','363@gmail.com', now());
insert into member values('id364', '364','이름364','364@gmail.com', now());
insert into member values('id365', '365','이름365','365@gmail.com', now());
insert into member values('id366', '366','이름366','366@gmail.com', now());
insert into member values('id367', '367','이름367','367@gmail.com', now());
insert into member values('id368', '368','이름368','368@gmail.com', now());
insert into member values('id369', '369','이름369','369@gmail.com', now());
insert into member values('id370', '370','이름370','370@gmail.com', now());
insert into member values('id371', '371','이름371','371@gmail.com', now());
insert into member values('id372', '372','이름372','372@gmail.com', now());
insert into member values('id373', '373','이름373','373@gmail.com', now());
insert into member values('id374', '374','이름374','374@gmail.com', now());
insert into member values('id375', '375','이름375','375@gmail.com', now());
insert into member values('id376', '376','이름376','376@gmail.com', now());
insert into member values('id377', '377','이름377','377@gmail.com', now());
insert into member values('id378', '378','이름378','378@gmail.com', now());
insert into member values('id379', '379','이름379','379@gmail.com', now());
insert into member values('id380', '380','이름380','380@gmail.com', now());
insert into member values('id381', '381','이름381','381@gmail.com', now());
insert into member values('id382', '382','이름382','382@gmail.com', now());
insert into member values('id383', '383','이름383','383@gmail.com', now());
insert into member values('id384', '384','이름384','384@gmail.com', now());
insert into member values('id385', '385','이름385','385@gmail.com', now());
insert into member values('id386', '386','이름386','386@gmail.com', now());
insert into member values('id387', '387','이름387','387@gmail.com', now());
insert into member values('id388', '388','이름388','388@gmail.com', now());
insert into member values('id389', '389','이름389','389@gmail.com', now());
insert into member values('id390', '390','이름390','390@gmail.com', now());
insert into member values('id391', '391','이름391','391@gmail.com', now());
insert into member values('id392', '392','이름392','392@gmail.com', now());
insert into member values('id393', '393','이름393','393@gmail.com', now());
insert into member values('id394', '394','이름394','394@gmail.com', now());
insert into member values('id395', '395','이름395','395@gmail.com', now());
insert into member values('id396', '396','이름396','396@gmail.com', now());
insert into member values('id397', '397','이름397','397@gmail.com', now());
insert into member values('id398', '398','이름398','398@gmail.com', now());
insert into member values('id399', '399','이름399','399@gmail.com', now());
insert into member values('id400', '400','이름400','400@gmail.com', now());
insert into member values('id401', '401','이름401','401@gmail.com', now());
insert into member values('id402', '402','이름402','402@gmail.com', now());
insert into member values('id403', '403','이름403','403@gmail.com', now());
insert into member values('id404', '404','이름404','404@gmail.com', now());
insert into member values('id405', '405','이름405','405@gmail.com', now());
insert into member values('id406', '406','이름406','406@gmail.com', now());
insert into member values('id407', '407','이름407','407@gmail.com', now());
insert into member values('id408', '408','이름408','408@gmail.com', now());
insert into member values('id409', '409','이름409','409@gmail.com', now());
insert into member values('id410', '410','이름410','410@gmail.com', now());
insert into member values('id411', '411','이름411','411@gmail.com', now());
insert into member values('id412', '412','이름412','412@gmail.com', now());
insert into member values('id413', '413','이름413','413@gmail.com', now());
insert into member values('id414', '414','이름414','414@gmail.com', now());
insert into member values('id415', '415','이름415','415@gmail.com', now());
insert into member values('id416', '416','이름416','416@gmail.com', now());
insert into member values('id417', '417','이름417','417@gmail.com', now());
insert into member values('id418', '418','이름418','418@gmail.com', now());
insert into member values('id419', '419','이름419','419@gmail.com', now());
insert into member values('id420', '420','이름420','420@gmail.com', now());
insert into member values('id421', '421','이름421','421@gmail.com', now());
insert into member values('id422', '422','이름422','422@gmail.com', now());
insert into member values('id423', '423','이름423','423@gmail.com', now());
insert into member values('id424', '424','이름424','424@gmail.com', now());
insert into member values('id425', '425','이름425','425@gmail.com', now());
insert into member values('id426', '426','이름426','426@gmail.com', now());
insert into member values('id427', '427','이름427','427@gmail.com', now());
insert into member values('id428', '428','이름428','428@gmail.com', now());
insert into member values('id429', '429','이름429','429@gmail.com', now());
insert into member values('id430', '430','이름430','430@gmail.com', now());
insert into member values('id431', '431','이름431','431@gmail.com', now());
insert into member values('id432', '432','이름432','432@gmail.com', now());
insert into member values('id433', '433','이름433','433@gmail.com', now());
insert into member values('id434', '434','이름434','434@gmail.com', now());
insert into member values('id435', '435','이름435','435@gmail.com', now());
insert into member values('id436', '436','이름436','436@gmail.com', now());
insert into member values('id437', '437','이름437','437@gmail.com', now());
insert into member values('id438', '438','이름438','438@gmail.com', now());
insert into member values('id439', '439','이름439','439@gmail.com', now());
insert into member values('id440', '440','이름440','440@gmail.com', now());
insert into member values('id441', '441','이름441','441@gmail.com', now());
insert into member values('id442', '442','이름442','442@gmail.com', now());
insert into member values('id443', '443','이름443','443@gmail.com', now());
insert into member values('id444', '444','이름444','444@gmail.com', now());
insert into member values('id445', '445','이름445','445@gmail.com', now());
insert into member values('id446', '446','이름446','446@gmail.com', now());
insert into member values('id447', '447','이름447','447@gmail.com', now());
insert into member values('id448', '448','이름448','448@gmail.com', now());
insert into member values('id449', '449','이름449','449@gmail.com', now());
insert into member values('id450', '450','이름450','450@gmail.com', now());
insert into member values('id451', '451','이름451','451@gmail.com', now());
insert into member values('id452', '452','이름452','452@gmail.com', now());
insert into member values('id453', '453','이름453','453@gmail.com', now());
insert into member values('id454', '454','이름454','454@gmail.com', now());
insert into member values('id455', '455','이름455','455@gmail.com', now());
insert into member values('id456', '456','이름456','456@gmail.com', now());
insert into member values('id457', '457','이름457','457@gmail.com', now());
insert into member values('id458', '458','이름458','458@gmail.com', now());
insert into member values('id459', '459','이름459','459@gmail.com', now());
insert into member values('id460', '460','이름460','460@gmail.com', now());
insert into member values('id461', '461','이름461','461@gmail.com', now());
insert into member values('id462', '462','이름462','462@gmail.com', now());
insert into member values('id463', '463','이름463','463@gmail.com', now());
insert into member values('id464', '464','이름464','464@gmail.com', now());
insert into member values('id465', '465','이름465','465@gmail.com', now());
insert into member values('id466', '466','이름466','466@gmail.com', now());
insert into member values('id467', '467','이름467','467@gmail.com', now());
insert into member values('id468', '468','이름468','468@gmail.com', now());
insert into member values('id469', '469','이름469','469@gmail.com', now());
insert into member values('id470', '470','이름470','470@gmail.com', now());
insert into member values('id471', '471','이름471','471@gmail.com', now());
insert into member values('id472', '472','이름472','472@gmail.com', now());
insert into member values('id473', '473','이름473','473@gmail.com', now());
insert into member values('id474', '474','이름474','474@gmail.com', now());
insert into member values('id475', '475','이름475','475@gmail.com', now());
insert into member values('id476', '476','이름476','476@gmail.com', now());
insert into member values('id477', '477','이름477','477@gmail.com', now());
insert into member values('id478', '478','이름478','478@gmail.com', now());
insert into member values('id479', '479','이름479','479@gmail.com', now());
insert into member values('id480', '480','이름480','480@gmail.com', now());
insert into member values('id481', '481','이름481','481@gmail.com', now());
insert into member values('id482', '482','이름482','482@gmail.com', now());
insert into member values('id483', '483','이름483','483@gmail.com', now());
insert into member values('id484', '484','이름484','484@gmail.com', now());
insert into member values('id485', '485','이름485','485@gmail.com', now());
insert into member values('id486', '486','이름486','486@gmail.com', now());
insert into member values('id487', '487','이름487','487@gmail.com', now());
insert into member values('id488', '488','이름488','488@gmail.com', now());
insert into member values('id489', '489','이름489','489@gmail.com', now());
insert into member values('id490', '490','이름490','490@gmail.com', now());
insert into member values('id491', '491','이름491','491@gmail.com', now());
insert into member values('id492', '492','이름492','492@gmail.com', now());
insert into member values('id493', '493','이름493','493@gmail.com', now());
insert into member values('id494', '494','이름494','494@gmail.com', now());
insert into member values('id495', '495','이름495','495@gmail.com', now());
insert into member values('id496', '496','이름496','496@gmail.com', now());
insert into member values('id497', '497','이름497','497@gmail.com', now());
insert into member values('id498', '498','이름498','498@gmail.com', now());
insert into member values('id499', '499','이름499','499@gmail.com', now());
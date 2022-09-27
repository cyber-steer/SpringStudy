USE springdb;
DROP TABLE board;
CREATE TABLE BOARD(
 BCODE INT AUTO_INCREMENT PRIMARY KEY,
 SUBJECT VARCHAR(100),
 CONTENT TEXT,
 WRITER VARCHAR(50),
 REGDATE DATE
); COMMIT;
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕', '반가워요', 'gildong', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕2', '반가워요2', 'gildong2', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕3', '반가워요3', 'gildong3', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕4', '반가워요4', 'gildong4', SYSDATE()); COMMIT;
SELECT *
FROM board; SHOW DATABASES;
SELECT BCODE, SUBJECT, CONTENT, WRITER, REGDATE
FROM board;
SELECT *
FROM board
WHERE bcode = 1;


SELECT COUNT('bcode') FROM board;

SELECT * FROM board LIMIT 110,10;

INSERT INTO board(subject, content, writer, regdate) VALUES('안녕0', '반가워요0', 'gildong0', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕1', '반가워요1', 'gildong1', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕2', '반가워요2', 'gildong2', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕3', '반가워요3', 'gildong3', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕4', '반가워요4', 'gildong4', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕5', '반가워요5', 'gildong5', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕6', '반가워요6', 'gildong6', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕7', '반가워요7', 'gildong7', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕8', '반가워요8', 'gildong8', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕9', '반가워요9', 'gildong9', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕10', '반가워요10', 'gildong10', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕11', '반가워요11', 'gildong11', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕12', '반가워요12', 'gildong12', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕13', '반가워요13', 'gildong13', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕14', '반가워요14', 'gildong14', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕15', '반가워요15', 'gildong15', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕16', '반가워요16', 'gildong16', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕17', '반가워요17', 'gildong17', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕18', '반가워요18', 'gildong18', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕19', '반가워요19', 'gildong19', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕20', '반가워요20', 'gildong20', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕21', '반가워요21', 'gildong21', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕22', '반가워요22', 'gildong22', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕23', '반가워요23', 'gildong23', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕24', '반가워요24', 'gildong24', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕25', '반가워요25', 'gildong25', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕26', '반가워요26', 'gildong26', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕27', '반가워요27', 'gildong27', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕28', '반가워요28', 'gildong28', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕29', '반가워요29', 'gildong29', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕30', '반가워요30', 'gildong30', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕31', '반가워요31', 'gildong31', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕32', '반가워요32', 'gildong32', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕33', '반가워요33', 'gildong33', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕34', '반가워요34', 'gildong34', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕35', '반가워요35', 'gildong35', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕36', '반가워요36', 'gildong36', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕37', '반가워요37', 'gildong37', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕38', '반가워요38', 'gildong38', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕39', '반가워요39', 'gildong39', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕40', '반가워요40', 'gildong40', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕41', '반가워요41', 'gildong41', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕42', '반가워요42', 'gildong42', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕43', '반가워요43', 'gildong43', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕44', '반가워요44', 'gildong44', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕45', '반가워요45', 'gildong45', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕46', '반가워요46', 'gildong46', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕47', '반가워요47', 'gildong47', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕48', '반가워요48', 'gildong48', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕49', '반가워요49', 'gildong49', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕50', '반가워요50', 'gildong50', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕51', '반가워요51', 'gildong51', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕52', '반가워요52', 'gildong52', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕53', '반가워요53', 'gildong53', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕54', '반가워요54', 'gildong54', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕55', '반가워요55', 'gildong55', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕56', '반가워요56', 'gildong56', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕57', '반가워요57', 'gildong57', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕58', '반가워요58', 'gildong58', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕59', '반가워요59', 'gildong59', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕60', '반가워요60', 'gildong60', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕61', '반가워요61', 'gildong61', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕62', '반가워요62', 'gildong62', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕63', '반가워요63', 'gildong63', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕64', '반가워요64', 'gildong64', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕65', '반가워요65', 'gildong65', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕66', '반가워요66', 'gildong66', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕67', '반가워요67', 'gildong67', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕68', '반가워요68', 'gildong68', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕69', '반가워요69', 'gildong69', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕70', '반가워요70', 'gildong70', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕71', '반가워요71', 'gildong71', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕72', '반가워요72', 'gildong72', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕73', '반가워요73', 'gildong73', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕74', '반가워요74', 'gildong74', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕75', '반가워요75', 'gildong75', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕76', '반가워요76', 'gildong76', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕77', '반가워요77', 'gildong77', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕78', '반가워요78', 'gildong78', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕79', '반가워요79', 'gildong79', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕80', '반가워요80', 'gildong80', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕81', '반가워요81', 'gildong81', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕82', '반가워요82', 'gildong82', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕83', '반가워요83', 'gildong83', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕84', '반가워요84', 'gildong84', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕85', '반가워요85', 'gildong85', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕86', '반가워요86', 'gildong86', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕87', '반가워요87', 'gildong87', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕88', '반가워요88', 'gildong88', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕89', '반가워요89', 'gildong89', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕90', '반가워요90', 'gildong90', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕91', '반가워요91', 'gildong91', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕92', '반가워요92', 'gildong92', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕93', '반가워요93', 'gildong93', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕94', '반가워요94', 'gildong94', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕95', '반가워요95', 'gildong95', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕96', '반가워요96', 'gildong96', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕97', '반가워요97', 'gildong97', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕98', '반가워요98', 'gildong98', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕99', '반가워요99', 'gildong99', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕100', '반가워요100', 'gildong100', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕101', '반가워요101', 'gildong101', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕102', '반가워요102', 'gildong102', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕103', '반가워요103', 'gildong103', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕104', '반가워요104', 'gildong104', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕105', '반가워요105', 'gildong105', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕106', '반가워요106', 'gildong106', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕107', '반가워요107', 'gildong107', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕108', '반가워요108', 'gildong108', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕109', '반가워요109', 'gildong109', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕110', '반가워요110', 'gildong110', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕111', '반가워요111', 'gildong111', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕112', '반가워요112', 'gildong112', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕113', '반가워요113', 'gildong113', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕114', '반가워요114', 'gildong114', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕115', '반가워요115', 'gildong115', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕116', '반가워요116', 'gildong116', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕117', '반가워요117', 'gildong117', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕118', '반가워요118', 'gildong118', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕119', '반가워요119', 'gildong119', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕120', '반가워요120', 'gildong120', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕121', '반가워요121', 'gildong121', SYSDATE());
INSERT INTO board(subject, content, writer, regdate) VALUES('안녕122', '반가워요122', 'gildong122', SYSDATE());

COMMIT;
select * FROM board;
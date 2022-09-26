USE springdb;
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


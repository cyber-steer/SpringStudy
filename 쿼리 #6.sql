
USE springdb;
CREATE TABLE board2(
	bcode INT AUTO_INCREMENT PRIMARY KEY,
	subject VARCHAR(100),
	content TEXT,
	writer VARCHAR(50),
	regdate DATE,
	filename VARCHAR(100)
);

CREATE TABLE comments(
	num INT AUTO_INCREMENT PRIMARY KEY, 
	bcode INT,
	ccode INT,
	content VARCHAR(100),
	regdate DATE,
	FOREIGN KEY(bcode) REFERENCES board1(bcode)
);

CREATE TABLE boardji(
    BCODE INT AUTO_INCREMENT PRIMARY KEY,
    SUBJECT VARCHAR(100),
    CONTENT TEXT,
    WRITER VARCHAR(50),
    REGDATE DATE,
    filename VARCHAR(100)
);

SELECT * FROM comments;
SELECT * FROM board1;
DROP TABLE board2;
DROP TABLE comments;
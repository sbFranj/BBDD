DROP TABLE FABRICANTE CASCADE CONSTRAINT;
DROP TABLE PRODUCTO CASCADE CONSTRAINT;

CREATE TABLE FABRICANTE
(
	COD NUMBER(10),
	NOMBRE VARCHAR2(100),
CONSTRAINT PK_FABRIBANTE PRIMARY KEY (COD)
);

CREATE TABLE PRODUCTO 
(
	COD NUMBER(10),
	NOMBRE VARCHAR2(100),
	PRECIO NUMBER(5,2),
	COD_FABRICANTE NUMBER(10) NOT NULL,
CONSTRAINT PK_PRODUCTO PRIMARY KEY (COD),
CONSTRAINT FK_PRODUCTO FOREIGN KEY (COD_FABRICANTE) REFERENCES FABRICANTE(COD)
);

INSERT INTO FABRICANTE VALUES(1,'Asus');
INSERT INTO FABRICANTE VALUES(2,'Lenovo');
INSERT INTO FABRICANTE VALUES(3,'Hewlett-Packard');
INSERT INTO FABRICANTE VALUES(4,'Samsung');
INSERT INTO FABRICANTE VALUES(5,'Seagate');
INSERT INTO FABRICANTE VALUES(6,'Crucial');
INSERT INTO FABRICANTE VALUES(7,'Gigabyte');
INSERT INTO FABRICANTE VALUES(8,'Huawei');
INSERT INTO FABRICANTE VALUES(9,'Xiaomi');
INSERT INTO FABRICANTE VALUES (10,NULL);
INSERT INTO FABRICANTE VALUES (11, NULL);
INSERT INTO PRODUCTO VALUES (1, 'Disco duro SATA3 1TB', 86.99, 5);
INSERT INTO PRODUCTO VALUES (2, 'Memoria RAM DDR4 8GB', 120, 6);
INSERT INTO PRODUCTO VALUES (3, 'Disco SSD 1 TB', 150.99, 4);
INSERT INTO PRODUCTO VALUES (4, 'GeForce GTX 1050Ti', 185, 7);
INSERT INTO PRODUCTO VALUES (5, 'GeForce GTX 1080 Xtreme', 755, 6);
INSERT INTO PRODUCTO VALUES (6, 'Monitor 24 LED Full HD', 202, 1);
INSERT INTO PRODUCTO VALUES (7, 'Monitor 27 LED Full HD', 245.99, 1);
INSERT INTO PRODUCTO VALUES (8, 'Portátil Yoga 520', 559, 2);
INSERT INTO PRODUCTO VALUES (9, 'Portátil Ideapd 320', 444, 2);
INSERT INTO PRODUCTO VALUES (10, 'Impresora HP Deskjet 3720', 59.99, 3);
INSERT INTO PRODUCTO VALUES (11, 'Impresora HP laserjec Pro m26nw', 180, 3);

INSERT INTO FABRICANTE VALUES(12,'Oppo');

UPDATE FABRICANTE SET NOMBRE='Benq' WHERE COD=11;

INSERT INTO PRODUCTO VALUES (12, 'Oppo reno 12', 180, 12);

INSERT INTO PRODUCTO (COD,COD_FABRICANTE) VALUES (13,12);
UPDATE PRODUCTO SET NOMBRE='Oppo reno 11', PRECIO=150, COD_FABRICANTE=12 WHERE COD=13;

DELETE FROM PRODUCTO WHERE COD=6;
DELETE FROM PRODUCTO WHERE COD=7;
DELETE FROM FABRICANTE WHERE COD=1;

DELETE FROM FABRICANTE WHERE COD=9;

DELETE FROM PRODUCTO WHERE COD=8;
DELETE FROM PRODUCTO WHERE COD=9;
UPDATE FABRICANTE SET COD=20 WHERE NOMBRE='Lenovo';
INSERT INTO PRODUCTO VALUES (8, 'Portátil Yoga 520', 559, 20);
INSERT INTO PRODUCTO VALUES (9, 'Portátil Ideapd 320', 444, 20);

UPDATE FABRICANTE SET COD=30 WHERE NOMBRE='Huawei';

UPDATE PRODUCTO SET PRECIO=(PRECIO+5);

DELETE FROM PRODUCTO WHERE ((NOMBRE LIKE 'Impresora%') AND (PRECIO<200));


















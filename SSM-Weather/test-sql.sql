CREATE TABLE wetther_district(
id INT PRIMARY KEY AUTO_INCREMENT,
NAME VARCHAR(50) NOT NULL
);

INSERT INTO wetther_district VALUES(DEFAULT,'东城区');
INSERT INTO wetther_district VALUES(DEFAULT,'南城区');
INSERT INTO wetther_district VALUES(DEFAULT,'西城区');
INSERT INTO wetther_district VALUES(DEFAULT,'北城区');
INSERT INTO wetther_district VALUES(DEFAULT,'向阳区');

SELECT * FROM wetther_district;


CREATE TABLE wetther_air_index(
id INT PRIMARY KEY AUTO_INCREMENT,
districtid INT NOT NULL,
monitorTime DATETIME NOT NULL,
pm10 INT NOT NULL,
pm25 INT NOT NULL,
monitorStation VARCHAR(50) NOT NULL,
lastModifyTime DATETIME NOT NULL
);


INSERT INTO wetther_air_index VALUES(DEFAULT,1,NOW(),10,20,'东胡同监测站',NOW());
INSERT INTO wetther_air_index VALUES(DEFAULT,1,NOW(),20,50,'东胡同监测站',NOW());
INSERT INTO wetther_air_index VALUES(DEFAULT,1,NOW(),30,60,'东胡同监测站',NOW());
INSERT INTO wetther_air_index VALUES(DEFAULT,1,NOW(),40,70,'东胡同监测站',NOW());
INSERT INTO wetther_air_index VALUES(DEFAULT,1,NOW(),50,80,'东胡同监测站',NOW());

INSERT INTO wetther_air_index VALUES(DEFAULT,2,NOW(),10,20,'南胡同监测站',NOW());
INSERT INTO wetther_air_index VALUES(DEFAULT,2,NOW(),20,50,'南胡同监测站',NOW());
INSERT INTO wetther_air_index VALUES(DEFAULT,2,NOW(),30,60,'南胡同监测站',NOW());


INSERT INTO wetther_air_index VALUES(DEFAULT,3,NOW(),10,20,'西胡同监测站',NOW());
INSERT INTO wetther_air_index VALUES(DEFAULT,3,NOW(),20,50,'西胡同监测站',NOW());
INSERT INTO wetther_air_index VALUES(DEFAULT,3,NOW(),30,60,'西胡同监测站',NOW());


INSERT INTO wetther_air_index VALUES(DEFAULT,4,NOW(),10,20,'北胡同监测站',NOW());
INSERT INTO wetther_air_index VALUES(DEFAULT,4,NOW(),20,50,'北胡同监测站',NOW());

INSERT INTO wetther_air_index VALUES(DEFAULT,5,NOW(),10,20,'向阳胡同监测站',NOW());
INSERT INTO wetther_air_index VALUES(DEFAULT,5,NOW(),20,50,'向阳同监测站',NOW());
INSERT INTO wetther_air_index VALUES(DEFAULT,5,NOW(),30,60,'向阳同监测站',NOW());


SELECT * FROM wetther_air_index





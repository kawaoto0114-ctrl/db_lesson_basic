Q1
CREATE TABLE departments (
department_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
created_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

Q2
ALTER TABLE people ADD department_id INT UNSIGNED AFTER email ;

Q3
INSERT INTO departments (name)
VALUES
('営業'),
('開発'),
('経理'),
('人事'),
('情報システム');

INSERT INTO people (name,department_id)
VALUES
('加藤やすひろ',1),
('石川しゅうへい',1),
('前田せいじ',1),
('村上まさゆき',2),
('白井けんじ',2),
('柳沢たろう',2),
('片山とおる',2),
('原田しんいちろう',3),
('足立たけし',4),
('本田りゅういち',5);

INSERT INTO reports (person_id,content)
VALUES
(16,'オンラインを減らして得意先に会う'),
(15,'トレランシューズを新調する'),
(14,'大晦日じゃなくても大掃除する'),
(13,'タキシードを着てみる'),
(12,'ホテルみたいなオムレツをマスターする'),
(11,'単独で海外旅行へ行く'),
(10,'お掃除ロボットを導入する'),
(9,'平日の昼間に映画を観る'),
(8,'ワールドカップをスタジアムで観戦する'),

Q4
UPDATE people SET department_id = 1 WHERE age < 30;
UPDATE people SET department_id = 4 WHERE age > 30;
UPDATE people SET department_id = 5 WHERE person_id = 6;

Q5
SELECT * FROM people ORDER BY age DESC;

Q6
peopleテーブルのdepartment_idが1のレコード一覧を、
created_atが若い順で並べ替えし、
name,email,ageカラムを表示する

Q7
SELECT name FROM people WHERE age BETWEEN 20 AND 29 AND gender = 2 OR age BETWEEN 40 AND 49 AND gender = 1;

Q8
SELECT * FROM people WHERE department_id = 1 ORDER BY age;

Q9
SELECT AVG(age) AS average_age FROM people WHERE department_id = 2;

Q10
SELECT p.name, p.department_id, r.content FROM people p RIGHT JOIN reports r USING (person_id);

Q11
SELECT p.name FROM people p LEFT JOIN reports r USING (person_id) WHERE r.content IS NULL;

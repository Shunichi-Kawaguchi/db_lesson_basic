db_lesson.sql

Q1
CREATE TABLE departments (
  department_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(20) NOT NULL,
  created_id TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
);

Q2
ALTER TABLE people ADD COLUMN department_id INT UNSIGNED NULL AFTER email;

Q3
INSERT INTO departments (name)
VALUES
('営業'),
('開発'),
('経理'),
('人事'),
('情報システム');

INSERT INTO people (name,department_id,age,gender)
VALUES
('阿井上夫',1,45,1),
('垣久家子',1,35,2),
('佐志嵩山祖',1,28,2),
('立津テト',2,21,2),
('名似音乃',2,37,2),
('羽日夫経歩',2,24,1),
('麻弥夢芽母',2,57,2),
('埜湯世',3,42,1),
('ラーリ・ルーレロ',4,33,1),
('和円',5,21,1);

INSERT INTO reports (person_id, content)
VALUES
(7,'あ行で名前を作成しました'),
(8,'か行で名前を作成しました'),
(9,'さ行で名前を作成しました'),
(10,'た行で名前を作成しました'),
(11,'な行で名前を作成しました'),
(12,'は行で名前を作成しました'),
(13,'ま行で名前を作成しました'),
(14,'や行で名前を作成しました'),
(15,'ら行で名前を作成しました'),
(27,'idをそろえようと思ったら消しすぎて番号が飛びました。後悔');

Q4
UPDATE people SET department_id = 1 WHERE person_id = 1;
UPDATE people SET department_id = 2 WHERE person_id = 2;
UPDATE people SET department_id = 3 WHERE person_id = 3;
UPDATE people SET department_id = 4 WHERE person_id = 4;
UPDATE people SET department_id = 5 WHERE person_id = 6;

Q5
SELECT name,age,gender
FROM people
WHERE gender = 1
ORDER BY age DESC;

Q6
peopleテーブルのdepartment_idが1のレコードでカラム名がname,email,ageを取得して
それをcreated_atの順に並べて結果を表示する

Q7
SELECT name FROM people WHERE gender = '2' AND age BETWEEN 20 AND 29
UNION
SELECT name FROM people WHERE gender = '1' AND age BETWEEN 40 AND 49;

Q8
SELECT * FROM people WHERE department_id = 1 AND age;
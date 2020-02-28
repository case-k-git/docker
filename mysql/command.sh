$ docker image build -t example/mysql-data:latest .

$ docker container run -d --name mysql-data example/mysql-data:latest

docker container run -d --rm --name mysql \
 -e "MYSQL_ALLOW_EMPTY_PASSWORD=yes" \
 -e "MYSQL_DATABASE=volume_test" \
 -e "MYSQL_USER=example" \
 -e "MYSQL_PASSWORD=example" \
 --volumes-from mysql-data \
 mysql:5.7

 CREATE TABLE user(
     id int PRIMARY KEY AUTO_INCREMENT,
     name VARCHAR(255)
 ) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

 INSERT  INTO  user (name) VALUES ('gihyo'), ('docker'), ('Solomon Hykes');

 docker container stop mysql

docker container stop mysql;

SELECT * from user;

 mysql> select * from user;
+----+---------------+
| id | name          |
+----+---------------+
|  1 | gihyo         |
|  2 | docker        |
|  3 | Solomon Hykes |
+----+---------------+
3 rows in set (0.00 sec)
コンテナを削除されてもデータが保持されていることを確認
CREATE TABLE pessoa(
    id INT NOT NULL PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(20), NOT NULL,
    nascimento DATE
)

INSERT INTO pessoa(nome nascimento) VALUES("Leonardo", "2001-08-28"); /*adiciona um obj com nome e nascimento passado por mim, o ID é auto incrementado*/
INSERT INTO pessoa(nome nascimento) VALUES("Joao", "2008-03-08");
INSERT INTO pessoa(nome nascimento) VALUES("Paulo", "1999-11-14");

UPDATE pessoa FROM nome="Pedro" WHERE id=3;
DELETE FROM pessoa WHERE id=5
SELECT * FROM pessoa ORDER BY nome;
SELECT * FROM pessoa ORDER BY nome DESC; /*ordena os dados de forma decrescente*/
SELECT * FROM pessoa ORDER BY nome ASC; /*ordena os dados de forma crescente*/


UPDATE pessoa SET genero="M" WHERE id=3;/*add genero*/
UPDATE pessoa SET genero="M" WHERE id=4;
UPDATE pessoa SET genero="M" WHERE id=6;
SELECT COUNT(id), genero FROM pessoa GROUP BY genero;/*conta quantos generos tem dentro da table pessoa*/


/*______________________________________________________________________________________________*/
/*NOVA TABELA:*/

INSERT INTO videos (author, title, likes, dislikes) VALUES('Maria', 'CSS', 10, 2);
INSERT INTO videos (author, title, likes, dislikes) VALUES('Paulo', 'HTML', 30, 3);
INSERT INTO videos (author, title, likes, dislikes) VALUES('Maria', 'JavaScript', 25, 5);
INSERT INTO videos (author, title, likes, dislikes) VALUES('Paulo', 'Python', 40, 10);
INSERT INTO videos (author, title, likes, dislikes) VALUES('Paulo', 'Python', 30, 5);


CREATE TABLE `dio_mysql`.`author` (`id_author` INT NOT NULL AUTO_INCREMENT , `name` VARCHAR(30) NOT NULL , `born` DATE NOT NULL , PRIMARY KEY (`id_author`)) ENGINE = InnoDB;
INSERT INTO author(name, born) VALUES('Maria', '1999-08-21');
INSERT INTO author(name, born) VALUES('Paulo', '2001-05-23');
INSERT INTO author(name, born) VALUES('João', '1984-01-06');
INSERT INTO author(name, born) VALUES('Sergio', '2002-04-20');

UPDATE videos SET author=3 WHERE id_video=1;
UPDATE videos SET author=3 WHERE id_video=2;
UPDATE videos SET author=3 WHERE id_video=3;
UPDATE videos SET author=1 WHERE id_video=4;
UPDATE videos SET author=2 WHERE id_video=5;

SELECT * FROM videos JOIN author ON videos.fk_author = author.id_author;


/*Criei uma table SEO*/
CREATE TABLE `dio_mysql`.`seo` (`id_seo` INT NOT NULL AUTO_INCREMENT , `category` VARCHAR(30) NOT NULL , PRIMARY KEY (`id_seo`)) ENGINE = InnoDB;

INSERT INTO videos(fk_author, title, likes, dislikes) VALUES(2,'PHP', 15, 3);

INSERT INTO seo(category) VALUES('front-end');
INSERT INTO seo(category) VALUES('back-end');

ALTER TABLE `videos` ADD `fk_seo` INT NOT NULL AFTER `title`;

UPDATE videos SET fk_seo=1 WHERE id_video=1;
UPDATE videos SET fk_seo=1 WHERE id_video=2;
UPDATE videos SET fk_seo=1 WHERE id_video=3;
UPDATE videos SET fk_seo=2 WHERE id_video=4;
UPDATE videos SET fk_seo=2 WHERE id_video=5;
UPDATE videos SET fk_seo=2 WHERE id_video=6;

ALTER TABLE `videos` ADD CONSTRAINT `fk_seo` FOREIGN KEY (`fk_seo`) REFERENCES `seo`(`id_seo`) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE `dio_mysql`.`playlist` (`id_playlist` INT NOT NULL AUTO_INCREMENT , `name_pl` VARCHAR(30) NOT NULL , PRIMARY KEY (`id_playlist`)) ENGINE = InnoDB;
INSERT INTO playlist(name_pl) VALUES('HTML + CSS');
INSERT INTO playlist(name_pl) VALUES('HTML + PHP + JS');
INSERT INTO playlist(name_pl) VALUES('PYTHON + PHP');

CREATE TABLE `dio_mysql`.`videos_playlist` (`id_vp` INT NOT NULL AUTO_INCREMENT , `fk_videos` INT NOT NULL , `fk_playlist` INT NOT NULL , PRIMARY KEY (`id_vp`)) ENGINE = InnoDB;
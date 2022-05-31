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
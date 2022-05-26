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

CREATE TABLE pessoas(
    id INT NOT NULL PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(20), NOT NULL,
    nascimento DATE
)

INSERT INTO pessoas(nome nascimento) VALUES("Leonardo", "2001-08-28")
INSERT INTO pessoas(nome nascimento) VALUES("Joao", "2008-03-08")
INSERT INTO pessoas(nome nascimento) VALUES("Paulo", "1999-11-14")
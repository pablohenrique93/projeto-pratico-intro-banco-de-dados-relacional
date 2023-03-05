--                                                                PROJETO FINAL PRÁTICO


--Criação do banco de dados “biblioteca_database”.

CREATE DATABASE biblioteca_database;

--Criação das tabelas “Autores” e “Livros”.

USE  biblioteca_database;
CREATE TABLE Autores (codautor INT, nome VARCHAR(255), nacionalidade VARCHAR(255));
CREATE TABLE Livros (codlivro INT, codautor INT, titulo VARCHAR(255), editora VARCHAR(255), edicao INT, numeropagina INT);

--Alimentação de ambas as tabelas.

USE  biblioteca_database;
INSERT INTO Livros (codlivro, codautor, titulo, editora, edicao, numeropagina) VALUES (2, 1, 'Assim Falou Zaratustra', 'Martin Claret', NULL, 325),
(3, 2, 'Ansiedade', 'Saraiva', NULL, 160),
(4, 3, 'No Seu Olhar', 'Arqueiro', NULL, 432),
(5, 4, 'A Hora da Estrela', 'Rocco', NULL, 224),
(6, 5, 'Fogo & Sangue', 'Suma', NULL, 664),
(7, 6, 'E Nao Sobrou Nenhum', 'Globo Livros', NULL, 400),
(8, 7, 'Harry Potter', 'Rocco', NULL, 3067),
(9, 8, 'Absolute Sandman', 'Panini', NULL, 616),
(10, 9, 'O Ultimo Reino', 'Record', NULL, 364),
(11, 10, 'Tartarugas Ate La Embaixo', 'Intrinseca', NULL, 256),
(12, 11, 'Os Irmaos Karamazov', 'Editora 34', NULL, 888),
(13, 12, '1984', 'Companhia das Letras', NULL, 416),
(14, 13, 'Nao Fale Com Estranhos', 'Arqueiro', NULL, 304),
(15, 14, 'Cem Anos de Solidao', 'Record', NULL, 448),
(16, 15, 'Homo Deus', 'Companhia das Letras', NULL, 448),
(17, 16, 'O Morro dos Ventos Uivantes', 'Classicos Zahar', NULL, 376),
(18, 17, 'Box Virginia Woolf', 'Nova Fronteira', NULL, 552),
(19, 18, 'Anne de Green Gables', 'Autentica', NULL, 320),
(20, 19, 'Selecao', 'Seguinte', NULL, 368),
(21, 20, 'Box Sherlock Holmes', 'HarperCollins', NULL, 1808);


USE  biblioteca_database;
INSERT INTO Autores (codautor, nome, nacionalidade) VALUES (1, 'Friedrich Nietzsche', 'Prussiana'),
(2, 'Augusto Cury', 'Brasileira'),
(3, 'Nicholas Sparks', 'Norte-Americana'),
(4, 'Clarice Lispector', 'Brasileira'),
(5, 'George R. R. Martin', 'Norte-Americana'),
(6, 'Agatha Christie', 'Britanica'),
(7, 'J.K. Rowling', 'Britanica'),
(8, 'Neil Gaiman', 'Britanica'),
(9, 'Bernard Cornwell', 'Britanica'),
(10, 'John Green', 'Norte-Americana'),
(11, 'Fiodor Dostoievski', 'Russa'),
(12, 'George Orwell', 'India Britanica'),
(13, 'Harlan Coben', 'Norte-Americana'),
(14, 'Gabriel Garcia Marquez', 'Colombiana'),
(15, 'Yuval Noah Harari', 'Israelense'),
(16, 'Emily Bronte', 'Britanica'),
(17, 'Virginia Woolf', 'Britanica'),
(18, 'Lucy Maus Montgomery', 'Canadiana'),
(19, 'Kiera Cass', 'Norte-Americana'),
(20, 'Arthur Conan Doyle', 'Escocesa');



---------------------------------- QUERIES -----------------------------------------



-- 1 

SELECT editora FROM Livros;

-- 2 

SELECT * FROM Livros ORDER BY titulo;

-- 3 

SELECT titulo, editora, edicao, codautor FROM Livros ORDER BY titulo;

-- 4 

SELECT editora FROM Livros ORDER BY editora ASC;

-- 5 

SELECT titulo, numeropagina FROM Livros WHERE numeropagina > 300;

-- 6 

SELECT titulo, numeropagina FROM Livros WHERE numeropagina BETWEEN 200 AND 300;

-- 7 

SELECT titulo FROM Livros WHERE titulo LIKE 'F%';

-- 8 

SELECT nome FROM Autores WHERE nome LIKE '%Araujo';

-- 9 

SELECT titulo FROM Livros WHERE titulo LIKE '%Informatica%';

-- 10 

SELECT COUNT(codautor) AS autores_cadastrados FROM Autores;

-- 11 

SELECT COUNT(codlivro) AS livros_existentes FROM Livros;

-- 12 

SELECT AVG(numeropagina) AS media_aritmetica_n_pg FROM Livros;

-- 13 

SELECT Livros.titulo, Autores.nome FROM Livros INNER JOIN Autores ON Livros.codautor = Autores.codautor;

-- 14 

SELECT titulo, numeropagina FROM Livros WHERE numeropagina = (SELECT MAX(numeropagina) FROM Livros);
























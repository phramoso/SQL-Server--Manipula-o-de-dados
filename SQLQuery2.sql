
--1 Buscar o nome e ano dos filmes
SELECT 
	Nome,
	Ano
FROM Filmes

--2 Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT nome, ano, Duracao
FROM filmes
ORDER BY ano ASC;

--3 Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
SELECT NOME,ano,Duracao
FROM Filmes
WHERE Nome = 'De Volta para o futuro';

--4 Buscar os filmes lan�ados em 1997
SELECT Nome,ano,duracao
FROM Filmes
WHERE ANO = 1997

--5  Buscar os filmes lan�ados AP�S o ano 2000
SELECT Nome,Ano,Duracao
FROM Filmes
where ano > 2000;

--6 Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT Nome,Ano,Duracao
FROM Filmes
WHERE Duracao > 100 AND duracao < 150
ORDER BY duracao ASC;

--7 Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT ano, COUNT(*) AS quantidade
FROM filmes
GROUP BY ano
ORDER BY quantidade DESC;

--8 Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome, Genero
FROM atores
WHERE Genero = 'M';

--9 Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

--10 Buscar o nome do filme e o g�nero

SELECT f.Nome AS NomeFilme, g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id;

--11 Buscar o nome do filme e o g�nero do tipo "Mist�rio"
SELECT f.Nome AS NomeFilme, g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mist�rio';


-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT f.Nome AS NomeFilme, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filmes f
JOIN ElencoFilme ef ON f.Id = ef.IdFilme
JOIN Atores a ON ef.IdAtor = a.Id;






select Nome, Ano from Filmes;

GO
select Nome, Ano from Filmes ORDER BY ANO ASC;

GO

Select Nome, Ano, Duracao from Filmes WHERE Nome LIKE '%De volta%'

GO

Select Nome, Ano, Duracao from Filmes WHERE ANO=1997;

GO
Select Nome, Ano, Duracao from Filmes WHERE ANO >= 2000;

GO
-- Duração do Filme
Select Nome, Ano, Duracao from Filmes WHERE Duracao BETWEEN 100 AND 150;


GO
-- Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
Select Ano, count(Ano) as Quantidade from Filmes Group By Ano;

GO
-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
Select Id, PrimeiroNome, UltimoNome, Genero from Atores

GO
-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
Select PrimeiroNome, UltimoNome, Genero from Atores WHERE Genero='F' ORDER BY PrimeiroNome;


-- 10 Buscar o nome do filme e o gênero
Select Filmes.Nome, Generos.Genero from FilmesGenero 
Inner Join Filmes ON FilmesGenero.Id = Filmes.Id
Inner Join Generos ON FilmesGenero.IdGenero = Generos.Id ORDER BY Nome ASC


-- 11 Buscar o nome do filme e o gênero do tipo "Mistério"
Select FIlmes.nome, Generos.Genero from FilmesGenero
Inner Join Generos On FilmesGenero.IdGenero = Generos.Id
Inner Join Filmes On FilmesGenero.IdFilme = Filmes.Id
Where Generos.Genero = 'Mistério'


GO
-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
Select Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel from ElencoFilme
Inner Join Filmes ON Filmes.Id = ElencoFilme.IdFilme
Inner join Atores On Atores.Id = ElencoFilme.IdAtor

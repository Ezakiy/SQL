--1
select Nome
from Arquivo inner join Suporte on Arquivo.Idsuporte = Suporte.IdSuporte
where Descricao = 'DVD'


--2
select COUNT(Nome) 
from Arquivo inner join Tipo on Arquivo.IdTipo = Tipo.IdTipo
where Descricao = 'Romance'


--3
select nome, descricao
from Arquivo inner join tipo on Arquivo.IdTipo = Tipo.IdTipo
where descricao = 'Policial'


--4
select count(Nome) 
from Pessoa

--5
select *
from arquivo inner join Suporte on Arquivo.IdSuporte = Suporte.IdSuporte  inner join tipo on arquivo.IdTipo = Tipo.IdTipo
where Suporte.Descricao = 'DVD' and tipo.Descricao = 'Terror'

--6
select Nome, idade 
from Pessoa inner join funcao on Pessoa.IdFuncao = Funcao.IdFuncao
where idade > 50 and Descricao = 'Balcão'


--7
select Nome, Ordenado	
from Pessoa inner join Funcao on Pessoa.IdFuncao = Funcao.IdFuncao

--8
select Nome
from Arquivo
where Nome ='%léguas%'

--9
select descricao
from Arquivo
where Descricao = 'Drama'
order by nome desc

--10
select AVG(Ordernado)
from Pessoa inner join Funcao on Pessoa.IdFuncao = Funcao.IdFuncao
where Funcao = 'Administração' or Funcao = 'Administracao'


--11
select nome, idade, ordenado
from Pessoa
where idade = ( select MIN(idade) from Pessoa)

--12
select AVG(ordenado)
from Pessoa
where idade between 20 and 30 

--13
select *
from Suporte
where descricao = 'tecnologia'

--14
select *
from Arquivo inner join Suporte on Arquivo.IdArquivo = Suporte.IdSuporte
order by Suporte

--15
select idade
from Pessoa inner join Funcao on Pessoa.IdFuncao = Funcao.IdFuncao
where idade > 60 and funcao = 'Administação'

--16
select nome, idade, Funcao
from Pessoa inner join Funcao on Pessoa.IdFuncao = Funcao.IdFuncao
where Ordenado >= (select AVG(Ordenado) from Pessoa)

--17
select AVG(ordenado)
from Pessoa
where idade between 20 and 30

--18
select *
from Pessoa inner join Suporte on Pessoa.IdSuporte = Suporte.IdSuporte inner join Tipo on Arquivo.IdTipo = Tipo.IdTipo
where Nome = '%jovem%' and Suporte.Descricao = 'DVD' and tipo.Descricao = 'policial' or tipo.Descricao = 'terror'
select *
from Pessoa

select Nome , Idade
from Pessoa
where Idade > 32

select Nome , Idade, Salario
from Pessoa
where Idade > 34 and Salario > 10000

select Nome, Idade
from Pessoa
where Nome LIKE 'Paulo%' 

select Id, Nome, Salario
from Pessoa
where Idade > 40

select Nome, Salario 
from Pessoa
where Idade between 20 and 40

select Nome, Salario 
from Pessoa
where Idade > 20 and Idade < 40

select Nome, Telefone
from Pessoa
where Telefone is not NULL

select Nome, Telefone
from Pessoa
where Telefone is  NULL

select Nome, Idade, Salario
from Pessoa
where Idade = 17 or Idade = 28 or Idade = 35 or Idade = 43

select Codigo, Local
FROM Postal
where Local = 'Lisboa'

select Codigo, Local
from Postal
where Local = 'Lisboa' or Local= 'Santarem' or Local = 'Porto'

select Codigo, Local
from Postal
where Local Not in ('Lisboa', 'Porto')

select Mensagem
from Mensagem
where Mensagem like '%Vendas%'

select Mensagem
from Mensagem
where Mensagem like 'F%'

select Nome, Salario
from Pessoa
order by Salario DESC

select Nome, Salario
from Pessoa
where Idade> 30 
order by Salario Desc

select Nome, Salario
from Pessoa
where Telefone is null and Idade > 30
order by Salario Desc

select Local
from Postal

select Distinct Local
from Postal

select Nome, Salario, Cod_Postal
From Pessoa
order by Cod_Postal, Salario desc

select Nome, Salario * 1.10
from Pessoa
order by Salario asc

select Idade + 15, Id
from Pessoa
order by Id asc

select Nome, Local
from Pessoa inner join Postal on Cod_Postal = Codigo

select Local, Nome
from Pessoa inner join Postal on Cod_Postal = Codigo
where Idade > 35

select Nome, Salario, Local
from Pessoa inner join Postal on COd_Postal = Codigo
WHERE Telefone is not null
order by Idade 

select Nome, Valor 
from Pessoa inner join Comissao on Pessoa.Id = Comissao.Id

select Nome, Valor 
from Pessoa inner join Comissao on Pessoa.Id = Comissao.Id
order by Nome, Valor desc



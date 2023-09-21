select MAX(Valor) as Valor
from Comissao

select MIN(valor) as Valor
from Comissao
where Valor > 30000

select  SUM(salario) as Total
from Pessoa  inner join Postal on Cod_Postal = Codigo
where Local = 'Lisboa'

select Count(valor) as Valor
from Pessoa inner join Comissao on Comissao.id = Pessoa.Id
where Nome Like 'Isabel%'

select SUM(valor) as Valor
from Pessoa inner join Comissao on Comissao.id = Pessoa.Id
where Nome Like 'Isabel%'

select AVG(Valor) as valor
from Comissao
where valor > 10000

select AVG(valor) as valor
from Comissao inner join (Pessoa inner join Postal on Cod_Postal = Codigo) on comissao.Id = pessoa.Id
where valor < 20000 and local = 'Tomar'

select SUM(Valor) as valor
from Comissao inner join Mensagem on Comissao.id_Msg = Mensagem.Id_Msg
where Mensagem = 'Vendas Extra'

select SUM(Valor) as Valor
from Comissao inner join Pessoa on Comissao.Id = Pessoa.Id
where Nome Like '%da%'

select COUNT(Nome) as Nome
from Pessoa inner join Postal on Cod_Postal = Codigo
where Local = 'Tomar'

Select Count(Nome) as Nome
from pessoa inner join Postal on Cod_Postal = Codigo 
where local not in ('Lisboa')

select AVG(salario) as salario
from Pessoa inner join Postal on Cod_Postal = Codigo
where local = 'lisboa'

select AVG(salario) as salario
from Pessoa inner join Postal on Cod_Postal = Codigo


select SUM(Valor) as Comissao, 0.23  as iva, sum (valor * 1.23) as comissao_com_iva 
from Comissao

select (valor * 1.02) - valor 
from Comissao

select AVG(idade) as idade 
from Pessoa

select AVG(idade) as idade
from pessoa inner join Postal on Cod_Postal = Codigo
where local = 'Lisboa'

select avg (idade) as idade
from Pessoa inner join(Comissao inner join Mensagem on Comissao.id_Msg = Mensagem.Id_Msg) on Pessoa.Id = Comissao.Id 
where Mensagem like 'fretes%'


select avg (idade) as idade
from Pessoa inner join(Comissao inner join Mensagem on Comissao.id_Msg = Mensagem.id_msg) on pessoa.Id = comissao.Id
where mensagem like '%vendas%'

select sum (valor) as Mensagem
from Comissao inner join Mensagem on Comissao.id_Msg = Mensagem.id_msg 
where Mensagem = 'Refeicoes' or Mensagem = 'Combustiveis' or Mensagem = 'Transportes'

select max (valor) as Mensagem
from Comissao inner join Mensagem on Comissao.id_Msg = Mensagem.Id_Msg 
where mensagem = 'telefonemas'

select count (valor) as Mensagem
from Comissao inner join Mensagem on Comissao.id_Msg = Mensagem.Id_Msg
where Mensagem = 'Ofertas'

select nome, Idade
from Pessoa
where idade	= ( select MIN (idade) from Pessoa)

select nome, Idade
from Pessoa
where idade	= ( select Max (idade) from Pessoa)

select MAX (idade) - 18 as idade
from Pessoa

select AVG(Salario) as Salario
from Pessoa
where Idade between 30 and 40

select AVG (Salario) as Salario
from Pessoa
where idade - 18 > 10 and idade - 18 < 15

select COUNT(Nome) as Nome
from Pessoa inner join Comissao on Pessoa.Id = Comissao.Id
where idade > 30





 
 






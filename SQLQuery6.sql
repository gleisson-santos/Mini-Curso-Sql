-- Selecione as top 5 lojas ativas com maior quantidade de funcionarios
--(apenas colunas de nome da loja, status e qtd de funcionarios)

select top 5
StoreName,
[Status],
EmployeeCount

from DimStore
where [Status] = 'On'
order by EmployeeCount desc
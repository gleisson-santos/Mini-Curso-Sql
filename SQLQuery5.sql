-- Order by e top
-- Exiba a tabela de produtos com (Nome do produto, marca e preço)


-- exiba apena os 10 produtos mais  baratos
select top 10
ProductName, 
BrandName,
UnitPrice
from DimProduct
-- Ordene do mais caro para o mais barato / asc =  decrescente e desc = decrescente
order by UnitPrice asc




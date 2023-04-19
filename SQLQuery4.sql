-- Quantos produtos vendemos na empresa?
select COUNT(*) from DimProduct

-- Qual o valor do produto mais caro?
 select max(UnitPrice) from DimProduct

-- Qual a media dos preços dos produtos?
select
round(AVG(UnitPrice),0)
from DimProduct

-- Quantas marcas temos na empresa?
select
count(distinct(BrandName))
from DimProduct


--Exiba as marcas da Empresa usando a função 'Group By'
select
BrandName, 
COUNT(productname) as 'Quantidade',
max(unitprice) as 'PrecoMax'
from DimProduct
group by BrandName

-- Exiba todas as marcas e todas as classes
select
brandname,
classname
from DimProduct
group by brandname, classname

-- Calcule quantos produtos tem em cada marca e em cada class

select
brandname,
classname,
COUNT(productname) as 'QtdProdutos'
from DimProduct
group by brandname, classname

-- Calcule a media de preço para cada marca e classe
select
brandname,
classname,
COUNT(productname) as 'QtdProdutos',
round(avg(unitprice), 2) as 'PrecoMedio'
from DimProduct
-- Filtrar apenas a classe economica
where ClassName='Economy'
group by brandname, classname

-- Qual a media de preços da classe economica
select
ClassName, 
round(avg(unitprice), 2) as 'PrecoMedio'
from DimProduct
where ClassName='Economy'
group by ClassName

-- Qual a media de preço da contoso da classe economica
select
brandname,
classname,
round(avg(unitprice), 2) as 'PrecoMedio'
from DimProduct
where ClassName='Economy' and BrandName='contoso'
group by brandname, classname

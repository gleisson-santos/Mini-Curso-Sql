SELECT
Productkey,
ProductName,
BrandName,
ClassName
FROM DimProduct 
--where ClassName = 'Deluxe' and BrandName = 'Contoso'
where (ClassName='Regular' or ClassName='Deluxe') and BrandName ='Contoso'
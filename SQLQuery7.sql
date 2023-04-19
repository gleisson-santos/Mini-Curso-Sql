-- Criar tabela de dimensão Produto
-- Mantendo ProductKey, ProductName, BrandName, UnitCost, UnitPrice, ProductSubcategoryName
-- ProductCategoryName

select
Produto.ProductKey,
Produto.ProductName,
Produto.BrandName,
Produto.UnitCost,
Subcategoria.ProductSubcategoryName,
Categoria.ProductCategoryName


from DimProduct Produto
left join DimProductSubcategory Subcategoria on Produto.ProductSubcategoryKey=Subcategoria.ProductSubcategoryKey
left join DimProductCategory Categoria on Subcategoria.ProductCategoryKey=Categoria.ProductCategoryKey
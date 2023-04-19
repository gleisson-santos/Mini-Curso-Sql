select 
Lojas.StoreKey,
Lojas.StoreName,
Lojas.StoreType,
lojas.[Status],
Geografia.RegionCountryName as 'Country',
Geografia.ContinentName as 'Continent'

from DimStore Lojas
left join DimGeography Geografia on Lojas.GeographyKey=Geografia.GeographyKey

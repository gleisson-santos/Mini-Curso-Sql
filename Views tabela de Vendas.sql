--Viwes tabela d evendas
Create View vwSales as

select
SalesKey,
convert(varchar(10), DateKey, 103)
StoreKey,
ProductKey,
CurrencyKey,
SalesQuantity,
ReturnAmount,
ReturnQuantity, 
DiscountAmount,

concat(convert(varchar(10), DateKey, 103), CurrencyKey) as 'DateCurrenceKey'

from FactSales
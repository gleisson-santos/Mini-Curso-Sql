-- Selecione as top 5 lojas ativas com maior quantidade de funcionarios
--(apenas colunas de nome da loja, status e qtd de funcionarios)

select top 5
StoreName,
[Status],
EmployeeCount

from DimStore
where [Status] = 'On'
order by EmployeeCount desc


-- Junte as tabelas FactExchangeRate e DimCurrency
-- Mantenha apenas as colunas: ExchangeRateKey, CurrencyKey, DateKey, AverageRate, CurrencyName
select
Cotacoes.ExchangeRateKey,
Cotacoes.CurrencyKey ,
convert(varchar(10),Cotacoes.DateKey,103) as DateKey,
Cotacoes.AverageRate,
Moeda.CurrencyName,

concat(CONVERT(varchar(10), Cotacoes.Datekey , 103), Cotacoes.CurrencyKey) as 'DateCurrencyKey'

from FactExchangeRate Cotacoes
left join DimCurrency Moeda on Cotacoes.CurrencyKey=Moeda.CurrencyKey



--

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
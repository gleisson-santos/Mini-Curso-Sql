select 
EmployeeKey,
CONCAT(FirstName, ' ', LastName) as 'Fullname',
Title,
REPLACE(REPLACE(Gender, 'M', 'Masculino'), 'F', 'Feminino') as 'Genero', 
DepartmentName
from DimEmployee
--Sempre que for usar criterio da mesma coluna utilizar o 'or'
where Gender='M'
and (Title='Sales Region Manager' or Title='Sales State Manager')
and (DepartmentName='Production' or DepartmentName='Marketing')
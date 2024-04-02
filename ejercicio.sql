--recuperar todos los datos clientes salesst.customer
--SELECT * FROM SalesLT.Customer;

--filtrado tituo, nombre, apellido sufijo
--SELECT Title, FirstName, MiddleName, LastName, Suffix
--FROM SalesLT.Customer;

--consulta con nombre cliente concatenado
--SELECT SalesPerson, Title + ', ' + FirstName AS NombreCliente, Phone
--FROM SalesLT.Customer;

--consulta concatenado caracter numero
--SELECT CAST(CustomerID AS varchar(5)) + ':' + CompanyName AS ID_Compania
--FROM SalesLT.Customer;

--coonsulta todos los registros de salesorderheader
--SELECT * FROM SalesLT.SalesOrderHeader;

--SELECT SalesOrderID, RevisionNumber, OrderDate
--FROM SalesLT.SalesOrderHeader;
--SELECT 'SO' + CONVERT(varchar(10), SalesOrderID ) +
--       '('+ CONVERT(varchar(5), RevisionNumber) + ')' AS OrdenRev,
--            CONVERT(nvarchar(30), OrderDate, 102) AS FechaANSI102
--FROM SalesLT.SalesOrderHeader;

--Recupere los nombres de contacto de los clientes con segundos nombres si los conoce:
--SELECT FirstName + ' ' + ISNULL(MiddleName + ' ', '') + LastName AS NombreCliente
--FROM SalesLT.Customer;

--Recuperar los datos de contacto principales:
--SELECT CustomerID, COALESCE(EmailAddress, Phone) AS PrimerContacto
--FROM SalesLT.Customer;

--Recuperar el estado del envío:
--SELECT SalesOrderID, OrderDate,
--     CASE
--         WHEN ShipDate IS NULL THEN 'esperando venta'
--         ELSE 'vendido'
--     END AS EstadoVenta
-- FROM SalesLT.SalesOrderHeader;


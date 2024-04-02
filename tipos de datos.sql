--tipos de datos

--consulta erronea, no se concatena un numero con texto
--SELECT ProductID + ': '+ Name AS NombreProducto
--FROM SalesLT.Product;

--forma correcta de ejecuar consulta entre dato numero y texto
--SELECT CAST(ProductID AS varchar(5)) + ': ' + Name AS NombreProducto
--FROM SalesLT.Product;

--ejecucion con convert exclusiva de sqlserver
--SELECT CONVERT(varchar(5), ProductID) + ': ' + Name AS NombreProducto
--FROM SalesLT.Product;

--formatos de fecha convert
--SELECT SellStartDate,
--   CONVERT(nvarchar(30), SellStartDate) AS FechaConvert,
--   CONVERT(nvarchar(30), SellStartDate, 126) AS ISO860FormatoFecha
--   FROM SalesLT.Product;

--convertir valores numericos
--SELECT Name, TRY_CAST(Size AS integer) AS TamanoNumero
--FROM SalesLT.Product;
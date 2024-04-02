--combinacion entre 2 tablas y lanza resultados de consulta on
--SELECT SalesLT.Product.Name AS NombreProducto, SalesLT.ProductCategory.Name AS Categoria, SalesLT.Product.ProductCategoryID AS Tabla1, SalesLT.ProductCategory.ProductCategoryID AS Tabla2 
--FROM SalesLT.Product
--INNER JOIN SalesLT.ProductCategory
--ON SalesLT.Product.ProductCategoryID = SalesLT.ProductCategory.ProductCategoryID

--lo mismo de arriba pero sin inner 
--SELECT SalesLT.Product.Name As NombreProd, SalesLT.ProductCategory.Name AS Categoria, SalesLT.Product.ProductCategoryID AS Tabla1, SalesLT.ProductCategory.ProductCategoryID AS Tabla2
--FROM SalesLT.Product
--JOIN SalesLT.ProductCategory
--     ON SalesLT.Product.ProductCategoryID = SalesLT.ProductCategory.ProductCategoryID;

-- combinacion de 3 tablas ordenado por 3 columnas
--SELECT oh.OrderDate, oh.SalesOrderNumber, p.Name As NombreProd, od.OrderQty, od.UnitPrice, od.LineTotal
--FROM SalesLT.SalesOrderHeader AS oh
--JOIN SalesLT.SalesOrderDetail AS od
--    ON od.SalesOrderID = oh.SalesOrderID
--JOIN SalesLT.Product AS p
--    ON od.ProductID = p.ProductID
--ORDER BY oh.OrderDate, oh.SalesOrderID, od.SalesOrderDetailID;

--combinacion estrerna a tabla costumer se conservan todas la coincidencias
--SELECT c.FirstName, c.LastName, oh.SalesOrderNumber, c.CustomerID AS TabC, oh.CustomerID AS TabOH  
--FROM SalesLT.Customer AS c
--LEFT OUTER JOIN SalesLT.SalesOrderHeader AS oh
--    ON c.CustomerID = oh.CustomerID
--ORDER BY c.CustomerID;

--sin clave outer, al usar l o r se determina una consulta externa 
--SELECT c.FirstName, c.LastName, oh.SalesOrderNumber, c.CustomerID AS TabC, oh.CustomerID AS TabOH
--FROM SalesLT.Customer AS c
--LEFT JOIN SalesLT.SalesOrderHeader AS oh
--    ON c.CustomerID = oh.CustomerID
--ORDER BY c.CustomerID;

--clientes salesordernumber cuando es null
--SELECT c.FirstName, c.LastName, oh.SalesOrderNumber, c.CustomerID AS TabC, oh.CustomerID AS TabOH
--FROM SalesLT.Customer AS c
--LEFT JOIN SalesLT.SalesOrderHeader AS oh
--    ON c.CustomerID = oh.CustomerID
--WHERE oh.SalesOrderNumber IS NULL 
--ORDER BY c.CustomerID;

--combinacion de 3 tablas left
--SELECT p.Name As NobreProd, oh.SalesOrderNumber, p.ProductID AS TabP, od.ProductID AS TabOD, oh.SalesOrderID AS TabOH
--FROM SalesLT.Product AS p
--LEFT JOIN SalesLT.SalesOrderDetail AS od
--    ON p.ProductID = od.ProductID
--LEFT JOIN SalesLT.SalesOrderHeader AS oh
--    ON od.SalesOrderID = oh.SalesOrderID
--ORDER BY p.ProductID;

--consulta inteerna y externa en uan consulta
--SELECT p.Name As NomProd, c.Name AS Categoria, oh.SalesOrderNumber, p.ProductID AS pProd, od.ProductID AS odProd, od.SalesOrderID AS odSalesOid, oh.SalesOrderID As ohSalesOid, p.ProductCategoryID AS pPCID, c.ProductCategoryID AS cPCID
--FROM SalesLT.Product AS p
--LEFT OUTER JOIN SalesLT.SalesOrderDetail AS od
--    ON p.ProductID = od.ProductID
--LEFT OUTER JOIN SalesLT.SalesOrderHeader AS oh
--    ON od.SalesOrderID = oh.SalesOrderID
--INNER JOIN SalesLT.ProductCategory AS c
--    ON p.ProductCategoryID = c.ProductCategoryID
--ORDER BY p.ProductID;

-- combinacion cruzada, combina todas las colunmas con la columna seleccionada
--SELECT p.Name, c.FirstName, c.LastName, c.EmailAddress
--FROM SalesLT.Product as p
--CROSS JOIN SalesLT.Customer as c;

--outounion combinacion de una misma instancia
--SELECT pcat.Name AS PCategoria, cat.Name AS SCategoria, cat.ParentProductCategoryID, pcat.ProductCategoryID
--FROM SalesLT.ProductCategory AS cat
--JOIN SalesLT.ProductCategory AS pcat
--    ON cat.ParentProductCategoryID = pcat.ProductCategoryID
--ORDER BY PCategoria, SCategoria;

--desafios

--SELECT c.CompanyName, oh.SalesOrderID, oh.TotalDue
--FROM SalesLT.Customer AS c
--JOIN SalesLT.SalesOrderHeader AS oh
--    ON oh.CustomerID = c.CustomerID;

--1.2
 --SELECT c.CompanyName,
 --       a.AddressLine1,
 --       ISNULL(a.AddressLine2, '') AS AddressLine2,
 --       a.City,
 --       a.StateProvince,
 --       a.PostalCode,
 --       a.CountryRegion,
 --       oh.SalesOrderID,
 --       oh.TotalDue
 --FROM SalesLT.Customer AS c
 --JOIN SalesLT.SalesOrderHeader AS oh
 --    ON oh.CustomerID = c.CustomerID
 --JOIN SalesLT.CustomerAddress AS ca
 --    ON c.CustomerID = ca.CustomerID
 --JOIN SalesLT.Address AS a
 --    ON ca.AddressID = a.AddressID
 --WHERE ca.AddressType = 'Main Office';

--2.1
 --SELECT c.CompanyName, c.FirstName, c.LastName,
 --       oh.SalesOrderID, oh.TotalDue
 --FROM SalesLT.Customer AS c
 --LEFT JOIN SalesLT.SalesOrderHeader AS oh
 --    ON c.CustomerID = oh.CustomerID
 --ORDER BY oh.SalesOrderID DESC;

 --2.2
 --SELECT c.CompanyName, c.FirstName, c.LastName, c.Phone
 --FROM SalesLT.Customer AS c
 --LEFT JOIN SalesLT.CustomerAddress AS ca
 --    ON c.CustomerID = ca.CustomerID
 --WHERE ca.AddressID IS NULL; 

 --3
 --SELECT pcat.Name AS ParentCategory, cat.Name AS SubCategory, prd.Name AS ProductName
 --FROM SalesLT.ProductCategory pcat
 --JOIN SalesLT.ProductCategory as cat
 --    ON pcat.ProductCategoryID = cat.ParentProductCategoryID
 --JOIN SalesLT.Product as prd
 --    ON prd.ProductCategoryID = cat.ProductCategoryID
 --ORDER BY ParentCategory, SubCategory, ProductName;

--da el precio maximo en que se vendio un producto
--SELECT MAX(UnitPrice) AS PrecMax
--FROM SalesLT.SalesOrderDetail;

--
--SELECT Name, ListPrice
--FROM SalesLT.Product
--WHERE ListPrice > 
--      (SELECT MAX(UnitPrice)
--       FROM SalesLT.SalesOrderDetail);

--
--SELECT DISTINCT ProductID, OrderQty
--FROM SalesLT.SalesOrderDetail
--WHERE OrderQty >=20;

--
--SELECT Name FROM SalesLT.Product
--WHERE ProductID IN
--    ( SELECT DISTINCT ProductID
--      FROM SalesLT.SalesOrderDetail
--      WHERE OrderQty >=20);

--igual que arriba pero con sentencia join
--SELECT DISTINCT Name
--FROM SalesLT.Product AS p
--JOIN SalesLT.SalesOrderDetail AS o
--     ON p.ProductID = o.ProductID
--WHERE OrderQty >= 20;

--
--ELECT od.SalesOrderID, od.ProductID, od.OrderQty
--FROM SalesLT.SalesOrderDetail AS od
--WHERE od.OrderQty =
--    (SELECT MAX(OrderQty)
--    FROM SalesLT.SalesOrderDetail AS d
--    WHERE od.ProductID = d.ProductID)
--ORDER BY od.ProductID;

--
--SELECT o.SalesOrderID, o.OrderDate,
--      (SELECT CompanyName
--       FROM SalesLT.Customer AS c
--       WHERE c.CustomerID = o.CustomerID) AS CompanyName      
--FROM SalesLT.SalesOrderHeader AS o
--ORDER BY o.SalesOrderID;


--desafios

 SELECT ProductID, Name, ListPrice
 FROM SalesLT.Product
 WHERE ListPrice >
     (SELECT AVG(UnitPrice)
      FROM SalesLT.SalesOrderDetail)
 ORDER BY ProductID;

  SELECT ProductID, Name, ListPrice
 FROM SalesLT.Product
 WHERE ProductID IN
     (SELECT ProductID
      FROM SalesLT.SalesOrderDetail
      WHERE UnitPrice < 100.00)
 AND ListPrice >= 100.00
 ORDER BY ProductID;

  SELECT p.ProductID, p.Name, p.StandardCost, p.ListPrice,
     (SELECT AVG(o.UnitPrice)
      FROM SalesLT.SalesOrderDetail AS o
      WHERE p.ProductID = o.ProductID) AS AvgSellingPrice
 FROM SalesLT.Product AS p
 ORDER BY p.ProductID;

SELECT p.ProductID, p.Name, p.StandardCost, p.ListPrice,
     (SELECT AVG(o.UnitPrice)
     FROM SalesLT.SalesOrderDetail AS o
     WHERE p.ProductID = o.ProductID) AS AvgSellingPrice
 FROM SalesLT.Product AS p
 WHERE StandardCost >
     (SELECT AVG(od.UnitPrice)
      FROM SalesLT.SalesOrderDetail AS od
      WHERE p.ProductID = od.ProductID)
 ORDER BY p.ProductID;

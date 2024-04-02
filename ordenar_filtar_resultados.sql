--devolver el Nombre y ListPrice de todos los productos
--SELECT Name, ListPrice
--FROM SalesLT.Product;

--agregar una cláusula ORDER BY que ordene los resultados por nombre, como se muestra aquí
--SELECT Name, ListPrice
--FROM SalesLT.Product
--ORDER BY Name;

--ordenar los resultados por ListPrice.
--SELECT Name, ListPrice
--FROM SalesLT.Product
--ORDER BY ListPrice;

--ordenar los resultados en orden descendente de ListPrice
--SELECT Name, ListPrice
--FROM SalesLT.Product
--ORDER BY ListPrice DESC;

--ordenar los resultados en orden descendente de ListPrice y, a continuación, en orden ascendente de Name.
--SELECT Name, ListPrice
--FROM SalesLT.Product
--ORDER BY ListPrice DESC, Name ASC;

--devolver el Nombre y ListPrice de 20 productos decendente
--SELECT TOP (20) Name, ListPrice
--FROM SalesLT.Product
--ORDER BY ListPrice DESC;

--parámetro WITH TIES
 --SELECT TOP (20) WITH TIES Name, ListPrice
 --FROM SalesLT.Product
 --ORDER BY ListPrice DESC;

--agregar el parámetro PERCENT contienen el 20% de los productos más caro
--SELECT TOP (20) PERCENT WITH TIES Name, ListPrice
--FROM SalesLT.Product
--ORDER BY ListPrice DESC;

--Ejecute la consulta y observe el efecto de los parámetros OFFSET y FETCH de la cláusula ORDER BY. Los resultados comienzan en la posición 0 (el comienzo del conjunto de resultados) e incluyen solo las siguientes 10 filas, esencialmente definiendo la primera página de resultados con 10 filas por página.
--SELECT Name, ListPrice
--FROM SalesLT.Product
--ORDER BY Name OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;

--
--SELECT Name, ListPrice
--FROM SalesLT.Product
--ORDER BY Name OFFSET 5 ROWS FETCH NEXT 20 ROWS ONLY;

--todos los registros de color
--SELECT Color 
--FROM SalesLT.Product;
--Los resultados deben ser los mismos que antes. El parámetro ALL es el comportamiento predeterminado
--SELECT ALL Color 
--FROM SalesLT.Product;

--Ejecute la consulta modificada y observe que los resultados incluyen una fila para cada valor de color único.
--SELECT DISTINCT Color 
--FROM SalesLT.Product;

--devuelve cada combinación única de color y tamaño.
 --SELECT DISTINCT Color, Size
 --FROM SalesLT.Product;

 --contienen el nombre, el color y el tamaño de cada producto con un valor ProductModelID de 6
 --SELECT Name, Color, Size, ProductModelID AS Modelo
 --FROM SalesLT.Product 
 --WHERE ProductModelID = 6 
 --ORDER BY Name;

--contienen todos los productos con un ProductModelID distinto de 6
--SELECT Name, Color, Size, ProductModelID
--FROM SalesLT.Product
--WHERE ProductModelID <> 6
--ORDER BY Name;

--contienen todos los productos con un ListPrice superior a 1000.00. 
--SELECT Name, ListPrice
--FROM SalesLT.Product
--WHERE ListPrice > 1000.00
--ORDER BY ListPrice;

--operador LIKE le permite hacer coincidir patrones de cadena. El carácter % del predicado es un comodín para uno o más caracteres, por lo que la consulta devuelve todas las filas donde el Nombre es Marco de carretera HL seguido de cualquier cadena.
--SELECT Name, ListPrice
--FROM SalesLT.Product
--WHERE Name LIKE 'HL Road Frame %';

--Revise los resultados. Esta vez, los resultados incluyen productos con un ProductNumber que coincide con patrones similares a FR-xNNx-NN (en el que x es una letra y N es un número). 
--SELECT Name, ListPrice, ProductNumber
--FROM SalesLT.Product
--WHERE ProductNumber LIKE 'FR-_[0-9][0-9]_-[0-9][0-9]';

--filtra valores que no son null en sellenddate 
--SELECT Name, ListPrice, SellEndDate
--FROM SalesLT.Product
--WHERE SellEndDate IS NOT NULL;

-- filtra entre fechas sellenddate
--SELECT Name, SellEndDate
--FROM SalesLT.Product
--WHERE SellEndDate BETWEEN '2006/1/1' AND '2006/12/31';

-- recupera los productos con un valor ProductCategoryID que está en una lista especificada.
--SELECT ProductCategoryID, Name, ListPrice
--FROM SalesLT.Product
--WHERE ProductCategoryID IN (5,6,7);

-- lo mismo de arriba se agrega una condicion donde dellenddate es null
--SELECT ProductCategoryID, Name, ListPrice, SellEndDate
--FROM SalesLT.Product
--WHERE ProductCategoryID IN (5,6,7) AND SellEndDate IS NULL;

-- operador or selecciona en rango de parametros
--SELECT Name, ProductCategoryID, ProductNumber
--FROM SalesLT.Product
--WHERE ProductNumber LIKE 'FR%' OR ProductCategoryID IN (5,6,7);

--desafios
--SELECT  DISTINCT City, StateProvince
--FROM SalesLT.Address
--ORDER BY City ASC;

--nombres del diez por ciento superior de los productos por peso.
--SELECT TOP (10) PERCENT WITH TIES Weight, Name 
--FROM SalesLT.Product
--ORDER BY Weight DESC;

--Recuperar datos de productos

--
--SELECT Name, Color, ProductModelID 
--FROM SalesLT.Product
--WHERE ProductModelID = 1;

 --SELECT ProductNumber, Name, Color
 --FROM SalesLT.Product
 --WHERE Color IN ('Black','Red','White') AND Size IN ('S','M');

 --
--SELECT ProductNumber, Name, ListPrice
--FROM SalesLT.Product
--WHERE ProductNumber LIKE 'BK-%';

--
--SELECT ProductNumber, Name, ListPrice
--FROM SalesLT.Product
--WHERE ProductNumber LIKE 'BK-[^R]%-[0-9][0-9]';
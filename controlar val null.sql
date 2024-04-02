--controlar valores null

--controla valores null a 0
--SELECT Name, ISNULL(TRY_CAST(Size AS Integer),0) AS TamanoNumero
--FROM SalesLT.Product;

--reemplazar valores null con ''
--SELECT ProductNumber,ISNULL(color, '') + ', ' + ISNULL(Size, '') AS ProducDetall
--FROM SalesLT.Product;

--reemplazar valores con nullif, de multi a null
--SELECT Name, NULLIF(Color, 'Multi') AS SimpleColor
--FROM SalesLT.Product;

--busca fecha no null de ultima fecha de venta y la inicial
--SELECT Name, COALESCE(SellEndDate, SellStartDate) AS EdoUltimaAct
--FROM SalesLT.Product;

--busca valores null para decir si esta disponible o no.
--SELECT Name,
--     CASE
--         WHEN SellEndDate IS NULL THEN 'Actualmente en Venta'
--         ELSE 'Sin Disponibilidad'
--     END AS EstadoVenta
--FROM SalesLT.Product;

--varios casos y si es null pone na
--SELECT Name,
--    CASE Size 
--        WHEN 'S' THEN 'Chico'
--        WHEN 'M' THEN 'Medio'
--        WHEN 'L' THEN 'Largo'
--        WHEN 'XL' THEN 'Extra-Largo'
--        ELSE ISNULL(Size, 'n/a')
--    END AS TamanoProducto
--FROM SalesLT.Product; 


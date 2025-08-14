-- Creating a View

CREATE VIEW HighValueProducts AS
SELECT
    p.ProductID,
    p.ProductName,
    p.UnitPrice,
    s.SupplierName,
    s.ContactName
FROM
    Products p
JOIN
    Suppliers s ON p.SupplierID = s.SupplierID
WHERE
    p.UnitPrice > 50;

-- Using the View
SELECT
    ProductName,
    SupplierName
FROM
    HighValueProducts
WHERE
    SupplierName = 'TechCorp';
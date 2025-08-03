INSERT INTO DimCliente (ClienteID, NomeCompleto, Genero, Email)
SELECT 
    c.CustomerID,
    p.FirstName + ' ' + p.LastName AS NomeCompleto,
    p.Gender,
    ea.EmailAddress
FROM Sales.Customer c
JOIN Person.Person p ON c.PersonID = p.BusinessEntityID
LEFT JOIN Person.EmailAddress ea ON p.BusinessEntityID = ea.BusinessEntityID;

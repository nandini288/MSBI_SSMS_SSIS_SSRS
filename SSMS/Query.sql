SELECT c.CustomerName, p.ProductName, sp.PersonName, s.StatesName, co.CountryName, f.CustomerAmount, f.SalesDate
FROM FactCustomer f
JOIN Customer c ON f.CustomerCode = c.CustomerCode
JOIN Product p ON f.ProductId = p.ProductId
JOIN SalesPerson sp ON f.PersonId = sp.PersonId
JOIN States s ON f.StatesId = s.StatesId
JOIN Country co ON f.CountryId = co.CountryId;

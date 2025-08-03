CREATE TABLE DW.FactSales (
    SalesKey INT IDENTITY(1,1) PRIMARY KEY,
    OrderDateKey INT,
    ProductKey INT,
    CustomerKey INT,
    TerritoryKey INT,
    OrderQuantity INT,
    UnitPrice DECIMAL(18,2),
    TotalRevenue AS (OrderQuantity * UnitPrice),
    ProductCost DECIMAL(18,2),
    GrossProfit AS ((OrderQuantity * UnitPrice) - (OrderQuantity * ProductCost)),
    FOREIGN KEY (OrderDateKey) REFERENCES DW.DimDate(DateKey),
    FOREIGN KEY (ProductKey) REFERENCES DW.DimProduct(ProductKey),
    FOREIGN KEY (CustomerKey) REFERENCES DW.DimCustomer(CustomerKey),
    FOREIGN KEY (TerritoryKey) REFERENCES DW.DimSalesTerritory(TerritoryKey)
);
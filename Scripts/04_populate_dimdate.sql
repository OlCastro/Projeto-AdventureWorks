DECLARE @StartDate DATE = '2010-01-01';
DECLARE @EndDate DATE = '2020-12-31';

WHILE @StartDate <= @EndDate
BEGIN
    INSERT INTO DW.DimDate (DateKey, FullDate, Year, Quarter, Month, MonthName, Day)
    VALUES (
        CONVERT(INT, FORMAT(@StartDate, 'yyyyMMdd')),
        @StartDate,
        YEAR(@StartDate),
        DATEPART(QUARTER, @StartDate),
        MONTH(@StartDate),
        DATENAME(MONTH, @StartDate),
        DAY(@StartDate)
    );

    SET @StartDate = DATEADD(DAY, 1, @StartDate);
END
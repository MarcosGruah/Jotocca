CREATE VIEW [dbo].[ProductWithSubcategory]
AS SELECT
    S.[Name] AS SubcategoryName,
    P.[Name] AS ProductName,
    P.[Description] AS ProductDescription,
    P.[Price] AS ProductPrice,
    P.[Quantity] AS ProductQuantity,
    P.[Image] AS ProductImage
FROM
    dbo.[Product] P
INNER JOIN
    dbo.[Subcategory] S ON S.[SubcategoryId] = P.[SubcategoryId]
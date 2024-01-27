CREATE VIEW [dbo].[CategoryWithSubcategory]
AS SELECT
    C.[Name] AS CategoryName,
    S.[Name] AS SubcategoryName
FROM
    dbo.Category C
INNER JOIN
    dbo.Subcategory S ON C.[CategoryId] = S.[CategoryId];
CREATE PROCEDURE [dbo].[spSubcategory_GetAll]
AS
BEGIN
	SELECT [SubcategoryId], [CategoryId], [Name], [Description], [CreatedDate], [ModifiedDate]
	FROM [dbo].[Subcategory];
END
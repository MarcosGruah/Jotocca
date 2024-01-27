CREATE PROCEDURE [dbo].[spProduct_GetAll]
AS
BEGIN
	SELECT [ProductId], [SubcategoryId], [Name], [Description], [Price], [Quantity], [Image], [CreatedDate], [ModifiedDate]
	FROM [dbo].[Product];
END
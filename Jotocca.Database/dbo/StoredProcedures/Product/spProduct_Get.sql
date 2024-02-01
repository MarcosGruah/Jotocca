CREATE PROCEDURE [dbo].[spProduct_Get]
	@ProductId NVARCHAR(50)
AS
BEGIN
	SELECT
		[ProductId],
		[SubcategoryId],
		[Name],
		[Description],
		[Price],
		[Quantity],
		[Image],
		[CreatedDate],
		[ModifiedDate]
	FROM
		[dbo].[Product]
	WHERE
		[ProductId] = @ProductId;
END
CREATE PROCEDURE [dbo].[spProduct_Delete]
	@ProductId NVARCHAR(50)
AS
BEGIN
	DELETE
	FROM
		[dbo].[Product]
	WHERE
		[ProductId] = @ProductId;
END
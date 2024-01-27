CREATE PROCEDURE [dbo].[spProduct_Delete]
	@Id NVARCHAR(50)
AS
BEGIN
	DELETE
	FROM [dbo].[Product]
	WHERE [ProductId] = @Id;
END
CREATE PROCEDURE [dbo].[spCategory_Delete]
	@Id NVARCHAR(50)
AS
BEGIN
	DELETE
	FROM [dbo].[Category]
	WHERE [CategoryId] = @Id;
END
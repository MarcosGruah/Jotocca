CREATE PROCEDURE [dbo].[spCategory_Update]
	@CategoryId NVARCHAR(50),
	@Name NVARCHAR(50),
	@Description NVARCHAR(200)
AS
BEGIN
	UPDATE
		[dbo].[Category]
	SET
		[Name] = @Name,
		[Description] = @Description,
		[ModifiedDate] = GETUTCDATE()
	WHERE
		[CategoryId] = @CategoryId;
END
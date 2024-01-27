CREATE PROCEDURE [dbo].[spSubcategory_Insert]
	@CategoryId NVARCHAR(50),
	@Name NVARCHAR(50),
	@Description NVARCHAR(200)
AS
BEGIN
	INSERT INTO [dbo].[Subcategory] ([CategoryId], [Name], [Description])
	VALUES (@CategoryId, @Name, @Description);
END
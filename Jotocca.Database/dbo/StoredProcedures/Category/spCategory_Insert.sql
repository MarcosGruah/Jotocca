CREATE PROCEDURE [dbo].[spCategory_Insert]
	@Name NVARCHAR(50),
	@Description NVARCHAR(200)
AS
BEGIN
	INSERT INTO [dbo].[Category] ([Name], [Description])
	VALUES (@Name, @Description);
END
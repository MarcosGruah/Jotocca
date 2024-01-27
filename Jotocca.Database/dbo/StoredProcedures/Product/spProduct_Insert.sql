CREATE PROCEDURE [dbo].[spProduct_Insert]
	@SubcategoryId NVARCHAR(50),
	@Name NVARCHAR(50),
	@Description NVARCHAR(200),
	@Price DECIMAL(18, 2),
	@Quantity INT,
	@Image NVARCHAR(200)
AS
BEGIN
	INSERT INTO [dbo].[Product] ([SubcategoryId], [Name], [Description], [Price], [Quantity], [Image])
	VALUES (@SubcategoryId, @Name, @Description, @Price, @Quantity, @Image);
END
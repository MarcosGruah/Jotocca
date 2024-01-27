CREATE PROCEDURE [dbo].[spProduct_Update]
	@Id NVARCHAR(50),
	@SubcategoryId NVARCHAR(50),
	@Name NVARCHAR(50),
	@Description NVARCHAR(200),
	@Price DECIMAL(18, 2),
	@Quantity INT,
	@Image NVARCHAR(200)
AS
BEGIN
	UPDATE
		[dbo].[Product]
	SET
		[SubcategoryId] = @SubcategoryId,
		[Name] = @Name,
		[Description] = @Description,
		[Price] = @Price,
		[Quantity] = @Quantity,
		[Image] = @Image,
		[ModifiedDate] = GETUTCDATE()
	WHERE
		[ProductId] = @Id;
END
CREATE PROCEDURE [dbo].[spSubcategory_Update]
	@Id NVARCHAR(50),
	@CategoryId NVARCHAR(50),
	@Name NVARCHAR(50),
	@Description NVARCHAR(200)
AS
BEGIN
	UPDATE
		[dbo].[Subcategory]
	SET
		[CategoryId] = @CategoryId,
		[Name] = @Name,
		[Description] = @Description,
		[ModifiedDate] = GETUTCDATE()
	WHERE
		[SubcategoryId] = @Id;
END
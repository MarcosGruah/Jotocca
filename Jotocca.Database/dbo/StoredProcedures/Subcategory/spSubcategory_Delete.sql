CREATE PROCEDURE [dbo].[spSubcategory_Delete]
	@SubcategoryId NVARCHAR(50)
AS
BEGIN
	DELETE
	FROM
		[dbo].[Subcategory]
	WHERE
		[SubcategoryId] = @SubcategoryId;
END
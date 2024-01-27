CREATE PROCEDURE [dbo].[spSubcategory_Delete]
	@Id NVARCHAR(50)
AS
BEGIN
	DELETE
	FROM
		[dbo].[Subcategory]
	WHERE
		[SubcategoryId] = @Id;
END
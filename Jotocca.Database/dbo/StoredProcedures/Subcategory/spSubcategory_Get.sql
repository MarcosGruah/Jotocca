CREATE PROCEDURE [dbo].[spSubcategory_Get]
	@SubcategoryId NVARCHAR(50)
AS
BEGIN
	SELECT
		[SubcategoryId],
		[CategoryId],
		[Name],
		[Description],
		[CreatedDate],
		[ModifiedDate]
	FROM
		[dbo].[Subcategory]
	WHERE
		[SubcategoryId] = @SubcategoryId;
END
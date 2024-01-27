CREATE PROCEDURE [dbo].[spSubcategory_Get]
	@Id NVARCHAR(50)
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
		[SubcategoryId] = @Id;
END
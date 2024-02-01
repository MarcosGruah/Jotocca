CREATE PROCEDURE [dbo].[spCategory_Get]
	@CategoryId NVARCHAR(50)
AS
BEGIN
	SELECT
		[CategoryId],
		[Name],
		[Description],
		[CreatedDate],
		[ModifiedDate]
	FROM
		[dbo].[Category]
	WHERE
		[CategoryId] = @CategoryId;
END
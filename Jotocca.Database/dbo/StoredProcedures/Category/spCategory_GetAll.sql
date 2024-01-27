CREATE PROCEDURE [dbo].[spCategory_GetAll]
AS
BEGIN
	SELECT
		[CategoryId],
		[Name],
		[Description],
		[CreatedDate],
		[ModifiedDate]
	FROM
		[dbo].[Category];
END
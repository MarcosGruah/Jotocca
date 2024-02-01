CREATE PROCEDURE [dbo].[spCategory_Delete]
	@CategoryId NVARCHAR(50)
AS
BEGIN
	DELETE
	FROM
		[dbo].[Category]
	WHERE
		[CategoryId] = @CategoryId;
END
CREATE PROCEDURE [dbo].[spCategory_Get]
	@Id NVARCHAR(50)
AS
BEGIN
	SELECT [CategoryId], [Name], [Description], [CreatedDate], [ModifiedDate]
	FROM [dbo].[Category]
	WHERE [CategoryId] = @Id;
END
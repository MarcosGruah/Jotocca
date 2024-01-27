CREATE PROCEDURE [dbo].[spUser_Get]
	@Id NVARCHAR(50)
AS
BEGIN
	SELECT [UserId], [Name], [CreatedDate], [ModifiedDate]
	FROM [dbo].[User]
	WHERE [UserId] = @Id;
END
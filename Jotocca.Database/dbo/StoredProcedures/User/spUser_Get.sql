CREATE PROCEDURE [dbo].[spUser_Get]
	@UserId NVARCHAR(50)
AS
BEGIN
	SELECT
		[UserId],
		[Name],
		[CreatedDate],
		[ModifiedDate]
	FROM
		[dbo].[User]
	WHERE
		[UserId] = @UserId;
END
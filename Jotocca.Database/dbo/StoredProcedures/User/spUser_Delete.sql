CREATE PROCEDURE [dbo].[spUser_Delete]
	@UserId NVARCHAR(50)
AS
BEGIN
	DELETE
	FROM
		[dbo].[User]
	WHERE
		[UserId] = @UserId;
END
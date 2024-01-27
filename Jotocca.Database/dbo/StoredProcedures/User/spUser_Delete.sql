CREATE PROCEDURE [dbo].[spUser_Delete]
	@Id NVARCHAR(50)
AS
BEGIN
	DELETE
	FROM
		[dbo].[User]
	WHERE
		[UserId] = @Id;
END
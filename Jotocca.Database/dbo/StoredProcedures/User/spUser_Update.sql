CREATE PROCEDURE [dbo].[spUser_Update]
	@Id NVARCHAR(50),
	@Name NVARCHAR(50)
AS
BEGIN
	UPDATE
		[dbo].[User]
	SET
		[Name] = @Name,
		[ModifiedDate] = GETUTCDATE()
	WHERE
		[UserId] = @Id;
END
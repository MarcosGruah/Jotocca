CREATE PROCEDURE [dbo].[spUser_Insert]
	@Name NVARCHAR(50)
AS
BEGIN
	INSERT INTO
		[dbo].[User]
			(
			[Name]
			)
	VALUES
			(
			@Name
			);
END
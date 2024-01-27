CREATE PROCEDURE [dbo].[spUser_Insert]
	@Id NVARCHAR(50),
	@Name NVARCHAR(50)
AS
BEGIN
	INSERT INTO [dbo].[User] ([UserId], [Name])
	VALUES (@Id, @Name);
END
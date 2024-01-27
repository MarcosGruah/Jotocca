CREATE PROCEDURE [dbo].[spUser_GetAll]
AS
BEGIN
	SELECT
		[UserId],
		[Name],
		[CreatedDate],
		[ModifiedDate]
	FROM
		[dbo].[User];
END
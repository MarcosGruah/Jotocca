IF NOT EXISTS (SELECT 1 FROM dbo.[User])
BEGIN
	INSERT INTO dbo.[User] ([Name])
	VALUES ('Emma Johnson');
	INSERT INTO dbo.[User] ([Name])
	VALUES ('Samuel Martinez');
	INSERT INTO dbo.[User] ([Name])
	VALUES ('Olivia Thompson');
	INSERT INTO dbo.[User] ([Name])
	VALUES ('Ethan Rodriguez');
	INSERT INTO dbo.[User] ([Name])
	VALUES ('Isabella Santos');
END
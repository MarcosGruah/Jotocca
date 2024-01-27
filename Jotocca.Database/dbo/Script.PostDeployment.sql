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

IF NOT EXISTS (SELECT 1 FROM dbo.[Category])
BEGIN
    INSERT INTO dbo.Category ([Name], [Description])
    VALUES('Motorcycles', 'New or used motorcycles');

    INSERT INTO dbo.Category ([Name], [Description])
    VALUES('Parts & Accessories', 'Engine parts, electronic components, and accessories');

    INSERT INTO dbo.Category ([Name], [Description])
    VALUES('Apparel & Gear', 'Fashionable clothing and protective gear for all occasions');
END
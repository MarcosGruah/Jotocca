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

IF NOT EXISTS (SELECT 1 FROM dbo.[Subcategory])
BEGIN
	DECLARE @MotorcyclesId UNIQUEIDENTIFIER = (SELECT [CategoryId] FROM dbo.Category WHERE [Name] = 'Motorcycles');
	DECLARE @PartsAndAccessoriesId UNIQUEIDENTIFIER = (SELECT [CategoryId] FROM dbo.Category WHERE [Name] = 'Parts & Accessories');
	DECLARE @ApparelAndGearId UNIQUEIDENTIFIER = (SELECT [CategoryId] FROM dbo.Category WHERE [Name] = 'Apparel & Gear');

	INSERT INTO dbo.[Subcategory] ([CategoryId], [Name], [Description])
	VALUES (@MotorcyclesId, 'Scooter', 'Compact and efficient urban commuting');

	INSERT INTO dbo.[Subcategory] ([CategoryId], [Name], [Description])
	VALUES (@MotorcyclesId, 'Street', 'Versatile for city and highway riding');

	INSERT INTO dbo.[Subcategory] ([CategoryId], [Name], [Description])
	VALUES (@MotorcyclesId, 'Trail', 'Designed for off-road and trail adventures');

	INSERT INTO dbo.[Subcategory] ([CategoryId], [Name], [Description])
	VALUES (@PartsAndAccessoriesId, 'Engine', 'Engine parts and components');

	INSERT INTO dbo.[Subcategory] ([CategoryId], [Name], [Description])
	VALUES (@PartsAndAccessoriesId, 'Electronics', 'Electronic components and accessories');

	INSERT INTO dbo.[Subcategory] ([CategoryId], [Name], [Description])
	VALUES (@PartsAndAccessoriesId, 'Accessories', 'Accessories for motorcycles');

	INSERT INTO dbo.[Subcategory] ([CategoryId], [Name], [Description])
	VALUES (@ApparelAndGearId, 'Casual', 'Casual clothing and accessories');

	INSERT INTO dbo.[Subcategory] ([CategoryId], [Name], [Description])
	VALUES (@ApparelAndGearId, 'Helmets', 'Protective helmets');

	INSERT INTO dbo.[Subcategory] ([CategoryId], [Name], [Description])
	VALUES (@ApparelAndGearId, 'Gloves', 'Protective gloves');

	INSERT INTO dbo.[Subcategory] ([CategoryId], [Name], [Description])
	VALUES (@ApparelAndGearId, 'Boots', 'Protective boots');
END
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

IF NOT EXISTS (SELECT 1 FROM dbo.[Product])
BEGIN
	DECLARE @ScooterId UNIQUEIDENTIFIER = (SELECT [SubcategoryId] FROM dbo.Subcategory WHERE [Name] = 'Scooter');
	DECLARE @StreetId UNIQUEIDENTIFIER = (SELECT [SubcategoryId] FROM dbo.Subcategory WHERE [Name] = 'Street');
	DECLARE @TrailId UNIQUEIDENTIFIER = (SELECT [SubcategoryId] FROM dbo.Subcategory WHERE [Name] = 'Trail');
	DECLARE @EngineId UNIQUEIDENTIFIER = (SELECT [SubcategoryId] FROM dbo.Subcategory WHERE [Name] = 'Engine');
	DECLARE @ElectronicsId UNIQUEIDENTIFIER = (SELECT [SubcategoryId] FROM dbo.Subcategory WHERE [Name] = 'Electronics');
	DECLARE @AccessoriesId UNIQUEIDENTIFIER = (SELECT [SubcategoryId] FROM dbo.Subcategory WHERE [Name] = 'Accessories');
	DECLARE @CasualId UNIQUEIDENTIFIER = (SELECT [SubcategoryId] FROM dbo.Subcategory WHERE [Name] = 'Casual');
	DECLARE @HelmetsId UNIQUEIDENTIFIER = (SELECT [SubcategoryId] FROM dbo.Subcategory WHERE [Name] = 'Helmets');
	DECLARE @GlovesId UNIQUEIDENTIFIER = (SELECT [SubcategoryId] FROM dbo.Subcategory WHERE [Name] = 'Gloves');
	DECLARE @BootsId UNIQUEIDENTIFIER = (SELECT [SubcategoryId] FROM dbo.Subcategory WHERE [Name] = 'Boots');

	INSERT INTO dbo.[Product] ([SubcategoryId], [Name], [Description], [Price], [Quantity], [Image])
	VALUES (@ScooterId, 'Scooter 1', 'Scooter 1 description', 10000.00, 10, 'images/scooter1.jpg');

	INSERT INTO dbo.[Product] ([SubcategoryId], [Name], [Description], [Price], [Quantity], [Image])
	VALUES (@ScooterId, 'Scooter 2', 'Scooter 2 description', 20000.00, 10, 'images/scooter2.jpg');

    INSERT INTO dbo.[Product] ([SubcategoryId], [Name], [Description], [Price], [Quantity], [Image])
	VALUES (@StreetId, 'Street 1', 'Street 1 description', 30000.00, 10, 'images/street1.jpg');

	INSERT INTO dbo.[Product] ([SubcategoryId], [Name], [Description], [Price], [Quantity], [Image])
	VALUES (@StreetId, 'Street 2', 'Street 2 description', 40000.00, 10, 'images/street2.jpg');

	INSERT INTO dbo.[Product] ([SubcategoryId], [Name], [Description], [Price], [Quantity], [Image])
	VALUES (@TrailId, 'Trail 1', 'Trail 1 description', 50000.00, 10, 'images/trail1.jpg');

	INSERT INTO dbo.[Product] ([SubcategoryId], [Name], [Description], [Price], [Quantity], [Image])
	VALUES (@TrailId, 'Trail 2', 'Trail 2 description', 60000.00, 10, 'images/trail2.jpg');

	INSERT INTO dbo.[Product] ([SubcategoryId], [Name], [Description], [Price], [Quantity], [Image])
	VALUES (@EngineId, 'Engine 1', 'Engine 1 description', 70000.00, 10, 'images/engine1.jpg');

	INSERT INTO dbo.[Product] ([SubcategoryId], [Name], [Description], [Price], [Quantity], [Image])
	VALUES (@EngineId, 'Engine 2', 'Engine 2 description', 80000.00, 10, 'images/engine2.jpg');

	INSERT INTO dbo.[Product] ([SubcategoryId], [Name], [Description], [Price], [Quantity], [Image])
	VALUES (@ElectronicsId, 'Electronics 1', 'Electronics 1 description', 900.00, 10, 'images/electronics1.jpg');

	INSERT INTO dbo.[Product] ([SubcategoryId], [Name], [Description], [Price], [Quantity], [Image])

	VALUES (@ElectronicsId, 'Electronics 2', 'Electronics 2 description', 100.00, 10, 'images/electronics2.jpg');

	INSERT INTO dbo.[Product] ([SubcategoryId], [Name], [Description], [Price], [Quantity], [Image])
	VALUES (@AccessoriesId, 'Accessories 1', 'Accessories 1 description', 110.00, 10, 'images/accessories1.jpg');

	INSERT INTO dbo.[Product] ([SubcategoryId], [Name], [Description], [Price], [Quantity], [Image])
	VALUES (@AccessoriesId, 'Accessories 2', 'Accessories 2 description', 120.00, 10, 'images/accessories2.jpg');

	INSERT INTO dbo.[Product] ([SubcategoryId], [Name], [Description], [Price], [Quantity], [Image])
	VALUES (@CasualId, 'Casual 1', 'Casual 1 description', 130.00, 10, 'images/casual1.jpg');

	INSERT INTO dbo.[Product] ([SubcategoryId], [Name], [Description], [Price], [Quantity], [Image])
	VALUES (@CasualId, 'Casual 2', 'Casual 2 description', 140.00, 10, 'images/casual2.jpg');

	INSERT INTO dbo.[Product] ([SubcategoryId], [Name], [Description], [Price], [Quantity], [Image])
	VALUES (@HelmetsId, 'Helmets 1', 'Helmets 1 description', 150.00, 10, 'images/helmets1.jpg');

	INSERT INTO dbo.[Product] ([SubcategoryId], [Name], [Description], [Price], [Quantity], [Image])
	VALUES (@HelmetsId, 'Helmets 2', 'Helmets 2 description', 160.00, 10, 'images/helmets2.jpg');

	INSERT INTO dbo.[Product] ([SubcategoryId], [Name], [Description], [Price], [Quantity], [Image])
	VALUES (@GlovesId, 'Gloves 1', 'Gloves 1 description', 170.00, 10, 'images/gloves1.jpg');

	INSERT INTO dbo.[Product] ([SubcategoryId], [Name], [Description], [Price], [Quantity], [Image])
	VALUES (@GlovesId, 'Gloves 2', 'Gloves 2 description', 180.00, 10, 'images/gloves2.jpg');

	INSERT INTO dbo.[Product] ([SubcategoryId], [Name], [Description], [Price], [Quantity], [Image])
	VALUES (@BootsId, 'Boots 1', 'Boots 1 description', 190.00, 10, 'images/boots1.jpg');

	INSERT INTO dbo.[Product] ([SubcategoryId], [Name], [Description], [Price], [Quantity], [Image])
	VALUES (@BootsId, 'Boots 2', 'Boots 2 description', 200.00, 10, 'images/boots2.jpg');

END
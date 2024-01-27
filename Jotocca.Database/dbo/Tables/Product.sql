﻿CREATE TABLE [dbo].[Product]
(
	[ProductId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWSEQUENTIALID(),
	[SubcategoryId] UNIQUEIDENTIFIER NOT NULL,
	[Name] NVARCHAR(50) NOT NULL,
	[Description] NVARCHAR(200) NOT NULL,
	[Price] DECIMAL(18, 2) NOT NULL,
	[Quantity] INT NOT NULL,
	[Image] NVARCHAR(100) NOT NULL,
	[CreatedDate] DATETIME2 NOT NULL DEFAULT GETUTCDATE(),
	[ModifiedDate] DATETIME2 NOT NULL DEFAULT GETUTCDATE(),
	CONSTRAINT [FK_Product_ToSubcategory] FOREIGN KEY ([SubcategoryId]) REFERENCES [Subcategory]([SubcategoryId])
)
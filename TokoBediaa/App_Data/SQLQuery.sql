CREATE TABLE [dbo].[HeaderTransaction]
(
	[TransactionID] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [UserID] INT NOT NULL FOREIGN KEY(UserID) REFERENCES[User],
    [Date] DATE NOT NULL
)

CREATE TABLE [dbo].[DetailTransaction]
(
	[TransactionID] INT NOT NULL FOREIGN KEY(TransactionID) REFERENCES[HeaderTransaction] IDENTITY(1,1), 
    [ProductID] INT NOT NULL FOREIGN KEY(ProductID) REFERENCES[Product],
    [Quantity] INT NOT NULL,
	PRIMARY KEY(TransactionID,ProductID)
)

CREATE TABLE [dbo].[User]
(
	[UserID] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [RoleID] INT NOT NULL FOREIGN KEY(RoleID) REFERENCES[Role], 
    [Name] VARCHAR(50) NOT NULL, 
    [Email] VARCHAR(50) NOT NULL, 
    [Password] VARCHAR(50) NOT NULL, 
    [Gender] VARCHAR(50) NOT NULL, 
    [Status] VARCHAR(50) NOT NULL
)

CREATE TABLE [dbo].[Role]
(
	[RoleID] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [Name] VARCHAR(50) NOT NULL
)

CREATE TABLE [dbo].[Product]
(
	[ProductID] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [ProductTypeID] INT NOT NULL FOREIGN KEY(ProductTypeID) REFERENCES[ProductType], 
    [Name] VARCHAR(50) NOT NULL, 
    [Price] MONEY NOT NULL, 
    [Stock] INT NOT NULL
)


CREATE TABLE [dbo].[ProductType]
(
	[ProductTypeID] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [Name] VARCHAR(50) NOT NULL, 
    [Description] VARCHAR(100) NOT NULL
)
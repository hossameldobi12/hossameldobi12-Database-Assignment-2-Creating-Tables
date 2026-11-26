
CREATE DATABASE BidNile;
GO

USE BidNile;
GO

CREATE SCHEMA UserManagement;
GO

CREATE SCHEMA Inventory;
GO

CREATE SCHEMA Auctions;
GO

CREATE SCHEMA Engagement;
GO

CREATE TABLE UserManagement.COUNTRY
(
    CountryCode CHAR(2) NOT NULL,
    NameEn VARCHAR(100) NOT NULL,
    NameAr NVARCHAR(100) NOT NULL,
    PhoneCode VARCHAR(10) NOT NULL,

    CONSTRAINT PK_COUNTRY
        PRIMARY KEY (CountryCode)
);
GO

CREATE TABLE UserManagement.CITY
(
    CityId INT IDENTITY(1,1) NOT NULL,
    Name NVARCHAR(60) NOT NULL,
    CountryCode CHAR(2) NOT NULL,

    CONSTRAINT PK_CITY
        PRIMARY KEY (CityId),

    CONSTRAINT UQ_CITY_Name_CountryCode
        UNIQUE (Name, CountryCode)
);
GO

CREATE TABLE UserManagement.MEMBER
(
    MemberId UNIQUEIDENTIFIER NOT NULL
        CONSTRAINT DF_MEMBER_MemberId DEFAULT NEWID(),

    FullName NVARCHAR(100) NOT NULL,
    Email VARCHAR(254) NOT NULL,
    Mobile VARCHAR(16) NOT NULL,
    IdNumber VARCHAR(20) NOT NULL,
    BirthDate DATE NOT NULL,

    IsVerified BIT NOT NULL
        CONSTRAINT DF_MEMBER_IsVerified DEFAULT 0,

    CreatedAt DATETIME2(3) NOT NULL
        CONSTRAINT DF_MEMBER_CreatedAt DEFAULT SYSDATETIME(),

    CityId INT NOT NULL,
    ReferredByMemberId UNIQUEIDENTIFIER NULL,

    CONSTRAINT PK_MEMBER
        PRIMARY KEY (MemberId),

    CONSTRAINT UQ_MEMBER_Email
        UNIQUE (Email),

    CONSTRAINT UQ_MEMBER_IdNumber
        UNIQUE (IdNumber)
);
GO

CREATE TABLE UserManagement.WALLET
(
    MemberId UNIQUEIDENTIFIER NOT NULL,

    Balance DECIMAL(12,2) NOT NULL
        CONSTRAINT DF_WALLET_Balance DEFAULT 0,

    HeldAmount DECIMAL(12,2) NOT NULL
        CONSTRAINT DF_WALLET_HeldAmount DEFAULT 0,

    Currency CHAR(3) NOT NULL
        CONSTRAINT DF_WALLET_Currency DEFAULT 'EGP',

    UpdatedAt DATETIME2(3) NOT NULL
        CONSTRAINT DF_WALLET_UpdatedAt DEFAULT SYSDATETIME(),

    CONSTRAINT PK_WALLET
        PRIMARY KEY (MemberId),

    CONSTRAINT CK_WALLET_Balance
        CHECK (Balance >= 0),

    CONSTRAINT CK_WALLET_HeldAmount
        CHECK (HeldAmount >= 0 AND HeldAmount <= Balance)
);
GO

CREATE TABLE UserManagement.EMPLOYEE
(
    MemberId UNIQUEIDENTIFIER NOT NULL,
    WarehouseId INT NOT NULL,

    CONSTRAINT PK_EMPLOYEE
        PRIMARY KEY (MemberId)
);
GO

CREATE TABLE Inventory.WAREHOUSE
(
    WarehouseId INT IDENTITY(1,1) NOT NULL,
    WarehouseName NVARCHAR(80) NOT NULL,

    Capacity INT NOT NULL
        CONSTRAINT CK_WAREHOUSE_Capacity CHECK (Capacity > 0),

    CityId INT NOT NULL,

    Latitude FLOAT NOT NULL
        CONSTRAINT CK_WAREHOUSE_Latitude
        CHECK (Latitude BETWEEN -90 AND 90),

    Longitude FLOAT NOT NULL
        CONSTRAINT CK_WAREHOUSE_Longitude
        CHECK (Longitude BETWEEN -180 AND 180),

    ManagerId UNIQUEIDENTIFIER NOT NULL,
    ManagementStartDate DATE NOT NULL,

    CONSTRAINT PK_WAREHOUSE
        PRIMARY KEY (WarehouseId),

    CONSTRAINT UQ_WAREHOUSE_WarehouseName
        UNIQUE (WarehouseName),

    CONSTRAINT UQ_WAREHOUSE_ManagerId
        UNIQUE (ManagerId)
);
GO

CREATE TABLE Inventory.CATEGORY
(
    CategoryCode INT NOT NULL,
    EnglishName VARCHAR(50) NOT NULL,
    ArabicName NVARCHAR(50) NULL,

    CommissionPercentage DECIMAL(4,2) NOT NULL
        CONSTRAINT CK_CATEGORY_CommissionPercentage
        CHECK (CommissionPercentage BETWEEN 0 AND 30),

    ParentCategoryCode INT NULL,

    CONSTRAINT PK_CATEGORY
        PRIMARY KEY (CategoryCode),

    CONSTRAINT UQ_CATEGORY_EnglishName
        UNIQUE (EnglishName)
);
GO

CREATE TABLE Inventory.ITEM
(
    ItemId INT IDENTITY(1,1) NOT NULL,
    Title NVARCHAR(150) NOT NULL,
    Description NVARCHAR(MAX) NULL,

    ConditionScore TINYINT NOT NULL
        CONSTRAINT CK_ITEM_ConditionScore
        CHECK (ConditionScore BETWEEN 1 AND 10),

    Specifications NVARCHAR(MAX) NOT NULL
        CONSTRAINT CK_ITEM_Specifications
        CHECK (ISJSON(Specifications) = 1),

    SellerMemberId UNIQUEIDENTIFIER NOT NULL,
    CategoryCode INT NOT NULL,
    WarehouseId INT NULL,
    InspectorMemberId UNIQUEIDENTIFIER NULL,

    ListedAt DATETIME2(3) NOT NULL
        CONSTRAINT DF_ITEM_ListedAt DEFAULT SYSDATETIME(),

    CONSTRAINT PK_ITEM
        PRIMARY KEY (ItemId),

    CONSTRAINT CK_ITEM_DifferentSellerInspector
        CHECK
        (
            InspectorMemberId IS NULL
            OR InspectorMemberId <> SellerMemberId
        )
);
GO

CREATE TABLE Inventory.ITEMPHOTO
(
    ItemId INT NOT NULL,

    Position TINYINT NOT NULL
        CONSTRAINT CK_ITEMPHOTO_Position
        CHECK (Position BETWEEN 1 AND 20),

    PhotoUrl VARCHAR(500) NOT NULL,

    IsMain BIT NOT NULL
        CONSTRAINT DF_ITEMPHOTO_IsMain DEFAULT 0,

    CONSTRAINT PK_ITEMPHOTO
        PRIMARY KEY (ItemId, Position)
);
GO

CREATE TABLE Auctions.AUCTION
(
    AuctionId INT IDENTITY(1,1) NOT NULL,
    ItemId INT NOT NULL,

    StartingPrice DECIMAL(12,2) NOT NULL
        CONSTRAINT CK_AUCTION_StartingPrice
        CHECK (StartingPrice > 0),

    ReservePrice DECIMAL(12,2) NULL,

    BidIncrement DECIMAL(12,2) NOT NULL
        CONSTRAINT DF_AUCTION_BidIncrement DEFAULT 50,

    StartsAt DATETIMEOFFSET NOT NULL,
    EndsAt DATETIMEOFFSET NOT NULL,

    Status VARCHAR(20) NOT NULL
        CONSTRAINT DF_AUCTION_Status DEFAULT 'Draft',

    CONSTRAINT PK_AUCTION
        PRIMARY KEY (AuctionId),

    CONSTRAINT CK_AUCTION_ReservePrice
        CHECK
        (
            ReservePrice IS NULL
            OR ReservePrice >= StartingPrice
        ),

    CONSTRAINT CK_AUCTION_BidIncrement
        CHECK (BidIncrement > 0),

    CONSTRAINT CK_AUCTION_EndsAfterStarts
        CHECK (EndsAt > StartsAt),

    CONSTRAINT CK_AUCTION_Status
        CHECK (Status IN ('Draft', 'Live', 'Ended', 'Cancelled'))
);
GO

CREATE TABLE Auctions.BID
(
    BidId BIGINT IDENTITY(1,1) NOT NULL,
    AuctionId INT NOT NULL,
    MemberId UNIQUEIDENTIFIER NOT NULL,

    Amount DECIMAL(12,2) NOT NULL
        CONSTRAINT CK_BID_Amount CHECK (Amount > 0),

    PlacedAt DATETIME2(3) NOT NULL
        CONSTRAINT DF_BID_PlacedAt DEFAULT SYSDATETIME(),

    IpAddress VARCHAR(45) NOT NULL,

    CONSTRAINT PK_BID
        PRIMARY KEY (BidId),

    CONSTRAINT UQ_BID_AuctionId_Amount
        UNIQUE (AuctionId, Amount)
);
GO

CREATE TABLE Engagement.FOLLOWEDAUCTION
(
    MemberId UNIQUEIDENTIFIER NOT NULL,
    AuctionId INT NOT NULL,
    FollowedAt DATETIME2(3) NOT NULL,

    CONSTRAINT PK_FOLLOWEDAUCTION
        PRIMARY KEY (MemberId, AuctionId)
);
GO

USE [BidNile]
GO

INSERT [UserManagement].[COUNTRY] ([CountryCode], [NameEn], [NameAr], [PhoneCode]) VALUES (N'AE', N'United Arab Emirates', N'الإمارات العربية المتحدة', N'+971')
INSERT [UserManagement].[COUNTRY] ([CountryCode], [NameEn], [NameAr], [PhoneCode]) VALUES (N'EG', N'Egypt', N'مصر', N'+20')
INSERT [UserManagement].[COUNTRY] ([CountryCode], [NameEn], [NameAr], [PhoneCode]) VALUES (N'JO', N'Jordan', N'الأردن', N'+962')
INSERT [UserManagement].[COUNTRY] ([CountryCode], [NameEn], [NameAr], [PhoneCode]) VALUES (N'KW', N'Kuwait', N'الكويت', N'+965')
INSERT [UserManagement].[COUNTRY] ([CountryCode], [NameEn], [NameAr], [PhoneCode]) VALUES (N'SA', N'Saudi Arabia', N'المملكة العربية السعودية', N'+966')
GO


SET IDENTITY_INSERT [UserManagement].[CITY] ON 

INSERT [UserManagement].[CITY] ([CityId], [Name], [CountryCode]) VALUES (7, N'Abu Dhabi', N'AE')
INSERT [UserManagement].[CITY] ([CityId], [Name], [CountryCode]) VALUES (3, N'Alexandria', N'EG')
INSERT [UserManagement].[CITY] ([CityId], [Name], [CountryCode]) VALUES (9, N'Amman', N'JO')
INSERT [UserManagement].[CITY] ([CityId], [Name], [CountryCode]) VALUES (1, N'Cairo', N'EG')
INSERT [UserManagement].[CITY] ([CityId], [Name], [CountryCode]) VALUES (6, N'Dubai', N'AE')
INSERT [UserManagement].[CITY] ([CityId], [Name], [CountryCode]) VALUES (2, N'Giza', N'EG')
INSERT [UserManagement].[CITY] ([CityId], [Name], [CountryCode]) VALUES (5, N'Jeddah', N'SA')
INSERT [UserManagement].[CITY] ([CityId], [Name], [CountryCode]) VALUES (8, N'Kuwait City', N'KW')
INSERT [UserManagement].[CITY] ([CityId], [Name], [CountryCode]) VALUES (4, N'Riyadh', N'SA')
SET IDENTITY_INSERT [UserManagement].[CITY] OFF
GO

INSERT [UserManagement].[MEMBER] ([MemberId], [FullName], [Email], [Mobile], [IdNumber], [BirthDate], [CreatedAt], [CityId], [ReferredByMemberId], [LanguageCode], [VerifiedAt]) VALUES (N'8e718f03-f8cb-5319-a2b2-158f9b67de51', N'Youssef Nabil', N'youssef.nabil@example.com', N'+201001234505', N'29505051234565', CAST(N'1995-05-05' AS Date), CAST(N'2026-01-10T10:20:35.0000000' AS DateTime2), 1, N'0b6de108-1105-5b9c-8f6c-fe74a520b740', N'en', CAST(N'2026-01-11T12:20:35.0000000' AS DateTime2))
INSERT [UserManagement].[MEMBER] ([MemberId], [FullName], [Email], [Mobile], [IdNumber], [BirthDate], [CreatedAt], [CityId], [ReferredByMemberId], [LanguageCode], [VerifiedAt]) VALUES (N'5748be1c-4201-5edf-b4dd-18c802e17bf5', N'Omar Khaled', N'omar.khaled@example.com', N'+201001234503', N'28811221234563', CAST(N'1988-11-22' AS Date), CAST(N'2026-01-08T10:12:21.0000000' AS DateTime2), 3, N'fbe1866a-7a7f-563b-851a-d113ca99a023', N'en', CAST(N'2026-01-09T12:12:21.0000000' AS DateTime2))
INSERT [UserManagement].[MEMBER] ([MemberId], [FullName], [Email], [Mobile], [IdNumber], [BirthDate], [CreatedAt], [CityId], [ReferredByMemberId], [LanguageCode], [VerifiedAt]) VALUES (N'92dc6dc1-c7bb-5974-b38d-31eb348a906b', N'Fatima Al-Qahtani', N'fatima.qahtani@example.com', N'+966501234504', N'1087654321', CAST(N'1991-06-09' AS Date), CAST(N'2026-01-09T10:16:28.0000000' AS DateTime2), 4, NULL, N'ar', CAST(N'2026-01-10T12:16:28.0000000' AS DateTime2))
INSERT [UserManagement].[MEMBER] ([MemberId], [FullName], [Email], [Mobile], [IdNumber], [BirthDate], [CreatedAt], [CityId], [ReferredByMemberId], [LanguageCode], [VerifiedAt]) VALUES (N'ce751e21-bd49-5844-8501-45dca5ff23bc', N'Khalid Al-Suwaidi', N'khalid.suwaidi@example.com', N'+971501234512', N'784198712345128', CAST(N'1987-10-02' AS Date), CAST(N'2026-01-17T10:48:24.0000000' AS DateTime2), 7, N'0467ba3b-09a8-5f8a-a803-847a8e9cbbfb', N'ar', CAST(N'2026-01-18T12:48:24.0000000' AS DateTime2))
INSERT [UserManagement].[MEMBER] ([MemberId], [FullName], [Email], [Mobile], [IdNumber], [BirthDate], [CreatedAt], [CityId], [ReferredByMemberId], [LanguageCode], [VerifiedAt]) VALUES (N'67da2072-5983-5753-a335-55f625909c81', N'Sara Ibrahim', N'sara.ibrahim@example.com', N'+201001234511', N'29904181234511', CAST(N'1999-04-18' AS Date), CAST(N'2026-01-16T10:44:17.0000000' AS DateTime2), 3, N'0b6de108-1105-5b9c-8f6c-fe74a520b740', N'en', NULL)
INSERT [UserManagement].[MEMBER] ([MemberId], [FullName], [Email], [Mobile], [IdNumber], [BirthDate], [CreatedAt], [CityId], [ReferredByMemberId], [LanguageCode], [VerifiedAt]) VALUES (N'0467ba3b-09a8-5f8a-a803-847a8e9cbbfb', N'Layla Mansour', N'layla.mansour@example.com', N'+971501234506', N'784199412345676', CAST(N'1994-02-17' AS Date), CAST(N'2026-01-11T10:24:42.0000000' AS DateTime2), 6, N'92dc6dc1-c7bb-5974-b38d-31eb348a906b', N'en', CAST(N'2026-01-12T12:24:42.0000000' AS DateTime2))
INSERT [UserManagement].[MEMBER] ([MemberId], [FullName], [Email], [Mobile], [IdNumber], [BirthDate], [CreatedAt], [CityId], [ReferredByMemberId], [LanguageCode], [VerifiedAt]) VALUES (N'345590bc-ad08-5b8f-b699-b967c74a97f9', N'Tamer Fathy', N'tamer.fathy@example.com', N'+201001234510', N'29308121234510', CAST(N'1993-08-12' AS Date), CAST(N'2026-01-15T10:40:10.0000000' AS DateTime2), 2, N'8e718f03-f8cb-5319-a2b2-158f9b67de51', N'ar', NULL)
INSERT [UserManagement].[MEMBER] ([MemberId], [FullName], [Email], [Mobile], [IdNumber], [BirthDate], [CreatedAt], [CityId], [ReferredByMemberId], [LanguageCode], [VerifiedAt]) VALUES (N'fbe1866a-7a7f-563b-851a-d113ca99a023', N'Ahmed Hassan', N'ahmed.hassan@example.com', N'+201001234501', N'29001011234561', CAST(N'1990-01-01' AS Date), CAST(N'2026-01-06T10:04:07.0000000' AS DateTime2), 1, NULL, N'ar', CAST(N'2026-01-07T12:04:07.0000000' AS DateTime2))
INSERT [UserManagement].[MEMBER] ([MemberId], [FullName], [Email], [Mobile], [IdNumber], [BirthDate], [CreatedAt], [CityId], [ReferredByMemberId], [LanguageCode], [VerifiedAt]) VALUES (N'b628b5b5-f218-59fe-b034-f2e8dbd872e6', N'Noura Al-Mutairi', N'noura.mutairi@example.com', N'+96551234508', N'289120412345', CAST(N'1989-12-04' AS Date), CAST(N'2026-01-13T10:32:56.0000000' AS DateTime2), 8, N'92dc6dc1-c7bb-5974-b38d-31eb348a906b', N'ar', NULL)
INSERT [UserManagement].[MEMBER] ([MemberId], [FullName], [Email], [Mobile], [IdNumber], [BirthDate], [CreatedAt], [CityId], [ReferredByMemberId], [LanguageCode], [VerifiedAt]) VALUES (N'9dbde329-7bfa-5c94-a3e8-f6d524972050', N'Hanan Al-Majali', N'hanan.majali@example.com', N'+962791234509', N'9871234509', CAST(N'1993-07-21' AS Date), CAST(N'2026-01-14T10:36:03.0000000' AS DateTime2), 9, NULL, N'ar', CAST(N'2026-01-15T12:36:03.0000000' AS DateTime2))
INSERT [UserManagement].[MEMBER] ([MemberId], [FullName], [Email], [Mobile], [IdNumber], [BirthDate], [CreatedAt], [CityId], [ReferredByMemberId], [LanguageCode], [VerifiedAt]) VALUES (N'66ef7ffa-8789-56d4-8501-f8aed99d1049', N'Karim Adel', N'karim.adel@example.com', N'+201001234507', N'29709301234567', CAST(N'1997-09-30' AS Date), CAST(N'2026-01-12T10:28:49.0000000' AS DateTime2), 1, N'5748be1c-4201-5edf-b4dd-18c802e17bf5', N'en', CAST(N'2026-01-13T12:28:49.0000000' AS DateTime2))
INSERT [UserManagement].[MEMBER] ([MemberId], [FullName], [Email], [Mobile], [IdNumber], [BirthDate], [CreatedAt], [CityId], [ReferredByMemberId], [LanguageCode], [VerifiedAt]) VALUES (N'0b6de108-1105-5b9c-8f6c-fe74a520b740', N'Mona Said', N'mona.said@example.com', N'+201001234502', N'29203151234562', CAST(N'1992-03-15' AS Date), CAST(N'2026-01-07T10:08:14.0000000' AS DateTime2), 2, N'fbe1866a-7a7f-563b-851a-d113ca99a023', N'ar', CAST(N'2026-01-08T12:08:14.0000000' AS DateTime2))
GO





INSERT [Inventory].[CATEGORY] ([CategoryCode], [EnglishName], [ArabicName], [CommissionPercentage], [ParentCategoryCode]) VALUES (100, N'Electronics', N'إلكترونيات', CAST(8.00 AS Decimal(4, 2)), NULL)
INSERT [Inventory].[CATEGORY] ([CategoryCode], [EnglishName], [ArabicName], [CommissionPercentage], [ParentCategoryCode]) VALUES (110, N'Mobile Phones', N'هواتف محمولة', CAST(7.50 AS Decimal(4, 2)), 100)
INSERT [Inventory].[CATEGORY] ([CategoryCode], [EnglishName], [ArabicName], [CommissionPercentage], [ParentCategoryCode]) VALUES (120, N'Laptops', N'لابتوبات', CAST(7.00 AS Decimal(4, 2)), 100)
INSERT [Inventory].[CATEGORY] ([CategoryCode], [EnglishName], [ArabicName], [CommissionPercentage], [ParentCategoryCode]) VALUES (200, N'Home & Kitchen', N'المنزل والمطبخ', CAST(10.00 AS Decimal(4, 2)), NULL)
INSERT [Inventory].[CATEGORY] ([CategoryCode], [EnglishName], [ArabicName], [CommissionPercentage], [ParentCategoryCode]) VALUES (210, N'Furniture', N'أثاث', CAST(12.00 AS Decimal(4, 2)), 200)
INSERT [Inventory].[CATEGORY] ([CategoryCode], [EnglishName], [ArabicName], [CommissionPercentage], [ParentCategoryCode]) VALUES (300, N'Collectibles', N'مقتنيات', CAST(15.00 AS Decimal(4, 2)), NULL)
INSERT [Inventory].[CATEGORY] ([CategoryCode], [EnglishName], [ArabicName], [CommissionPercentage], [ParentCategoryCode]) VALUES (310, N'Watches', N'ساعات', CAST(12.50 AS Decimal(4, 2)), 300)
GO



INSERT [UserManagement].[WALLET] ([MemberId], [Balance], [HeldAmount], [Currency], [UpdatedAt]) VALUES (N'8e718f03-f8cb-5319-a2b2-158f9b67de51', CAST(250.00 AS Decimal(12, 2)), CAST(62.50 AS Decimal(12, 2)), N'EGP', CAST(N'2026-11-24T13:25:55.0000000' AS DateTime2))
INSERT [UserManagement].[WALLET] ([MemberId], [Balance], [HeldAmount], [Currency], [UpdatedAt]) VALUES (N'5748be1c-4201-5edf-b4dd-18c802e17bf5', CAST(5600.75 AS Decimal(12, 2)), CAST(2800.38 AS Decimal(12, 2)), N'EGP', CAST(N'2026-11-24T11:15:33.0000000' AS DateTime2))
INSERT [UserManagement].[WALLET] ([MemberId], [Balance], [HeldAmount], [Currency], [UpdatedAt]) VALUES (N'92dc6dc1-c7bb-5974-b38d-31eb348a906b', CAST(15000.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), N'SAR', CAST(N'2026-11-24T12:20:44.0000000' AS DateTime2))
INSERT [UserManagement].[WALLET] ([MemberId], [Balance], [HeldAmount], [Currency], [UpdatedAt]) VALUES (N'ce751e21-bd49-5844-8501-45dca5ff23bc', CAST(5600.75 AS Decimal(12, 2)), CAST(1400.19 AS Decimal(12, 2)), N'AED', CAST(N'2026-11-24T10:00:13.0000000' AS DateTime2))
INSERT [UserManagement].[WALLET] ([MemberId], [Balance], [HeldAmount], [Currency], [UpdatedAt]) VALUES (N'67da2072-5983-5753-a335-55f625909c81', CAST(5600.75 AS Decimal(12, 2)), CAST(2800.38 AS Decimal(12, 2)), N'EGP', CAST(N'2026-11-24T09:55:02.0000000' AS DateTime2))
INSERT [UserManagement].[WALLET] ([MemberId], [Balance], [HeldAmount], [Currency], [UpdatedAt]) VALUES (N'0467ba3b-09a8-5f8a-a803-847a8e9cbbfb', CAST(9000.00 AS Decimal(12, 2)), CAST(2250.00 AS Decimal(12, 2)), N'AED', CAST(N'2026-11-24T14:30:06.0000000' AS DateTime2))
INSERT [UserManagement].[WALLET] ([MemberId], [Balance], [HeldAmount], [Currency], [UpdatedAt]) VALUES (N'345590bc-ad08-5b8f-b699-b967c74a97f9', CAST(5600.75 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), N'EGP', CAST(N'2026-11-24T08:50:51.0000000' AS DateTime2))
INSERT [UserManagement].[WALLET] ([MemberId], [Balance], [HeldAmount], [Currency], [UpdatedAt]) VALUES (N'fbe1866a-7a7f-563b-851a-d113ca99a023', CAST(5600.75 AS Decimal(12, 2)), CAST(560.08 AS Decimal(12, 2)), N'EGP', CAST(N'2026-11-24T09:05:11.0000000' AS DateTime2))
INSERT [UserManagement].[WALLET] ([MemberId], [Balance], [HeldAmount], [Currency], [UpdatedAt]) VALUES (N'b628b5b5-f218-59fe-b034-f2e8dbd872e6', CAST(9000.00 AS Decimal(12, 2)), CAST(2250.00 AS Decimal(12, 2)), N'KWD', CAST(N'2026-11-24T16:40:28.0000000' AS DateTime2))
INSERT [UserManagement].[WALLET] ([MemberId], [Balance], [HeldAmount], [Currency], [UpdatedAt]) VALUES (N'9dbde329-7bfa-5c94-a3e8-f6d524972050', CAST(15000.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), N'JOD', CAST(N'2026-11-24T17:45:39.0000000' AS DateTime2))
INSERT [UserManagement].[WALLET] ([MemberId], [Balance], [HeldAmount], [Currency], [UpdatedAt]) VALUES (N'66ef7ffa-8789-56d4-8501-f8aed99d1049', CAST(5600.75 AS Decimal(12, 2)), CAST(1400.19 AS Decimal(12, 2)), N'EGP', CAST(N'2026-11-24T15:35:17.0000000' AS DateTime2))
INSERT [UserManagement].[WALLET] ([MemberId], [Balance], [HeldAmount], [Currency], [UpdatedAt]) VALUES (N'0b6de108-1105-5b9c-8f6c-fe74a520b740', CAST(420.25 AS Decimal(12, 2)), CAST(42.03 AS Decimal(12, 2)), N'EGP', CAST(N'2026-11-24T10:10:22.0000000' AS DateTime2))
GO


SET IDENTITY_INSERT [Inventory].[WAREHOUSE] ON 

INSERT [Inventory].[WAREHOUSE] ([WarehouseId], [WarehouseName], [MaxItems], [CityId], [Latitude], [Longitude], [ManagerId], [ManagementStartDate]) VALUES (1, N'Cairo Central Warehouse', 20000, 1, 30.0444, 31.2357, N'fbe1866a-7a7f-563b-851a-d113ca99a023', CAST(N'2023-01-10' AS Date))
INSERT [Inventory].[WAREHOUSE] ([WarehouseId], [WarehouseName], [MaxItems], [CityId], [Latitude], [Longitude], [ManagerId], [ManagementStartDate]) VALUES (2, N'Alexandria Port Warehouse', 15000, 3, 31.2001, 29.9187, N'5748be1c-4201-5edf-b4dd-18c802e17bf5', CAST(N'2023-03-01' AS Date))
INSERT [Inventory].[WAREHOUSE] ([WarehouseId], [WarehouseName], [MaxItems], [CityId], [Latitude], [Longitude], [ManagerId], [ManagementStartDate]) VALUES (3, N'Riyadh Logistics Hub', 30000, 4, 24.7136, 46.6753, N'92dc6dc1-c7bb-5974-b38d-31eb348a906b', CAST(N'2023-05-15' AS Date))
INSERT [Inventory].[WAREHOUSE] ([WarehouseId], [WarehouseName], [MaxItems], [CityId], [Latitude], [Longitude], [ManagerId], [ManagementStartDate]) VALUES (4, N'Dubai Silicon Warehouse', 25000, 6, 25.2048, 55.2708, N'0467ba3b-09a8-5f8a-a803-847a8e9cbbfb', CAST(N'2024-02-01' AS Date))
INSERT [Inventory].[WAREHOUSE] ([WarehouseId], [WarehouseName], [MaxItems], [CityId], [Latitude], [Longitude], [ManagerId], [ManagementStartDate]) VALUES (5, N'Amman North Depot', 8000, 9, 31.9454, 35.9284, N'9dbde329-7bfa-5c94-a3e8-f6d524972050', CAST(N'2024-06-20' AS Date))
GO






INSERT [UserManagement].[EMPLOYEE] ([MemberId], [WarehouseId]) VALUES (N'5748be1c-4201-5edf-b4dd-18c802e17bf5', 2)
INSERT [UserManagement].[EMPLOYEE] ([MemberId], [WarehouseId]) VALUES (N'92dc6dc1-c7bb-5974-b38d-31eb348a906b', 3)
INSERT [UserManagement].[EMPLOYEE] ([MemberId], [WarehouseId]) VALUES (N'0467ba3b-09a8-5f8a-a803-847a8e9cbbfb', 4)
INSERT [UserManagement].[EMPLOYEE] ([MemberId], [WarehouseId]) VALUES (N'fbe1866a-7a7f-563b-851a-d113ca99a023', 1)
INSERT [UserManagement].[EMPLOYEE] ([MemberId], [WarehouseId]) VALUES (N'9dbde329-7bfa-5c94-a3e8-f6d524972050', 5)
INSERT [UserManagement].[EMPLOYEE] ([MemberId], [WarehouseId]) VALUES (N'66ef7ffa-8789-56d4-8501-f8aed99d1049', 1)
INSERT [UserManagement].[EMPLOYEE] ([MemberId], [WarehouseId]) VALUES (N'0b6de108-1105-5b9c-8f6c-fe74a520b740', 2)
GO


SET IDENTITY_INSERT [Inventory].[ITEM] ON 
INSERT [Inventory].[ITEM] ([ItemId], [Title], [Description], [ConditionScore], [Specifications], [SellerMemberId], [CategoryCode], [WarehouseId], [InspectorMemberId], [ListedAt], [Featured]) VALUES (1, N'Apple iPhone 15 Pro 256GB', N'Natural titanium, battery health 94%, original box included.', 9, N'{"brand": "Apple", "storageGB": 256, "color": "Natural Titanium", "supports5G": true}', N'8e718f03-f8cb-5319-a2b2-158f9b67de51', 110, 1, N'fbe1866a-7a7f-563b-851a-d113ca99a023', CAST(N'2026-11-18T09:30:00.0000000' AS DateTime2), 1)
INSERT [Inventory].[ITEM] ([ItemId], [Title], [Description], [ConditionScore], [Specifications], [SellerMemberId], [CategoryCode], [WarehouseId], [InspectorMemberId], [ListedAt], [Featured]) VALUES (2, N'Dell XPS 13 Laptop', N'13.4-inch, Core i7, 16GB RAM, light use.', 8, N'{"brand": "Dell", "cpu": "Intel Core i7", "ramGB": 16, "storageGB": 512, "screenInches": 13.4}', N'66ef7ffa-8789-56d4-8501-f8aed99d1049', 120, 1, N'fbe1866a-7a7f-563b-851a-d113ca99a023', CAST(N'2026-11-18T11:00:00.0000000' AS DateTime2), 0)
INSERT [Inventory].[ITEM] ([ItemId], [Title], [Description], [ConditionScore], [Specifications], [SellerMemberId], [CategoryCode], [WarehouseId], [InspectorMemberId], [ListedAt], [Featured]) VALUES (3, N'Solid Oak Dining Table', N'Hand-finished table with six chairs.', 9, N'{"material": "Oak", "seats": 6, "lengthCm": 200, "finish": "Matte lacquer"}', N'0b6de108-1105-5b9c-8f6c-fe74a520b740', 210, 2, N'5748be1c-4201-5edf-b4dd-18c802e17bf5', CAST(N'2026-10-30T14:15:00.0000000' AS DateTime2), 1)
INSERT [Inventory].[ITEM] ([ItemId], [Title], [Description], [ConditionScore], [Specifications], [SellerMemberId], [CategoryCode], [WarehouseId], [InspectorMemberId], [ListedAt], [Featured]) VALUES (4, N'Vintage Omega Seamaster 1968', N'Automatic movement, serviced in 2024, steel bracelet.', 7, N'{"brand": "Omega", "year": 1968, "movement": "Automatic", "caseMm": 34, "serviced": true}', N'345590bc-ad08-5b8f-b699-b967c74a97f9', 310, 4, N'0467ba3b-09a8-5f8a-a803-847a8e9cbbfb', CAST(N'2026-10-28T10:00:00.0000000' AS DateTime2), 1)
INSERT [Inventory].[ITEM] ([ItemId], [Title], [Description], [ConditionScore], [Specifications], [SellerMemberId], [CategoryCode], [WarehouseId], [InspectorMemberId], [ListedAt], [Featured]) VALUES (5, N'Samsung Galaxy S24 128GB', N'Onyx black, like new, 6 months old.', 9, N'{"brand": "Samsung", "storageGB": 128, "color": "Onyx Black", "supports5G": true}', N'b628b5b5-f218-59fe-b034-f2e8dbd872e6', 110, 3, N'92dc6dc1-c7bb-5974-b38d-31eb348a906b', CAST(N'2026-11-19T16:45:00.0000000' AS DateTime2), 0)
INSERT [Inventory].[ITEM] ([ItemId], [Title], [Description], [ConditionScore], [Specifications], [SellerMemberId], [CategoryCode], [WarehouseId], [InspectorMemberId], [ListedAt], [Featured]) VALUES (6, N'Leather 3-Seater Sofa', N'Brown genuine leather, minor wear on one armrest.', 6, N'{"material": "Leather", "seats": 3, "lengthCm": 210, "finish": "Aniline"}', N'67da2072-5983-5753-a335-55f625909c81', 210, 2, N'5748be1c-4201-5edf-b4dd-18c802e17bf5', CAST(N'2026-11-22T12:00:00.0000000' AS DateTime2), 0)
INSERT [Inventory].[ITEM] ([ItemId], [Title], [Description], [ConditionScore], [Specifications], [SellerMemberId], [CategoryCode], [WarehouseId], [InspectorMemberId], [ListedAt], [Featured]) VALUES (7, N'1960s Egyptian Coin Collection', N'Set of 25 silver coins in a protective album.', 8, N'{"era": "1960s", "pieces": 25, "metal": "Silver", "certified": false, "origin": "Egypt"}', N'ce751e21-bd49-5844-8501-45dca5ff23bc', 300, 5, N'9dbde329-7bfa-5c94-a3e8-f6d524972050', CAST(N'2026-11-23T13:20:00.0000000' AS DateTime2), 1)
INSERT [Inventory].[ITEM] ([ItemId], [Title], [Description], [ConditionScore], [Specifications], [SellerMemberId], [CategoryCode], [WarehouseId], [InspectorMemberId], [ListedAt], [Featured]) VALUES (8, N'Nespresso Vertuo Machine', N'Black, includes milk frother, works perfectly.', 8, N'{"brand": "Nespresso", "model": "Vertuo Next", "powerW": 1500, "colors": ["Black"]}', N'5748be1c-4201-5edf-b4dd-18c802e17bf5', 200, NULL, NULL, CAST(N'2026-11-21T18:10:00.0000000' AS DateTime2), 0)
GO



SET IDENTITY_INSERT [Inventory].[ITEM] OFF
INSERT [Inventory].[ITEMPHOTO] ([ItemId], [Position], [PhotoUrl], [IsMain]) VALUES (1, 1, N'https://images.bidnile.example/items/1/main.jpg', 1)
INSERT [Inventory].[ITEMPHOTO] ([ItemId], [Position], [PhotoUrl], [IsMain]) VALUES (1, 2, N'https://images.bidnile.example/items/1/side.jpg', 0)
INSERT [Inventory].[ITEMPHOTO] ([ItemId], [Position], [PhotoUrl], [IsMain]) VALUES (2, 1, N'https://images.bidnile.example/items/2/main.jpg', 1)
INSERT [Inventory].[ITEMPHOTO] ([ItemId], [Position], [PhotoUrl], [IsMain]) VALUES (2, 2, N'https://images.bidnile.example/items/2/side.jpg', 0)
INSERT [Inventory].[ITEMPHOTO] ([ItemId], [Position], [PhotoUrl], [IsMain]) VALUES (3, 1, N'https://images.bidnile.example/items/3/main.jpg', 1)
INSERT [Inventory].[ITEMPHOTO] ([ItemId], [Position], [PhotoUrl], [IsMain]) VALUES (3, 2, N'https://images.bidnile.example/items/3/side.jpg', 0)
INSERT [Inventory].[ITEMPHOTO] ([ItemId], [Position], [PhotoUrl], [IsMain]) VALUES (4, 1, N'https://images.bidnile.example/items/4/main.jpg', 1)
INSERT [Inventory].[ITEMPHOTO] ([ItemId], [Position], [PhotoUrl], [IsMain]) VALUES (4, 2, N'https://images.bidnile.example/items/4/side.jpg', 0)
INSERT [Inventory].[ITEMPHOTO] ([ItemId], [Position], [PhotoUrl], [IsMain]) VALUES (5, 1, N'https://images.bidnile.example/items/5/main.jpg', 1)
INSERT [Inventory].[ITEMPHOTO] ([ItemId], [Position], [PhotoUrl], [IsMain]) VALUES (5, 2, N'https://images.bidnile.example/items/5/side.jpg', 0)
INSERT [Inventory].[ITEMPHOTO] ([ItemId], [Position], [PhotoUrl], [IsMain]) VALUES (6, 1, N'https://images.bidnile.example/items/6/main.jpg', 1)
INSERT [Inventory].[ITEMPHOTO] ([ItemId], [Position], [PhotoUrl], [IsMain]) VALUES (6, 2, N'https://images.bidnile.example/items/6/side.jpg', 0)
INSERT [Inventory].[ITEMPHOTO] ([ItemId], [Position], [PhotoUrl], [IsMain]) VALUES (7, 1, N'https://images.bidnile.example/items/7/main.jpg', 1)
GO



SET IDENTITY_INSERT [Auctions].[AUCTION] ON 

INSERT [Auctions].[AUCTION] ([AuctionId], [ItemId], [StartingPrice], [ReservePrice], [BidIncrement], [StartsAt], [EndsAt], [Status], [BuyNowPrice]) VALUES (1, 1, CAST(500.00 AS Decimal(12, 2)), CAST(650.00 AS Decimal(12, 2)), CAST(25.00 AS Decimal(12, 2)), CAST(N'2026-11-20T10:00:00.0000000+02:00' AS DateTimeOffset), CAST(N'2026-11-30T22:00:00.0000000+02:00' AS DateTimeOffset), N'Live', CAST(1200.00 AS Decimal(12, 2)))
INSERT [Auctions].[AUCTION] ([AuctionId], [ItemId], [StartingPrice], [ReservePrice], [BidIncrement], [StartsAt], [EndsAt], [Status], [BuyNowPrice]) VALUES (2, 2, CAST(400.00 AS Decimal(12, 2)), NULL, CAST(20.00 AS Decimal(12, 2)), CAST(N'2026-11-21T09:00:00.0000000+03:00' AS DateTimeOffset), CAST(N'2026-11-28T21:00:00.0000000+03:00' AS DateTimeOffset), N'Live', CAST(900.00 AS Decimal(12, 2)))
INSERT [Auctions].[AUCTION] ([AuctionId], [ItemId], [StartingPrice], [ReservePrice], [BidIncrement], [StartsAt], [EndsAt], [Status], [BuyNowPrice]) VALUES (3, 3, CAST(1500.00 AS Decimal(12, 2)), CAST(2000.00 AS Decimal(12, 2)), CAST(50.00 AS Decimal(12, 2)), CAST(N'2026-11-05T10:00:00.0000000+02:00' AS DateTimeOffset), CAST(N'2026-11-15T20:00:00.0000000+02:00' AS DateTimeOffset), N'Ended', CAST(3500.00 AS Decimal(12, 2)))
INSERT [Auctions].[AUCTION] ([AuctionId], [ItemId], [StartingPrice], [ReservePrice], [BidIncrement], [StartsAt], [EndsAt], [Status], [BuyNowPrice]) VALUES (4, 4, CAST(3000.00 AS Decimal(12, 2)), CAST(4000.00 AS Decimal(12, 2)), CAST(100.00 AS Decimal(12, 2)), CAST(N'2026-11-01T12:00:00.0000000+03:00' AS DateTimeOffset), CAST(N'2026-11-12T18:00:00.0000000+03:00' AS DateTimeOffset), N'Ended', NULL)
INSERT [Auctions].[AUCTION] ([AuctionId], [ItemId], [StartingPrice], [ReservePrice], [BidIncrement], [StartsAt], [EndsAt], [Status], [BuyNowPrice]) VALUES (5, 5, CAST(350.00 AS Decimal(12, 2)), CAST(400.00 AS Decimal(12, 2)), CAST(15.00 AS Decimal(12, 2)), CAST(N'2026-11-22T08:00:00.0000000+03:00' AS DateTimeOffset), CAST(N'2026-12-02T20:00:00.0000000+03:00' AS DateTimeOffset), N'Live', CAST(800.00 AS Decimal(12, 2)))
INSERT [Auctions].[AUCTION] ([AuctionId], [ItemId], [StartingPrice], [ReservePrice], [BidIncrement], [StartsAt], [EndsAt], [Status], [BuyNowPrice]) VALUES (6, 6, CAST(1200.00 AS Decimal(12, 2)), NULL, CAST(40.00 AS Decimal(12, 2)), CAST(N'2026-12-05T10:00:00.0000000+02:00' AS DateTimeOffset), CAST(N'2026-12-15T22:00:00.0000000+02:00' AS DateTimeOffset), N'Draft', CAST(2500.00 AS Decimal(12, 2)))
INSERT [Auctions].[AUCTION] ([AuctionId], [ItemId], [StartingPrice], [ReservePrice], [BidIncrement], [StartsAt], [EndsAt], [Status], [BuyNowPrice]) VALUES (7, 7, CAST(800.00 AS Decimal(12, 2)), CAST(1000.00 AS Decimal(12, 2)), CAST(30.00 AS Decimal(12, 2)), CAST(N'2026-12-01T10:00:00.0000000+02:00' AS DateTimeOffset), CAST(N'2026-12-10T22:00:00.0000000+02:00' AS DateTimeOffset), N'PendingReview', NULL)
INSERT [Auctions].[AUCTION] ([AuctionId], [ItemId], [StartingPrice], [ReservePrice], [BidIncrement], [StartsAt], [EndsAt], [Status], [BuyNowPrice]) VALUES (8, 8, CAST(150.00 AS Decimal(12, 2)), NULL, CAST(10.00 AS Decimal(12, 2)), CAST(N'2026-11-23T09:00:00.0000000+02:00' AS DateTimeOffset), CAST(N'2026-11-27T21:00:00.0000000+02:00' AS DateTimeOffset), N'Cancelled', CAST(300.00 AS Decimal(12, 2)))
SET IDENTITY_INSERT [Auctions].[AUCTION] OFF
GO






SET IDENTITY_INSERT [Auctions].[BID] ON 

INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (15, 1, N'66ef7ffa-8789-56d4-8501-f8aed99d1049', CAST(525.00 AS Decimal(12, 2)), CAST(N'2026-11-20T11:07:34.0000000' AS DateTime2), N'41.33.19.211')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (16, 1, N'345590bc-ad08-5b8f-b699-b967c74a97f9', CAST(550.00 AS Decimal(12, 2)), CAST(N'2026-11-21T03:17:13.0000000' AS DateTime2), N'94.200.15.233')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (17, 1, N'92dc6dc1-c7bb-5974-b38d-31eb348a906b', CAST(575.00 AS Decimal(12, 2)), CAST(N'2026-11-21T19:26:53.0000000' AS DateTime2), N'82.114.108.18')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (18, 1, N'0b6de108-1105-5b9c-8f6c-fe74a520b740', CAST(600.00 AS Decimal(12, 2)), CAST(N'2026-11-22T11:46:16.0000000' AS DateTime2), N'41.33.212.145')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (19, 1, N'92dc6dc1-c7bb-5974-b38d-31eb348a906b', CAST(725.00 AS Decimal(12, 2)), CAST(N'2026-11-23T03:57:27.0000000' AS DateTime2), N'41.33.148.150')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (20, 1, N'b628b5b5-f218-59fe-b034-f2e8dbd872e6', CAST(775.00 AS Decimal(12, 2)), CAST(N'2026-11-23T19:58:58.0000000' AS DateTime2), N'156.198.12.143')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (21, 1, N'5748be1c-4201-5edf-b4dd-18c802e17bf5', CAST(825.00 AS Decimal(12, 2)), CAST(N'2026-11-24T12:13:41.0000000' AS DateTime2), N'156.198.139.31')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (22, 1, N'67da2072-5983-5753-a335-55f625909c81', CAST(875.00 AS Decimal(12, 2)), CAST(N'2026-11-25T04:24:38.0000000' AS DateTime2), N'156.198.27.149')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (23, 1, N'ce751e21-bd49-5844-8501-45dca5ff23bc', CAST(925.00 AS Decimal(12, 2)), CAST(N'2026-11-25T20:30:00.0000000' AS DateTime2), N'41.33.141.183')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (24, 2, N'0b6de108-1105-5b9c-8f6c-fe74a520b740', CAST(420.00 AS Decimal(12, 2)), CAST(N'2026-11-21T08:24:37.0000000' AS DateTime2), N'94.200.53.128')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (25, 2, N'ce751e21-bd49-5844-8501-45dca5ff23bc', CAST(440.00 AS Decimal(12, 2)), CAST(N'2026-11-21T21:44:41.0000000' AS DateTime2), N'197.55.120.150')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (26, 2, N'9dbde329-7bfa-5c94-a3e8-f6d524972050', CAST(460.00 AS Decimal(12, 2)), CAST(N'2026-11-22T11:02:25.0000000' AS DateTime2), N'156.198.204.47')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (27, 2, N'92dc6dc1-c7bb-5974-b38d-31eb348a906b', CAST(480.00 AS Decimal(12, 2)), CAST(N'2026-11-23T00:18:16.0000000' AS DateTime2), N'197.55.135.127')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (28, 2, N'0467ba3b-09a8-5f8a-a803-847a8e9cbbfb', CAST(580.00 AS Decimal(12, 2)), CAST(N'2026-11-23T13:45:09.0000000' AS DateTime2), N'192.168.1.100')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (29, 2, N'67da2072-5983-5753-a335-55f625909c81', CAST(620.00 AS Decimal(12, 2)), CAST(N'2026-11-24T02:59:21.0000000' AS DateTime2), N'94.200.108.43')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (30, 2, N'0467ba3b-09a8-5f8a-a803-847a8e9cbbfb', CAST(660.00 AS Decimal(12, 2)), CAST(N'2026-11-24T16:21:21.0000000' AS DateTime2), N'82.114.108.11')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (31, 2, N'ce751e21-bd49-5844-8501-45dca5ff23bc', CAST(700.00 AS Decimal(12, 2)), CAST(N'2026-11-25T05:40:42.0000000' AS DateTime2), N'94.200.147.203')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (32, 2, N'0467ba3b-09a8-5f8a-a803-847a8e9cbbfb', CAST(740.00 AS Decimal(12, 2)), CAST(N'2026-11-25T19:00:01.0000000' AS DateTime2), N'197.55.153.128')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (33, 3, N'67da2072-5983-5753-a335-55f625909c81', CAST(1550.00 AS Decimal(12, 2)), CAST(N'2026-11-05T09:27:47.0000000' AS DateTime2), N'41.33.242.70')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (34, 3, N'9dbde329-7bfa-5c94-a3e8-f6d524972050', CAST(1600.00 AS Decimal(12, 2)), CAST(N'2026-11-06T16:23:36.0000000' AS DateTime2), N'197.55.166.148')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (35, 3, N'ce751e21-bd49-5844-8501-45dca5ff23bc', CAST(1650.00 AS Decimal(12, 2)), CAST(N'2026-11-07T23:32:36.0000000' AS DateTime2), N'2001:db8:85a3::8a2e:370:7334')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (36, 3, N'b628b5b5-f218-59fe-b034-f2e8dbd872e6', CAST(1700.00 AS Decimal(12, 2)), CAST(N'2026-11-09T06:33:25.0000000' AS DateTime2), N'82.114.91.44')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (37, 3, N'67da2072-5983-5753-a335-55f625909c81', CAST(1950.00 AS Decimal(12, 2)), CAST(N'2026-11-10T13:32:00.0000000' AS DateTime2), N'41.33.56.197')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (38, 3, N'0467ba3b-09a8-5f8a-a803-847a8e9cbbfb', CAST(2050.00 AS Decimal(12, 2)), CAST(N'2026-11-11T20:34:43.0000000' AS DateTime2), N'156.198.102.101')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (39, 3, N'9dbde329-7bfa-5c94-a3e8-f6d524972050', CAST(2150.00 AS Decimal(12, 2)), CAST(N'2026-11-13T03:36:22.0000000' AS DateTime2), N'82.114.103.141')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (40, 3, N'0467ba3b-09a8-5f8a-a803-847a8e9cbbfb', CAST(2250.00 AS Decimal(12, 2)), CAST(N'2026-11-14T10:39:51.0000000' AS DateTime2), N'82.114.222.141')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (41, 3, N'b628b5b5-f218-59fe-b034-f2e8dbd872e6', CAST(2350.00 AS Decimal(12, 2)), CAST(N'2026-11-15T17:40:01.0000000' AS DateTime2), N'82.114.246.60')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (42, 4, N'5748be1c-4201-5edf-b4dd-18c802e17bf5', CAST(3100.00 AS Decimal(12, 2)), CAST(N'2026-11-01T10:31:24.0000000' AS DateTime2), N'156.198.60.169')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (43, 4, N'92dc6dc1-c7bb-5974-b38d-31eb348a906b', CAST(3200.00 AS Decimal(12, 2)), CAST(N'2026-11-02T20:11:27.0000000' AS DateTime2), N'94.200.47.68')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (44, 4, N'8e718f03-f8cb-5319-a2b2-158f9b67de51', CAST(3300.00 AS Decimal(12, 2)), CAST(N'2026-11-04T05:52:34.0000000' AS DateTime2), N'82.114.137.95')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (45, 4, N'67da2072-5983-5753-a335-55f625909c81', CAST(3400.00 AS Decimal(12, 2)), CAST(N'2026-11-05T15:43:24.0000000' AS DateTime2), N'156.198.177.220')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (46, 4, N'9dbde329-7bfa-5c94-a3e8-f6d524972050', CAST(3900.00 AS Decimal(12, 2)), CAST(N'2026-11-07T01:15:55.0000000' AS DateTime2), N'94.200.101.102')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (47, 4, N'66ef7ffa-8789-56d4-8501-f8aed99d1049', CAST(4100.00 AS Decimal(12, 2)), CAST(N'2026-11-08T11:02:58.0000000' AS DateTime2), N'82.114.163.103')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (48, 4, N'fbe1866a-7a7f-563b-851a-d113ca99a023', CAST(4300.00 AS Decimal(12, 2)), CAST(N'2026-11-09T20:40:45.0000000' AS DateTime2), N'156.198.113.42')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (49, 4, N'0b6de108-1105-5b9c-8f6c-fe74a520b740', CAST(4500.00 AS Decimal(12, 2)), CAST(N'2026-11-11T06:24:34.0000000' AS DateTime2), N'41.33.27.1')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (50, 4, N'67da2072-5983-5753-a335-55f625909c81', CAST(4700.00 AS Decimal(12, 2)), CAST(N'2026-11-12T16:00:01.0000000' AS DateTime2), N'41.33.243.94')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (51, 5, N'67da2072-5983-5753-a335-55f625909c81', CAST(365.00 AS Decimal(12, 2)), CAST(N'2026-11-22T07:10:26.0000000' AS DateTime2), N'156.198.158.97')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (52, 5, N'5748be1c-4201-5edf-b4dd-18c802e17bf5', CAST(380.00 AS Decimal(12, 2)), CAST(N'2026-11-22T17:35:34.0000000' AS DateTime2), N'197.55.155.94')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (53, 5, N'9dbde329-7bfa-5c94-a3e8-f6d524972050', CAST(395.00 AS Decimal(12, 2)), CAST(N'2026-11-23T03:54:35.0000000' AS DateTime2), N'82.114.251.120')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (54, 5, N'8e718f03-f8cb-5319-a2b2-158f9b67de51', CAST(410.00 AS Decimal(12, 2)), CAST(N'2026-11-23T14:15:12.0000000' AS DateTime2), N'41.33.192.88')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (55, 5, N'9dbde329-7bfa-5c94-a3e8-f6d524972050', CAST(485.00 AS Decimal(12, 2)), CAST(N'2026-11-24T00:37:46.0000000' AS DateTime2), N'41.33.53.244')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (56, 5, N'345590bc-ad08-5b8f-b699-b967c74a97f9', CAST(515.00 AS Decimal(12, 2)), CAST(N'2026-11-24T11:02:25.0000000' AS DateTime2), N'94.200.235.7')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (57, 5, N'8e718f03-f8cb-5319-a2b2-158f9b67de51', CAST(545.00 AS Decimal(12, 2)), CAST(N'2026-11-24T21:19:04.0000000' AS DateTime2), N'197.55.133.94')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (58, 5, N'5748be1c-4201-5edf-b4dd-18c802e17bf5', CAST(575.00 AS Decimal(12, 2)), CAST(N'2026-11-25T07:44:50.0000000' AS DateTime2), N'156.198.137.139')
INSERT [Auctions].[BID] ([BidId], [AuctionId], [MemberId], [Amount], [PlacedAt], [DeviceIp]) VALUES (59, 5, N'345590bc-ad08-5b8f-b699-b967c74a97f9', CAST(605.00 AS Decimal(12, 2)), CAST(N'2026-11-25T18:00:01.0000000' AS DateTime2), N'156.198.157.208')
SET IDENTITY_INSERT [Auctions].[BID] OFF
GO







INSERT [Marketing].[FOLLOWEDAUCTION] ([MemberId], [AuctionId], [FollowedAt]) VALUES (N'8e718f03-f8cb-5319-a2b2-158f9b67de51', 3, CAST(N'2026-11-22T16:21:49.0000000' AS DateTime2))
INSERT [Marketing].[FOLLOWEDAUCTION] ([MemberId], [AuctionId], [FollowedAt]) VALUES (N'5748be1c-4201-5edf-b4dd-18c802e17bf5', 1, CAST(N'2026-11-21T10:03:07.0000000' AS DateTime2))
INSERT [Marketing].[FOLLOWEDAUCTION] ([MemberId], [AuctionId], [FollowedAt]) VALUES (N'5748be1c-4201-5edf-b4dd-18c802e17bf5', 5, CAST(N'2026-11-23T14:39:31.0000000' AS DateTime2))
INSERT [Marketing].[FOLLOWEDAUCTION] ([MemberId], [AuctionId], [FollowedAt]) VALUES (N'92dc6dc1-c7bb-5974-b38d-31eb348a906b', 1, CAST(N'2026-11-22T11:06:14.0000000' AS DateTime2))
INSERT [Marketing].[FOLLOWEDAUCTION] ([MemberId], [AuctionId], [FollowedAt]) VALUES (N'ce751e21-bd49-5844-8501-45dca5ff23bc', 5, CAST(N'2026-11-21T12:33:17.0000000' AS DateTime2))
INSERT [Marketing].[FOLLOWEDAUCTION] ([MemberId], [AuctionId], [FollowedAt]) VALUES (N'67da2072-5983-5753-a335-55f625909c81', 4, CAST(N'2026-11-20T11:30:10.0000000' AS DateTime2))
INSERT [Marketing].[FOLLOWEDAUCTION] ([MemberId], [AuctionId], [FollowedAt]) VALUES (N'67da2072-5983-5753-a335-55f625909c81', 7, CAST(N'2026-11-20T16:45:45.0000000' AS DateTime2))
INSERT [Marketing].[FOLLOWEDAUCTION] ([MemberId], [AuctionId], [FollowedAt]) VALUES (N'0467ba3b-09a8-5f8a-a803-847a8e9cbbfb', 1, CAST(N'2026-11-23T12:09:21.0000000' AS DateTime2))
INSERT [Marketing].[FOLLOWEDAUCTION] ([MemberId], [AuctionId], [FollowedAt]) VALUES (N'345590bc-ad08-5b8f-b699-b967c74a97f9', 2, CAST(N'2026-11-20T14:15:35.0000000' AS DateTime2))
INSERT [Marketing].[FOLLOWEDAUCTION] ([MemberId], [AuctionId], [FollowedAt]) VALUES (N'fbe1866a-7a7f-563b-851a-d113ca99a023', 3, CAST(N'2026-11-21T15:18:42.0000000' AS DateTime2))
INSERT [Marketing].[FOLLOWEDAUCTION] ([MemberId], [AuctionId], [FollowedAt]) VALUES (N'fbe1866a-7a7f-563b-851a-d113ca99a023', 5, CAST(N'2026-11-22T13:36:24.0000000' AS DateTime2))
INSERT [Marketing].[FOLLOWEDAUCTION] ([MemberId], [AuctionId], [FollowedAt]) VALUES (N'b628b5b5-f218-59fe-b034-f2e8dbd872e6', 2, CAST(N'2026-11-24T13:12:28.0000000' AS DateTime2))
INSERT [Marketing].[FOLLOWEDAUCTION] ([MemberId], [AuctionId], [FollowedAt]) VALUES (N'9dbde329-7bfa-5c94-a3e8-f6d524972050', 4, CAST(N'2026-11-24T10:27:03.0000000' AS DateTime2))
INSERT [Marketing].[FOLLOWEDAUCTION] ([MemberId], [AuctionId], [FollowedAt]) VALUES (N'66ef7ffa-8789-56d4-8501-f8aed99d1049', 3, CAST(N'2026-11-23T09:24:56.0000000' AS DateTime2))
INSERT [Marketing].[FOLLOWEDAUCTION] ([MemberId], [AuctionId], [FollowedAt]) VALUES (N'66ef7ffa-8789-56d4-8501-f8aed99d1049', 6, CAST(N'2026-11-24T15:42:38.0000000' AS DateTime2))
INSERT [Marketing].[FOLLOWEDAUCTION] ([MemberId], [AuctionId], [FollowedAt]) VALUES (N'0b6de108-1105-5b9c-8f6c-fe74a520b740', 1, CAST(N'2026-11-20T09:00:00.0000000' AS DateTime2))
GO

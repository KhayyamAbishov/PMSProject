USE [PMS]
GO
SET IDENTITY_INSERT [dbo].[City] ON 
GO
INSERT [dbo].[City] ([id], [name]) VALUES (1, N'Baku')
GO
INSERT [dbo].[City] ([id], [name]) VALUES (2, N'Sumgait')
GO
INSERT [dbo].[City] ([id], [name]) VALUES (3, N'Ganca')
GO
INSERT [dbo].[City] ([id], [name]) VALUES (4, N'Kurdamir')
GO
INSERT [dbo].[City] ([id], [name]) VALUES (5, N'Xirdalan')
GO
INSERT [dbo].[City] ([id], [name]) VALUES (6, N'Quba')
GO
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[District] ON 
GO
INSERT [dbo].[District] ([id], [name], [cityId]) VALUES (1, N'Yasamal', 1)
GO
INSERT [dbo].[District] ([id], [name], [cityId]) VALUES (2, N'Narimanov', 1)
GO
INSERT [dbo].[District] ([id], [name], [cityId]) VALUES (3, N'Nizami', 1)
GO
INSERT [dbo].[District] ([id], [name], [cityId]) VALUES (4, N'Saray', 2)
GO
INSERT [dbo].[District] ([id], [name], [cityId]) VALUES (5, N'Absheron', 2)
GO
INSERT [dbo].[District] ([id], [name], [cityId]) VALUES (6, N'Xatai', 1)
GO
INSERT [dbo].[District] ([id], [name], [cityId]) VALUES (7, N'Sabail', 1)
GO
INSERT [dbo].[District] ([id], [name], [cityId]) VALUES (9, N'Nasimi', 1)
GO
INSERT [dbo].[District] ([id], [name], [cityId]) VALUES (10, N'Xazar', 1)
GO
INSERT [dbo].[District] ([id], [name], [cityId]) VALUES (11, N'Corat', 2)
GO
INSERT [dbo].[District] ([id], [name], [cityId]) VALUES (12, N'Sabuncu', 1)
GO
SET IDENTITY_INSERT [dbo].[District] OFF
GO
SET IDENTITY_INSERT [dbo].[Metro] ON 
GO
INSERT [dbo].[Metro] ([Id], [Name], [CityId]) VALUES (1, N'Nizami', 1)
GO
INSERT [dbo].[Metro] ([Id], [Name], [CityId]) VALUES (2, N'20 Yanvar', 1)
GO
INSERT [dbo].[Metro] ([Id], [Name], [CityId]) VALUES (3, N'Ganclik', 1)
GO
INSERT [dbo].[Metro] ([Id], [Name], [CityId]) VALUES (5, N'Ahmadli', 1)
GO
INSERT [dbo].[Metro] ([Id], [Name], [CityId]) VALUES (7, N'Inshaatchilar', 1)
GO
INSERT [dbo].[Metro] ([Id], [Name], [CityId]) VALUES (8, N'Ichari Shahar', 1)
GO
INSERT [dbo].[Metro] ([Id], [Name], [CityId]) VALUES (10, N'28 may', 1)
GO
INSERT [dbo].[Metro] ([Id], [Name], [CityId]) VALUES (13, N'Koroglu', 1)
GO
SET IDENTITY_INSERT [dbo].[Metro] OFF
GO
SET IDENTITY_INSERT [dbo].[PropertyAddress] ON 
GO
INSERT [dbo].[PropertyAddress] ([PropertyAddressId], [CityId], [DistrictId], [Description], [MetroId]) VALUES (16, 1, 6, N'Xətai rayonu.Baki kinoteatri. Kremlin Palace yaninda.', 5)
GO
INSERT [dbo].[PropertyAddress] ([PropertyAddressId], [CityId], [DistrictId], [Description], [MetroId]) VALUES (17, 1, 7, NULL, 8)
GO
INSERT [dbo].[PropertyAddress] ([PropertyAddressId], [CityId], [DistrictId], [Description], [MetroId]) VALUES (18, 1, 9, N'GREEN PARK Yaşayış kompleksi,Kazım Kazımzadə küç. ev 7', 10)
GO
INSERT [dbo].[PropertyAddress] ([PropertyAddressId], [CityId], [DistrictId], [Description], [MetroId]) VALUES (19, 1, 9, N'Nəsimi rayonu Ceyhunbəy hacıbəyov küçəsi', 10)
GO
INSERT [dbo].[PropertyAddress] ([PropertyAddressId], [CityId], [DistrictId], [Description], [MetroId]) VALUES (20, 1, 1, N'Yeni Yasamal Leziz House', NULL)
GO
INSERT [dbo].[PropertyAddress] ([PropertyAddressId], [CityId], [DistrictId], [Description], [MetroId]) VALUES (21, 1, 10, N'Turkan qesebesi', NULL)
GO
INSERT [dbo].[PropertyAddress] ([PropertyAddressId], [CityId], [DistrictId], [Description], [MetroId]) VALUES (22, 2, 11, N'33 yolu', NULL)
GO
INSERT [dbo].[PropertyAddress] ([PropertyAddressId], [CityId], [DistrictId], [Description], [MetroId]) VALUES (23, 1, 10, N'Xəzər r. Şüvəlan q.', NULL)
GO
INSERT [dbo].[PropertyAddress] ([PropertyAddressId], [CityId], [DistrictId], [Description], [MetroId]) VALUES (24, 1, 12, NULL, NULL)
GO
INSERT [dbo].[PropertyAddress] ([PropertyAddressId], [CityId], [DistrictId], [Description], [MetroId]) VALUES (25, 5, NULL, N'Xirdalan şəhərində Merkezde Milyonerler mehellesinde', NULL)
GO
INSERT [dbo].[PropertyAddress] ([PropertyAddressId], [CityId], [DistrictId], [Description], [MetroId]) VALUES (28, 6, NULL, N'Heyet yani sahe satilir.Quba Rayon Alpan Kendinde.Wekiller sahenin ozune aiddir.Senedi var', NULL)
GO
INSERT [dbo].[PropertyAddress] ([PropertyAddressId], [CityId], [DistrictId], [Description], [MetroId]) VALUES (29, 1, 7, N'Badamdar qəsəbəsi., 3-cü Massiv.', NULL)
GO
INSERT [dbo].[PropertyAddress] ([PropertyAddressId], [CityId], [DistrictId], [Description], [MetroId]) VALUES (30, 1, 12, N'Talkuckanin yaxini', NULL)
GO
INSERT [dbo].[PropertyAddress] ([PropertyAddressId], [CityId], [DistrictId], [Description], [MetroId]) VALUES (31, 1, 2, N'Nərimanov rayonu Heydər Əliyev küçəsi', 3)
GO
INSERT [dbo].[PropertyAddress] ([PropertyAddressId], [CityId], [DistrictId], [Description], [MetroId]) VALUES (32, 1, 1, N'Metronun yaxinligi', 7)
GO
INSERT [dbo].[PropertyAddress] ([PropertyAddressId], [CityId], [DistrictId], [Description], [MetroId]) VALUES (33, 1, 1, N'Metronun yaxinligi.Mado restorani', 2)
GO
INSERT [dbo].[PropertyAddress] ([PropertyAddressId], [CityId], [DistrictId], [Description], [MetroId]) VALUES (34, 1, 2, N'Metronun cixisi', 2)
GO
INSERT [dbo].[PropertyAddress] ([PropertyAddressId], [CityId], [DistrictId], [Description], [MetroId]) VALUES (35, 2, 4, N'Melikov kuc 45', NULL)
GO
INSERT [dbo].[PropertyAddress] ([PropertyAddressId], [CityId], [DistrictId], [Description], [MetroId]) VALUES (36, 1, 2, N'Memmedov kuc', 1)
GO
INSERT [dbo].[PropertyAddress] ([PropertyAddressId], [CityId], [DistrictId], [Description], [MetroId]) VALUES (37, 3, NULL, N'Hesenov kuc32', NULL)
GO
SET IDENTITY_INSERT [dbo].[PropertyAddress] OFF
GO
SET IDENTITY_INSERT [dbo].[Feature] ON 
GO
INSERT [dbo].[Feature] ([FeatureId], [FeatureTitle]) VALUES (1, N'Credit')
GO
INSERT [dbo].[Feature] ([FeatureId], [FeatureTitle]) VALUES (2, N'HasDocument')
GO
INSERT [dbo].[Feature] ([FeatureId], [FeatureTitle]) VALUES (3, N'Repairing')
GO
INSERT [dbo].[Feature] ([FeatureId], [FeatureTitle]) VALUES (4, N'Gas')
GO
INSERT [dbo].[Feature] ([FeatureId], [FeatureTitle]) VALUES (5, N'Water')
GO
INSERT [dbo].[Feature] ([FeatureId], [FeatureTitle]) VALUES (6, N'Electric')
GO
INSERT [dbo].[Feature] ([FeatureId], [FeatureTitle]) VALUES (7, N'Telephone')
GO
INSERT [dbo].[Feature] ([FeatureId], [FeatureTitle]) VALUES (8, N'CabelTV')
GO
INSERT [dbo].[Feature] ([FeatureId], [FeatureTitle]) VALUES (9, N'Lift')
GO
INSERT [dbo].[Feature] ([FeatureId], [FeatureTitle]) VALUES (10, N'SwimmingPool')
GO
INSERT [dbo].[Feature] ([FeatureId], [FeatureTitle]) VALUES (11, N'CentralHeatingSystem')
GO
INSERT [dbo].[Feature] ([FeatureId], [FeatureTitle]) VALUES (12, N'Internet')
GO
INSERT [dbo].[Feature] ([FeatureId], [FeatureTitle]) VALUES (14, N'Conditioner')
GO
INSERT [dbo].[Feature] ([FeatureId], [FeatureTitle]) VALUES (15, N'KitchenFurniture')
GO
INSERT [dbo].[Feature] ([FeatureId], [FeatureTitle]) VALUES (16, N'Handy')
GO
INSERT [dbo].[Feature] ([FeatureId], [FeatureTitle]) VALUES (17, N'CombySystem')
GO
INSERT [dbo].[Feature] ([FeatureId], [FeatureTitle]) VALUES (18, N'Fence')
GO
INSERT [dbo].[Feature] ([FeatureId], [FeatureTitle]) VALUES (19, N'Gate')
GO
SET IDENTITY_INSERT [dbo].[Feature] OFF
GO
SET IDENTITY_INSERT [dbo].[PropertyFeature] ON 
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (163, 16, 3)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (164, 16, 4)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (165, 16, 5)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (166, 16, 6)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (167, 16, 7)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (168, 16, 8)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (169, 16, 9)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (170, 16, 11)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (171, 16, 14)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (172, 16, 15)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (173, 16, 17)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (174, 17, 3)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (175, 17, 4)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (176, 17, 5)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (177, 17, 6)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (178, 17, 7)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (179, 17, 8)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (180, 17, 9)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (181, 17, 14)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (182, 17, 15)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (183, 17, 17)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (184, 18, 3)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (185, 18, 4)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (186, 18, 5)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (187, 18, 6)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (188, 18, 7)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (189, 18, 8)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (190, 18, 15)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (191, 18, 16)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (192, 18, 17)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (193, 19, 3)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (194, 19, 4)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (195, 19, 5)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (196, 19, 6)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (197, 19, 7)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (198, 19, 8)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (199, 19, 11)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (200, 19, 16)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (201, 20, 3)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (202, 20, 4)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (203, 20, 5)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (204, 20, 6)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (205, 20, 7)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (206, 20, 8)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (207, 20, 9)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (208, 20, 14)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (209, 20, 15)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (210, 20, 16)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (211, 20, 17)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (212, 21, 2)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (213, 21, 3)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (214, 21, 4)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (215, 21, 5)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (216, 21, 6)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (217, 21, 7)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (218, 21, 8)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (219, 21, 12)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (220, 21, 14)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (221, 21, 15)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (222, 21, 17)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (223, 22, 2)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (224, 22, 3)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (225, 22, 4)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (226, 22, 5)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (227, 22, 6)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (228, 22, 7)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (229, 22, 8)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (230, 22, 12)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (231, 22, 14)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (232, 22, 15)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (233, 22, 17)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (234, 23, 2)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (235, 23, 3)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (236, 23, 4)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (237, 23, 5)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (238, 23, 6)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (239, 23, 7)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (240, 23, 8)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (241, 23, 12)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (242, 23, 14)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (243, 23, 17)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (244, 24, 3)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (245, 24, 4)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (246, 24, 5)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (247, 24, 6)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (248, 24, 8)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (249, 24, 14)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (250, 24, 17)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (251, 25, 2)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (252, 25, 3)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (253, 25, 4)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (254, 25, 5)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (255, 25, 6)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (258, 28, 2)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (259, 29, 1)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (260, 29, 4)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (261, 29, 5)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (262, 29, 6)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (263, 30, 3)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (264, 30, 4)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (265, 30, 5)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (266, 30, 6)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (267, 30, 7)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (268, 30, 8)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (269, 30, 11)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (270, 30, 12)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (271, 30, 14)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (272, 30, 17)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (273, 31, 2)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (274, 31, 4)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (275, 31, 5)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (276, 31, 6)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (277, 31, 7)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (278, 32, 1)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (279, 32, 4)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (280, 32, 6)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (281, 32, 16)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (282, 33, 5)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (283, 33, 7)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (284, 33, 15)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (285, 34, 1)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (286, 34, 5)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (287, 34, 12)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (288, 35, 1)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (289, 35, 6)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (290, 36, 1)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (291, 36, 4)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (292, 36, 8)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (293, 36, 15)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (307, 37, 2)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (308, 37, 3)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (309, 37, 4)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (310, 37, 5)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (311, 37, 6)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (312, 37, 8)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (313, 37, 9)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (314, 37, 11)
GO
INSERT [dbo].[PropertyFeature] ([PropertyFeatureId], [PropertyId], [FeatureId]) VALUES (315, 37, 16)
GO
SET IDENTITY_INSERT [dbo].[PropertyFeature] OFF
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName], [RegistrationDateTime], [ImageUrl]) VALUES (N'0e203171-51f3-4efb-bd93-dd1b5c46de9a', N'nadir@mail.ru', 0, N'AE3h3qHVekFSz/Z8kwQi8uXmaztiE2vYa1NdiXevvcGEfq7/C+lpwpOtcDLveyEVfQ==', N'0dab270e-419c-4cf3-8913-78b051a502a8', N'994552203265', 0, 0, NULL, 1, 0, N'nadir@mail.ru', N'nadir', N'Qulamov', CAST(N'2019-03-23T20:43:38.230' AS DateTime), NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName], [RegistrationDateTime], [ImageUrl]) VALUES (N'11d0dc81-cca7-4bc7-b4a4-0c1181ff417e', N'qolaz@mail.ru', 0, N'ANr/sswHEA9eRKPJGKWT0m2JBNnc9g0QwthSGbBhzNgi4b36L+gyCjTo1d0L93YATg==', N'68499781-c06f-4c24-8841-46884007868a', N'994512345432', 0, 0, NULL, 0, 0, N'qolaz@mail.ru', N'namiq', N'olev', CAST(N'2019-03-16T23:23:24.770' AS DateTime), NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName], [RegistrationDateTime], [ImageUrl]) VALUES (N'4d2a802f-19c1-47b5-9a4a-be3926fba516', N'affa@emil.com', 0, N'AF3+zG2rZ86K2V5IFpxN4MgmP4AsBB8aeZ5exumcMIbQXcnOeJoMyR9Ym7ilZxgGxw==', N'30d6cf09-21b9-41b6-a18f-ee933d920b45', N'994519662358', 0, 0, NULL, 1, 0, N'affa@emil.com', N'radim', N'seyodov', CAST(N'2019-03-23T14:30:03.563' AS DateTime), N'~/Content/Uploads/Profile/radim-03-23-19-171b35f631f9441ba5405c1fe7acdb42.jpg')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName], [RegistrationDateTime], [ImageUrl]) VALUES (N'f17ecabb-35b2-4763-a9d0-382b392cabc3', N'usahetem@hotmail.com', 0, N'AJYxmAvVBbY9SW3juGiK1ClpwQ9twTfvRY12cq79txq0VMrDO+v+Wos2sLy128gHNQ==', N'60d48c92-6c66-494e-b6e4-81a3cea22908', N'994518263865', 0, 0, NULL, 0, 0, N'usahetem@hotmail.com', N'Orxan', N'Abisli', CAST(N'2019-02-24T20:12:13.320' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[Property] ON 
GO
INSERT [dbo].[Property] ([PropertyId], [FloorNumber], [TotalArea], [Price], [Garage], [Bathroom], [SellingCondition], [PropertyDescription], [TypeId], [PropertyAddressId], [AddDate], [LandArea], [FlatFloor], [RoomNumber], [UserId], [ApartmentType]) VALUES (16, 18, CAST(157 AS Decimal(18, 0)), CAST(157000 AS Decimal(18, 0)), NULL, 2, 2, N'Tecili satilir.Menzil ozume mexsusdur.Baki k/t, Diaqnoz t/m yaxinliginda,elit kompleksde,157kv ganuni 3 otaq,əlavə 1 otag inşa edilib.Əlave otag=10kv,böyuk Garderob űçűn nezerde tutulub,uşag üçün otagda etmək olar.157 kv Super temirli gir yaşa menzil satilir. Temirden sonra yaşayiş olmayib.Menzil istilik sistemi - kombidir.Dehliz + metbex + sanuzel qovsaqlarinin dosemesi (isti pol) ile tehciz olunub. Gaz,su,isiq,lift, video muşahide, yeralti ve yerustu parking 24 saat fealiyyetdedir. Butun otaqlar 1-ci gun işigi görür.Şehere ve denize möhteşem panorama acilir. Otaqlarin dosemesi parket (Rusiya), dehliz ve metbexin dosemesi keramik mermer ile dosenib. Bahali metbex desti yigilib, 2 ayri-ayri hamam tualeti var, biri yataq otagina özəl olaraq aiddir. Real aliciya qiymetde guzest olunacaq.Tezlikle cixariş (kupca)verilecek.Metroya 10 degigelik piyada mesafede yerleşir.', 1, 16, CAST(N'2019-03-13T14:35:41.543' AS DateTime), NULL, 12, 4, N'f17ecabb-35b2-4763-a9d0-382b392cabc3', 1)
GO
INSERT [dbo].[Property] ([PropertyId], [FloorNumber], [TotalArea], [Price], [Garage], [Bathroom], [SellingCondition], [PropertyDescription], [TypeId], [PropertyAddressId], [AddDate], [LandArea], [FlatFloor], [RoomNumber], [UserId], [ApartmentType]) VALUES (17, 18, CAST(140 AS Decimal(18, 0)), CAST(245000 AS Decimal(18, 0)), NULL, 2, 2, N'bakiin ən ekoloji̇ təmi̇z yeri̇ ! ! ! mili məclisin arxasi, oxford məktəbi ilə qarşı ! dəniz görünüşü ! gaz var ! parket döşəmə ! elit, örtüklü və tam məskunlaşmış kompleks ideal ! mükəmməl proyekt ! salon 40 kv.m, mətbəx 20 m², yataq otağı 25 + 20 kv.m. i̇ki vanna otağı, üç balkon. döşəmə altında istiləşmə! 800 avtomobili üçün yeraltı otoparkı olan böyük qorunan həyət ! i̇dman kompleksi, supermarket, uşaq bağçası və s. dizayner təmir. qapılar h. 2.20cm və bütün daxili qurğuları ariston-hotpoint / i̇talya! qızdırılmış döşəmələr! kondisionerlər! gözətrafı kameralar avlusun ətrafında, giriş və liftlərdə quraşdırılır! tezliklə cixarish verilir', 1, 17, CAST(N'2019-03-13T14:52:17.423' AS DateTime), NULL, 15, 3, N'f17ecabb-35b2-4763-a9d0-382b392cabc3', 1)
GO
INSERT [dbo].[Property] ([PropertyId], [FloorNumber], [TotalArea], [Price], [Garage], [Bathroom], [SellingCondition], [PropertyDescription], [TypeId], [PropertyAddressId], [AddDate], [LandArea], [FlatFloor], [RoomNumber], [UserId], [ApartmentType]) VALUES (18, 14, CAST(200 AS Decimal(18, 0)), CAST(495000 AS Decimal(18, 0)), NULL, 1, 2, N'Cox tecilli olaraq satilir.Green park yaşayış kompleksində (roseville ilə yan yana) 4 otaqlı (3 otağa düzəldilmiş) 200 kv m sahəsi olan çixarışlı mənzili mənzil xüsusi zövq, yüksək keyfiyyət və incəliklə klassik üslubda təmir edilmişdir. mənzildə istifadə olunan mebellər,qapılar,aksesuarlar başqa ölkələrdən xüsusi sifarişlə gətirilmişdir.(tam mebel ilə qiymət 530000 azn ).mənzil yel çəkəndir,zal,mətbəx,yataq otaqının baxışı dədə qorqud parkı və gölədir.mənzil 14 mərtəbəli binanın 9-cu mərtəbəsində yerləşir (mərtəbədə toplam 2 mənzil var).binanın daxilində 2 mərtəbəli parking,2 sürətli li̇ft,video müşahidə məntqəsi,mühafizə xidməti,spa mərkəzi,sauna,fitnes,trenajor zalı,market,gözəllik salonu,uşaq əyləncə mərkəzi və s. vardır. mənzilə sahib olmaq üçün tələsin!...', 1, 18, CAST(N'2019-03-13T15:12:12.667' AS DateTime), NULL, 9, 4, N'f17ecabb-35b2-4763-a9d0-382b392cabc3', 1)
GO
INSERT [dbo].[Property] ([PropertyId], [FloorNumber], [TotalArea], [Price], [Garage], [Bathroom], [SellingCondition], [PropertyDescription], [TypeId], [PropertyAddressId], [AddDate], [LandArea], [FlatFloor], [RoomNumber], [UserId], [ApartmentType]) VALUES (19, 5, CAST(50 AS Decimal(18, 0)), CAST(450 AS Decimal(18, 0)), NULL, 1, 1, N'Nəsimi rayonu Ceyhunbəy hacıbəyov küçəsində,Dostlug kinoteatrının yaxınlıgında,köhnə tikili 5 mərtəbəli binanın 4-cü mərtəbəsində,sahəsi 50kv/m olan 2 otaglı hər bir şəraiti olan əşyalı mənzil kirayə verilir.Qiyməti 450 manat.1-ci ay məbləgin 20%-i, şirkətin komision haqqı ödəniləcək', 1, 19, CAST(N'2019-03-13T15:18:47.340' AS DateTime), NULL, 4, 2, N'f17ecabb-35b2-4763-a9d0-382b392cabc3', 2)
GO
INSERT [dbo].[Property] ([PropertyId], [FloorNumber], [TotalArea], [Price], [Garage], [Bathroom], [SellingCondition], [PropertyDescription], [TypeId], [PropertyAddressId], [AddDate], [LandArea], [FlatFloor], [RoomNumber], [UserId], [ApartmentType]) VALUES (20, 9, CAST(80 AS Decimal(18, 0)), CAST(500 AS Decimal(18, 0)), NULL, 1, 1, N'Yeni Yasamalda Bizim Markete yaxln Leziz House restiranlnln yanlndakl 9 mertabeli Leninqrad Layiheli binada 2 otaqll menzil meishet avadanllqlarl ile birlikde kiraye verilir.Shekiller 100% menzile mexsusdur istilik sistemi Kombidir.Paltaryuyan,Soyuducu,TV,Internet ve.s. ', 1, 20, CAST(N'2019-03-13T17:36:43.120' AS DateTime), NULL, 3, 2, N'f17ecabb-35b2-4763-a9d0-382b392cabc3', 2)
GO
INSERT [dbo].[Property] ([PropertyId], [FloorNumber], [TotalArea], [Price], [Garage], [Bathroom], [SellingCondition], [PropertyDescription], [TypeId], [PropertyAddressId], [AddDate], [LandArea], [FlatFloor], [RoomNumber], [UserId], [ApartmentType]) VALUES (21, 3, CAST(500 AS Decimal(18, 0)), CAST(400000 AS Decimal(18, 0)), 1, 4, 2, N'cox tecili!!! bazar qiymetinden asagi!!! seherin merkezi baş poçtdan 32-35 km (30 deqiqelik) mesafede xezer rayonunun havasina ve denizine gore en temiz erazisi olan turkan baglarinda merkezi yoldan 100 metr, denizden 200 metr mesafede 18 sot torpagin icinde monalit 3 mertebe umumi sahesi 500 kv m olan super evro temirli 8 otaqli villa satilir. doseme parket, 4 sauzel, ispan santexnikasi, aboylar zambaiti, her otaqda kondisioner, qurasdirilmis metbex mebeli, musahide kamerasi, siqnalizasiya. qazi, suyu, isigi daimidir, istilik sistemi kombi. heyetde 2 mertebeli qonaq evi, muhafize otagi, besedka, hovuzu, qaraji, coxlu dekorativ agaci, etrafda elit qonsulari. butun senedler qaydasindadir kupca var. bag butun bahali mebeli ile bir yerde satilir. elave odenisle barterde mumkundur. ', 2, 21, CAST(N'2019-03-13T17:43:28.790' AS DateTime), CAST(18 AS Decimal(18, 0)), NULL, 7, N'f17ecabb-35b2-4763-a9d0-382b392cabc3', NULL)
GO
INSERT [dbo].[Property] ([PropertyId], [FloorNumber], [TotalArea], [Price], [Garage], [Bathroom], [SellingCondition], [PropertyDescription], [TypeId], [PropertyAddressId], [AddDate], [LandArea], [FlatFloor], [RoomNumber], [UserId], [ApartmentType]) VALUES (22, 2, CAST(105 AS Decimal(18, 0)), CAST(110000 AS Decimal(18, 0)), 1, 1, 2, N'Corat baglari 2,1 sot 2 mertebe 4 otaq tam temirli. Ara kesme monalit 2-ci mertebe kemer. Kupcali. ', 2, 22, CAST(N'2019-03-13T17:56:43.577' AS DateTime), CAST(2 AS Decimal(18, 0)), NULL, 4, N'f17ecabb-35b2-4763-a9d0-382b392cabc3', NULL)
GO
INSERT [dbo].[Property] ([PropertyId], [FloorNumber], [TotalArea], [Price], [Garage], [Bathroom], [SellingCondition], [PropertyDescription], [TypeId], [PropertyAddressId], [AddDate], [LandArea], [FlatFloor], [RoomNumber], [UserId], [ApartmentType]) VALUES (23, 1, CAST(170 AS Decimal(18, 0)), CAST(210000 AS Decimal(18, 0)), 1, 1, 2, N'Şüvəlanda 6 sot torpaq sahəsində xüsusi zövqlə və dizaynla inşa edilmiş 1 mərtəbəli bağ evi təklif edirik.170 kv.m sahəsi var.4 otaqdan və 2 s/q dan ibarətdir. Təmir tikinti zamanı yalnız keyfiyyətli materiallardan istifadə olunub.Bahalı divar kağızları və çılçıraqlar.Əla layihə,elitar təbəqə.Kiçik bir nüans belə göz ardı edilməyib.Hündür tavan, 1 böyük mətbəx,isti döşəmə.Bütün mebeller ilə birgə satılır.Hər bir şəraiti var.Həyətdə geniş filtirli hovuz,bisetka var.Yolu asfalt.Qaz,su ,işıq daimidir..Sənədlər qaydasındadır.', 2, 23, CAST(N'2019-03-14T22:36:50.187' AS DateTime), CAST(6 AS Decimal(18, 0)), NULL, 4, N'f17ecabb-35b2-4763-a9d0-382b392cabc3', NULL)
GO
INSERT [dbo].[Property] ([PropertyId], [FloorNumber], [TotalArea], [Price], [Garage], [Bathroom], [SellingCondition], [PropertyDescription], [TypeId], [PropertyAddressId], [AddDate], [LandArea], [FlatFloor], [RoomNumber], [UserId], [ApartmentType]) VALUES (24, 2, CAST(170 AS Decimal(18, 0)), CAST(175000 AS Decimal(18, 0)), 1, 1, 2, N'Xəzər rayonunda, ekoloji cəhətdən təmiz havası olan Şüvəlan qəsəbəsində, tam infrastrukturlu və pristijli bir məkanda, 4.5 sotun içində yerləşən debedebeli, muasir uslubda tikilmiş ümumi sahəsi 170 kv-m olan 2 mərtəbəli 4 otaqlı mohtesem Bağ evi satılır! Evin tikintisində keyfiyyətli tikinti materiallarından istifadə edilmiş və çox səliqəli inşa edilmişdir. Bağın qazı, suyu, işığı daimidir. Sənədləri qaydasındadir (KUPÇA). 4 otaqdan ibarət olan bu evin 1 genis zali, 1 genis mətbəxi, 3 genis yataq otaqlari, 2 sanitar qovsaqi var .Istilik sistemi kombidir. Həyətində filtirli hovuzu, bisetkası, yay mətəbxi, qarajı, manqalnisi, dekorativ meyvə ağacları, 1 sanitar qovşağı və digər üstün cəhətləri var.', 2, 24, CAST(N'2019-03-14T22:47:17.723' AS DateTime), CAST(5 AS Decimal(18, 0)), NULL, 4, N'f17ecabb-35b2-4763-a9d0-382b392cabc3', NULL)
GO
INSERT [dbo].[Property] ([PropertyId], [FloorNumber], [TotalArea], [Price], [Garage], [Bathroom], [SellingCondition], [PropertyDescription], [TypeId], [PropertyAddressId], [AddDate], [LandArea], [FlatFloor], [RoomNumber], [UserId], [ApartmentType]) VALUES (25, 2, CAST(130 AS Decimal(18, 0)), CAST(92000 AS Decimal(18, 0)), 1, 1, 2, N'Xirdalan şəhərində Merkezde Milyonerler mehellesinde, 1.3 sotda tikilmiş, Sahesi 130 KV-da olan 2 mertebe 4 otagli Tam Temirli Kupcali Heyet Evi satilir.', 2, 25, CAST(N'2019-03-14T22:58:58.610' AS DateTime), CAST(1 AS Decimal(18, 0)), NULL, 4, N'f17ecabb-35b2-4763-a9d0-382b392cabc3', NULL)
GO
INSERT [dbo].[Property] ([PropertyId], [FloorNumber], [TotalArea], [Price], [Garage], [Bathroom], [SellingCondition], [PropertyDescription], [TypeId], [PropertyAddressId], [AddDate], [LandArea], [FlatFloor], [RoomNumber], [UserId], [ApartmentType]) VALUES (28, NULL, NULL, CAST(11800 AS Decimal(18, 0)), NULL, NULL, 2, N'Heyet yani sahe satilir.Quba Rayon Alpan Kendinde.Wekiller sahenin ozune aiddir.Senedi var', 3, 28, CAST(N'2019-03-16T23:32:42.193' AS DateTime), CAST(14 AS Decimal(18, 0)), NULL, NULL, N'f17ecabb-35b2-4763-a9d0-382b392cabc3', NULL)
GO
INSERT [dbo].[Property] ([PropertyId], [FloorNumber], [TotalArea], [Price], [Garage], [Bathroom], [SellingCondition], [PropertyDescription], [TypeId], [PropertyAddressId], [AddDate], [LandArea], [FlatFloor], [RoomNumber], [UserId], [ApartmentType]) VALUES (29, NULL, NULL, CAST(67000 AS Decimal(18, 0)), NULL, NULL, 1, N'Badamdar qesebesinde, 3ci massiv ərazisində, girişdə 3 sot torpaq sahesi satilir. Qaz, su, isiq, xətləri mövcuddur. Ətraf tam yasayislidir, əsas yola qeder yollar asfaltdir. Senedler qaydasindadi torpağın CIXARISi ', 3, 29, CAST(N'2019-03-16T23:37:46.270' AS DateTime), CAST(3 AS Decimal(18, 0)), NULL, NULL, N'f17ecabb-35b2-4763-a9d0-382b392cabc3', NULL)
GO
INSERT [dbo].[Property] ([PropertyId], [FloorNumber], [TotalArea], [Price], [Garage], [Bathroom], [SellingCondition], [PropertyDescription], [TypeId], [PropertyAddressId], [AddDate], [LandArea], [FlatFloor], [RoomNumber], [UserId], [ApartmentType]) VALUES (30, 12, CAST(230 AS Decimal(18, 0)), CAST(165000 AS Decimal(18, 0)), NULL, NULL, 2, N'Sabuncu rayonu Razin Talkuckanin yaxini 12 mertebeli binanin 1 ci mertebesinde temirli 7 Kabinetli Kafe Restaran Satilir,her seraiti var Real musteriler buyursun Fikiri Ciddi olmayan Zeng vurmasin...', 4, 30, CAST(N'2019-03-16T23:44:26.943' AS DateTime), NULL, 1, 7, N'f17ecabb-35b2-4763-a9d0-382b392cabc3', NULL)
GO
INSERT [dbo].[Property] ([PropertyId], [FloorNumber], [TotalArea], [Price], [Garage], [Bathroom], [SellingCondition], [PropertyDescription], [TypeId], [PropertyAddressId], [AddDate], [LandArea], [FlatFloor], [RoomNumber], [UserId], [ApartmentType]) VALUES (31, 2, CAST(41 AS Decimal(18, 0)), CAST(195000 AS Decimal(18, 0)), NULL, NULL, 2, N'Nərimanov rayonu Heydər Əliyev küçəsində, Tonqal restoranın yaxınlıgında, ümumi sahəsi 41 kv/m sahəsi olan 2 mərtəbəli obyekt satilir.Obekt əsas yolun kənarında yerləşir. Hər ikisi icarədədir ümumi məbləq 750 manat.Sənədi Kupçadır(qeyri yaşayış) Qiyməti 195.000', 4, 31, CAST(N'2019-03-16T23:47:33.843' AS DateTime), NULL, 2, 1, N'f17ecabb-35b2-4763-a9d0-382b392cabc3', NULL)
GO
INSERT [dbo].[Property] ([PropertyId], [FloorNumber], [TotalArea], [Price], [Garage], [Bathroom], [SellingCondition], [PropertyDescription], [TypeId], [PropertyAddressId], [AddDate], [LandArea], [FlatFloor], [RoomNumber], [UserId], [ApartmentType]) VALUES (35, NULL, NULL, CAST(600000 AS Decimal(18, 0)), NULL, NULL, 1, N'Herterefi hasarla ortulub.', 3, 35, CAST(N'2019-03-23T20:46:56.560' AS DateTime), CAST(20 AS Decimal(18, 0)), NULL, NULL, N'0e203171-51f3-4efb-bd93-dd1b5c46de9a', NULL)
GO
INSERT [dbo].[Property] ([PropertyId], [FloorNumber], [TotalArea], [Price], [Garage], [Bathroom], [SellingCondition], [PropertyDescription], [TypeId], [PropertyAddressId], [AddDate], [LandArea], [FlatFloor], [RoomNumber], [UserId], [ApartmentType]) VALUES (36, 3, CAST(120 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)), 2, 2, 2, N'Heyetinde hovuzu var', 2, 36, CAST(N'2019-03-23T23:03:28.893' AS DateTime), CAST(3 AS Decimal(18, 0)), NULL, 2, N'0e203171-51f3-4efb-bd93-dd1b5c46de9a', NULL)
GO
INSERT [dbo].[Property] ([PropertyId], [FloorNumber], [TotalArea], [Price], [Garage], [Bathroom], [SellingCondition], [PropertyDescription], [TypeId], [PropertyAddressId], [AddDate], [LandArea], [FlatFloor], [RoomNumber], [UserId], [ApartmentType]) VALUES (37, 5, CAST(90 AS Decimal(18, 0)), CAST(120000 AS Decimal(18, 0)), NULL, 2, 2, N'Tam temirli.Xususi parking.', 1, 37, CAST(N'2019-03-29T21:41:42.590' AS DateTime), NULL, 2, 3, N'0e203171-51f3-4efb-bd93-dd1b5c46de9a', 1)
GO
SET IDENTITY_INSERT [dbo].[Property] OFF
GO
SET IDENTITY_INSERT [dbo].[Photo] ON 
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (25, 16, N'3132019023540_0', N'~\Content\Uploads\Properties\3132019023540_0.jpg', CAST(44917.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T14:35:41.543' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (26, 16, N'3132019023540_1', N'~\Content\Uploads\Properties\3132019023540_1.jpg', CAST(49012.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T14:35:41.543' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (27, 16, N'3132019023540_2', N'~\Content\Uploads\Properties\3132019023540_2.jpg', CAST(40766.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T14:35:41.543' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (28, 16, N'3132019023540_3', N'~\Content\Uploads\Properties\3132019023540_3.jpg', CAST(48860.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T14:35:41.543' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (29, 16, N'3132019023540_4', N'~\Content\Uploads\Properties\3132019023540_4.jpg', CAST(49368.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T14:35:41.543' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (30, 17, N'3132019025216_0', N'~\Content\Uploads\Properties\3132019025216_0.jpg', CAST(110782.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T14:52:17.423' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (31, 17, N'3132019025216_1', N'~\Content\Uploads\Properties\3132019025216_1.jpg', CAST(53550.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T14:52:17.423' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (32, 17, N'3132019025216_2', N'~\Content\Uploads\Properties\3132019025216_2.jpg', CAST(44241.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T14:52:17.423' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (33, 17, N'3132019025216_3', N'~\Content\Uploads\Properties\3132019025216_3.jpg', CAST(56497.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T14:52:17.423' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (34, 17, N'3132019025216_4', N'~\Content\Uploads\Properties\3132019025216_4.jpg', CAST(85665.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T14:52:17.423' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (35, 18, N'3132019031211_0', N'~\Content\Uploads\Properties\3132019031211_0.jpg', CAST(41729.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T15:12:12.667' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (36, 18, N'3132019031211_1', N'~\Content\Uploads\Properties\3132019031211_1.jpg', CAST(68742.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T15:12:12.667' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (37, 18, N'3132019031211_2', N'~\Content\Uploads\Properties\3132019031211_2.jpg', CAST(63755.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T15:12:12.667' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (38, 18, N'3132019031211_3', N'~\Content\Uploads\Properties\3132019031211_3.jpg', CAST(81024.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T15:12:12.667' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (39, 18, N'3132019031211_4', N'~\Content\Uploads\Properties\3132019031211_4.jpeg', CAST(69526.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T15:12:12.667' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (40, 18, N'3132019031211_5', N'~\Content\Uploads\Properties\3132019031211_5.jpeg', CAST(94744.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T15:12:12.667' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (41, 19, N'3132019031846_0', N'~\Content\Uploads\Properties\3132019031846_0.jpg', CAST(36113.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T15:18:47.340' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (42, 19, N'3132019031846_1', N'~\Content\Uploads\Properties\3132019031846_1.jpg', CAST(47756.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T15:18:47.340' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (43, 19, N'3132019031846_2', N'~\Content\Uploads\Properties\3132019031846_2.jpg', CAST(38781.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T15:18:47.340' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (44, 19, N'3132019031846_3', N'~\Content\Uploads\Properties\3132019031846_3.jpg', CAST(35442.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T15:18:47.340' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (45, 20, N'3132019053628_0', N'~\Content\Uploads\Properties\3132019053628_0.jpeg', CAST(46772.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T17:36:47.583' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (46, 20, N'3132019053628_1', N'~\Content\Uploads\Properties\3132019053628_1.jpeg', CAST(62554.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T17:36:47.583' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (47, 20, N'3132019053628_2', N'~\Content\Uploads\Properties\3132019053628_2.jpeg', CAST(49557.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T17:36:47.583' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (48, 20, N'3132019053628_3', N'~\Content\Uploads\Properties\3132019053628_3.jpeg', CAST(62556.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T17:36:47.583' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (49, 20, N'3132019053628_4', N'~\Content\Uploads\Properties\3132019053628_4.jpeg', CAST(49507.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T17:36:47.583' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (50, 21, N'3132019054328_0', N'~\Content\Uploads\Properties\3132019054328_0.jpeg', CAST(104331.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T17:43:28.790' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (51, 21, N'3132019054328_1', N'~\Content\Uploads\Properties\3132019054328_1.jpeg', CAST(115308.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T17:43:28.790' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (52, 21, N'3132019054328_2', N'~\Content\Uploads\Properties\3132019054328_2.jpeg', CAST(103745.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T17:43:28.790' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (53, 21, N'3132019054328_3', N'~\Content\Uploads\Properties\3132019054328_3.jpeg', CAST(60076.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T17:43:28.790' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (54, 21, N'3132019054328_4', N'~\Content\Uploads\Properties\3132019054328_4.jpeg', CAST(69327.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T17:43:28.790' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (55, 21, N'3132019054328_5', N'~\Content\Uploads\Properties\3132019054328_5.jpeg', CAST(56088.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T17:43:28.790' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (56, 22, N'3132019055643_0', N'~\Content\Uploads\Properties\3132019055643_0.jpg', CAST(52197.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T17:56:43.577' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (57, 22, N'3132019055643_1', N'~\Content\Uploads\Properties\3132019055643_1.jpg', CAST(42284.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T17:56:43.577' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (58, 22, N'3132019055643_2', N'~\Content\Uploads\Properties\3132019055643_2.jpg', CAST(45105.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T17:56:43.577' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (59, 22, N'3132019055643_3', N'~\Content\Uploads\Properties\3132019055643_3.jpg', CAST(51674.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T17:56:43.577' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (60, 22, N'3132019055643_4', N'~\Content\Uploads\Properties\3132019055643_4.jpg', CAST(42584.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T17:56:43.577' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (61, 22, N'3132019055643_5', N'~\Content\Uploads\Properties\3132019055643_5.jpg', CAST(49956.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-13T17:56:43.577' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (62, 23, N'3142019103650_0', N'~\Content\Uploads\Properties\3142019103650_0.jpg', CAST(88128.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-14T22:36:50.187' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (63, 23, N'3142019103650_1', N'~\Content\Uploads\Properties\3142019103650_1.jpg', CAST(81087.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-14T22:36:50.187' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (64, 23, N'3142019103650_2', N'~\Content\Uploads\Properties\3142019103650_2.jpg', CAST(82374.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-14T22:36:50.187' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (65, 23, N'3142019103650_3', N'~\Content\Uploads\Properties\3142019103650_3.jpg', CAST(66511.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-14T22:36:50.187' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (66, 23, N'3142019103650_4', N'~\Content\Uploads\Properties\3142019103650_4.jpg', CAST(45858.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-14T22:36:50.187' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (67, 23, N'3142019103650_5', N'~\Content\Uploads\Properties\3142019103650_5.jpg', CAST(48664.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-14T22:36:50.187' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (68, 24, N'3142019104717_0', N'~\Content\Uploads\Properties\3142019104717_0.jpg', CAST(84845.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-14T22:47:17.723' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (69, 24, N'3142019104717_1', N'~\Content\Uploads\Properties\3142019104717_1.jpg', CAST(65917.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-14T22:47:17.723' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (70, 24, N'3142019104717_2', N'~\Content\Uploads\Properties\3142019104717_2.jpg', CAST(60229.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-14T22:47:17.723' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (71, 24, N'3142019104717_3', N'~\Content\Uploads\Properties\3142019104717_3.jpg', CAST(63085.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-14T22:47:17.723' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (72, 24, N'3142019104717_4', N'~\Content\Uploads\Properties\3142019104717_4.jpg', CAST(70247.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-14T22:47:17.723' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (73, 25, N'3142019105858_0', N'~\Content\Uploads\Properties\3142019105858_0.jpg', CAST(69210.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-14T22:58:58.610' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (74, 25, N'3142019105858_1', N'~\Content\Uploads\Properties\3142019105858_1.jpg', CAST(62256.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-14T22:58:58.610' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (75, 25, N'3142019105858_2', N'~\Content\Uploads\Properties\3142019105858_2.jpg', CAST(50098.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-14T22:58:58.610' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (76, 28, N'3162019113241PM_0', N'~/Content/Uploads/Properties/3162019113241PM_0.jpg', CAST(63365.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-16T23:32:42.193' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (77, 28, N'3162019113241PM_1', N'~/Content/Uploads/Properties/3162019113241PM_1.jpg', CAST(84014.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-16T23:32:42.193' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (78, 28, N'3162019113241PM_2', N'~/Content/Uploads/Properties/3162019113241PM_2.jpg', CAST(80924.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-16T23:32:42.193' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (79, 28, N'3162019113242PM_3', N'~/Content/Uploads/Properties/3162019113242PM_3.jpg', CAST(91743.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-16T23:32:42.193' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (80, 29, N'3162019113746PM_0', N'~/Content/Uploads/Properties/3162019113746PM_0.jpg', CAST(79585.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-16T23:37:46.270' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (81, 29, N'3162019113746PM_1', N'~/Content/Uploads/Properties/3162019113746PM_1.jpg', CAST(105223.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-16T23:37:46.270' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (82, 29, N'3162019113746PM_2', N'~/Content/Uploads/Properties/3162019113746PM_2.jpg', CAST(57771.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-16T23:37:46.270' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (83, 29, N'3162019113746PM_3', N'~/Content/Uploads/Properties/3162019113746PM_3.jpg', CAST(96663.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-16T23:37:46.270' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (84, 29, N'3162019113746PM_4', N'~/Content/Uploads/Properties/3162019113746PM_4.jpg', CAST(79915.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-16T23:37:46.270' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (85, 30, N'3162019114426PM_0', N'~/Content/Uploads/Properties/3162019114426PM_0.jpg', CAST(48402.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-16T23:44:26.943' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (86, 30, N'3162019114426PM_1', N'~/Content/Uploads/Properties/3162019114426PM_1.jpg', CAST(39791.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-16T23:44:26.943' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (87, 30, N'3162019114426PM_2', N'~/Content/Uploads/Properties/3162019114426PM_2.jpg', CAST(34813.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-16T23:44:26.943' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (88, 30, N'3162019114426PM_3', N'~/Content/Uploads/Properties/3162019114426PM_3.jpg', CAST(33220.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-16T23:44:26.943' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (89, 30, N'3162019114426PM_4', N'~/Content/Uploads/Properties/3162019114426PM_4.jpg', CAST(50442.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-16T23:44:26.943' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (90, 30, N'3162019114426PM_5', N'~/Content/Uploads/Properties/3162019114426PM_5.jpg', CAST(50594.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-16T23:44:26.943' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (91, 30, N'3162019114426PM_6', N'~/Content/Uploads/Properties/3162019114426PM_6.jpg', CAST(53156.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-16T23:44:26.943' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (92, 31, N'3162019114733PM_0', N'~/Content/Uploads/Properties/3162019114733PM_0.jpg', CAST(75139.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-16T23:47:33.843' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (93, 31, N'3162019114733PM_1', N'~/Content/Uploads/Properties/3162019114733PM_1.jpg', CAST(72745.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-16T23:47:33.843' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (94, 31, N'3162019114733PM_2', N'~/Content/Uploads/Properties/3162019114733PM_2.jpg', CAST(49822.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-16T23:47:33.843' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (95, 31, N'3162019114733PM_3', N'~/Content/Uploads/Properties/3162019114733PM_3.jpg', CAST(50960.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-16T23:47:33.843' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (96, 31, N'3162019114733PM_4', N'~/Content/Uploads/Properties/3162019114733PM_4.jpg', CAST(37945.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-16T23:47:33.843' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (97, 32, N'3232019030146PM_0', N'~/Content/Uploads/Properties/3232019030146PM_0.jpg', CAST(32742.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-23T15:01:46.213' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (98, 32, N'3232019030146PM_1', N'~/Content/Uploads/Properties/3232019030146PM_1.jpg', CAST(147026.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-23T15:01:46.213' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (99, 32, N'3232019030146PM_2', N'~/Content/Uploads/Properties/3232019030146PM_2.jpg', CAST(8026.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-23T15:01:46.213' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (100, 32, N'3232019030146PM_3', N'~/Content/Uploads/Properties/3232019030146PM_3.jpg', CAST(7717.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-23T15:01:46.213' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (101, 33, N'3232019043047PM_0', N'~/Content/Uploads/Properties/3232019043047PM_0.jpg', CAST(32742.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-23T16:30:47.293' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (102, 33, N'3232019043047PM_1', N'~/Content/Uploads/Properties/3232019043047PM_1.jpg', CAST(147026.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-23T16:30:47.293' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (103, 33, N'3232019043047PM_2', N'~/Content/Uploads/Properties/3232019043047PM_2.jpg', CAST(8026.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-23T16:30:47.293' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (104, 33, N'3232019043047PM_3', N'~/Content/Uploads/Properties/3232019043047PM_3.jpg', CAST(7717.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-23T16:30:47.293' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (105, 34, N'3232019043336PM_0', N'~/Content/Uploads/Properties/3232019043336PM_0.jpg', CAST(32742.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-23T16:33:36.667' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (106, 34, N'3232019043336PM_1', N'~/Content/Uploads/Properties/3232019043336PM_1.jpg', CAST(147026.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-23T16:33:36.667' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (107, 34, N'3232019043336PM_2', N'~/Content/Uploads/Properties/3232019043336PM_2.jpg', CAST(8026.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-23T16:33:36.667' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (108, 34, N'3232019043336PM_3', N'~/Content/Uploads/Properties/3232019043336PM_3.jpg', CAST(7717.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-23T16:33:36.667' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (109, 35, N'3232019084656PM_0', N'~/Content/Uploads/Properties/3232019084656PM_0.jpg', CAST(5865.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-23T20:46:56.560' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (110, 35, N'3232019084656PM_1', N'~/Content/Uploads/Properties/3232019084656PM_1.jpg', CAST(6427.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-23T20:46:56.560' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (111, 35, N'3232019084656PM_2', N'~/Content/Uploads/Properties/3232019084656PM_2.jpg', CAST(117743.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-23T20:46:56.560' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (112, 36, N'3232019110328PM_0', N'~/Content/Uploads/Properties/3232019110328PM_0.jpg', CAST(8458.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-23T23:03:28.893' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (113, 36, N'3232019110328PM_1', N'~/Content/Uploads/Properties/3232019110328PM_1.jpg', CAST(5807.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-23T23:03:28.893' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (114, 36, N'3232019110328PM_2', N'~/Content/Uploads/Properties/3232019110328PM_2.jpg', CAST(9608.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-23T23:03:28.893' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (115, 36, N'3232019110328PM_3', N'~/Content/Uploads/Properties/3232019110328PM_3.jpg', CAST(7969.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-23T23:03:28.893' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (116, 37, N'3232019110941PM_0', N'~/Content/Uploads/Properties/3232019110941PM_0.jpg', CAST(32742.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-23T23:09:41.560' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (117, 37, N'3232019110941PM_1', N'~/Content/Uploads/Properties/3232019110941PM_1.jpg', CAST(81549.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-23T23:09:41.560' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (118, 37, N'3232019110941PM_2', N'~/Content/Uploads/Properties/3232019110941PM_2.jpg', CAST(8458.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-23T23:09:41.560' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (119, 37, N'3232019110941PM_3', N'~/Content/Uploads/Properties/3232019110941PM_3.jpg', CAST(5807.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-23T23:09:41.560' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (120, 37, N'3232019110941PM_4', N'~/Content/Uploads/Properties/3232019110941PM_4.jpg', CAST(7969.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-23T23:09:41.560' AS DateTime))
GO
INSERT [dbo].[Photo] ([PhotoId], [PropertyId], [PhotoTitle], [PhotoPath], [PhotoSize], [AltText], [UploadedFrom], [UploadedTo], [Size], [Extension], [UploadedOn]) VALUES (121, 37, N'3232019110941PM_5', N'~/Content/Uploads/Properties/3232019110941PM_5.jpg', CAST(163511.000000 AS Decimal(18, 6)), NULL, NULL, NULL, NULL, NULL, CAST(N'2019-03-23T23:09:41.560' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Photo] OFF
GO

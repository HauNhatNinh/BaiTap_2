USE [QLSV]
GO
INSERT [dbo].[SinhVien] ([maSV], [hoTen], [NgaySinh]) VALUES (N'K225480106055', N'Trần Phương Thảo', CAST(N'2004-07-16' AS Date))
INSERT [dbo].[SinhVien] ([maSV], [hoTen], [NgaySinh]) VALUES (N'K225480106064', N'Đỗ Thanh Hoa', CAST(N'2004-10-05' AS Date))
INSERT [dbo].[SinhVien] ([maSV], [hoTen], [NgaySinh]) VALUES (N'K225480106077', N'Hầu Nhật Ninh', CAST(N'2003-12-20' AS Date))
GO
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [STC]) VALUES (N'203VXL', N'Vi Xử Lý', 3)
GO
INSERT [dbo].[LopHP] ([maLopHP], [tenLopHP], [HK], [maMon], [maGV]) VALUES (N'VXL001', N'Vi Xử Lý', 2, N'203VXL', N'GV5656')
GO
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [diemThi], [PhanTramThi]) VALUES (111, N'VXL001', N'K225480106077', 8, 60)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [diemThi], [PhanTramThi]) VALUES (112, N'VXL001', N'K225480106055', 7, 60)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [diemThi], [PhanTramThi]) VALUES (113, N'VXL001', N'K225480106064', 9, 60)
GO
SET IDENTITY_INSERT [dbo].[Diem] ON 

INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (1, 111, 8.75)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (2, 111, 7)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (3, 112, 7.25)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (4, 113, 5)
SET IDENTITY_INSERT [dbo].[Diem] OFF
GO

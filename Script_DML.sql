USE [QLSV]
GO
/****** Object:  Table [dbo].[BoMon]    Script Date: 24/03/2025 9:40:45 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoMon](
	[maBM] [varchar](25) NOT NULL,
	[tenBM] [nvarchar](50) NULL,
	[maKhoa] [varchar](20) NULL,
 CONSTRAINT [PK_BoMon] PRIMARY KEY CLUSTERED 
(
	[maBM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DKMH]    Script Date: 24/03/2025 9:40:45 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DKMH](
	[maLopHP] [char](6) NOT NULL,
	[maSV] [char](13) NOT NULL,
	[diemTP] [float] NULL,
	[diemThi] [float] NULL,
	[PhanTramThi] [float] NULL,
 CONSTRAINT [PK_DKMH] PRIMARY KEY CLUSTERED 
(
	[maLopHP] ASC,
	[maSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 24/03/2025 9:40:45 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[maGV] [varchar](30) NOT NULL,
	[hoTen] [nvarchar](30) NULL,
	[NgaySinh] [date] NULL,
	[maBM] [varchar](25) NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[maGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GVCN]    Script Date: 24/03/2025 9:40:45 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GVCN](
	[maLop] [char](6) NOT NULL,
	[maGV] [varchar](30) NOT NULL,
	[HK] [int] NOT NULL,
 CONSTRAINT [PK_GVCN] PRIMARY KEY CLUSTERED 
(
	[maLop] ASC,
	[maGV] ASC,
	[HK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 24/03/2025 9:40:45 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[maKhoa] [varchar](20) NOT NULL,
	[tenKhoa] [nvarchar](30) NULL,
 CONSTRAINT [PK_Khoa] PRIMARY KEY CLUSTERED 
(
	[maKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 24/03/2025 9:40:45 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[maLop] [char](6) NOT NULL,
	[tenLop] [nvarchar](50) NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[maLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopHP]    Script Date: 24/03/2025 9:40:45 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHP](
	[maLopHP] [char](6) NOT NULL,
	[tenLopHP] [nvarchar](30) NULL,
	[HK] [int] NULL,
	[maMon] [char](6) NULL,
	[maGV] [varchar](30) NULL,
 CONSTRAINT [PK_LopHP] PRIMARY KEY CLUSTERED 
(
	[maLopHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopSV]    Script Date: 24/03/2025 9:40:45 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopSV](
	[maLop] [char](6) NOT NULL,
	[maSV] [char](13) NOT NULL,
	[ChucVu] [nvarchar](30) NULL,
 CONSTRAINT [PK_LopSV] PRIMARY KEY CLUSTERED 
(
	[maLop] ASC,
	[maSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 24/03/2025 9:40:45 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[maMon] [char](6) NOT NULL,
	[tenMon] [nvarchar](30) NULL,
	[STC] [int] NOT NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[maMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 24/03/2025 9:40:45 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[maSV] [char](13) NOT NULL,
	[hoTen] [nvarchar](30) NULL,
	[NgaySinh] [date] NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[maSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BoMon]  WITH CHECK ADD  CONSTRAINT [FK_BoMon_Khoa] FOREIGN KEY([maKhoa])
REFERENCES [dbo].[Khoa] ([maKhoa])
GO
ALTER TABLE [dbo].[BoMon] CHECK CONSTRAINT [FK_BoMon_Khoa]
GO
ALTER TABLE [dbo].[DKMH]  WITH CHECK ADD  CONSTRAINT [FK_DKMH_LopHP] FOREIGN KEY([maLopHP])
REFERENCES [dbo].[LopHP] ([maLopHP])
GO
ALTER TABLE [dbo].[DKMH] CHECK CONSTRAINT [FK_DKMH_LopHP]
GO
ALTER TABLE [dbo].[DKMH]  WITH CHECK ADD  CONSTRAINT [FK_DKMH_SinhVien] FOREIGN KEY([maSV])
REFERENCES [dbo].[SinhVien] ([maSV])
GO
ALTER TABLE [dbo].[DKMH] CHECK CONSTRAINT [FK_DKMH_SinhVien]
GO
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien_BoMon] FOREIGN KEY([maBM])
REFERENCES [dbo].[BoMon] ([maBM])
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [FK_GiaoVien_BoMon]
GO
ALTER TABLE [dbo].[GVCN]  WITH CHECK ADD  CONSTRAINT [FK_GVCN_GiaoVien] FOREIGN KEY([maGV])
REFERENCES [dbo].[GiaoVien] ([maGV])
GO
ALTER TABLE [dbo].[GVCN] CHECK CONSTRAINT [FK_GVCN_GiaoVien]
GO
ALTER TABLE [dbo].[GVCN]  WITH CHECK ADD  CONSTRAINT [FK_GVCN_Lop] FOREIGN KEY([maLop])
REFERENCES [dbo].[Lop] ([maLop])
GO
ALTER TABLE [dbo].[GVCN] CHECK CONSTRAINT [FK_GVCN_Lop]
GO
ALTER TABLE [dbo].[LopHP]  WITH CHECK ADD  CONSTRAINT [FK_LopHP_GiaoVien] FOREIGN KEY([maGV])
REFERENCES [dbo].[GiaoVien] ([maGV])
GO
ALTER TABLE [dbo].[LopHP] CHECK CONSTRAINT [FK_LopHP_GiaoVien]
GO
ALTER TABLE [dbo].[LopHP]  WITH CHECK ADD  CONSTRAINT [FK_LopHP_MonHoc] FOREIGN KEY([maMon])
REFERENCES [dbo].[MonHoc] ([maMon])
GO
ALTER TABLE [dbo].[LopHP] CHECK CONSTRAINT [FK_LopHP_MonHoc]
GO
ALTER TABLE [dbo].[LopSV]  WITH CHECK ADD  CONSTRAINT [FK_LopSV_Lop] FOREIGN KEY([maLop])
REFERENCES [dbo].[Lop] ([maLop])
GO
ALTER TABLE [dbo].[LopSV] CHECK CONSTRAINT [FK_LopSV_Lop]
GO
ALTER TABLE [dbo].[LopSV]  WITH CHECK ADD  CONSTRAINT [FK_LopSV_SinhVien] FOREIGN KEY([maSV])
REFERENCES [dbo].[SinhVien] ([maSV])
GO
ALTER TABLE [dbo].[LopSV] CHECK CONSTRAINT [FK_LopSV_SinhVien]
GO

Create Database DOANWEB
USE DOANWEB
GO
/****** Object:  Database [DoAnWeb
]    Script Date: 10/23/2018 4:19:25 PM ******/
CREATE DATABASE [DOANWEB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DoAnWeb', FILENAME = N'C:\Dao Cong Tuan\Bai tâp lap trinnh wed\Đồ án Lập Trình Wed\DoAnWeb.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DoAnWeb_log', FILENAME = N'C:\Dao Cong Tuan\Bai tâp lap trinnh wed\Đồ án Lập Trình Wed\DoAnWeb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DoAnWeb] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DoAnWeb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DoAnWeb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DoAnWeb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DoAnWeb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DoAnWeb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DoAnWeb] SET ARITHABORT OFF 
GO
ALTER DATABASE [DoAnWeb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DoAnWeb] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DoAnWeb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DoAnWeb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DoAnWeb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DoAnWeb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DoAnWeb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DoAnWeb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DoAnWeb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DoAnWeb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DoAnWeb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DoAnWeb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DoAnWeb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DoAnWeb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DoAnWeb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DoAnWeb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DoAnWeb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DoAnWeb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DoAnWeb] SET RECOVERY FULL 
GO
ALTER DATABASE [DoAnWeb] SET  MULTI_USER 
GO
ALTER DATABASE [DoAnWeb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DoAnWeb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DoAnWeb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DoAnWeb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DoAnWeb', N'ON'
GO
USE [DoAnWeb]
GO
/****** Object:  Table [dbo].[tbl_ChiTiet]    Script Date: 10/23/2018 4:19:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ChiTiet](
	[MaHD] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_tbl_ChiTiet] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_HoaDon]    Script Date: 10/23/2018 4:19:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_HoaDon](
	[MaHoaDon] [int] NOT NULL,
	[NgayHoaDon] [date] NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_tbl_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_KhachHang]    Script Date: 10/23/2018 4:19:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_KhachHang](
	[MaKhachHang] [int] NOT NULL,
	[TenKH] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SoDienThoai] [nvarchar](100) NULL,
 CONSTRAINT [PK_tbl_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_SanPham]    Script Date: 10/23/2018 4:19:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SanPham](
	[MaSanPham] [int] NOT NULL,
	[TenSP] [nvarchar](100) NULL,
	[DonGia] [numeric](18, 0) NULL,
	[HinhAnh] [nvarchar](100) NULL,
	[MoTa] [nvarchar](100) NULL,
	[SoLuongTon] [int] NULL,
 CONSTRAINT [PK_tbl_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [DonGia], [HinhAnh], [MoTa], [SoLuongTon]) VALUES (1, N'Pin sạc dự phòng 10.000 mAh eValu Sword X ', CAST(64200 AS Numeric(18, 0)), N'pin-sac-du-phong-10000mah-esaver-la-y325s-anh-dai-dien-600x600.jpg', N'Tiết kiệm: 40% (42.800 ₫) 
<br> Giá thị trường: 107.000 ₫ ', 50)
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [DonGia], [HinhAnh], [MoTa], [SoLuongTon]) VALUES (2, N'Dây đeo Apple Watch 40mm Apple Sport Loop MTM02 Xám đậm
', CAST(77000 AS Numeric(18, 0)), N'day-deo-apple-watch-40mm-sport-loop-mtm02-xam-dam-avatar-600x600.jpg', N'Tiết kiệm: 35% (42.000 ₫) <br/>
Giá thị trường: 119.000 ₫ ', 4)
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [DonGia], [HinhAnh], [MoTa], [SoLuongTon]) VALUES (3, N'Miếng dán màn hình Galaxy Note 5 GOS
', CAST(58800 AS Numeric(18, 0)), N'mieng-dan-lung-galaxy-a3-2016-avatar-1-600x600.jpg', N'Tiết kiệm: 40% (39.200 ₫) 
Giá thị trường: 98.000 ₫ ', 7)
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [DonGia], [HinhAnh], [MoTa], [SoLuongTon]) VALUES (4, N'Miếng dán màn hình iPhone 6
', CAST(52200 AS Numeric(18, 0)), N'mieng-dan-man-hinh-iphone-7-plus-avatar-1-600x600.jpg', N'Tiết kiệm: 40% (34.800 ₫) 
Giá thị trường: 87.000 ₫ ', 5)
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [DonGia], [HinhAnh], [MoTa], [SoLuongTon]) VALUES (5, N'Tai Nghe Chup Tai Kanen', CAST(51000 AS Numeric(18, 0)), N'tai-nghe-chup-tai-kanen-ip-2090-2-3-600x600.jpg', N'Tiết kiệm: 27% (19.000 ₫) 
Giá thị trường: 70.000 ₫ ', 4)
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [DonGia], [HinhAnh], [MoTa], [SoLuongTon]) VALUES (6, N'Tai Nghe ép Kanen 218', CAST(71250 AS Numeric(18, 0)), N'tai-nghe-ep-kanen-ip-218-ava-600x600.jpg', N'Tiết kiệm: 25% (23.750 ₫) 
Giá thị trường: 95.000 ₫ ', 12)
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [DonGia], [HinhAnh], [MoTa], [SoLuongTon]) VALUES (7, N'USB siêu bền', CAST(115500 AS Numeric(18, 0)), N'usb-30-16gb-sandisk-cz600-1-2-600x600.jpg', N'Tiết kiệm: 30% (49.500 ₫) 
Giá thị trường: 165.000 ₫ ', 6)
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [DonGia], [HinhAnh], [MoTa], [SoLuongTon]) VALUES (8, N'USB transcendjetflash', CAST(49640 AS Numeric(18, 0)), N'usb-transcend-jetflash-790-16gb-30-1-8-600x600.jpg', N'Tiết kiệm: 27% (18.360 ₫) 
Giá thị trường: 68.000 ₫ ', 4)
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [DonGia], [HinhAnh], [MoTa], [SoLuongTon]) VALUES (9, N'Kính Thực Tế Ảo SamSung', CAST(113150 AS Numeric(18, 0)), N'kinh-thuc-te-ao-samsung-gear-vr-sm-r325-2-600x600.jpg', N'Tiết kiệm: 27% (41.850 ₫) 
Giá thị trường: 155.000 ₫ ', 4)
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [DonGia], [HinhAnh], [MoTa], [SoLuongTon]) VALUES (10, N'Apple Pencil', CAST(74000 AS Numeric(18, 0)), N'apple-pencil-2-1-600x600.jpg', N'Tiết kiệm: 24% (24.000 ₫) 
Giá thị trường: 98.000 ₫ ', 7)
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [DonGia], [HinhAnh], [MoTa], [SoLuongTon]) VALUES (11, N'Loa Blutooth COn Heo', CAST(64400 AS Numeric(18, 0)), N'loa-bluetooth-selfie-icutes-mb-m515-heo-hong-avatar-600x600.jpg', N'Tiết kiệm: 30% (27.600 ₫) 
Giá thị trường: 92.000 ₫ ', 2)
select * from [dbo].[tbl_SanPham]
delete from [dbo].[tbl_SanPham]
ALTER TABLE [dbo].[tbl_ChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ChiTiet_tbl_HoaDon] FOREIGN KEY([MaSP])
REFERENCES [dbo].[tbl_HoaDon] ([MaHoaDon])
GO
ALTER TABLE [dbo].[tbl_ChiTiet] CHECK CONSTRAINT [FK_tbl_ChiTiet_tbl_HoaDon]
GO
ALTER TABLE [dbo].[tbl_ChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ChiTiet_tbl_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[tbl_SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[tbl_ChiTiet] CHECK CONSTRAINT [FK_tbl_ChiTiet_tbl_SanPham]
GO
ALTER TABLE [dbo].[tbl_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tbl_HoaDon_tbl_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[tbl_KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[tbl_HoaDon] CHECK CONSTRAINT [FK_tbl_HoaDon_tbl_KhachHang]
GO
USE [master]
GO
ALTER DATABASE [BTVeNha] SET  READ_WRITE 
GO

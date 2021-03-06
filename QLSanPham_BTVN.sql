Create Database BTVeNha
USE BTVeNha
GO
/****** Object:  Database [BTVeNha]    Script Date: 10/23/2018 4:19:25 PM ******/
CREATE DATABASE [BTVeNha]
 GO
ALTER DATABASE [BTVeNha] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BTVeNha].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BTVeNha] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BTVeNha] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BTVeNha] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BTVeNha] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BTVeNha] SET ARITHABORT OFF 
GO
ALTER DATABASE [BTVeNha] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BTVeNha] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BTVeNha] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BTVeNha] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BTVeNha] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BTVeNha] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BTVeNha] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BTVeNha] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BTVeNha] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BTVeNha] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BTVeNha] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BTVeNha] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BTVeNha] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BTVeNha] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BTVeNha] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BTVeNha] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BTVeNha] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BTVeNha] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BTVeNha] SET RECOVERY FULL 
GO
ALTER DATABASE [BTVeNha] SET  MULTI_USER 
GO
ALTER DATABASE [BTVeNha] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BTVeNha] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BTVeNha] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BTVeNha] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BTVeNha', N'ON'
GO
USE [BTVeNha]
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
	[DonGia] [int] NULL,
	[HinhAnh] [nvarchar](100) NULL,
	[MoTa] [nvarchar](100) NULL,
	[SoLuongTon] [int] NULL,
 CONSTRAINT [PK_tbl_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[tbl_SanPham] ([TenSP],[MaSanPham], [DonGia], [HinhAnh],[SoLuongTon]) VALUES(N'Bông tai Kim cương Vàng trắng 14K PNJ',1,20525000,N'TSV1.PNG',1)
INSERT [dbo].[tbl_SanPham] ([TenSP],[MaSanPham], [DonGia], [HinhAnh],[SoLuongTon]) VALUES(N'Dây cổ Kim cương Vàng trắng 14K PNJ First Diamond',3,7540000,N'TSV2.PNG',1)
INSERT [dbo].[tbl_SanPham] ([TenSP],[MaSanPham], [DonGia], [HinhAnh],[SoLuongTon]) VALUES(N'Mặt dây chuyền Kim cương Vàng 18K PNJ',4,8215000,N'TSV4.PNG',1)
INSERT [dbo].[tbl_SanPham] ([TenSP],[MaSanPham], [DonGia], [HinhAnh],[SoLuongTon]) VALUES(N'Mặt dây chuyền Kim cương Vàng 14K PNJ First Diamond',5,129999000,N'TSV5.PNG',1)
INSERT [dbo].[tbl_SanPham] ([TenSP],[MaSanPham], [DonGia], [HinhAnh],[SoLuongTon]) VALUES(N'Mặt dây chuyền Kim cương Vàng trắng 14K PNJ',6,9642000,N'TSV6.PNG',1)
INSERT [dbo].[tbl_SanPham] ([TenSP],[MaSanPham], [DonGia], [HinhAnh],[SoLuongTon])VALUES(N'Mặt dây chuyền Kim cương Vàng trắng 14K PNJ',7,13985000,N'TSV7.PNG',1)
INSERT [dbo].[tbl_SanPham] ([TenSP],[MaSanPham], [DonGia], [HinhAnh],[SoLuongTon])VALUES(N'Nhẫn Kim cương Vàng trắng 14K PNJ ',8,14293000,N'TSV8.PNG',1)
INSERT [dbo].[tbl_SanPham] ([TenSP],[MaSanPham], [DonGia], [HinhAnh],[SoLuongTon])VALUES(N'Nhẫn cưới Kim cương Vàng 18K PNJ ',9,4938000,N'TSV9.PNG',1)
INSERT [dbo].[tbl_SanPham] ([TenSP],[MaSanPham], [DonGia], [HinhAnh],[SoLuongTon])VALUES(N'Nhẫn cưới Kim cương Vàng trắng 14K PNJ',10,5588000,N'TSV10.PNG',1)
INSERT [dbo].[tbl_SanPham] ([TenSP],[MaSanPham], [DonGia], [HinhAnh],[SoLuongTon])VALUES(N'Mặt dây chuyền Kim cương Vàng trắng 14K PNJ',11,13985000,N'TSV7.PNG',1)
INSERT [dbo].[tbl_SanPham] ([TenSP],[MaSanPham], [DonGia], [HinhAnh],[SoLuongTon])VALUES(N'Nhẫn Kim cương Vàng trắng 14K PNJ ',12,14293000,N'TSV8.PNG',1)
INSERT [dbo].[tbl_SanPham] ([TenSP],[MaSanPham], [DonGia], [HinhAnh],[SoLuongTon])VALUES(N'Nhẫn cưới Kim cương Vàng 18K PNJ ',13,4938000,N'TSV9.PNG',1)
INSERT [dbo].[tbl_SanPham] ([TenSP],[MaSanPham], [DonGia], [HinhAnh],[SoLuongTon])VALUES(N'Nhẫn cưới Kim cương Vàng trắng 14K PNJ',14,5588000,N'TSV10.PNG',1)
INSERT [dbo].[tbl_SanPham] ([TenSP],[MaSanPham], [DonGia], [HinhAnh],[SoLuongTon])VALUES(N'Mặt dây chuyền Kim cương Vàng trắng 14K PNJ',15,13985000,N'TSV7.PNG',1)
INSERT [dbo].[tbl_SanPham] ([TenSP],[MaSanPham], [DonGia], [HinhAnh],[SoLuongTon])VALUES(N'Nhẫn Kim cương Vàng trắng 14K PNJ ',16,14293000,N'TSV8.PNG',1)
INSERT [dbo].[tbl_SanPham] ([TenSP],[MaSanPham], [DonGia], [HinhAnh],[SoLuongTon])VALUES(N'Nhẫn cưới Kim cương Vàng 18K PNJ ',17,4938000,N'TSV9.PNG',1)
INSERT [dbo].[tbl_SanPham] ([TenSP],[MaSanPham], [DonGia], [HinhAnh],[SoLuongTon])VALUES(N'Nhẫn cưới Kim cương Vàng trắng 14K PNJ',18,5588000,N'TSV10.PNG',1)
INSERT [dbo].[tbl_SanPham] ([TenSP],[MaSanPham], [DonGia], [HinhAnh],[SoLuongTon])VALUES(N'Mặt dây chuyền Kim cương Vàng trắng 14K PNJ',19,13985000,N'TSV7.PNG',1)
INSERT [dbo].[tbl_SanPham] ([TenSP],[MaSanPham], [DonGia], [HinhAnh],[SoLuongTon])VALUES(N'Nhẫn Kim cương Vàng trắng 14K PNJ ',20,14293000,N'TSV8.PNG',1)
INSERT [dbo].[tbl_SanPham] ([TenSP],[MaSanPham], [DonGia], [HinhAnh],[SoLuongTon])VALUES(N'Nhẫn cưới Kim cương Vàng 18K PNJ ',21,4938000,N'TSV9.PNG',1)
INSERT [dbo].[tbl_SanPham] ([TenSP],[MaSanPham], [DonGia], [HinhAnh],[SoLuongTon])VALUES(N'Nhẫn cưới Kim cương Vàng trắng 14K PNJ',23,5588000,N'TSV10.PNG',1)
INSERT [dbo].[tbl_SanPham] ([TenSP],[MaSanPham], [DonGia], [HinhAnh],[SoLuongTon])VALUES(N'Mặt dây chuyền Kim cương Vàng trắng 14K PNJ',24,13985000,N'TSV7.PNG',1)
INSERT [dbo].[tbl_SanPham] ([TenSP],[MaSanPham], [DonGia], [HinhAnh],[SoLuongTon])VALUES(N'Nhẫn Kim cương Vàng trắng 14K PNJ ',25,14293000,N'TSV8.PNG',1)
INSERT [dbo].[tbl_SanPham] ([TenSP],[MaSanPham], [DonGia], [HinhAnh],[SoLuongTon])VALUES(N'Nhẫn cưới Kim cương Vàng 18K PNJ ',26,4938000,N'TSV9.PNG',1)
INSERT [dbo].[tbl_SanPham] ([TenSP],[MaSanPham], [DonGia], [HinhAnh],[SoLuongTon])VALUES(N'Nhẫn cưới Kim cương Vàng trắng 14K PNJ',27,5588000,N'TSV10.PNG',1)
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

Create table DangNhap
(
	Email nvarchar(50),
	Mk nvarchar(50),
	HovaTen nvarchar(50),
	SoDT int,

)
Insert into DangNhap
values(N'thinh@gmail.com', N'12345678',N'Nguyễn Đức Thịnh','0125012')
select count(*) from DangNhap Where Email =N'thinh@gmail.com' and Mk = N'12345678'
Select Count (*) from DangNhap Where Email='" + emaillog.Text + "'
Select Email,Mk from DangNhap where Email='" + emaillog.Text + "'and Mk='" + matkhau.Text + "'
select MaSanPham, TenSP, HinhAnh, DonGia from	  tbl_SanPham Where (MaSanPham= N'1'  or TenSP=N' Bông tai Kim cương Vàng trắng 14K PNJ ')

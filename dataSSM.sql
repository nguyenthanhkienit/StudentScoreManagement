USE [StudentScoreManagement]
GO
/****** Object:  Table [dbo].[tblDiem]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDiem](
	[MaSV] [nvarchar](5) NOT NULL,
	[TenSV] [nvarchar](50) NOT NULL,
	[DiemGiuaKy] [nvarchar](4) NOT NULL,
	[DiemCuoiKy] [nvarchar](4) NOT NULL,
	[DiemTB] [nvarchar](4) NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
	[MaLop] [nvarchar](7) NOT NULL,
	[MaMon] [nvarchar](6) NOT NULL,
	[NgayNhap] [nvarchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblGiaoVien]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGiaoVien](
	[MaGV] [nvarchar](7) NOT NULL,
	[TenGV] [nvarchar](50) NOT NULL,
	[NgaySinh] [nvarchar](10) NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[Email] [nvarchar](50) NULL,
	[NgayNhanViec] [nvarchar](10) NULL,
	[SoDienThoai] [nvarchar](11) NOT NULL,
	[TrinhDo] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblKetQua]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKetQua](
	[MaSV] [nvarchar](5) NOT NULL,
	[TenSV] [nvarchar](50) NOT NULL,
	[DiemTongKet] [nvarchar](4) NOT NULL,
	[HocKy] [int] NOT NULL,
	[KetQua] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblKhoa]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKhoa](
	[MaKhoa] [nvarchar](3) NOT NULL,
	[TenKhoa] [nvarchar](100) NOT NULL,
	[NgayTao] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLop]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLop](
	[MaLop] [nvarchar](7) NOT NULL,
	[TenLop] [nvarchar](100) NOT NULL,
	[NgayTao] [nvarchar](10) NULL,
	[MaKhoa] [nvarchar](3) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMonHoc]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMonHoc](
	[MaMon] [nvarchar](6) NOT NULL,
	[TenMon] [nvarchar](100) NOT NULL,
	[SoTinChi] [int] NOT NULL,
	[MaGV] [nvarchar](7) NOT NULL,
	[HocKy] [int] NOT NULL,
	[MaKhoa] [nvarchar](3) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNguoiDung]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNguoiDung](
	[TaiKhoan] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSinhVien]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSinhVien](
	[MaSV] [nvarchar](5) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[NgaySinh] [nvarchar](10) NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[MaLop] [nvarchar](8) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11111', N'Đặng Ngọc Hạnh', N'5', N'4', N'4.3', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11112', N'Đồng Thị Thu', N'6', N'6', N'6', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11113', N'Phan Thị Cẩm Giang', N'5', N'8', N'7.1', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11114', N'Trần Thị Kim Ngân', N'6', N'1', N'2.5', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11115', N'Trần Thị Mai Hạnh', N'4', N'4', N'4', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11116', N'Trần Thị Huệ', N'7', N'7', N'7', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11117', N'Trần Thị Thanh Muội', N'9', N'8', N'8.3', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11118', N'Trương Thị Hoa', N'3', N'6', N'5.1', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11119', N'Lâm Quang Bảo', N'10', N'9', N'9.3', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11120', N'Nguyễn Văn Nhân', N'5', N'10', N'8.5', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11121', N'Võ Thị Hoa', N'8', N'2', N'3.8', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11122', N'Đặng Thị Hồng Diễm', N'5', N'10', N'8.5', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11123', N'Lê Thị Bích Như', N'6', N'8', N'7.4', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11124', N'Trần Thị Tiểu Yến', N'9', N'6', N'6.9', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11125', N'Phan Ngọc Hải', N'4', N'4', N'4', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11126', N'Nguyễn Thúy Sang', N'5', N'9', N'7.8', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11127', N'Thái Thị Thảo', N'8', N'4', N'5.2', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11128', N'Dương Thị Hiệp', N'0', N'2', N'1.4', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11129', N'Hoàng Thị Quỳnh Như', N'3', N'4', N'3.7', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11130', N'Nguyễn Trần Ngọc Trang', N'5', N'7', N'6.4', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11131', N'Trần Thị Phượng', N'7', N'8', N'7.7', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11132', N'Lê Thị Nho', N'8', N'5', N'5.9', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11133', N'Lê Thị Kiều', N'7', N'7', N'7', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11134', N'Nguyễn Thị Kim Anh', N'6', N'6', N'6', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11135', N'Nguyễn Bích Trăm', N'5', N'8', N'7.1', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11136', N'Phạm Văn Đại', N'8', N'6', N'6.6', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11137', N'Danh Thị Bích Ny', N'7', N'6', N'6.3', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11138', N'Phan Thị Kiều', N'0', N'6', N'4.2', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11139', N'Võ Thị Huỳnh Như', N'10', N'8', N'8.6', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11140', N'Nguyễn Thị Cẩm Tiên', N'10', N'0', N'3', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11141', N'Đặng Mỹ Hảo', N'7', N'10', N'9.1', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11142', N'Đậu Thị Lĩnh', N'5', N'9', N'7.8', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11143', N'Nguyễn Thị Kim Ngân', N'4', N'7', N'6.1', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11144', N'Nguyễn Thị Đồng', N'7', N'8', N'7.7', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11145', N'Hà Thị Loan', N'9', N'0', N'2.7', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11146', N'Cao Mỹ Hạnh', N'5', N'6', N'5.7', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11147', N'Lê Văn Vũ Linh', N'7', N'5', N'5.6', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11148', N'Phạm Thị Bích Ngân', N'6', N'8', N'7.4', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11149', N'Phạm Thị Hoài', N'5', N'4', N'4.3', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11150', N'Trần Thị Ngọc Nhung', N'7', N'7', N'7', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11151', N'Sầm Quốc An', N'6', N'4', N'4.6', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11152', N'Sầm Quốc Thành', N'3', N'6', N'5.1', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11153', N'Lâm Thị Bích Phương', N'8', N'4', N'5.2', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11154', N'Lô Thị Hoài', N'9', N'7', N'7.6', N'', N'D14HT01', N'M00001', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11111', N'Đặng Ngọc Hạnh', N'5', N'4', N'4.3', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11112', N'Đồng Thị Thu', N'6', N'6', N'6', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11113', N'Phan Thị Cẩm Giang', N'6', N'8', N'7.4', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11114', N'Trần Thị Kim Ngân', N'6', N'1', N'2.5', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11115', N'Trần Thị Mai Hạnh', N'7', N'3', N'4.2', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11116', N'Trần Thị Huệ', N'7', N'4', N'4.9', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11117', N'Trần Thị Thanh Muội', N'8', N'6', N'6.6', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11118', N'Trương Thị Hoa', N'9', N'8', N'8.3', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11119', N'Lâm Quang Bảo', N'9', N'9', N'9', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11120', N'Nguyễn Văn Nhân', N'3', N'5', N'4.4', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11121', N'Võ Thị Hoa', N'6', N'6', N'6', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11122', N'Đặng Thị Hồng Diễm', N'8', N'5', N'5.9', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11123', N'Lê Thị Bích Như', N'9', N'7', N'7.6', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11124', N'Trần Thị Tiểu Yến', N'7', N'8', N'7.7', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11125', N'Phan Ngọc Hải', N'6', N'1', N'2.5', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11126', N'Nguyễn Thúy Sang', N'8', N'2', N'3.8', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11127', N'Thái Thị Thảo', N'9', N'4', N'5.5', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11128', N'Dương Thị Hiệp', N'6', N'5', N'5.3', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11129', N'Hoàng Thị Quỳnh Như', N'3', N'4', N'3.7', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11130', N'Nguyễn Trần Ngọc Trang', N'5', N'7', N'6.4', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11131', N'Trần Thị Phượng', N'7', N'8', N'7.7', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11132', N'Lê Thị Nho', N'8', N'5', N'5.9', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11133', N'Lê Thị Kiều', N'7', N'7', N'7', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11134', N'Nguyễn Thị Kim Anh', N'6', N'6', N'6', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11135', N'Nguyễn Bích Trăm', N'5', N'8', N'7.1', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11136', N'Phạm Văn Đại', N'8', N'6', N'6.6', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11137', N'Danh Thị Bích Ny', N'6', N'6', N'6', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11138', N'Phan Thị Kiều', N'6', N'6', N'6', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11139', N'Võ Thị Huỳnh Như', N'7', N'9', N'8.4', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11140', N'Nguyễn Thị Cẩm Tiên', N'9', N'0', N'2.7', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11141', N'Đặng Mỹ Hảo', N'1', N'9', N'6.6', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11142', N'Đậu Thị Lĩnh', N'4', N'0', N'1.2', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11143', N'Nguyễn Thị Kim Ngân', N'6', N'8', N'7.4', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11144', N'Nguyễn Thị Đồng', N'7', N'5', N'5.6', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11145', N'Hà Thị Loan', N'9', N'6', N'6.9', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11146', N'Cao Mỹ Hạnh', N'5', N'8', N'7.1', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11147', N'Lê Văn Vũ Linh', N'7', N'4', N'4.9', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11148', N'Phạm Thị Bích Ngân', N'6', N'9', N'8.1', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11149', N'Phạm Thị Hoài', N'5', N'8', N'7.1', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11150', N'Trần Thị Ngọc Nhung', N'7', N'6', N'6.3', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11151', N'Sầm Quốc An', N'6', N'4', N'4.6', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11152', N'Sầm Quốc Thành', N'3', N'5', N'4.4', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11153', N'Lâm Thị Bích Phương', N'8', N'4', N'5.2', N'', N'D14HT01', N'M00002', N'2021-10-16')
INSERT [dbo].[tblDiem] ([MaSV], [TenSV], [DiemGiuaKy], [DiemCuoiKy], [DiemTB], [GhiChu], [MaLop], [MaMon], [NgayNhap]) VALUES (N'11154', N'Lô Thị Hoài', N'9', N'7', N'7.6', N'', N'D14HT01', N'M00002', N'2021-10-16')
GO
INSERT [dbo].[tblGiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [NgayNhanViec], [SoDienThoai], [TrinhDo]) VALUES (N'GV00003', N'Trần Văn Công', N'1984-05-10', N'Nam', NULL, N'2018-04-13', N'0973470623', N'Thạc sĩ')
INSERT [dbo].[tblGiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [NgayNhanViec], [SoDienThoai], [TrinhDo]) VALUES (N'GV00004', N'Lê Xuân Mai', N'1980-10-28', N'Nữ', NULL, N'2017-11-19', N'0965199922', N'Thạc sĩ')
INSERT [dbo].[tblGiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [NgayNhanViec], [SoDienThoai], [TrinhDo]) VALUES (N'GV00005', N'Trần Quốc Bảo', N'1986-11-23', N'Nam', NULL, N'2019-02-20', N'0986673621', N'Thạc sĩ')
INSERT [dbo].[tblGiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [NgayNhanViec], [SoDienThoai], [TrinhDo]) VALUES (N'GV00006', N'Nguyễn Thái', N'1988-12-28', N'Nam', N'', N'2016-12-14', N'0378912739', N'Thạc sĩ')
INSERT [dbo].[tblGiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [NgayNhanViec], [SoDienThoai], [TrinhDo]) VALUES (N'GV00002', N'Nguyễn Thị Loan', N'1982-12-01', N'Nữ', N'', N'2019-10-12', N'0385936574', N'Thạc sĩ')
INSERT [dbo].[tblGiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [Email], [NgayNhanViec], [SoDienThoai], [TrinhDo]) VALUES (N'GV00001', N'La Văn Thứ', N'1981-01-24', N'Nam', NULL, N'2018-01-11', N'0985345353', N'Thạc sĩ')
GO
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11111', N'Đặng Ngọc Hạnh', N'4.3', 1, N'Không đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11112', N'Đồng Thị Thu', N'6', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11113', N'Phan Thị Cẩm Giang', N'7.3', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11114', N'Trần Thị Kim Ngân', N'2.5', 1, N'Không đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11115', N'Trần Thị Mai Hạnh', N'4.13', 1, N'Không đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11116', N'Trần Thị Huệ', N'5.6', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11117', N'Trần Thị Thanh Muội', N'7.16', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11118', N'Trương Thị Hoa', N'7.23', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11119', N'Lâm Quang Bảo', N'9.1', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11120', N'Nguyễn Văn Nhân', N'5.76', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11121', N'Võ Thị Hoa', N'5.26', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11122', N'Đặng Thị Hồng Diễm', N'6.76', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11123', N'Lê Thị Bích Như', N'7.53', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11124', N'Trần Thị Tiểu Yến', N'7.43', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11125', N'Phan Ngọc Hải', N'3', 1, N'Không đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11126', N'Nguyễn Thúy Sang', N'5.13', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11127', N'Thái Thị Thảo', N'5.4', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11128', N'Dương Thị Hiệp', N'4', 1, N'Không đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11129', N'Hoàng Thị Quỳnh Như', N'3.7', 1, N'Không đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11130', N'Nguyễn Trần Ngọc Trang', N'6.4', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11131', N'Trần Thị Phượng', N'7.7', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11132', N'Lê Thị Nho', N'5.9', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11133', N'Lê Thị Kiều', N'7', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11134', N'Nguyễn Thị Kim Anh', N'6', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11135', N'Nguyễn Bích Trăm', N'7.1', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11136', N'Phạm Văn Đại', N'6.6', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11137', N'Danh Thị Bích Ny', N'6.1', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11138', N'Phan Thị Kiều', N'5.4', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11139', N'Võ Thị Huỳnh Như', N'8.46', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11140', N'Nguyễn Thị Cẩm Tiên', N'2.8', 1, N'Không đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11141', N'Đặng Mỹ Hảo', N'7.43', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11142', N'Đậu Thị Lĩnh', N'3.4', 1, N'Không đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11143', N'Nguyễn Thị Kim Ngân', N'6.96', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11144', N'Nguyễn Thị Đồng', N'6.3', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11145', N'Hà Thị Loan', N'5.5', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11146', N'Cao Mỹ Hạnh', N'6.63', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11147', N'Lê Văn Vũ Linh', N'5.13', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11148', N'Phạm Thị Bích Ngân', N'7.86', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11149', N'Phạm Thị Hoài', N'6.16', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11150', N'Trần Thị Ngọc Nhung', N'6.53', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11151', N'Sầm Quốc An', N'4.6', 1, N'Không đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11152', N'Sầm Quốc Thành', N'4.63', 1, N'Không đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11153', N'Lâm Thị Bích Phương', N'5.2', 1, N'Đạt')
INSERT [dbo].[tblKetQua] ([MaSV], [TenSV], [DiemTongKet], [HocKy], [KetQua]) VALUES (N'11154', N'Lô Thị Hoài', N'7.6', 1, N'Đạt')
GO
INSERT [dbo].[tblKhoa] ([MaKhoa], [TenKhoa], [NgayTao]) VALUES (N'KTT', N'Khoa Công Nghệ Thông Tin', N'2021-10-11')
INSERT [dbo].[tblKhoa] ([MaKhoa], [TenKhoa], [NgayTao]) VALUES (N'KTN', N'Khoa Tự Nhiên', N'2021-10-11')
INSERT [dbo].[tblKhoa] ([MaKhoa], [TenKhoa], [NgayTao]) VALUES (N'KKT', N'Khoa Kiến Trúc', N'2021-10-11')
INSERT [dbo].[tblKhoa] ([MaKhoa], [TenKhoa], [NgayTao]) VALUES (N'KSP', N'Khoa Sư Phạm', N'2021-10-11')
INSERT [dbo].[tblKhoa] ([MaKhoa], [TenKhoa], [NgayTao]) VALUES (N'KLL', N'Khoa Luật', N'2021-10-11')
GO
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [NgayTao], [MaKhoa]) VALUES (N'D14HT01', N'Hệ Thống Thông Tin', N'2021-10-11', N'KTT')
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [NgayTao], [MaKhoa]) VALUES (N'D14HT02', N'Hệ Thống Thông Tin', N'2021-10-13', N'KTT')
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [NgayTao], [MaKhoa]) VALUES (N'C12SPT1', N'Sư Phạm Toán', N'2021-10-12', N'KTN')
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [NgayTao], [MaKhoa]) VALUES (N'C12SPT2', N'Sư Phạm Toán', N'2021-10-12', N'KTN')
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [NgayTao], [MaKhoa]) VALUES (N'C13QDT1', N'Quản Lý Đô Thị', N'2021-10-12', N'KKT')
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [NgayTao], [MaKhoa]) VALUES (N'C13XD01', N'Kỹ Thuật Xây Dựng', N'2021-10-12', N'KKT')
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [NgayTao], [MaKhoa]) VALUES (N'C13XD02', N'Kỹ Thuật Xây Dựng', N'2021-10-13', N'KKT')
GO
INSERT [dbo].[tblMonHoc] ([MaMon], [TenMon], [SoTinChi], [MaGV], [HocKy], [MaKhoa]) VALUES (N'M00001', N'Nhập môn lập trình', 2, N'GV00002', 1, N'KTT')
INSERT [dbo].[tblMonHoc] ([MaMon], [TenMon], [SoTinChi], [MaGV], [HocKy], [MaKhoa]) VALUES (N'M00002', N'Lập trình hướng đối tượng', 4, N'GV00002', 1, N'KTT')
INSERT [dbo].[tblMonHoc] ([MaMon], [TenMon], [SoTinChi], [MaGV], [HocKy], [MaKhoa]) VALUES (N'M00003', N'Cấu trúc dữ liệu và giải thuật', 4, N'GV00005', 1, N'KTT')
INSERT [dbo].[tblMonHoc] ([MaMon], [TenMon], [SoTinChi], [MaGV], [HocKy], [MaKhoa]) VALUES (N'M00004', N'Toán rời rạc', 3, N'GV00005', 2, N'KTT')
INSERT [dbo].[tblMonHoc] ([MaMon], [TenMon], [SoTinChi], [MaGV], [HocKy], [MaKhoa]) VALUES (N'M00005', N'Công nghệ mạng', 1, N'GV00005', 2, N'KTT')
INSERT [dbo].[tblMonHoc] ([MaMon], [TenMon], [SoTinChi], [MaGV], [HocKy], [MaKhoa]) VALUES (N'M00006', N'Thiết kế kiến trúc', 1, N'GV00003', 2, N'KKT')
INSERT [dbo].[tblMonHoc] ([MaMon], [TenMon], [SoTinChi], [MaGV], [HocKy], [MaKhoa]) VALUES (N'M00007', N'Hệ thống môi trường', 1, N'GV00003', 1, N'KKT')
INSERT [dbo].[tblMonHoc] ([MaMon], [TenMon], [SoTinChi], [MaGV], [HocKy], [MaKhoa]) VALUES (N'M00008', N'Lịch sử kiến trúc', 3, N'GV00003', 1, N'KKT')
INSERT [dbo].[tblMonHoc] ([MaMon], [TenMon], [SoTinChi], [MaGV], [HocKy], [MaKhoa]) VALUES (N'M00009', N'Kỹ thuật và khoa học xây dựng', 2, N'GV00003', 1, N'KKT')
INSERT [dbo].[tblMonHoc] ([MaMon], [TenMon], [SoTinChi], [MaGV], [HocKy], [MaKhoa]) VALUES (N'M00010', N'Toán kiến trúc', 2, N'GV00003', 1, N'KKT')
GO
INSERT [dbo].[tblNguoiDung] ([TaiKhoan], [MatKhau]) VALUES (N'admin', N'1')
INSERT [dbo].[tblNguoiDung] ([TaiKhoan], [MatKhau]) VALUES (N'Kay', N'12345')
GO
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11148', N'Phạm Thị Bích Ngân', N'1994-05-22', N'Nữ', N'Đường 30, Khu phố Phú Bưng; P.Phú Chánh, Tx.Tân Uyên, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11149', N'Phạm Thị Hoài', N'1992-09-22', N'Nữ', N'Kp.4; P.Tân Định, Tx.Bến Cát, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11150', N'Trần Thị Ngọc Nhung', N'1993-12-03', N'Nữ', N'Kp.Phú Hòa; P.Hòa Lợi, Tx.Bến Cát, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11151', N'Sầm Quốc An', N'1991-05-03', N'Nam', N'Tổ 2, Ấp 1; Xã Vĩnh Tân, Tx.Tân Uyên, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11152', N'Sầm Quốc Thành', N'1995-11-02', N'Nam', N'Tổ 2, Ấp 1; Xã Vĩnh Tân, Tx.Tân Uyên, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11153', N'Lâm Thị Bích Phương', N'1999-03-19', N'Nữ', N'Tổ 3, Kp.1; P.Vĩnh Tân, Tx.Tân Uyên, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11154', N'Lô Thị Hoài', N'2000-01-03', N'Nữ', N'Ấp 1; Xã Vĩnh Tân, Tx.Tân Uyên, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11155', N'Nguyễn Thị Thủy', N'1994-06-26', N'Nữ', N'Tổ 4, Kp.1; TT. Phước Vĩnh, Huyện Phú Giáo, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11156', N'Phan Hoàng Nam', N'1992-03-23', N'Nam', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11157', N'Lê Thị Thu', N'1995-11-16', N'Nữ', N'158/3 KP2, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11158', N'Huỳnh Thị Trưng', N'2002-02-21', N'Nữ', N'Phường An Phú, Tp Thuận An, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11159', N'Lê Thị Diệu Hiền', N'2002-02-11', N'Nữ', N'247E/2, Kp.1B, Phường An Phú, Tx. Thuận An, tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11160', N'Nguyễn Trúc Sang', N'1993-11-07', N'Nữ', N'Kp.2; P.Hòa Phú, Tp.Thủ Dầu Một, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11161', N'Nguyễn Thị Tuyết Mai', N'1996-06-02', N'Nữ', N'D13/9 Tổ 20, Kp.Bình Thuận 2; P.Thuận Giao, Tp.Thuận An, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11162', N'Lương Ngọc Thảo', N'2001-09-04', N'Nữ', N'Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11163', N'Hồ Thị Minh Khuê', N'1995-07-12', N'Nữ', N'Đường 41; Phường Hòa Phú, Thành phố Thủ Dầu Một, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11164', N'Lê Thị Hằng', N'1990-05-31', N'Nữ', N'Kp.4; TT. Phước Vĩnh, Huyện Phú Giáo, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11165', N'Đỗ Thị Kim Phương', N'1999-05-13', N'Nữ', N'Kp.An Hòa; P.Hòa Lợi, Tx.Bến Cát, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11166', N'Đinh Thị Kim Dậu', N'1996-12-06', N'Nữ', N'Tổ 3, Kp.1; P. Vĩnh Tân, Tx. Tân Uyên, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11167', N'Võ Thị Đẹp', N'1995-02-25', N'Nữ', N'Tổ 3, Kp.1; P.Vĩnh Tân, Tx.Tân Uyên, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11168', N'Nguyễn Hoàng My', N'2000-09-16', N'Nữ', N'Kp.4; Phường Hòa Phú, Thành phố Thủ Dầu Một, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11169', N'Vũ Thị Thảo', N'1993-04-13', N'Nữ', N'Kp.1; P. Thới Hòa, Tx. Bến Cát, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11170', N'Nông Thu Quỳnh', N'1990-07-23', N'Nữ', N'Kp.1; P. Vĩnh Tân, Tx. Tân Uyên, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11171', N'H Tuyên Kbuôr', N'1997-06-08', N'Nữ', N'Ấp Đồng Chinh; Xã Phước Hòa, Huyện Phú Giáo, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11172', N'Lộc Thị Hoài Châm', N'1996-12-14', N'Nữ', N'Đường 27; P. Vĩnh Tân, Tx. Tân Uyên, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11173', N'Đặng Huế Trân', N'1998-05-08', N'Nữ', N'Phường Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11174', N'Huỳnh Kim Tuyền', N'1991-06-19', N'Nữ', N'28/7, Kp. Tân Phước, Phường Tân Bình, Tp. Dĩ An, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11175', N'Đỗ Thảo Ngọc', N'1998-05-19', N'Nữ', N'Ấp 1; Xã Vĩnh Tân, Tx.Tân Uyên, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11176', N'Vương Trần Nguyệt Nga', N'1994-11-10', N'Nữ', N'Đường 26, Tổ 3, Ấp 1; Xã Vĩnh Tân, Thị xã Tân Uyên, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11177', N'Trần Thị Cẩm Cuốn', N'1994-08-06', N'Nữ', N'Tổ 1, Khu phố Khánh Lộc ; Phường Tân Phước Khánh, Thị xã Tân Uyên, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11178', N'Tạ Thị Thoa', N'2000-10-11', N'Nữ', N'Ô 49 DC 09 KDC Việt Sing, Khu Phố 4, Phường An Phú, Tx Thuận An, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11179', N'Nguyễn Thị Như', N'1994-07-11', N'Nữ', N'Kp.Phú Nghị; P.Hòa Lợi, Tx.Bến Cát, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11180', N'Nguyễn Văn Dũng', N'1996-05-07', N'Nam', N'8/1 Khu Phố 1A, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11181', N'Nguyễn Thị Thu', N'1998-12-28', N'Nữ', N'Phường An Phú, Tx Thuận An, Tỉnh Bình Dương', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11182', N'Huỳnh Quốc Việt', N'1998-06-21', N'Nam', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11183', N'Phạm Văn Trường', N'2001-07-15', N'Nam', N'Tổ 3, Kp.1; P. Vĩnh Tân, Tx.Tân Uyên, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11184', N'Phan Văn Quang', N'1992-11-29', N'Nam', N'Đường 28; Xã Vĩnh Tân, Tx.Tân Uyên, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11223', N'Hà Thị Nga', N'1996-12-17', N'Nữ', N'KDC Viêt Sing, Tp.Thuận An, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11224', N'Cao Việt Nam', N'1993-01-14', N'Nam', N'Đường NE3, Tổ 5, Kp.8; P. Chánh Phú Hòa, Tx. Bến Cát, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11225', N'Vũ Thị Hồng Nhung', N'1997-10-16', N'Nữ', N'D19, KDC Việt Sing, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11226', N'Bùi Thị Dị', N'1993-06-22', N'Nữ', N'30A/3KP Bình Đáng, Phường Bình Hòa, Tp. Thuận An, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11227', N'Trương Thị Linh', N'1995-04-18', N'Nữ', N'Ấp 4; Xã Vĩnh Tân, Huyện Bắc Tân Uyên, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11228', N'Đỗ Thị Thanh Lan', N'1998-04-07', N'Nữ', N'Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11229', N'Phan Thị Nhị', N'1996-03-08', N'Nữ', N'Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11230', N'Hoàng Thị Thu Hương', N'1993-12-13', N'Nữ', N'Đường NF3, Kp.7; Phường Chánh Phú Hòa, Tx.Bến Cát, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11231', N'Trần Chí Thương', N'1990-08-19', N'Nam', N'Khu Phố 3, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11232', N'Nguyễn Hoài Thương', N'1991-04-08', N'Nữ', N'Số nhà 07, Tổ 3, Ấp Chòi Dúng; Xã Bình Mỹ, Huyện Bắc Tân Uyên, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11233', N'Nông Thị Lệ', N'1993-02-15', N'Nữ', N'Kp.1; P.Vĩnh Tân, Tx.Tân Uyên, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11234', N'Trương Ngọc Minh', N'2000-09-09', N'Nam', N'151 E/1 Khu phố 1A, Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11235', N'Nguyễn Thị Tuyết Mai', N'2002-01-13', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11236', N'Đặng Thạch Ngọc', N'2000-04-26', N'Nam', N'29/20B Kp.Bình Phú; P.Bình Chuẩn, Tp.Thuận An, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11237', N'Bùi Thị Chuyên', N'1999-03-25', N'Nữ', N'Ô 14B, Dc10, KDC VietSing, Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11238', N'Nguyễn Thị Thuý Hoa', N'2002-01-11', N'Nữ', N'3/32A, KP. Bình Đức 1, Phường Bình Hòa, Tp. Thuận An, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11239', N'Nguyễn Thọ Lương', N'1998-05-12', N'Nam', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11240', N'Nguyễn Thị Giang', N'1998-03-25', N'Nữ', N'04TB, tổ 4, Ấp An Hòa,Xã An Sơn,Tx. Thuận An, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11241', N'Nguyễn Thị Kim Ngân', N'2000-10-22', N'Nữ', N'Tổ 3, Kp.An Hòa; P. Hòa Lợi, Tx. Bến Cát, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11242', N'Hoàng Thị Bày', N'1997-11-06', N'Nữ', N'Kp.An Hòa; P. Hòa Lợi, Tx. Bến Cát, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11243', N'Nguyễn Huỳnh Đoan Anh', N'1993-07-30', N'Nữ', N'Kp.4; P. Hòa Lợi, Tx. Bến Cát, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11244', N'Đặng Thị Luần', N'1996-03-22', N'Nữ', N'Ấp 1; Xã Hội Nghĩa, Tx. Tân Uyên, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11245', N'Nguyễn Hữu Hiếu', N'1990-04-21', N'Nam', N'Tổ 2, Ấp 2A; Xã Phước Hòa, Huyện Phú Giáo, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11246', N'Nguyễn Văn Thương', N'1993-06-29', N'Nam', N'Tổ 3, Kp.1; P. Vĩnh Tân, Tx. Tân Uyên, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11247', N'Lê Huỳnh Phương', N'1991-12-24', N'Nam', N'148 Kp.4; P. Thống Nhất, Tp. Biên Hòa, Tỉnh Đồng Nai.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11248', N'Đỗ Thị Thu Dung', N'1995-05-13', N'Nữ', N'Tổ 2, Ấp Bào Gốc; Xã Bình Mỹ, Huyện Bắc Tân Uyên, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11249', N'Trần Thị Thúy Oanh', N'2000-10-03', N'Nữ', N'Đường D38, KDC Việt Sing; P. An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11250', N'Nguyễn Văn Linh Dương', N'1996-10-23', N'Nam', N'Kp.4; P. Hòa Phú, Tp. Thủ Dầu Một, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11251', N'Nguyễn Thị Tám', N'1993-11-18', N'Nữ', N'Tổ 3, Kp.1; P. Vĩnh Tân, Tx. Tân Uyên, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11252', N'Võ Thị Ánh Thi', N'2000-06-01', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11253', N'Trần Minh Nguyệt', N'1997-05-24', N'Nữ', N'Phường An Phú, Tp Thuận An, Tỉnh Bình Dương', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11254', N'Hồ Thị Hồng Thắm', N'1992-03-24', N'Nữ', N'Phường An Phú, Tp Thuận An, Tỉnh Bình Dương', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11255', N'Võ Thị Thẫm', N'2000-07-14', N'Nữ', N'Ô 43A, Dc10, KDC VietSing , Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11256', N'Nguyễn Thị Kim Anh', N'1993-11-01', N'Nữ', N'245/2 KP 1B, Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11257', N'Đàm Thị Xuân', N'1999-06-30', N'Nữ', N'Ô 11, Dc45, KDC Vietsing ,Phường An Phú, Tp Thuận An, Tỉnh Bình Dương', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11258', N'Lương Thị Thân', N'2002-03-29', N'Nữ', N'31/A4 KP3; P. An Phú, Thị Xã Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11296', N'Trần Thị Mỹ Linh', N'1991-10-22', N'Nữ', N'Ấp 3, Xã Tiến Hưng, Tx. Đồng Xoài, Tỉnh Bình Phước.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11297', N'Đặng Thị Năm', N'2000-04-08', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11298', N'Nguyễn Thái Mai Uyên', N'2002-10-08', N'Nữ', N'527/22A Điện Biên Phủ, Phường 5, Quận Bình Thạnh, Tp. Hồ Chí Minh.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11299', N'Trần Thị Thảo', N'1991-08-11', N'Nữ', N'Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11300', N'Yeh Yi Chun/葉怡君', N'1994-08-14', N'Nữ', N'Đường D1, KCN Bắc Đồng Phú, TT. Tân Phú, Huyện Đồng Phú, Tỉnh Bình Phước', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11301', N'Huỳnh Tấn Nhỏ', N'1990-08-25', N'Nam', N'Kp. 4; P.Vĩnh Tân, Thị Xã Tân Uyên, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11302', N'Trần Thị Hồng Vân', N'2000-05-18', N'Nữ', N'57/9 Kp. Đông Nhì, Phường Lái Thiêu, Tx.Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11303', N'Võ Thị Tuyền', N'1999-01-03', N'Nữ', N'Tân Phú 2, Phường Tân Bình, Tp Dĩ An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11304', N'Nguyễn Thị Kim Nhiển', N'1991-10-21', N'Nữ', N'15/10, KP. Tân Thắng, Phường Tân Bình, Tp. Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11305', N'Thị Vàng', N'1998-10-29', N'Nữ', N'Tổ 3, Ấp 1; Xã Vĩnh Tân, Tx.Tân Uyên, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11306', N'Ngô Văn Thi', N'1997-10-20', N'Nam', N'Ấp Suối Tre; Xã Tân Bình, Huyện Bắc Tân Uyên, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11307', N'Vi Văn Đoàn', N'1991-11-28', N'Nam', N'Kp.2; P.Tân Định, Tx.Bến Cát, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11308', N'Võ Thị Trúc Bình', N'2001-08-18', N'Nữ', N'93/14A Kp.Tân Long; Phường Tân Đông Hiệp, Tx. Dĩ An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11309', N'Quách Minh Hải', N'2000-12-31', N'Nam', N'2/96A, Tổ 1, Kp. Bình Thuận 2, Phường Thuận giao, Tp. Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11310', N'Thái Thị Thơm', N'1996-02-16', N'Nữ', N'Phường An Phú, Tp Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11311', N'Chin Chih Jung/秦志榮', N'1995-01-25', N'Nam', N'Công ty TNHH New Apparel Far Eastern (Việt Nam), đường D1, KCN Bắc Đồng Phú, TT Tân Phú, Đồng Phú, Bình Phước', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11312', N'Ngô Thị Minh Thư', N'1991-04-30', N'Nữ', N'Ô 49, Dc 02, KP.04, Phường An Phú, Tp Thuận An, Tỉnh Bình Dương', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11313', N'Trần Thị Ngọc Giàu', N'1993-06-04', N'Nữ', N'30/17/48 Đường 17; Phường Bình Hưng Hòa A, Quận Bình Tân, Tp. Hồ Chí Minh.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11314', N'Trương Đức Tiến', N'1990-04-02', N'Nam', N'Tổ 7, Kp.4; P.Vĩnh Tân, Tx.Tân Uyên, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11315', N'Cao Thế Cường', N'2002-02-22', N'Nam', N'Đường 33; TT.Tân Bình, Huyện Bắc Tân Uyên, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11316', N'Dương Văn Bảo', N'2002-07-23', N'Nam', N'Đường 28; P. Vĩnh Tân, Tx. Tân Uyên, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11317', N'Võ Nữ Xuân Thương', N'1999-06-08', N'Nữ', N'C71M, Kp Bình Phước, Phường Bình Nhâm, Tx.Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11318', N'Lê Thị Cẩm Tú', N'1994-10-25', N'Nữ', N'B1/20, Tổ 9, KP. Bình Thuận 2, Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11319', N'Dương Thị Thắm', N'2000-01-07', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11320', N'Nguyễn Thị Thắm', N'1998-10-05', N'Nữ', N'315B/1, Tổ 1, Kp.1A,Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11321', N'Feng Yu Lin/ Linda', N'1994-11-27', N'Nữ', N'46 Đại Lộ Tự Do, KCN Việt Nam- Singapore, Thuận An, Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11322', N'Chen Yu Hsiang / Otto', N'1997-02-07', N'Nam', N'新北市中和區保健路106巷24號2樓', N'C12SPT2')
GO
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11323', N'Trần Thị Dung', N'2002-11-20', N'Nữ', N'33/5, Kp.04, Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11324', N'Nguyễn Minh Thuân', N'1997-04-23', N'Nam', N'27A Hưng Thọ, Hưng Định, Tx. Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11325', N'Li Chung Tsung/ Ben', N'1998-12-30', N'Nam', N'109, No. 56, Xinjili, Anding District, Tainan City, Taiwan', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11326', N'Sái Thị Tuấn Anh', N'1995-05-25', N'Nữ', N'Tổ 2, KP Tân Liên, TT Tân Phú, Huyện Đồng Phú, Tỉnh Bình Phước.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11327', N'Châu Thị Thu Lam', N'2001-03-13', N'Nữ', N'Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11328', N'Vũ Thị Hồng Nhung', N'1997-08-30', N'Nữ', N'Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11329', N'Trương Ngọc Minh', N'1999-10-06', N'Nam', N'151 E/1 Khu phố 1A, Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11330', N'Nguyễn Thị Hồng Thắm', N'1992-02-14', N'Nữ', N'KP Bình Đức 2, Phường Lái Thiêu, Tx. Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11362', N'Võ Thị Kim Chi', N'1990-06-09', N'Nữ', N'1/85, Kp Bình Thuận 2, Phường Thuận Giao; Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11583', N'Nguyễn Thị Bích Đào', N'1997-04-15', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11584', N'Phạm Thị Thu', N'2002-02-22', N'Nữ', N'KP Bình Phước B, Phường Bình Chuẩn, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11585', N'Nguyễn Văn Anh', N'1995-04-03', N'Nam', N'Ấp Bình Thuận 1, Phường Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11586', N'Nguyễn Thị Hiền', N'1992-08-29', N'Nữ', N'Tx. Dĩ An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11587', N'Nguyễn Thị Trang', N'1993-04-13', N'Nữ', N'13/C6, KP.03, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11588', N'Lê Thị Thanh Tâm', N'2001-06-13', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11589', N'Nguyễn Thị Mỹ Nhung', N'1991-05-17', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11590', N'Bùi Thị Mỹ Xuyến', N'1995-03-11', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11591', N'Nguyễn Thị Thúy Hà', N'1991-10-06', N'Nữ', N'Bình Đáng, Phường Bình Hòa, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11592', N'Đoàn Thị Mỹ Tiên', N'1994-02-25', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11593', N'Nguyễn Kim Lương', N'1991-04-28', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11594', N'Nguyễn Thị Phương', N'2000-05-08', N'Nữ', N'50/4, Kp. Tây A, Phường Đông Hòa, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11595', N'Lưu Tuyết Nhi', N'1997-10-13', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11596', N'Nguyễn Thị Tuyết Hoa', N'1998-02-14', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11597', N'Trần Thị Đào', N'1997-01-11', N'Nữ', N'O11, TDC 01, D37, KDC VietSing, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11598', N'Nguyễn Thị Thanh Danh', N'1994-06-16', N'Nữ', N'Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11599', N'Lê Thị Thanh Xuân', N'2002-08-03', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11600', N'Nguyễn Văn Lâm', N'1997-04-01', N'Nam', N'Phường Thái Hòa; Tx. Tân Uyên, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11601', N'Nguyễn Thị Mai Linh', N'1994-09-10', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11602', N'Nguyễn Chí Tâm', N'1993-10-07', N'Nam', N'Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11603', N'Phí Thị Huyền', N'1998-03-30', N'Nữ', N'Phường An Phú, TP Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11604', N'Trần Chí Tâm', N'1995-12-03', N'Nam', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11605', N'Nguyễn Sỹ Lĩnh', N'1993-01-18', N'Nam', N'Ô 78, DC 23, KDC VietSing, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11606', N'Nguyễn Minh Thắng', N'1998-07-15', N'Nam', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11607', N'Nguyễn Thị Nhung', N'2000-07-04', N'Nữ', N'Tổ 2, Kp. An Thành, Phường Thái Hòa, Tx. Tân Uyên, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11608', N'Nguyễn Đức Dương', N'1990-01-05', N'Nam', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11609', N'Bùi Cao Hồng Nhi', N'1995-08-10', N'Nữ', N'Đường 11, Khu Phố Nhị Đồng 1, Phường Dĩ An, TP. Dĩ Am, Tỉnh Bình Duong', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11610', N'Ngô Văn Hồ', N'1991-09-25', N'Nam', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11611', N'Bùi Thạch Bằng', N'1998-11-27', N'Nam', N'3/2, Kp. Tân Thắng, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11612', N'Nguyễn Thị Nguyệt', N'2002-08-19', N'Nữ', N'79/16, Kp. Tân Phước, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11613', N'Phạm Thị Mai', N'1991-04-04', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11614', N'Nguyễn Thị Hằng', N'1992-12-24', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11615', N'Lữ Thị Thuỷ', N'1998-09-07', N'Nữ', N'22/B1, Kp.03, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11616', N'Ngô Văn Quý', N'1999-05-27', N'Nam', N'30/A83, Tổ 10, NA6, KP. Bình Giao, Phường Bình Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11617', N'Võ Thị Út', N'1995-06-30', N'Nữ', N'D6/4, Tổ 12, Kp. Bình Thuận 2, Phường Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11618', N'Nguyễn Ngọc Anh', N'1991-08-26', N'Nữ', N'OO, Dc22, tổ 28, Kp.04, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11111', N'Đặng Ngọc Hạnh', N'1996-11-01', N'Nữ', N'108 Hưng Lộc, Hưng Định; Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'D14HT01 ')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11185', N'Nguyễn Thị Lệ', N'1993-09-05', N'Nữ', N'109/8, Kp. Tân Phước,Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11259', N'Lô Văn Bốn', N'2001-10-10', N'Nam', N'Tổ 3, Kp. Bình Hòa 1, Phường Tân Phước Khánh, Tx. Tân Uyên, Tỉnh Bình Dương', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11331', N'Phạm Thị Mỹ Hiền', N'2000-12-05', N'Nữ', N'16B1 Khu phố 3, Phường An Phú, Thị xã Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11332', N'Huỳnh Thị Thúy', N'1994-10-03', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11333', N'Hoàng Thị Như Quỳnh', N'1993-12-15', N'Nữ', N'6B/2 Khu phố Bình Đáng, Phường Bình Hòa, Thị xã Thuận An, Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11334', N'Phan Thị Vĩnh', N'1991-09-20', N'Nữ', N'Khu phố Bình Hòa, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11335', N'Ngô Thị Bé Quyên', N'1993-08-28', N'Nữ', N'Phường Thuân Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11336', N'Lý Thị Huỳnh Dung', N'1999-07-15', N'Nữ', N'5B/4A Khu phố Bình Đáng, Phường Bình Hòa, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11337', N'Bùi Văn Hùng', N'1999-05-25', N'Nam', N'Khu phố Hòa Lân 1, Phường Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11338', N'Dương Thị Mén', N'2002-11-12', N'Nữ', N'1/48B Tổ 2, Khu phố Hòa Lân 2, Phường Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11339', N'Nguyễn Thị Mỹ Linh', N'1996-04-13', N'Nữ', N'KDC Việt Sing, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11340', N'Võ Thị Liền', N'1993-06-08', N'Nữ', N'Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11341', N'Trần Văn Sơn', N'2002-10-20', N'Nam', N'23/A10 Khu phố 3, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11342', N'Lê Thị Kim Quyên', N'1993-07-20', N'Nữ', N'KDC Việt Sing, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11343', N'Nguyễn Thị Diễm My', N'1990-06-14', N'Nữ', N'121Y/2 Khu phố 1B, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11344', N'Đinh Thị Huệ', N'1992-02-11', N'Nữ', N'7A/10 Khu phố Bình Đáng, Phường Bình Hòa, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11345', N'Nguyễn Thị Hồng Ngọc', N'1999-06-16', N'Nữ', N'Tổ 6, Kp. Khánh Hội, Tân Phước Khánh, Tx. Tân Uyên, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11346', N'Nguyễn Nam An', N'2001-07-02', N'Nam', N'KDC Việt Sing, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11347', N'Trần Công Minh', N'1993-07-04', N'Nam', N'Tổ 6, Kp. Khánh Hội, Tân Phước Khánh, Tx. Tân Uyên, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11348', N'Lê Thị Thiên Kim', N'1993-01-15', N'Nữ', N'745/45 Khu Phố Chiêu Liêu; Phường Tân Đông Hiệp, Tx. Dĩ An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11349', N'Lê Thị Mai Hương', N'1998-09-01', N'Nữ', N'257/2 Kp. 1B, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11350', N'Nguyễn Thị Bích Liễu', N'2002-03-31', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11351', N'Phạm Thị Mỹ Dung', N'1990-12-02', N'Nữ', N'Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11352', N'Võ Thị Trúc Liêl', N'1992-07-27', N'Nữ', N'93/14A Kp. Tân Long, Phường Tân Đông Hiệp, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11353', N'Lin Pei Yang / Nalita', N'1998-08-11', N'Nữ', N'5th Floor, No. 311, Environmental Protection Road, Zhongli District, Taoyuan City, Taiwan', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11354', N'Wang Chun Ming / Spring', N'1992-03-18', N'Nữ', N'20th Floor, No. 630-4, Dayou Road, Taoyuan District, Taoyuan City,Taiwan', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11355', N'Miao Jui Cheng/ Richard', N'1992-08-02', N'Nam', N'1F, No. 11, Lane 249, Yongzhen Road, Zhonghe District, New Taipei City', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11356', N'Đoàn Lê Thị Hạnh', N'1998-08-20', N'Nữ', N'15/B2 Kp.Hòa Long; P. Lái Thiêu, Tp. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11357', N'Nguyễn Thị Trâm', N'2000-05-04', N'Nữ', N'Số 09, Thanh Niên, Kp. Tân Phú, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11358', N'Danh Út Huỳnh', N'1996-05-14', N'Nam', N'An Phú, TX. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11359', N'Tăng Thị Diểm My', N'2000-05-30', N'Nữ', N'Khu Phố 2, Phường An Phú, TP. Thuận An, Tỉnh Bình Dương', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11360', N'Nguyễn Thị Mỹ Hạnh', N'1996-08-23', N'Nữ', N'Phường An Phú, Tx: Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11361', N'Nguyễn Thị Thúy Kiều', N'2000-03-11', N'Nữ', N'215/9B, Kp Chiêu Liêu, Phường Tân Đông Hiệp; Tx. Dĩ An, Tỉnh Bình Dương', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11186', N'Phạm Thị Kiều Tiên', N'1993-03-26', N'Nữ', N'Tổ 2, Kp.Suối Tre; TT. Tân Bình, Huyện Bắc Tân Uyên, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11187', N'Nguyễn Thị Thu Thảo', N'1996-09-25', N'Nữ', N'Ấp Bình Tiến; Xã An Bình, Huyện Phú Giáo, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11188', N'Nguyễn Thị Muội', N'1994-01-18', N'Nữ', N'Tổ 13, Ấp Đồng Trâm; Xã Phước Sang, Huyện Phú Giáo, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11189', N'Lê Thị Huê', N'1991-07-17', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11190', N'Đặng Thị Mến', N'1990-04-26', N'Nữ', N'Tổ 3, KP Bàu Ké, TT Tân Phú, Huyện Đồng Phú, Tỉnh Bình Phước.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11191', N'Nguyễn Thị Ngọc Trang', N'1996-07-23', N'Nữ', N'Ô 38 KDC Việt Sing, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'D14HT02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11192', N'Nguyễn Thị Bích', N'1992-12-23', N'Nữ', N'Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11193', N'Đinh Thị Hương', N'2001-10-15', N'Nữ', N'Phường An Phú, Tx. Thuận An, tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11194', N'Trần Thị Quỳnh Ngọc', N'1997-06-09', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11195', N'Lê Huy Thành', N'1995-10-27', N'Nữ', N'An Phú, Thuận An, Bình Dương', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11196', N'Trần Ngọc Đan Vy', N'1992-05-30', N'Nữ', N'704, Tổ 81, Kp.9; P. Chánh Nghĩa, Tp.Thủ Dầu Một, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11197', N'Bùi Thị Ngọc Yến', N'2000-12-08', N'Nữ', N'Ấp Vĩnh Tiến; Xã Vĩnh Hòa, Huyện Phú Giáo, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11198', N'Nguyễn Thị Quỳnh Châu', N'1998-12-12', N'Nữ', N'A1E412 Kp.4; P. An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11199', N'Triệu Thị Duyên', N'1997-02-20', N'Nữ', N'Tổ 3, Kp.1; P. Vĩnh Tân, Tx. Tân Uyên, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11200', N'Lê Thị Muội', N'1995-08-15', N'Nữ', N'2/83 Tổ 3, Kp.Bình Thuận 1; P. Thuận Giao, Tp. Thuận An, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11201', N'Nguyễn Thị Hải Vân', N'1999-05-02', N'Nữ', N'Tổ 4, Ấp Vĩnh Tiến; Xã Vĩnh Hòa, Huyện Phú Giáo, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11202', N'Nguyễn Văn Lý Hùng', N'1998-02-27', N'Nam', N'Kp.1B; P. Chánh Phú Hòa, TX. Bến Cát, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11203', N'Huỳnh Thị Mỹ Ái', N'1999-10-31', N'Nữ', N'Phường Lái Thiêu, Tx. Thuận An, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11204', N'Hà Thị Mai', N'2001-03-21', N'Nữ', N'Kp.6; P. Vĩnh Tân, Tx. Tân Uyên, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11205', N'Phạm Thúy Quỳnh', N'1994-10-23', N'Nữ', N'Tổ 2, Kp.Suối Tre; TT. Tân Bình, Huyện Bắc Tân Uyên, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11206', N'Bùi Thị Mỹ Linh', N'1994-10-11', N'Nữ', N'28 Đường 11, Kp.1; P.Bình Thọ, Quận Thủ Đức, TP.HCM.', N'C12SPT1')
GO
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11207', N'Nguyễn Thị Lâm', N'1995-09-22', N'Nữ', N'Đường 71, Kp.2; P.Phú Tân, Tp.Thủ Dầu Một, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11208', N'Lại Thị Liên', N'1993-12-08', N'Nữ', N'SN 20, Tổ 2, Kp2, Phường Thạnh Lộc, Quận 12, Tp. Hồ Chí Minh.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11209', N'Nguyễn Thị Chinh', N'2001-12-31', N'Nữ', N'26A/3B, Khu Phố 2, An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11210', N'Phạm Thị Thùy', N'1994-10-30', N'Nữ', N'07/04, Khu Phố 3, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11211', N'Lâm Minh Phú', N'1991-07-13', N'Nam', N'20/3 Thuận Giao, Tx Thuận An, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11212', N'Trần Văn Ý', N'1992-11-18', N'Nam', N'Phường Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11213', N'Sầm Thị Cần', N'2000-12-08', N'Nữ', N'55/3,KP 2, Phường An Phú, TX Thuận An, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11214', N'Hà Thị Phương Hậu', N'1995-01-01', N'Nữ', N'42/9 Tổ 15 Kp.Bình Giao; P.Thuận Giao, Tp.Thuận An, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11215', N'Danh Thị Trang Đài', N'1999-01-15', N'Nữ', N'Kp.4; P. Vĩnh Tân, Tx. Tân Uyên, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11216', N'Nguyễn Thị Phượng', N'1995-11-28', N'Nữ', N'Đường 33; TT. Tân Bình, Huyện Bắc Tân Uyên, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11217', N'Lê Thanh An', N'1993-06-20', N'Nam', N'Kp.Phú Hòa; P. Hòa Lợi, Tx. Bến Cát, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11218', N'Lê Thị Tình', N'1997-11-06', N'Nữ', N'Kp.Phú Nghị; P. Hòa Lợi, Tx. Bến Cát, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11219', N'Nguyễn Duy Thanh', N'1992-10-21', N'Nam', N'Kp.8; P. Chánh Phú Hòa, Tx. Bến Cát, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11220', N'Hoàng Thu Thuỷ', N'1994-12-13', N'Nữ', N'20/A11, Kp.03, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11221', N'Nguyễn Thị Mỹ Linh', N'1996-09-06', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11222', N'Hồ Thiện Tuấn', N'2002-12-28', N'Nam', N'KP Bình Phước B, Tx. Thuận An, Tỉnh Bình Dương.', N'C12SPT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11260', N'Nguyễn Thị Như Ý', N'1990-08-23', N'Nữ', N'Phường An Phú, TP Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11261', N'Hà Thị Thu Hằng', N'1997-10-01', N'Nữ', N'30/3 Tổ 6, Kp. Bình Giao; P.Thuận Giao, Tp.Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11262', N'Mạch Thị Trang', N'1994-09-07', N'Nữ', N'Ấp Cây Khô; Xã Tam Lập, Huyện Phú Giáo, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11263', N'Nguyễn Văn Linh', N'1997-03-15', N'Nam', N'Tổ 9, Kp.1; P. Tân Định, Tx. Bến Cát, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11264', N'Huỳnh Thị Bạch Lê', N'2000-07-14', N'Nữ', N'65/3 ĐX 102, Tổ 66, Kp.8; P. Hiệp An, Tp. Thủ Dầu Một, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11265', N'Phan Thị Bình', N'2001-03-21', N'Nữ', N'Tổ 3, Kp.Suối Tre, TT. Tân Bình, Huyện Bắc Tân Uyên, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11266', N'Trần Vĩnh Xuân', N'2000-10-24', N'Nam', N'Đường NB11, Tổ 1, Kp.1; P. Vĩnh Tân, Tx. Tân Uyên, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11267', N'Phạm Thị Thoa', N'1993-08-24', N'Nữ', N'Ấp Phú Thứ; Xã Phú An, Tx. Bến Cát, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11268', N'Nguyễn Văn Quang', N'1995-09-15', N'Nam', N'Tổ 1, Kp.2; P. Tân Định, Tx. Bến Cát, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11269', N'Vương Kim Đông', N'1990-01-20', N'Nam', N'Kp.Bình Đức 1; P. Lái Thiêu, Tp.Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11270', N'Nguyễn Thị Minh Tuyền', N'1995-08-15', N'Nữ', N'Tổ 4, Ấp Tân An; Xã Tân Vĩnh Hiệp, Tx. Tân Uyên, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11271', N'Y Hoàn', N'1995-11-05', N'Nữ', N'Số 10, Nguyễn Văn Tiết, KP Bình Hòa; Phường Lái Thiêu, Tx.Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11272', N'Phạm Ngọc Tài', N'1990-04-26', N'Nam', N'Khu phố 4 đường NB18; Xã Vĩnh Tân, Huyện Bắc Tân Uyên, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11273', N'Lương Văn Công', N'1998-05-03', N'Nam', N'Kp.1; P.Vĩnh Tân, Tx.Tân Uyên, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11274', N'Nguyễn Thị Ngân', N'1997-05-29', N'Nữ', N'TT Tân Phú, Huyện Đồng Phú, Tỉnh Bình Phước.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11275', N'Hồ Cẩm Tú', N'2000-10-18', N'Nữ', N'144, Đường D38, KDC VietSing, Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11276', N'Đặng Văn Sang', N'1990-08-13', N'Nam', N'Ô 33, DC 09, Kp.01, Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11277', N'Lê Kim Thạch', N'1991-10-04', N'Nữ', N'Phường An Phú, Tp Thuận An, Tỉnh Bình Dương', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11278', N'Nguyễn Thị Kiều Anh', N'1993-08-17', N'Nữ', N'250 Ấp Ân Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11279', N'Mang Thị Diễm Kiều', N'2000-07-03', N'Nữ', N'KDC Việt Sing, Phường An Phú, TX Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11280', N'Nguyễn Thị Kim Mai', N'1995-12-15', N'Nữ', N'214/12 Chiêu Liêu, Phường Tân Đông Hiệp, Tx. Dĩ An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11281', N'Nguyễn Thị Kim Chung', N'1997-11-08', N'Nữ', N'KP Hưng Lộc, Phường Hưng Định, Tx. Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11282', N'Phan Thị Tuyết Hằng', N'1992-05-11', N'Nữ', N'46A, Tổ 8, KP4, Phường Phước Long B, Quận 9, TP. Hồ Chí Minh.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11283', N'Võ Thị Tú Quyên', N'1995-05-08', N'Nữ', N'4/11 Kp Đông B, Đông Hòa, Tx. Dĩ An, Tỉnh Bình Dương .', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11284', N'Nguyễn Thị Hòa', N'1995-11-27', N'Nữ', N'06/ C4 Ấp 3, KDC An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11285', N'Lê Thị Thảo', N'1999-07-16', N'Nữ', N'Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11286', N'Lê Thị Tâm', N'1999-06-17', N'Nữ', N'10/9, Kp. Đông Tân, Tx. Dĩ An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11287', N'Tô Thị Hằng', N'2000-09-21', N'Nữ', N'Phường Thuận Giao, Tx.Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11288', N'Lê Thị Hồng Xuyến', N'1993-11-04', N'Nữ', N'27/1 Khu Phố Hòa Long, Lái Thiêu , TP. Thuận An, Tỉnh Bình Dương', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11289', N'Phan Văn Đạt', N'1993-10-28', N'Nam', N'Hưng Lộc, Phường Hưng Định, Thị xã Thuận An, Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11290', N'Nguyễn Thị Mai', N'1996-11-18', N'Nữ', N'Khu phố 3, Phường An Phú, Thị xã Thuận An, Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11291', N'Dương Thị Mọi', N'1997-11-23', N'Nữ', N'200/3 KP 2, Phường An Phú, Thị xã Thuận An, Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11292', N'Lưu Thị Huyền Trân', N'1995-02-02', N'Nữ', N'Tổ 32 KP Chiêu Liêu, Phường Tân Đông Hiệp, Thị xã Dĩ An, Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11293', N'Dương Ngọc Mén', N'2002-10-22', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11294', N'Trần Thị Kim Vinh', N'1999-03-22', N'Nữ', N'11/1, Kp1A, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11295', N'Nguyễn Thị Tuyền', N'2000-04-08', N'Nữ', N'Đường 33; Xã Tân Bình, Huyện Bắc Tân Uyên, Tỉnh Bình Dương.', N'C12SPT2')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11399', N'Huỳnh Thị Thanh Mai', N'1996-12-12', N'Nữ', N'KP 1A, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11400', N'Lê Nhân Ái', N'1999-01-07', N'Nữ', N'Phường Bình Nhâm, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11401', N'Hà Thị Mỹ Phượng', N'1997-10-29', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11402', N'Trương Văn Tuấn', N'1998-08-25', N'Nam', N'1/199 KP Hòa Lân 2, Phường Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11403', N'Nguyễn Hữu Tuyến', N'1995-08-03', N'Nam', N'156/1 Kp 1A, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11404', N'Văn Thị Phương Hồng Thủy', N'2001-02-03', N'Nữ', N'980/13B Tổ 6A, Kp. Tân Long, P. Tân Đông Hiệp, Tx. Dĩ An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11405', N'Lê Văn Hà', N'1999-04-18', N'Nam', N'16 Lô 1, KP Bình Hòa, Phường Lái Thiêu, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11406', N'Dương Thị Bích Tuyền', N'1991-05-06', N'Nữ', N'Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11407', N'Bùi Văn Dựng', N'2002-04-18', N'Nam', N'KP. Tân Phước, P. Tân Bình, Tx. Dĩ An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11408', N'Dương Văn Cẩn', N'1991-11-11', N'Nam', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11409', N'Phan Thị Rớt Em', N'1994-09-17', N'Nữ', N'24/3, KP 2, Phường An Phú, Tx Thuận An, Tỉnh Bình Dương', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11410', N'Đỗ Thúy Kiều', N'2002-10-25', N'Nữ', N'Tổ 43, Kp Chiêu Liêu, Phường Tân Đông Hiệp, Tx Dĩ An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11411', N'Cao Thị Kim Phượng', N'1991-07-19', N'Nữ', N'Phường Bình Chuẩn, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11412', N'Huỳnh Thị Tho', N'1999-03-14', N'Nữ', N'36/1 KP 1A. Phường An Phú, Tx Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11413', N'Lê Thị Nhài', N'1993-03-01', N'Nữ', N'Số nhà 2/B1, Đường D1, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11414', N'Vũ Thị Thủy', N'1991-11-13', N'Nữ', N'05/C6, Khu Phố 3, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11415', N'Nguyễn Trung Hiếu', N'1992-02-25', N'Nam', N'Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11416', N'Nguyễn Khắc Toàn', N'1993-01-03', N'Nam', N'Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11417', N'Trần Văn Long', N'1997-02-14', N'Nam', N'Phường An Phú; Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11418', N'Hồ Thị Mỹ Hoa', N'2001-12-30', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11419', N'Võ Trung Trường', N'1993-07-09', N'Nam', N'Kp. Tân Long, Phường Tân Đông Hiệp, Tx. Dĩ An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11420', N'Nguyễn Thị Huỳnh Giao', N'1996-07-07', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11421', N'Đậu Thị Lợi', N'1992-04-05', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11422', N'Nguyễn Thị Thanh Thảo', N'1996-07-14', N'Nữ', N'Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11423', N'Nguyễn Thị Hồng Ngân', N'2002-11-12', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11424', N'Nguyễn Thị Ngọc Trầm', N'2002-02-14', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11425', N'Hoàng Thị Thắm', N'2000-02-06', N'Nữ', N'Phường Bình Hòa, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11426', N'Lê Thị Kim Chi', N'1998-08-21', N'Nữ', N'Đường D38, Khu Dân Cư Việt Sinh, P.An Phú, TX.Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11427', N'Lê Thị Thu Hà', N'1998-11-09', N'Nữ', N'116B, Kp2, Ấp Đông Ba, Bình Hòa, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11428', N'Trương Thị Thanh Nhản', N'1993-03-06', N'Nữ', N'KP4, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11429', N'Lê Thị Gái', N'1992-03-14', N'Nữ', N'16/B1 KP3, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11430', N'Lê Thị Thúy Kiều', N'1998-01-08', N'Nữ', N'185, Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11431', N'Phạm Thị Mỹ Tiên', N'2001-06-04', N'Nữ', N'Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11432', N'Từ Thị Hoa', N'1992-04-14', N'Nữ', N'An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11433', N'Trần Thị Bé Tám', N'2000-04-08', N'Nữ', N'45B/3C, Bình Đáng, Bình Hòa, Tx.Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11434', N'Võ Lê Hải Yến', N'2001-02-14', N'Nữ', N'Phường Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11435', N'Hồ Thị Thiền', N'1997-09-30', N'Nữ', N'336/1, Kp 1A, An Phú, Tx Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11436', N'Nguyễn Thanh Giang', N'1993-12-28', N'Nam', N'Kp Bình Phước B, Bình Chuẩn, Tx Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11363', N'Bùi Thanh Tân', N'1998-01-13', N'Nam', N'Kp. Bình Giao, Phường Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11364', N'Lê Thị Thanh', N'1996-01-22', N'Nữ', N'Tổ 22B, Kp. Đông Chiêu, Phường Tân Đông Hiệp, Tx. Dĩ An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11365', N'Lê Thị Nho', N'1997-11-10', N'Nữ', N'1/774 Tổ 1, Phường Hòa Lân 2; Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11366', N'Huỳnh Thị Ngọc Mai', N'1996-04-08', N'Nữ', N'Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11367', N'Lê Tuấn Anh', N'2001-10-11', N'Nam', N'37/2, Kp 1B, Phường An Phú; Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11368', N'Võ Tú Em', N'2001-07-04', N'Nam', N'2/29, Tổ 3, Kp Hòa Lân 1, Phường Thuận Giao; Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11369', N'Lô Thị Khoa', N'1992-01-20', N'Nữ', N'Khu phố Bình Đáng, Phường Bình Hòa, Thị xã Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11370', N'Nguyễn Thị Mai', N'1993-07-14', N'Nữ', N'764/4A, Kp Đông Thành, Phường Tân Đông Hiệp; Tx. Dĩ An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11371', N'Mai Thị Trúc Linh', N'1995-12-04', N'Nữ', N'1/53 Tổ 4, Kp. Hòa Lân 2; Phường Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11372', N'Ngô Thị Ngọc Bé', N'2000-04-26', N'Nữ', N'34C/3 Tổ 1, Kp. 2; Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
GO
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11373', N'Ka Tơr Thị Lim', N'1994-10-23', N'Nữ', N'10c/3, Tổ 10, Kp h, Phường An Phú; Tp. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11374', N'Nguyễn Ngọc Sáng', N'1996-09-14', N'Nữ', N'Tổ 37, Kp Chiêu Liêu, Phường Tân Đông Hiệp; Tx. Dĩ An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11375', N'Nguyễn Thế Thắng', N'2000-09-16', N'Nam', N'Tổ 37, Kp Chiêu Liêu, Phường Tân Đông Hiệp; Tx. Dĩ An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11376', N'Nguyễn Quang Phương', N'2001-11-07', N'Nam', N'Ấp Sóc Quả, Xã Tân Hưng, Huyện Hớn Quản, Tỉnh Bình Phước.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11377', N'Bùi Duy Quân', N'1996-02-03', N'Nam', N'Số 380, Khu 4 Lê Hồng Phong, TP.Thủ Dầu Một, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11378', N'Lê Văn Đạt', N'1992-01-24', N'Nam', N'Phường Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11379', N'Đàm Thị Bích Dược', N'1994-07-26', N'Nữ', N'Tổ 20, Kp. Tân Phước, Phường Tân Bình, Tp. Dĩ An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11380', N'Phùng Thị Toàn', N'1993-09-11', N'Nữ', N'11/V6 KP 3, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11381', N'Nguyễn Văn Nam', N'1990-06-02', N'Nam', N'34C/3 Tổ 1, Kp. 2; Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11382', N'Trần Thị Trúc Linh', N'1995-09-08', N'Nữ', N'34c/3, Tổ 1, Kp2, Phường An Phú; Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11383', N'Bùi Thị Thúy Hằng', N'2000-02-19', N'Nữ', N'122A/2, Kp 1B, Phường An Phú; Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11384', N'Nguyễn Thị Nga', N'1998-09-01', N'Nữ', N'52F/13, Ấp Bình Đáng, KDC 434, Bình Hòa, Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11385', N'Lê Thị Bình', N'1993-04-14', N'Nữ', N'5/17 Khu Phố Bình Hòa, Lái Thiêu, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11386', N'Lê Thị Bình', N'1994-05-27', N'Nữ', N'2/B Khu Phố 3, An Phú, Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11387', N'Nguyễn Thị Hương', N'2001-07-26', N'Nữ', N'Ấp Bình Đáng, Bình Hòa, Tx.Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11388', N'Phan Thị Thanh', N'2000-12-20', N'Nữ', N'19/9, Kp Bình Hòa, Lái Thiêu, Tx.Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11389', N'Đặng Thị Lương', N'2002-11-05', N'Nữ', N'D11, KDC Việt Sing, An Phú, Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11390', N'Lê Thị Hiền', N'1993-05-21', N'Nữ', N'Tân Bình, Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11391', N'Bùi Kim Ba', N'1998-11-19', N'Nữ', N'Thuận Giao, Thuận An, Tỉnh Bình Dương', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11392', N'Trương Thị Tân', N'1996-01-01', N'Nữ', N'03/C4 Kp. 3, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11393', N'Nguyễn Thị Hài', N'1992-04-09', N'Nữ', N'Tx. Thuận An, Tỉnh Bình Dương', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11394', N'Nguyễn Văn Cương', N'2002-03-02', N'Nam', N'230/ 3 Khu phố 2, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11395', N'Nguyễn Thị Hà', N'2002-08-17', N'Nữ', N'Tổ 14, Khu phố Đông Chiêu, Phường Tân Đông Hiệp, Tx. Dĩ An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11396', N'Nguyễn Thị Hiếu', N'1991-01-26', N'Nữ', N'34/C4 Khu Phố 3, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11397', N'Vi Thị Ngọc', N'1992-04-12', N'Nữ', N'KP 2, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11398', N'Nguyễn Thị Kiều Tiên', N'1998-12-28', N'Nữ', N'Khu Phố Hòa Lân II, Phường Thuận Giao, TP. Thuận An, Tỉnh Bình Dương', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11112', N'Đồng Thị Thu', N'2000-11-29', N'Nữ', N'Ấp 1, TT Tân Phú, Huyện Đồng Phú, Tỉnh Bình Phước.', N'D14HT01 ')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11113', N'Phan Thị Cẩm Giang', N'1996-07-05', N'Nữ', N'95B/2, Kp.1B, Phường An Phú, Tx. Thuận An, tỉnh Bình Dương.', N'D14HT01 ')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11114', N'Trần Thị Kim Ngân', N'1994-02-08', N'Nữ', N'52/5, Kp.1B, Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11115', N'Trần Thị Mai Hạnh', N'1992-02-12', N'Nữ', N'Đường X3, Kp. 3: Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11116', N'Trần Thị Huệ', N'1996-09-19', N'Nữ', N'170C/3, Tổ 10, KP.2, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11117', N'Trần Thị Thanh Muội', N'1997-11-14', N'Nữ', N'1/DC-77/41-43- Tổ 2, Kp Hòa Lân 2, Phường Thuận Giao; Tx. Thuận An, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11118', N'Trương Thị Hoa', N'2002-08-12', N'Nữ', N'25/C4, Khu Phố 3, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11119', N'Lâm Quang Bảo', N'2001-04-23', N'Nam', N'03/B3, Kp3, Phường An Phú; Tx. Thuận An, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11120', N'Nguyễn Văn Nhân', N'1995-10-07', N'Nam', N'Ô 32B, DC16, KDC VietSing , Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11121', N'Võ Thị Hoa', N'1991-08-06', N'Nữ', N'Bình Đường, Bình Hòa, Tx Thuận An, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11122', N'Đặng Thị Hồng Diễm', N'1993-03-10', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11123', N'Lê Thị Bích Như', N'1998-07-17', N'Nữ', N'19/6, Tổ 5, KP. Bình Giao, Phường Thuận Giao, Tp. Thuận An, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11124', N'Trần Thị Tiểu Yến', N'1992-10-25', N'Nữ', N'1/79 Tổ 1, Kp. Hòa Lân 2, Phường Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11125', N'Phan Ngọc Hải', N'1992-04-10', N'Nam', N'D407, Kp.Bình Hòa; P.Bình Nhâm, Tp.Thuận An, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11126', N'Nguyễn Thúy Sang', N'1995-01-10', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11127', N'Thái Thị Thảo', N'1998-04-01', N'Nữ', N'223/1 KP 1A, Phường An Phú, Tx Thuận An, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11128', N'Dương Thị Hiệp', N'1991-05-11', N'Nữ', N'179D/1, Kp1A, Phường An Phú, Tx: Thuận An, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11129', N'Hoàng Thị Quỳnh Như', N'1993-12-07', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11130', N'Nguyễn Trần Ngọc Trang', N'1992-06-08', N'Nữ', N'Phường Phú Hòa, Tp. Thủ Dầu Một, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11131', N'Trần Thị Phượng', N'1995-01-21', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11132', N'Lê Thị Nho', N'1991-09-20', N'Nữ', N'Đường số 50, Kp.4; Phường Hòa Phú, TP. Thủ Dầu Một, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11133', N'Lê Thị Kiều', N'1991-01-27', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11134', N'Nguyễn Thị Kim Anh', N'1990-11-04', N'Nữ', N'Tx: Thuận An, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11135', N'Nguyễn Bích Trăm', N'1993-05-10', N'Nữ', N'Ô 256 DC47, KDC Việt Sing Kp4, Phường An Phú, Tx: Thuận An, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11136', N'Phạm Văn Đại', N'1996-01-20', N'Nam', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11137', N'Danh Thị Bích Ny', N'1999-10-19', N'Nữ', N'Ấp Thạnh Hòa; Xã Thạnh Hội, Tx.Tân Uyên,Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11138', N'Phan Thị Kiều', N'2000-09-15', N'Nữ', N'1/DC63/06, Tổ 2, Kp Hòa Lân 2, Phường Thuận Giao; Tx. Thuận An, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11139', N'Võ Thị Huỳnh Như', N'1990-10-29', N'Nữ', N'65/3, Tổ 9, Kp.02, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11140', N'Nguyễn Thị Cẩm Tiên', N'2001-02-05', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11141', N'Đặng Mỹ Hảo', N'2002-12-03', N'Nữ', N'184C/2 Kp. 1B, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11142', N'Đậu Thị Lĩnh', N'1991-03-15', N'Nữ', N'Phường Bình Chuẩn, Tx. Thuận An, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11143', N'Nguyễn Thị Kim Ngân', N'1992-07-16', N'Nữ', N'Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11144', N'Nguyễn Thị Đồng', N'1993-03-18', N'Nữ', N'153 Nguyễn Đức Thiện, KP. Thống Nhất, Phường Dĩ An, Tp. Dĩ An, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11145', N'Hà Thị Loan', N'1999-06-18', N'Nữ', N'21/B1, Kp3, Phường An Phú; Tx. Thuận An, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11146', N'Cao Mỹ Hạnh', N'1992-09-03', N'Nữ', N'Ô 6A- TAC 04, Kp4, Phường An Phú; Tx. Thuận An, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11147', N'Lê Văn Vũ Linh', N'2002-03-13', N'Nam', N'Phường An Phú, Tx: Thuận An, Tỉnh Bình Dương.', N'D14HT01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11619', N'Nguyễn Thị Hương Thơm', N'1993-05-29', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11620', N'Trần Thị Kim Thoa', N'1990-08-11', N'Nữ', N'An Phú Đông Quận 12, TP Hồ Chí Minh.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11621', N'Lê Thị Cẩm Tú', N'1993-03-22', N'Nữ', N'51A/5 Khu phố 4, Phường An Phú, tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11622', N'Trần Thị Thảo', N'1995-07-05', N'Nữ', N'89B/3, Tổ 3, Kp.02, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11623', N'Trần Đăng Vượng', N'1997-07-14', N'Nam', N'53, Đường số 5, KDC DV Tân Bình, KP. Tân Thắng, P. Tân Bình, Tx. Dĩ An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11624', N'Nguyễn Văn Mạnh', N'2002-11-24', N'Nam', N'28/3, Kp. Bình Phú, Phường Bình Chuẩn, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11625', N'Nguyễn Thị Hạnh', N'1995-08-16', N'Nữ', N'22/12, KP. Bình Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11626', N'Trần Văn Huynh', N'2000-08-18', N'Nam', N'363D, Kp. Nguyễn Trãi, Phường Lái Thiêu, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11627', N'Trần Thị Bích Viên', N'1998-03-27', N'Nữ', N'37/10, Đường số 41, Phường Linh Đông, Quận Thủ Đức, Tp. HCM.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11628', N'Trần Thị Hồng Nhung', N'1997-11-24', N'Nữ', N'Kp. Hòa Lân 2, Phường Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11629', N'Nguyễn Thị Quỳnh Nhi', N'1994-08-01', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11630', N'Phạm Văn Đồng', N'1993-01-19', N'Nam', N'48A/2, Kp.1B; Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11631', N'Lê Văn Tùng', N'1997-09-14', N'Nam', N'126/3, Tổ 5, KP.2, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11632', N'Phan Lượm', N'1998-09-30', N'Nam', N'Tổ 2, Kp. An Thành, Phường Thái hòa, Tx.Tân Uyên, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11633', N'Nguyễn Thị Nhung', N'1997-03-16', N'Nữ', N'14/33, Kp. Bình Đường 1, Phường An Bình, Tp. Dĩ An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11634', N'Mai Thị Tinh', N'1991-01-24', N'Nữ', N'60/2, Tổ 8, Kp. Bình Giao, Phường Thuận Giao, Tp. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11635', N'Lê Thị Nhung', N'1998-10-29', N'Nữ', N'16/DC2, Tổ 16, Bình Phước B, Phường Bình Chuẩn, Tp. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11636', N'Nguyễn Thị Kiều My', N'1992-11-13', N'Nữ', N'Ô 77, Dc 23, Kp.04, Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11637', N'Lê Thị Phương', N'1991-10-30', N'Nữ', N'34, Nguyễn Văn Tiết, Phường Lái Thiêu, Tx. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11638', N'Nguyễn Văn Chiến', N'1999-11-17', N'Nam', N'Tân Phước, Tân Bình, Dĩ An, Bình Dương', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11639', N'Lê Văn Toàn', N'1998-10-05', N'Nam', N'173, Kp. Đông Tư, Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11640', N'Trần Văn Trãi', N'1991-10-20', N'Nam', N'Hòa Lân II, Thuận Giao, TX Thuận An, Tỉnh Bình Dương', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11641', N'Mai Văn Hùng', N'2001-07-29', N'Nam', N'37/B Kp. Bình Giao, Phường Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11642', N'Vương Thị Vân Anh', N'1999-06-18', N'Nữ', N'10k/2, Khu Phố Bình Đáng, Phường Bình Hòa, Tx Thuận An, Tỉnh Bình Dương', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11643', N'Nguyễn Thị Nga', N'1993-11-21', N'Nữ', N'34/3 Ấp 2, Xã An Phú, TX Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11644', N'Đặng Ngọc Hà', N'1997-08-18', N'Nữ', N'Đ242/39, Tổ 39, Khu 5, Phường Chánh Nghĩa, Tx Thủ Dầu Một, Tỉnh Bình Dương', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11645', N'Lê Thị Hân', N'1990-05-02', N'Nữ', N'D54A, Kp Bình Đức 1, TT Lái Thiêu, Tx. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11646', N'Trần Thị Diễm Thảo', N'2001-08-20', N'Nữ', N'Tổ 19, Âp Chiêu Liêu, Tx. Dĩ An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11647', N'Huỳnh Thảo Nhi', N'1999-11-04', N'Nữ', N'14A/4 Kp. Bình Đáng, Phường Bình Hòa, Tx. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11648', N'Trần Thị Trang', N'1994-06-01', N'Nữ', N'O4,/B2, Ấp 3, An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11649', N'Nguyễn Thị Hà', N'2002-11-05', N'Nữ', N'Tổ 3C, Ấp Chiêu Liêu, Tân Đông Hiệp, Tx. Dĩ An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11650', N'Thị Út Quí', N'1999-04-28', N'Nữ', N'33/7 Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11651', N'Nguyễn Thị Trang', N'1998-05-28', N'Nữ', N'Tổ 2 Khu Phố An Thành, Tân Uyên, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11652', N'Trương Thị Hải', N'1995-12-08', N'Nữ', N'KP Bình Hòa, Phường Lái Thiêu, Tx. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11653', N'Lê Văn Lâu', N'1990-08-11', N'Nam', N'9/5, Ấp 4, An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11654', N'Võ Bích Phượng', N'1997-12-28', N'Nữ', N'86/3 Tổ 3, KP2, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11655', N'Trần Thị Diễm Ngọc', N'1992-06-15', N'Nữ', N'KP 3, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11656', N'Trần Hữu Triều', N'1994-08-28', N'Nam', N'Ấp 2, An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
GO
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11657', N'Lê Thị Dịu', N'1990-08-19', N'Nữ', N'Khu Phố Thắng Lợi, Dĩ An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11658', N'Đặng Thị Mỹ Linh', N'1997-08-11', N'Nữ', N'13A/14 ấp 2, Vĩnh Lộc B, Huyện Bình Chánh, TP.HCM', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11659', N'Lê Thị Na', N'1994-10-01', N'Nữ', N'156/5, KP Tân Đông Hiệp, Phường Tân Bình, Tx Dĩ An, Tỉnh Bình Dương', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11660', N'Nguyễn Thị Hương', N'1999-09-10', N'Nữ', N'KP An Phú, Tx Thuận An, TỈnh Bình Dương', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11661', N'Võ Thị Mỹ Linh', N'1998-10-18', N'Nữ', N'Ô 9, IDC 03, KDC VietSing, KP 4, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11662', N'Đinh Thị Thúy', N'2002-03-18', N'Nữ', N'Đường Số 6, Phường Lái Thiêu, Tx. Dĩ An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11663', N'Nguyễn Minh Dương', N'1991-01-02', N'Nam', N'13/2A, Kp. Bình Hòa, Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11664', N'Thị Nguyệt', N'1998-10-19', N'Nữ', N'22/17, Kp. Bình Phước B, Phường Bình Chuẩn, Tx. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11665', N'Nguyễn Thị Kim Loan', N'1995-02-07', N'Nữ', N'Phường An Phú, Tx. thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11666', N'Đặng Thị Tuyết', N'1998-09-19', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11667', N'Nguyễn Thị Tâm', N'2002-04-02', N'Nữ', N'78E/18 KP Bình Đáng, Phường Bình Hòa, Tx. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11668', N'Hồ Thị Thu Thủy', N'1991-05-14', N'Nữ', N'D69A, Đường D36, KDC VietSing, KP 4, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11669', N'Lê Văn Tình', N'1991-08-19', N'Nam', N'Phường Lái Thiêu, Tx. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11670', N'Lê Bích Tuyền', N'1996-11-10', N'Nữ', N'Kp Bình Hòa, Huyện Thuận An , Tỉnh Bình Dương', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11671', N'Trần Thị Hồng Mai', N'1997-09-09', N'Nữ', N'Phường Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11672', N'Hồ Thị Thanh Trúc', N'2002-01-13', N'Nữ', N'Đường D1, KDC Việt Sing, Phường An Phú, Tx: Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11673', N'Mã Văn Dũng', N'1995-07-19', N'Nam', N'19/5, Bình Quới A, Phường Bình Chuẩn, Tx. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11674', N'Phan Tấn Đạt', N'1996-06-30', N'Nam', N'Phường Tân Đồng, TP Đồng Xoài, Tỉnh Bình Phước.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11675', N'Thái Thị Nhi', N'2002-02-07', N'Nữ', N'Kp.1A; P. Chánh Phú Hòa, Tx. Bến Cát, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11676', N'Đoàn Quyết Thắng', N'1992-09-24', N'Nam', N'Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11677', N'Thái Bá Nam', N'1996-12-18', N'Nam', N'Phường An Phú, Thị xã Thuận An, Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11678', N'Nguyễn Thị Cẩm Tiên', N'1997-08-23', N'Nữ', N'Phường Thuận Giao, Tx: Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11679', N'Vũ Thị Thanh', N'1994-03-02', N'Nữ', N'Tổ 10, Kp2, Tx: Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11680', N'Lý Thị Anh', N'1996-12-07', N'Nữ', N'14L/8, Kp. Bình Đáng, Phường Bình Hòa, Tx. Thuận An, Tỉnh Bình Dương', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11681', N'Đinh Quan Sang', N'1999-12-15', N'Nam', N'Tổ 2, Ấp Bình Thắng; Xã An Bình, Huyện Phú Giáo, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11682', N'Nguyễn Thị Thắng', N'1991-08-18', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11683', N'Trịnh Văn An', N'1997-07-18', N'Nam', N'Trần Dạ Thảo, Tx: Dĩ An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11684', N'Đặng Ánh Son', N'1998-04-02', N'Nữ', N'52B/3 Tổ 8 Kp2, Phường An Phú, Tx: Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11685', N'Lê Thị Tố Sương', N'2001-06-24', N'Nữ', N'D26, KDC Việt Sing, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11686', N'Nguyễn Ngọc Yến', N'2001-05-27', N'Nữ', N'Tổ 4, Kp. Tân Thắng, Phường Tân Bình, Tx. Dĩ An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11687', N'Vương Quốc Việt', N'1998-06-07', N'Nam', N'6D/5 Kp Bình Phước B, Phường Bình Chuẩn, Tx: Thuận An, Tỉn Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11688', N'Trần Nhựt', N'1994-01-11', N'Nam', N'301B/1, Kp1A, Phường An Phú, Tx: Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11689', N'Nguyễn Văn Vũ', N'1990-09-26', N'Nam', N'2/15 Kp Tân Phước, Phường Tân Bình, Tx: Dĩ An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11690', N'Nguyễn Thị Tuyết Hoa', N'1995-10-11', N'Nữ', N'Trần Dạ Thảo, 7/4 Kp Tân Thắng, Tx. Dĩ An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11691', N'Trần Thị Nhung', N'1995-09-07', N'Nữ', N'67/3 Tổ 13, Kp Bình Giao, Phường Thuận Giao; Tx. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11692', N'Phạm Thị Hiền', N'1999-11-03', N'Nữ', N'7/14B, Khu phố Bình Hòa, Phường Bình Đáng, Tx. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11693', N'Đàm Văn Thọ', N'1995-05-30', N'Nam', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11694', N'Nguyễn Thị Thu Trang', N'1996-11-27', N'Nữ', N'52/1, KP. Thạnh Bình, Phường An Phú, Tp Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11695', N'Nguyễn Minh Tuấn', N'2001-06-12', N'Nam', N'Phường An Phú, Thị xã Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11696', N'Lê Thị Lam', N'1991-11-18', N'Nữ', N'Đường 33; Xã Tân Bình, Huyện Bắc Tân Uyên, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11697', N'Nguyễn Thị Minh Lý', N'1998-04-25', N'Nữ', N'Khu phố Chiêu Liêu, Phường Tân Đông Hiệp, Tp. Dĩ An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11698', N'Xu Shu Xia / Susan', N'1991-05-23', N'Nữ', N'46 Đại Lộ Tự Do, KCN Việt Nam- Singapore, Thuận An, Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11699', N'Võ Thị Mỹ Linh', N'2001-04-09', N'Nữ', N'3/8 Kp Bình Phước B, Phường Bình Chuẩn, Tx: Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11700', N'Tống Thị Thúy Oanh', N'1995-06-05', N'Nữ', N'Kp.An Hòa; P.Hòa Lợi, Tx.Bến Cát, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11701', N'Nguyễn Thị Cẩm Loan', N'2002-07-15', N'Nữ', N'Ô 36, TĐC 03, Kp4, Phường An Phú, Tx: Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11702', N'Hoa Thị Cẩm Tú', N'2001-02-15', N'Nữ', N'4A/3, Tổ 13 Kp 2, Phường An Phú, Tx: Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11703', N'Hồ Thị Thanh', N'2000-09-11', N'Nữ', N'09/A11, Kp3, Phường An Phú, Tx: Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11704', N'Nguyễn Thị Thảo Vân', N'1991-08-31', N'Nữ', N'24H2/3F, Kp. Bình Đáng, Phường Bình Hòa, Tx: Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11705', N'Võ Kim Khuyến', N'2000-06-08', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11706', N'Nguyễn Thị Thúy Việt', N'2001-09-27', N'Nữ', N'Tổ 06; KP. Tân Mỹ, Phường Thái Hòa, Tx. Tân Uyên, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11707', N'Huỳnh Thị Kim Thảo', N'2000-03-24', N'Nữ', N'Phường An Phú, Tx. Thuận An, tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11708', N'Phan Thị Hoa', N'1997-09-28', N'Nữ', N'Tổ 3, Kp. Bình Phước A, Phường Bình Chuẩn, Tx. Thuận An, tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11709', N'Lê Chí Hải', N'2000-04-16', N'Nam', N'19R/18 Kp. Bình Đáng, Phường Bình Hòa, Tx. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11710', N'Trần Thị Hồng Thắm', N'2002-11-08', N'Nữ', N'Kp.Phú Nghị; P.Hòa Lợi, Tx.Bến Cát, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11711', N'Phạm Thị Xoan', N'1993-09-09', N'Nữ', N'1/DC 60/12 Tổ 10, Khu phố Hòa Lân 2, Phường Thuận Giao, Tp Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11712', N'Huỳnh Hoa Tiên', N'1996-02-01', N'Nữ', N'Ấp Phú Trung; Xã Phú Chánh, Tx.Tân Uyên, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11713', N'Đặng Thị Xinh', N'1993-11-24', N'Nữ', N'94E/2, Khu Phố 1B, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11714', N'Nguyễn Thị Hồng Nguyên', N'1996-04-09', N'Nữ', N'Đường 19, Tổ 7, Kp.4; P.Vĩnh Tân, Tx.Tân Uyên, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11715', N'Trần Thị Quyền', N'1994-10-07', N'Nữ', N'Phường An Phú, Tp Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11716', N'Vũ Thị Nhàn', N'1993-01-05', N'Nữ', N'Tổ 3; P.Vĩnh Tân, Tx.Tân Uyên, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11717', N'Thạch Hòa', N'1995-11-25', N'Nam', N'Tổ 36, KP Thắng Lợi, TT Tân Phú, Huyện Đồng Phú, Tỉnh Bình Phước.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11718', N'Tống Thị Na', N'1994-09-15', N'Nữ', N'Khu phố Hòa Lân 2, Phường Thuận Giao, Tp Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11719', N'Nguyễn Duy Linh', N'1998-05-12', N'Nam', N'Phường Bình Hòa, Tx. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11720', N'Nguyễn Thị Thanh Vân', N'1997-12-06', N'Nữ', N'B7/11, Kp Bình Thuận 2, Phường Thuận Giao, Tx: Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11721', N'Ngân Thị Nhàn', N'2002-05-25', N'Nữ', N'39I/11, Kp Bình Đáng, Phường Bình Hòa, Tx: Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11722', N'Đinh Thị Hồng Nghị', N'2000-09-25', N'Nữ', N'Ô 24, Lô F2, DP1, Kp Phú Hội, Phường Vĩnh Phú; Tx. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11723', N'Trần Thị Cẩm Duyên', N'1998-03-07', N'Nữ', N'1/79 Kp Bình Thuận 2, Phường Thuận Giao; Tx. Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11724', N'Trương Thị Kim Pha', N'2001-01-14', N'Nữ', N'37/2, Kp 1B, Phường An Phú, Tx: Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11725', N'Hà Thị Vân', N'1998-05-15', N'Nữ', N'31/C4, Kp3, Phường An Phú, Tx: Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11726', N'Hồ Anh Kiệt', N'2002-06-15', N'Nam', N'307/5, Kp4, Phường An Phú, Tx: Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11727', N'Lê Thị Ngọc Như', N'2000-06-25', N'Nữ', N'22/31, Đường Số 7, Tổ 2, Kp3, Phường Linh Trung, Quận Thủ Đức, TP. Hồ Chí Minh.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11728', N'Nguyễn Thị Ngọc Anh', N'2002-02-19', N'Nữ', N'05R/18, Kp Bình Đáng, Phường Bình Hòa, Tx: Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11729', N'Bùi Thị Thanh Tuyền', N'2001-11-19', N'Nữ', N'Phường An Phú, Tx: Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11730', N'Nguyễn Thị Miền', N'1996-12-07', N'Nữ', N'9/30 Kp.Bình Hòa; Phường Lái Thiêu, Tx.Thuận An, Tỉnh Bình Dương.', N'C13QDT1')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11510', N'Đỗ Thị Huyền', N'1993-09-06', N'Nữ', N'13/16 KP Bình Phước B, Phường Bình Chuẩn, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11511', N'Vũ Thị Tuyên', N'1992-04-17', N'Nữ', N'208-19B, KP. Chiêu Liêu, Phường Tân Đông Hiệp, Tx.Dĩ An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11512', N'Trịnh Thị Lan', N'1990-11-15', N'Nữ', N'Kp. 1B; Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11513', N'Phùng Thị Loan', N'2000-09-04', N'Nữ', N'75A/5, Kp4, Phường An Phú; Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11514', N'Ngân Thị Chinh', N'1995-08-28', N'Nữ', N'Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11515', N'Lý Thị Hà', N'1995-10-28', N'Nữ', N'77B/3 KP 2, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11516', N'Huỳnh Thị Tho', N'2002-08-19', N'Nữ', N'16C/5, Kp.04, Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11517', N'Phạm Thị Hương', N'2000-06-01', N'Nữ', N'41/1 Khu phố Nhị Đồng 2, Phường Dĩ An, Tx. Dĩ An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11518', N'Trần Thị Niên', N'1998-05-07', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11519', N'Nguyễn Thị Ngọc Hận', N'1990-09-14', N'Nữ', N'1/33D, Tổ 7, Kp. Hòa Lân 2, Phường Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11520', N'Vi Thị Nhâm', N'2000-11-08', N'Nữ', N'27E/4 Bình Đáng, Phường Bình Hòa, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11521', N'Lô Thị Thuận', N'1991-08-28', N'Nữ', N'196/2B, Kp. 1B, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11522', N'Nguyễn Duy Phương', N'1991-10-27', N'Nam', N'Phường Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11523', N'Đoàn Thị Ni', N'2001-01-26', N'Nữ', N'Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11524', N'Đặng Ngọc Quí', N'1994-05-11', N'Nam', N'Phường Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11525', N'Thân Thị Thuỳ', N'1995-05-09', N'Nữ', N'Số 34, DX 13, Khu 7, P. Phú Mỹ, Tp. thủ Dầu Một, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11526', N'Trương Thị Vệ', N'2000-07-03', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11527', N'Lâm Hữu Tài', N'1991-11-15', N'Nam', N'B2/564, Bình Thuận 2, Phường Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11528', N'Hồ Văn Hào', N'1992-03-10', N'Nam', N'Tổ 10, Ấp Minh Hòa, Xã Tân Tiến, Huyện Đồng Phú, Tỉnh Bình Phước.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11529', N'Nguyễn Thị Minh', N'1998-05-23', N'Nữ', N'6A/3 Khu phố 2, Phường An Phú, Thị xã Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11530', N'Nguyễn Thùy Linh', N'1990-03-11', N'Nữ', N'Bình Giao, Phường Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11531', N'Bùi Thị Kim Loan', N'1991-04-30', N'Nữ', N'B11/26 Tổ 26, Kp. Bình Thuận 2; Phường Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11532', N'Trương Thị Yến Nhi', N'1993-06-15', N'Nữ', N'Khu Phố Hòa Lân 2, phường Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11533', N'Thạch Thị Thu Thảo', N'2001-10-05', N'Nữ', N'Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11534', N'Trần Thị Kim Thắng', N'1997-08-10', N'Nữ', N'Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11535', N'Lê Văn Đáp', N'2001-11-02', N'Nam', N'Kp.Tân Liên; Thị trấn Tân Phú, Huyện Đồng Phú, Tỉnh Bình Phước.', N'C13XD02')
GO
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11536', N'Trần Ngọc Hoàn', N'2000-09-19', N'Nam', N'42C/ 27, Kp. Bình Đường 4, Phường An Bình, Tx. Dĩ An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11537', N'Phạm Thị Trang', N'1996-02-16', N'Nữ', N'Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11538', N'Thái Thị Cẩm Tuyết', N'2000-04-01', N'Nữ', N'110T/2, KP 1B, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11539', N'Trương Thị Phi Nhung', N'2002-05-26', N'Nữ', N'86/19, Kp. Tân Phú 1, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11540', N'Trương Hải Sang', N'1999-06-12', N'Nam', N'Đường 27, Xã Vĩnh Tân, Tx.Tân Uyên, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11541', N'Nguyễn Thị Ngân', N'1994-10-05', N'Nữ', N'Tổ 1, Kp.1; P.Vĩnh Tân, Tx.Tân Uyên, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11542', N'Nguyễn Thị Nan', N'2001-12-27', N'Nữ', N'64/3, Tổ 4, Kp2, Phường An Phú; Tp. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11543', N'Lê Huy Trình', N'1994-03-22', N'Nam', N'Phường An Phú, Tx. Thuận An, tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11544', N'Nguyễn Minh Tuấn', N'2001-11-22', N'Nam', N'Ấp Bình Đáng, Xã Bình Hòa, Huyên Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11545', N'Lê Tấn Phát', N'1992-09-09', N'Nam', N'Thị Xã Thuận An, Tỉnh Bình Dương', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11437', N'Nguyễn Thị Thu Hà', N'1990-01-20', N'Nữ', N'Đường 29; P.Vĩnh Tân, Tx.Tân Uyên, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11438', N'Lê Thị Ngọc Huyền', N'1993-06-30', N'Nữ', N'Kp.3; P.Tân Định, Tx.Bến Cát, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11439', N'Nguyễn Thị Lệ Thủy', N'2002-12-15', N'Nữ', N'Tổ 7, Kp.9; P.Chánh Phú Hòa, Tx.Bến Cát, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11440', N'Ngô Thị Thu Vân', N'1990-04-17', N'Nữ', N'Đường 17, KCN Vsip 2; Phường Hòa Phú, Tp. Thủ Dầu Một, Tình Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11441', N'Lê Thị Hà', N'1999-02-21', N'Nữ', N'10/7, Tổ 9, Kp. Bình Hòa, Phường Lái Thiêu, Tp. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11442', N'Nguyễn Thị Út Hạ', N'1992-11-25', N'Nữ', N'Tổ 3, Kp.1; P.Vĩnh Tân, Tx.Tân Uyên, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11443', N'Nguyễn Thị Mỹ Xuyên', N'1990-09-22', N'Nữ', N'Tổ 3, Kp.1; P.Vĩnh Tân, Tx.Tân Uyên, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11444', N'Nguyễn Đăng Khoa', N'1992-12-14', N'Nam', N'Tổ 7, Kp.3; P. Tân Định, Tx.Bến Cát, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11445', N'Thái Thị Vương', N'1990-06-05', N'Nữ', N'Tổ 2, Ấp 2; Xã Trừ Văn Thố, Huyện Bàu Bàng, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11446', N'Nguyễn Tám Thuế', N'1992-02-26', N'Nam', N'Tổ 7, Kp.4; P.Vĩnh Tân, Tx.Tân Uyên, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11447', N'Nguyễn Thị Khúc', N'1992-04-26', N'Nữ', N'Kp.3; P. Chánh Phú Hòa, Tx. Bến Cát, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11448', N'Võ Thị Huỳnh Trang', N'1997-05-25', N'Nữ', N'Tổ 1, Kp.9; P.Chánh Phú Hòa, Tx.Bến Cát, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11449', N'Tạ Thúy Nga', N'1995-01-22', N'Nữ', N'Tổ 10B, KP.3B; P.Thới Hòa, Tx.Bến Cát, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11450', N'Trịnh Thị Sen', N'1996-04-14', N'Nữ', N'220A/3 Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11451', N'Hoàng Thị Hiền', N'1991-05-17', N'Nữ', N'151/60, Tổ 60, Chánh Nghĩa, Thủ Dầu Một, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11452', N'Nguyễn Thị Ngọc Tiết', N'1993-11-29', N'Nữ', N'12/1, Ấp 1A, An Phú, Tx Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11453', N'Đinh Thanh Tuyền', N'1994-02-25', N'Nam', N'41/6A, Tổ 2, Kp. Khánh Long, P. Tân Phước Khánh, Tx. Tân Uyên, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11454', N'Nguyễn Than Tiền', N'1995-12-24', N'Nam', N'4/17, Kp Nhị Đồng, Tx. Dĩ An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11455', N'Trần Thị Kim Trúc', N'1993-08-30', N'Nữ', N'647/24/44 Quốc lộ 13, Hiệp Bình Phước, Thủ Đức, Tp. HCM.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11456', N'Diệp Văn Tỷ', N'1997-03-07', N'Nam', N'Tổ 2, Kp.Suối Tre; Xã Tân Bình, Huyện Bắc Tân Uyên, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11457', N'Nguyễn Thị Kim Chi', N'1998-12-19', N'Nữ', N'Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11458', N'H-Nhim Kễn', N'2001-04-04', N'Nữ', N'Ấp Đồng Chinh; Xã Phước Hòa, Huyện Phú Giáo, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11459', N'Nguyễn Thị Linh Huệ', N'2002-08-09', N'Nữ', N'Ô 53, DC 09, KDC VietSing, KP 4, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11460', N'Nguyễn Thị Lý', N'2002-01-16', N'Nữ', N'Phường An Phú, Tx.Thuận An, Tỉnh Bình Dương', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11461', N'Lê Thị Xuyên', N'1996-01-21', N'Nữ', N'54/2 KP 1B, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11462', N'Nguyễn Thị Phương', N'1997-05-23', N'Nữ', N'Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11463', N'Mai Thị Thu Hà', N'1998-03-14', N'Nữ', N'470/17/16 Tỉnh lộ 43, KP 5, Phường Tam Phú, Quận Thủ Đức, Tp. Hồ Chí Minh.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11464', N'Đỗ Thị Thi', N'1999-01-16', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11465', N'Võ Thị Diễm My', N'1996-08-23', N'Nữ', N'Đường 28, Tổ 3, Kp.1 ; P.Vĩnh Tân, Tx.Tân Uyên, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11466', N'Võ Thị Ngọc Hân', N'2002-11-24', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11467', N'Phạm Minh Tịnh', N'1998-07-19', N'Nam', N'Phường Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11468', N'Đặng Quốc Sự', N'1992-06-13', N'Nam', N'Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11469', N'Lê Thị Thảo', N'1994-06-19', N'Nữ', N'Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11470', N'Huỳnh Thị Hoa', N'1996-10-13', N'Nữ', N'Phường An Phú, TP Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11471', N'Nguyễn Anh Thi', N'1991-10-16', N'Nữ', N'Ô 62-64, Dc 31, Kp.4, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11472', N'Cầm Bá Bằng', N'1993-02-19', N'Nam', N'27E/4, Khu phố Bình Đáng, Phường Bình Hòa, Thị xã Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11473', N'Lê Thị Thương', N'1991-07-15', N'Nữ', N'KP Bình Phú, Phường Bình Chuẩn, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11474', N'Nguyễn Thị Nhị', N'1999-06-20', N'Nữ', N'1/189, Tổ 5, Kp. Hòa Lân 2, Phường Thuận Giao, Tp. Thuận An, Tỉnh Bình Dương.', N'C13XD01')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11475', N'Nguyễn Thái Chân', N'1997-07-02', N'Nữ', N'Ấp 2, Xã Tân Lập, Huyện Đồng Phú, Tỉnh Bình Phước.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11476', N'Trần Phượng Anh', N'1993-04-19', N'Nữ', N'Kp.An Hòa; P.Hòa Lợi, Tx.Bến Cát, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11477', N'Nguyễn Minh Thành', N'2000-07-26', N'Nam', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11478', N'Nguyễn Thị Nhuần', N'1994-01-07', N'Nữ', N'Ô 84 DC 13, Khu phố 4, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11479', N'Nguyễn Tấn Thâu', N'2001-05-10', N'Nam', N'7/B3, Kp.03, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11480', N'Trang Thị Ngọc Nở', N'1991-09-03', N'Nữ', N'Phường An Phú, Tx. Thuận An, tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11481', N'Phan Thị Tuyết Nhi', N'1998-01-06', N'Nữ', N'7/B3, KP.03, Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11482', N'Triệu Thị Lành', N'1991-11-27', N'Nữ', N'48/16, Kp. Đông Chiêu, P. Tân Đông Hiệp, Dĩ An, Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11483', N'Nguyễn Bá Phước Lai', N'2000-07-21', N'Nam', N'435/26/16 Hẻm Tổ 30, Đường ĐT743A, Khu Phố Đông Tân; Phường Dĩ An, Tx. Dĩ An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11484', N'Điểu Thị Sau', N'1998-05-07', N'Nữ', N'TT Tân Phú, Huyện Đồng Phú, Tỉnh Bình Phước.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11485', N'Trần Thị Bích Ngân', N'1992-05-12', N'Nữ', N'Ô 32, KDC Việt Sing, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11486', N'Trần Thanh Tuấn', N'1997-01-31', N'Nam', N'KP. Tân Phú, Phường Tân Bình, Tx. Dĩ An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11487', N'Phan Thị Thu Vân', N'1998-08-14', N'Nữ', N'Kp. Hòa Lân 2, Phường Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11488', N'Ngô Thị Hải Yến', N'1992-06-09', N'Nữ', N'Ô 27, Lô DC 72, KDC Việt Sin, Phường Bình Đáng, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11489', N'Dương Thị Tuyết Trinh', N'1991-09-26', N'Nữ', N'217/1, Tổ 5, Kp.1A, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11490', N'Huỳnh Thị Huyền', N'1990-05-02', N'Nữ', N'Thị xã Thuận An, Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11491', N'Lương Thị Kim Ngân', N'1997-09-14', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11492', N'Nguyễn Thị Ngọc Huyền', N'1999-08-01', N'Nữ', N'T06/102, Tổ 6, KP. Bình Thuận 2, Phường Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11493', N'Huỳnh Thị Mỹ Xuyên', N'2002-04-26', N'Nữ', N'Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11494', N'Nguyễn Thị Mỹ Hoa', N'1990-01-28', N'Nữ', N'A16/30, Tổ 16, Kp Bình Thuận 2, Phường Thuận Giao; Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11495', N'Nguyễn Trọng Tú', N'1998-09-14', N'Nam', N'Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11496', N'Nguyễn Thị Mai', N'1995-09-25', N'Nữ', N'36/A12, Kp3, Phường An Phú; Tp.Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11497', N'Huỳnh Thị Ngọc Thu', N'1997-01-18', N'Nữ', N'105/5 Khu phố 4, Phường An Phú, Thị xã Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11498', N'Phan Ngọc Phước', N'1990-07-31', N'Nam', N'Phường An Phú, Tp Thuận An, Tỉnh Bình Dương', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11499', N'Nguyễn Thị Nga', N'2000-04-12', N'Nữ', N'Ô 15B, DC 08, KDC Việt Sing, Kp. 4, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11500', N'Hà Thị Lá', N'1994-01-16', N'Nữ', N'Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11501', N'Lê Thuỳ Dung', N'1999-03-24', N'Nữ', N'Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11502', N'Nguyễn Thanh Nguyên', N'1997-03-01', N'Nữ', N'Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11503', N'Bùi Trúc Ly', N'1996-09-01', N'Nữ', N'Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11504', N'Võ Thị Ngọc Huyền', N'1990-04-03', N'Nữ', N'Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11505', N'Võ Văn Hà', N'2002-10-21', N'Nam', N'74/32, Kp. Bình Phước B, Phường Bình Chuẩn, TX. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11506', N'Hoàng Ngọc Như Quỳnh', N'2001-10-10', N'Nữ', N'74/5C, Đường 36, Kp 8; Phường Linh Đông, Quận Thủ Đức, Tp. Hồ Chí Minh.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11507', N'Hà Thị Phương Hậu', N'1998-09-04', N'Nữ', N'Phường Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11508', N'Lương Thị Trang', N'1992-09-27', N'Nữ', N'Đường 19; Xã Vĩnh Tân, Tx.Tân Uyên, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11509', N'Nguyễn Văn Quyến', N'1997-09-14', N'Nam', N'DL11, Tô 6, Kp.3B; P.Thới Hòa, Tx.Bến Cát, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11546', N'Nịnh Thị Thìn', N'1997-07-13', N'Nữ', N'10c/3 Kp.2, Phường An Phú, Thị xã Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11547', N'Huỳnh Kim Như', N'2001-12-08', N'Nữ', N'63/5, Kp 4, Phường An phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11548', N'Võ Thúy Phượng', N'1996-02-11', N'Nữ', N'Phường Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11549', N'Lê Thị Kiều Oanh', N'1993-11-23', N'Nữ', N'Phường Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11550', N'Nguyễn Thị Ngọc Huyền', N'1999-05-21', N'Nữ', N'PK4,Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11551', N'Nguyễn Thị Quý', N'1991-08-17', N'Nữ', N'KP Bình Phước, Phường Bình Chuẩn, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11552', N'Thái Thị Bé Hai', N'1992-10-16', N'Nữ', N'310A KP Hưng Lộc, Phường Hưng Định, Tx Thuận An , Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11553', N'Lê Thị Hoan', N'2000-10-15', N'Nữ', N'KP 3, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11554', N'Phan Thị Yến Nhi', N'2000-02-09', N'Nữ', N'Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11555', N'Võ Thị Thu Hường', N'1991-08-02', N'Nữ', N'Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11556', N'Hà Thị Duyên', N'1995-08-18', N'Nữ', N'KP 1A, Phường An Phú, Tx. Thuận An. Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11557', N'Lê Thị Thu', N'2001-09-06', N'Nữ', N'Ấp 1; Xã Vĩnh Tân, Tx.Tân Uyên, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11558', N'Lê Thị Nụ', N'1998-07-13', N'Nữ', N'Phường An Phú, Tp. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11559', N'Nguyễn Thị Thuỳ Dung', N'1996-10-15', N'Nữ', N'118/2, Kp1B, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11560', N'Hồ Thị Tổ', N'1997-11-13', N'Nữ', N'Đường 26; P.Vĩnh Tân, Tx.Tân Uyên, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11561', N'Trần Thị Kim Chi', N'2002-08-18', N'Nữ', N'106/1 Trương Phước Phan; Phường Bình Trị Đông, Quận Bình Tân, TP.HCM.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11562', N'Phan Thị Phước', N'1998-02-07', N'Nữ', N'527/3 KP Thạnh Bình, Phường An Thạnh, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
GO
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11563', N'Ngô Thị Loan', N'1999-09-15', N'Nữ', N'Kp.Phú Hòa; P.Hòa Lợi, Tx.Bến Cát, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11564', N'Nguyễn Thị Tươi', N'1990-03-05', N'Nữ', N'3/14 Tổ 3, Kp Bình Hòa, Phường Lái Thiêu, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11565', N'Nguyễn Thị Hạnh', N'1992-01-25', N'Nữ', N'2C/41A Ấp Bình Đức 1, Phường Bình Hòa, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11566', N'Hà Thị Quỳnh', N'1990-08-20', N'Nữ', N'Ấp 1; Xã Vĩnh Tân, Tx.Tân Uyên, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11567', N'Đặng Trường Kỳ', N'2002-06-17', N'Nam', N'D2/A2, Kp 3, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11568', N'Nguyễn Ngọc Mai', N'1990-04-23', N'Nữ', N'Đường 29; Xã Vĩnh Tân, Tx.Tân Uyên, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11569', N'Nguyễn Thị Trà Mi', N'1992-07-18', N'Nữ', N'KP. Hòa Lân 2, Phường Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11570', N'Nguyễn Quốc Giao', N'1998-02-01', N'Nam', N'Ấp 4; Xã Tân Uyên, Tx.Tân Uyên, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11571', N'Nguyễn Thị Diệu My', N'1990-09-19', N'Nữ', N'Đường 29, KDC Việt Sing, Kp. 4, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11572', N'Nguyễn Ngọc Xuân', N'1997-11-29', N'Nữ', N'Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11573', N'Y Nghiêm', N'1990-11-20', N'Nữ', N'02/B1 Khu phố 3, Phường An Phú., Tp Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11574', N'Dương Thị Hồng Vân', N'2001-07-05', N'Nữ', N'Tổ 2, Ấp Suối Tre; Xã Tân Bình, Huyện Bắc Tân Uyên, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11575', N'Trương Thị Như Ý', N'1990-09-15', N'Nữ', N'D7/33, Tổ 12, Kp. Bình Thuận 2, Phường Thuận Giao, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11576', N'Nguyễn Thị Mỹ', N'1998-05-19', N'Nữ', N'Tổ 1, Ấp 3; Xã Vĩnh Tân, Tx.Tân Uyên, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11577', N'Mai Thị Loan', N'2000-07-26', N'Nữ', N'DN5, Phường An Phú, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11578', N'Bùi Thị Kỉm', N'1993-09-03', N'Nữ', N'7A/4 , KP Bình Đáng, Phường Bình Hòa, Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11579', N'Nguyễn Văn Tỷ', N'1999-12-09', N'Nam', N'Phường An Phú; Tx. Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11580', N'Nguyễn Văn Nghĩa', N'1994-04-12', N'Nam', N'Tổ 14, Kp Tân Phú 1, Phường Tân Bình; Tx. Dĩ An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11581', N'Lê Thị Nhanh', N'1996-12-09', N'Nữ', N'400/3, Kp.Thạnh Bình; Phường An Thạnh, Tp.Thuận An, Tỉnh Bình Dương.', N'C13XD02')
INSERT [dbo].[tblSinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'11582', N'Nguyễn Trọng Hạnh', N'1994-02-08', N'Nam', N'Khu Phố Bình Hòa, Tx. Lái Thiêu, Tỉnh Bình Dương', N'C13XD02')
GO
/****** Object:  StoredProcedure [dbo].[sp_CountQuantity]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CountQuantity]
(@masv_malop nvarchar(7),
@hocky int)
AS
BEGIN
IF (LEN (@masv_malop) =7)
	SELECT COUNT (DISTINCT MaSV)
	FROM tblDiem AS D INNER JOIN tblMonHoc AS MH
	ON D.MaMon=MH.MaMon
	WHERE D.Malop = @masv_malop AND MH.HocKy = @hocky
IF (LEN (@masv_malop)=5)
	SELECT COUNT (DISTINCT MaSV)
	FROM tblDiem AS D INNER JOIN tblMonHoc AS MH
	ON D.MaMon=MH.MaMon
	WHERE D.MaSV = @masv_malop AND MH.HocKy = @hocky
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteDiem]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_DeleteDiem]
(@maSV nvarchar(5),
@malop nvarchar(7),
@maMH nvarchar(6))
AS
BEGIN
	DELETE tblDiem
	WHERE MaSV = @maSV AND MaLop = @malop AND MaMon = @maMH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteGiaoVien]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_DeleteGiaoVien]
(@magv nvarchar(7))
AS
BEGIN
	DELETE tblGiaoVien
	WHERE MaGV = @magv
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteKhoa]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeleteKhoa]
(@makhoa nvarchar(3))
AS
BEGIN
	DELETE tblKhoa
	WHERE MaKhoa = @makhoa
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteLop]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_DeleteLop]
(@malop nvarchar(7))
AS
BEGIN
	DELETE tblLop
	WHERE MaLop = @malop
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteMonHoc]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_DeleteMonHoc]
(@mamh nvarchar(6))
AS
BEGIN
	DELETE tblMonHoc
	WHERE MaMon = @mamh
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteSinhVien]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[sp_DeleteSinhVien]
(@maSV nvarchar(5))
AS
BEGIN
	DELETE tblSinhVien
	WHERE MaSV = @maSV
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ExportDiemTongKet]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ExportDiemTongKet]
(@masv_malop nvarchar(7),
@hocky int)
AS
BEGIN
	IF (LEN (@masv_malop) = 7)
	SELECT DISTINCT D.MaSV, D.TenSV, KQ.DiemTongKet, KQ.KetQua
	FROM tblDiem AS D
	INNER JOIN tblKetQua AS KQ ON D.MaSV = KQ.MaSV
	INNER JOIN tblMonHoc AS MH ON MH.MaMon = D.MaMon
	WHERE D.MaLop = @masv_malop AND KQ.HocKy = @hocky AND MH.HocKy = @hocky
	ORDER BY D.MaSV
IF (LEN (@masv_malop) = 5)
	SELECT D.TenSV, MH.TenMon, D.DiemGiuaKy, D.DiemCuoiKy, D.DiemTB, KQ.DiemTongKet
	FROM tblDiem AS D
	INNER JOIN tblKetQua AS KQ ON D.MaSV = KQ.MaSV
	INNER JOIN tblMonHoc AS MH ON MH.MaMon = D.MaMon
	WHERE D.MaSV = @masv_malop AND KQ.HocKy = @hocky AND MH.HocKy = @hocky
	ORDER BY D.MaSV
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertDiem]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_InsertDiem]
(@masv nvarchar(5), 
@tensv nvarchar(50),
@diemgiuaky nvarchar(4),
@diemcuoiky nvarchar(4),
@diemTB nvarchar(4),
@ghichu nvarchar(MAX),
@malop nvarchar(7),
@mamon nvarchar(6))
AS
BEGIN
	DECLARE @date NVARCHAR(10);
	SET @date = CONVERT(NVARCHAR(10), GETDATE(), 20)
	INSERT INTO [dbo].[tblDiem]
           ([MaSV]
           ,[TenSV]
           ,[DiemGiuaKy]
           ,[DiemCuoiKy]
           ,[DiemTB]
		   ,[GhiChu]
           ,[MaLop]
		   ,[MaMon]
		   ,[NgayNhap])
     VALUES
           (@masv, 
			@tensv,
			@diemgiuaky,
			@diemcuoiky,
			@diemTB,
			@ghichu,
			@malop,
			@mamon,
			@date)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertGiaoVien]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertGiaoVien]
(@magv nvarchar(7), 
@tengv nvarchar(50),
@ngaysinh nvarchar(10),
@gioitinh nvarchar(5),
@email nvarchar(50),
@ngaynhanviec nvarchar(10),
@sdt nvarchar(11),
@trinhdo nvarchar(100))
AS
BEGIN
	INSERT INTO [dbo].[tblGiaoVien]
           ([MaGV]
           ,[TenGV]
           ,[NgaySinh]
           ,[GioiTinh]
           ,[Email]
           ,[NgayNhanViec]
           ,[SoDienThoai]
           ,[TrinhDo])
     VALUES
           (@magv, 
			@tengv,
			@ngaysinh,
			@gioitinh,
			@email,
			@ngaynhanviec,
			@sdt,
			@trinhdo)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertKetQua]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertKetQua]
(@masv nvarchar(5), 
@tensv nvarchar(50),
@diemtongket nvarchar(4),
@hocky int,
@ketqua nvarchar(20))
AS
BEGIN
	INSERT INTO [dbo].[tblKetQua]
           ([MaSV]
           ,[TenSV]
           ,[DiemTongKet]
		   ,[HocKy]
		   ,[KetQua])
     VALUES
           (@masv, 
			@tensv,
			@diemtongket,
			@hocky,
			@ketqua)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertKhoa]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertKhoa]
(@makhoa nvarchar(3), 
@tenkhoa nvarchar(100),
@ngaytao nvarchar(10))
AS
BEGIN
	INSERT INTO [dbo].[tblKhoa]
           ([MaKhoa]
           ,[TenKhoa]
           ,[NgayTao])
     VALUES
           (@makhoa, 
			@tenkhoa,
			@ngaytao)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertLop]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_InsertLop]
(@malop nvarchar(7), 
@tenlop nvarchar(100),
@ngaytao nvarchar(10),
@makhoa nvarchar(3))
AS
BEGIN
	INSERT INTO [dbo].[tblLop]
           ([MaLop]
           ,[TenLop]
           ,[NgayTao]
		   ,[MaKhoa])
     VALUES
           (@malop, 
			@tenlop,
			@ngaytao,
			@makhoa)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertMonHoc]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_InsertMonHoc]
(@mamh nvarchar(6), 
@tenmh nvarchar(100),
@sotinchi int,
@magv nvarchar(7),
@hocky int,
@makhoa nvarchar(3))
AS
BEGIN
	INSERT INTO [dbo].[tblMonHoc]
           ([MaMon]
           ,[TenMon]
           ,[SoTinChi]
           ,[MaGV]
           ,[HocKy]
           ,[MaKhoa])
     VALUES
           (@mamh, 
			@tenmh,
			@sotinchi,
			@magv,
			@hocky,
			@makhoa)
END
--EXEC sp_InsertNhanVien 'sdfsd','sdfsd','2021/08/25','sfsd','1111111','sdf','sdfsdf'
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertSinhVien]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertSinhVien]
(@masv nvarchar(5), 
@hoten nvarchar(50),
@ngaysinh nvarchar(10),
@gioitinh nvarchar(5),
@diachi nvarchar(MAX),
@malop nvarchar(8))
AS
BEGIN
	INSERT INTO [dbo].[tblSinhVien]
           ([MaSV]
           ,[HoTen]
           ,[NgaySinh]
           ,[GioiTinh]
           ,[DiaChi]
           ,[MaLop])
     VALUES
           (@masv, 
			@hoten,
			@ngaysinh,
			@gioitinh,
			@diachi,
			@malop)
END
--EXEC sp_InsertNhanVien 'sdfsd','sdfsd','2021/08/25','sfsd','1111111','sdf','sdfsdf'
GO
/****** Object:  StoredProcedure [dbo].[sp_SearchDiem]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_SearchDiem]
(@loaitimkiemD nvarchar(20), 
@thongtintimkiemD nvarchar(Max))
AS
BEGIN
if @loaitimkiemD=N'Mã sinh viên'
	SELECT *
	FROM tblDiem
	WHERE MaSV like +'%'+@thongtintimkiemD+'%'
	ORDER BY MaSV
if @loaitimkiemD=N'Họ tên'
	SELECT *
	FROM tblDiem
	WHERE TenSV like +N'%'+@thongtintimkiemD+'%'
	ORDER BY MaSV
if @loaitimkiemD=N'Mã lớp'
	SELECT *
	FROM tblDiem
	WHERE MaLop like +'%'+@thongtintimkiemD+'%'
	ORDER BY MaSV
if @loaitimkiemD=N'Mã môn'
	SELECT *
	FROM tblDiem
	WHERE MaMon like +'%'+@thongtintimkiemD+'%'
	ORDER BY MaSV
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SearchGiaoVien]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SearchGiaoVien]
(@loaitimkiemGV nvarchar(20), 
@thongtintimkiemGV nvarchar(Max))
AS
BEGIN
if @loaitimkiemGV=N'Mã giáo viên'
	SELECT *
	FROM tblGiaoVien
	WHERE MaGV like +'%'+@thongtintimkiemGV+'%'
	ORDER BY MaGV
if @loaitimkiemGV=N'Họ tên'
	SELECT *
	FROM tblGiaoVien
	WHERE TenGV like +N'%'+@thongtintimkiemGV+'%'
	ORDER BY MaGV
if @loaitimkiemGV=N'Số điện thoại'
	SELECT *
	FROM tblGiaoVien
	WHERE SoDienThoai like +'%'+@thongtintimkiemGV+'%'
	ORDER BY MaGV
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SearchMonHoc]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SearchMonHoc]
(@loaitimkiemMH nvarchar(20), 
@thongtintimkiemMH nvarchar(Max))
AS
BEGIN
if @loaitimkiemMH=N'Mã môn học'
	SELECT *
	FROM tblMonHoc
	WHERE MaMon like +'%'+@thongtintimkiemMH+'%'
	ORDER BY MaMon
if @loaitimkiemMH=N'Tên môn học'
	SELECT *
	FROM tblMonHoc
	WHERE TenMon like +N'%'+@thongtintimkiemMH+'%'
	ORDER BY MaMon
if @loaitimkiemMH=N'Mã giáo viên'
	SELECT *
	FROM tblMonHoc
	WHERE MaGV like +'%'+@thongtintimkiemMH+'%'
	ORDER BY MaMon
if @loaitimkiemMH=N'Học kỳ'
	SELECT *
	FROM tblMonHoc
	WHERE HocKy like +'%'+@thongtintimkiemMH+'%'
	ORDER BY MaMon
if @loaitimkiemMH=N'Mã khoa'
	SELECT *
	FROM tblMonHoc
	WHERE MaKhoa like +'%'+@thongtintimkiemMH+'%'
	ORDER BY MaMon
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SearchSinhVien]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SearchSinhVien]
(@loaitimkiem nvarchar(20), 
@thongtintimkiem nvarchar(Max))
AS
BEGIN
if @loaitimkiem=N'Mã sinh viên'
	SELECT *
	FROM tblSinhVien
	WHERE MaSV like +'%'+@thongtintimkiem+'%'
	ORDER BY MaSV
if @loaitimkiem=N'Họ tên'
	SELECT *
	FROM tblSinhVien
	WHERE HoTen like +N'%'+@thongtintimkiem+'%'
	ORDER BY MaSV
if @loaitimkiem=N'Mã lớp'
	SELECT *
	FROM tblSinhVien
	WHERE MaLop like +'%'+@thongtintimkiem+'%'
	ORDER BY MaSV
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ShowListGiaoVien]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_ShowListGiaoVien]
AS
BEGIN
	SELECT *
	FROM tblGiaoVien
	ORDER BY MaGV
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ShowListKhoa]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ShowListKhoa]
AS
BEGIN
	SELECT *
	FROM tblKhoa
	ORDER BY MaKhoa
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ShowListLop]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_ShowListLop]
AS
BEGIN
	SELECT *
	FROM tblLop
	ORDER BY MaLop
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ShowListMonHoc]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_ShowListMonHoc]
AS
BEGIN
	SELECT *
	FROM tblMonHoc
	ORDER BY MaMon
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ShowListScore]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ShowListScore]
(@masv_malop nvarchar(7),
@hocky int)
AS
BEGIN
IF (LEN (@masv_malop) =7)
	SELECT D.MaSV, D.TenSV, D.DiemTB, MH.SoTinChi, MH.HocKy,D.NgayNhap
	FROM tblDiem AS D 
	INNER JOIN tblMonHoc AS MH ON D.MaMon=MH.MaMon
	WHERE D.MaLop = @masv_malop AND MH.HocKy = @hocky
	ORDER BY D.MaSV
IF (LEN (@masv_malop)=5)
	SELECT D.MaSV, D.TenSV, D.DiemTB, MH.SoTinChi, MH.HocKy,D.NgayNhap
	FROM tblDiem AS D 
	INNER JOIN tblMonHoc AS MH ON D.MaMon=MH.MaMon
	WHERE D.MaSV = @masv_malop AND MH.HocKy = @hocky
	ORDER BY D.MaSV
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ShowListSinhVien]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[sp_ShowListSinhVien]
AS
BEGIN
	SELECT *
	FROM tblSinhVien
	ORDER BY MaSV
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ShowListSVTheoMaLop]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ShowListSVTheoMaLop]
(@malop nvarchar(7))
AS
BEGIN
	SELECT MaSV AS N'Mã SV', HoTen AS 'Họ tên', MaLop AS 'Mã lớp','' AS 'Điểm GK','' AS 'Điểm CK', '' AS 'Điểm TB','' AS 'Ghi chú'
	FROM tblSinhVien
	WHERE MaLop=@malop
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateDiem]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[sp_UpdateDiem]
(@masv nvarchar(5), 
@diemgiuaky nvarchar(4),
@diemcuoiky nvarchar(4),
@diemTB nvarchar(4),
@ghichu nvarchar(MAX),
@mamon nvarchar(6))
AS
BEGIN
	UPDATE tblDiem
	SET DiemGiuaKy=@diemgiuaky, DiemCuoiKy=@diemcuoiky, DiemTB=@diemTB, GhiChu=@ghichu, MaMon=@mamon
	WHERE MaSV = @masv AND MaMon = @mamon
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateGiaoVien]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_UpdateGiaoVien]
(@magv nvarchar(7), 
@tengv nvarchar(50),
@ngaysinh nvarchar(10),
@gioitinh nvarchar(5),
@email nvarchar(50),
@ngaynhanviec nvarchar(10),
@sdt nvarchar(11),
@trinhdo nvarchar(100))
AS
BEGIN
	--DECLARE @date date;
	--SET @date = CONVERT(date, @ngaysinh, 101)

	UPDATE tblGiaoVien
	SET TenGV=@tengv, NgaySinh=@ngaysinh, GioiTinh=@gioitinh, Email=@email, NgayNhanViec=@ngaynhanviec, SoDienThoai=@sdt, TrinhDo=@trinhdo
	WHERE MaGV = @magv
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateKhoa]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_UpdateKhoa]
(@makhoa nvarchar(3), 
@tenkhoa nvarchar(100),
@ngaytao nvarchar(10))
AS
BEGIN
	--DECLARE @date date;
	--SET @date = CONVERT(date, @ngaysinh, 101)

	UPDATE tblKhoa
	SET TenKhoa=@tenkhoa, NgayTao=@ngaytao
	WHERE MaKhoa = @makhoa
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateLop]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_UpdateLop]
(@malop nvarchar(7), 
@tenlop nvarchar(100),
@ngaytao nvarchar(10),
@makhoa nvarchar(3))
AS
BEGIN
	--DECLARE @date date;
	--SET @date = CONVERT(date, @ngaysinh, 101)

	UPDATE tblLop
	SET TenLop=@tenlop, NgayTao=@ngaytao,MaKhoa=@makhoa
	WHERE MaLop = @malop
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateMonHoc]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[sp_UpdateMonHoc]
(@mamh nvarchar(6), 
@tenmh nvarchar(100),
@sotinchi int,
@magv nvarchar(7),
@hocky int,
@makhoa nvarchar(3))
AS
BEGIN
	--DECLARE @date date;
	--SET @date = CONVERT(date, @ngaysinh, 101)

	UPDATE tblMonHoc
	SET TenMon=@tenmh, SoTinChi=@sotinchi, MaGV=@magv, HocKy=@hocky, MaKhoa=@makhoa
	WHERE MaMon = @mamh
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateSinhVien]    Script Date: 10/16/2021 11:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_UpdateSinhVien]
(@masv nvarchar(5), 
@hoten nvarchar(50),
@ngaysinh nvarchar(10),
@gioitinh nvarchar(5),
@diachi nvarchar(MAX),
@malop nvarchar(8))
AS
BEGIN
	--DECLARE @date date;
	--SET @date = CONVERT(date, @ngaysinh, 101)

	UPDATE tblSinhVien
	SET HoTen=@hoten, NgaySinh=@ngaysinh, GioiTinh=@gioitinh, DiaChi=@diachi, MaLop=@malop
	WHERE MaSV = @masv
END
GO

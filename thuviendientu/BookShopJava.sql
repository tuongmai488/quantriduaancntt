USE [BookShopJava]
GO
/****** Object:  Table [dbo].[tb_CTPN]    Script Date: 24/12/2021 4:47:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_CTPN](
	[maCTPN] [nvarchar](50) NOT NULL,
	[maPhieuNhap] [nvarchar](50) NOT NULL,
	[maSach] [nvarchar](50) NOT NULL,
	[soLuong] [int] NOT NULL,
	[donGia] [bigint] NOT NULL,
	[thanhTien] [bigint] NOT NULL,
 CONSTRAINT [PK_tb_CTPN] PRIMARY KEY CLUSTERED 
(
	[maCTPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_CTPX]    Script Date: 24/12/2021 4:47:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_CTPX](
	[maCTPX] [nvarchar](50) NOT NULL,
	[maPhieuXuat] [nvarchar](50) NOT NULL,
	[maSach] [nvarchar](50) NOT NULL,
	[soLuong] [int] NOT NULL,
	[thanhTien] [bigint] NOT NULL,
 CONSTRAINT [PK_tb_CTPX] PRIMARY KEY CLUSTERED 
(
	[maCTPX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_GianHang]    Script Date: 24/12/2021 4:47:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_GianHang](
	[maGianHang] [nvarchar](50) NOT NULL,
	[tenGianHang] [ntext] NOT NULL,
	[moTa] [ntext] NOT NULL,
 CONSTRAINT [PK_tb_GianHang] PRIMARY KEY CLUSTERED 
(
	[maGianHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_NguoiDung]    Script Date: 24/12/2021 4:47:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_NguoiDung](
	[TaiKhoan] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tb_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_NXB]    Script Date: 24/12/2021 4:47:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_NXB](
	[maNXB] [nvarchar](50) NOT NULL,
	[tenNXB] [ntext] NOT NULL,
	[diaChi] [ntext] NOT NULL,
	[dienThoai] [ntext] NOT NULL,
	[email] [ntext] NOT NULL,
 CONSTRAINT [PK_tb_NXB] PRIMARY KEY CLUSTERED 
(
	[maNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_PhieuNhap]    Script Date: 24/12/2021 4:47:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_PhieuNhap](
	[maPhieuNhap] [nvarchar](50) NOT NULL,
	[maNXB] [nvarchar](50) NOT NULL,
	[ngayNhap] [date] NOT NULL,
	[thanhTien] [bigint] NOT NULL,
 CONSTRAINT [PK_tb_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[maPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_PhieuXuat]    Script Date: 24/12/2021 4:47:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_PhieuXuat](
	[maPhieuXuat] [nvarchar](50) NOT NULL,
	[tenKH] [ntext] NOT NULL,
	[ngayXuat] [date] NOT NULL,
	[thanhTien] [bigint] NOT NULL,
 CONSTRAINT [PK_tb_PhieuXuat] PRIMARY KEY CLUSTERED 
(
	[maPhieuXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Sach]    Script Date: 24/12/2021 4:47:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Sach](
	[maSach] [nvarchar](50) NOT NULL,
	[tieuDe] [ntext] NOT NULL,
	[tacGia] [ntext] NOT NULL,
	[namXuatBan] [int] NOT NULL,
	[giaBia] [int] NOT NULL,
	[maNXB] [nvarchar](50) NOT NULL,
	[soLuongTon] [int] NOT NULL,
	[maGianHang] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_Sach] PRIMARY KEY CLUSTERED 
(
	[maSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN1', N'PN1', N'T12', 1000, 12000, 12000000)
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN2', N'PN2', N'TNC10', 1000, 40000, 40000000)
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN3', N'PN3', N'T11', 1000, 12000, 12000000)
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN4', N'PN4', N'T10', 1000, 12000, 12000000)
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN5', N'PN5', N'NV10', 1000, 12000, 12000000)
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN6', N'PN6', N'NV11', 1000, 12000, 12000000)
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN7', N'PN7', N'NV12', 1000, 12000, 12000000)
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN8', N'PN8', N'TNC11', 1000, 40000, 40000000)
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN9', N'PN9', N'TNC12', 1000, 40000, 40000000)
GO
INSERT [dbo].[tb_CTPX] ([maCTPX], [maPhieuXuat], [maSach], [soLuong], [thanhTien]) VALUES (N'CTPX1', N'PX1', N'TNC12', 1, 50000)
INSERT [dbo].[tb_CTPX] ([maCTPX], [maPhieuXuat], [maSach], [soLuong], [thanhTien]) VALUES (N'CTPX2', N'PX2', N'NV12', 2, 40000)
INSERT [dbo].[tb_CTPX] ([maCTPX], [maPhieuXuat], [maSach], [soLuong], [thanhTien]) VALUES (N'CTPX3', N'PX3', N'T12', 2, 40000)
GO
INSERT [dbo].[tb_GianHang] ([maGianHang], [tenGianHang], [moTa]) VALUES (N'LOP10', N'Sách Lớp 10', N'Sách Lớp 10')
INSERT [dbo].[tb_GianHang] ([maGianHang], [tenGianHang], [moTa]) VALUES (N'LOP11', N'Sách Lớp 11', N'Sách Lớp 11')
INSERT [dbo].[tb_GianHang] ([maGianHang], [tenGianHang], [moTa]) VALUES (N'LOP12', N'Sách Lớp 12', N'Sách Lớp 12')
INSERT [dbo].[tb_GianHang] ([maGianHang], [tenGianHang], [moTa]) VALUES (N'LOP9', N'Sách Lớp 9', N'Sách Lớp 9')
INSERT [dbo].[tb_GianHang] ([maGianHang], [tenGianHang], [moTa]) VALUES (N'SACHNANGCAO', N'Sách Nâng Cao', N'Sách Nâng Cao')
GO
INSERT [dbo].[tb_NguoiDung] ([TaiKhoan], [MatKhau]) VALUES (N'@root:admin', N'123456')
INSERT [dbo].[tb_NguoiDung] ([TaiKhoan], [MatKhau]) VALUES (N'admin', N'123456')
GO
INSERT [dbo].[tb_NXB] ([maNXB], [tenNXB], [diaChi], [dienThoai], [email]) VALUES (N'GIAODUC', N'NXB Giáo dục', N'Hà Nội', N'0999999999', N'giaoduc@gmail.com')
INSERT [dbo].[tb_NXB] ([maNXB], [tenNXB], [diaChi], [dienThoai], [email]) VALUES (N'SUPHAM', N'NXB Đại học Sư Phạm', N'Hà Nội', N'0989888888', N'nxbsupham@gmail.com')
INSERT [dbo].[tb_NXB] ([maNXB], [tenNXB], [diaChi], [dienThoai], [email]) VALUES (N'XUANTUONG', N'NXB MAIXUANTUONG', N'Nam Định', N'0989888999', N'nxbmaixuantuong@gmail.com')
GO
INSERT [dbo].[tb_PhieuNhap] ([maPhieuNhap], [maNXB], [ngayNhap], [thanhTien]) VALUES (N'PN1', N'GIAODUC', CAST(N'2021-12-05' AS Date), 12000000)
INSERT [dbo].[tb_PhieuNhap] ([maPhieuNhap], [maNXB], [ngayNhap], [thanhTien]) VALUES (N'PN2', N'SUPHAM', CAST(N'2021-12-05' AS Date), 40000000)
INSERT [dbo].[tb_PhieuNhap] ([maPhieuNhap], [maNXB], [ngayNhap], [thanhTien]) VALUES (N'PN3', N'GIAODUC', CAST(N'2021-12-05' AS Date), 12000000)
INSERT [dbo].[tb_PhieuNhap] ([maPhieuNhap], [maNXB], [ngayNhap], [thanhTien]) VALUES (N'PN4', N'GIAODUC', CAST(N'2021-12-05' AS Date), 12000000)
INSERT [dbo].[tb_PhieuNhap] ([maPhieuNhap], [maNXB], [ngayNhap], [thanhTien]) VALUES (N'PN5', N'GIAODUC', CAST(N'2021-12-05' AS Date), 12000000)
INSERT [dbo].[tb_PhieuNhap] ([maPhieuNhap], [maNXB], [ngayNhap], [thanhTien]) VALUES (N'PN6', N'GIAODUC', CAST(N'2021-12-05' AS Date), 12000000)
INSERT [dbo].[tb_PhieuNhap] ([maPhieuNhap], [maNXB], [ngayNhap], [thanhTien]) VALUES (N'PN7', N'GIAODUC', CAST(N'2021-12-05' AS Date), 12000000)
INSERT [dbo].[tb_PhieuNhap] ([maPhieuNhap], [maNXB], [ngayNhap], [thanhTien]) VALUES (N'PN8', N'SUPHAM', CAST(N'2021-12-05' AS Date), 40000000)
INSERT [dbo].[tb_PhieuNhap] ([maPhieuNhap], [maNXB], [ngayNhap], [thanhTien]) VALUES (N'PN9', N'SUPHAM', CAST(N'2021-12-05' AS Date), 40000000)
GO
INSERT [dbo].[tb_PhieuXuat] ([maPhieuXuat], [tenKH], [ngayXuat], [thanhTien]) VALUES (N'PX1', N'Tuong', CAST(N'2021-12-05' AS Date), 50000)
INSERT [dbo].[tb_PhieuXuat] ([maPhieuXuat], [tenKH], [ngayXuat], [thanhTien]) VALUES (N'PX2', N'Tuong1', CAST(N'2021-12-05' AS Date), 40000)
INSERT [dbo].[tb_PhieuXuat] ([maPhieuXuat], [tenKH], [ngayXuat], [thanhTien]) VALUES (N'PX3', N'Tuong2', CAST(N'2021-12-05' AS Date), 40000)
GO
INSERT [dbo].[tb_Sach] ([maSach], [tieuDe], [tacGia], [namXuatBan], [giaBia], [maNXB], [soLuongTon], [maGianHang]) VALUES (N'NV10', N'Ngữ Văn 10', N'B', 2021, 20000, N'GIAODUC', 100, N'LOP10')
INSERT [dbo].[tb_Sach] ([maSach], [tieuDe], [tacGia], [namXuatBan], [giaBia], [maNXB], [soLuongTon], [maGianHang]) VALUES (N'NV11', N'Ngữ Văn 11', N'B', 2021, 20000, N'GIAODUC', 200, N'LOP11')
INSERT [dbo].[tb_Sach] ([maSach], [tieuDe], [tacGia], [namXuatBan], [giaBia], [maNXB], [soLuongTon], [maGianHang]) VALUES (N'NV12', N'Ngữ Văn 12', N'B', 2021, 20000, N'GIAODUC', 200, N'LOP12')
INSERT [dbo].[tb_Sach] ([maSach], [tieuDe], [tacGia], [namXuatBan], [giaBia], [maNXB], [soLuongTon], [maGianHang]) VALUES (N'T10', N'Toán 10', N'A', 2021, 20000, N'GIAODUC', 200, N'LOP10')
INSERT [dbo].[tb_Sach] ([maSach], [tieuDe], [tacGia], [namXuatBan], [giaBia], [maNXB], [soLuongTon], [maGianHang]) VALUES (N'T11', N'Toán 11', N'A', 2021, 20000, N'GIAODUC', 500, N'LOP11')
INSERT [dbo].[tb_Sach] ([maSach], [tieuDe], [tacGia], [namXuatBan], [giaBia], [maNXB], [soLuongTon], [maGianHang]) VALUES (N'T12', N'Toán 12', N'A', 2021, 20000, N'GIAODUC', 100, N'LOP12')
INSERT [dbo].[tb_Sach] ([maSach], [tieuDe], [tacGia], [namXuatBan], [giaBia], [maNXB], [soLuongTon], [maGianHang]) VALUES (N'T9', N'Toán 9', N'A', 2021, 20000, N'GIAODUC', 250, N'LOP9')
INSERT [dbo].[tb_Sach] ([maSach], [tieuDe], [tacGia], [namXuatBan], [giaBia], [maNXB], [soLuongTon], [maGianHang]) VALUES (N'TNC10', N'Toán Nâng Cao 10', N'C', 2021, 50000, N'SUPHAM', 100, N'SACHNANGCAO')
INSERT [dbo].[tb_Sach] ([maSach], [tieuDe], [tacGia], [namXuatBan], [giaBia], [maNXB], [soLuongTon], [maGianHang]) VALUES (N'TNC11', N'Toán Nâng cao 11', N'C', 2021, 50000, N'SUPHAM', 100, N'SACHNANGCAO')
INSERT [dbo].[tb_Sach] ([maSach], [tieuDe], [tacGia], [namXuatBan], [giaBia], [maNXB], [soLuongTon], [maGianHang]) VALUES (N'TNC12', N'Toán Nâng Cao 12', N'C', 2021, 50000, N'SUPHAM', 150, N'SACHNANGCAO')
GO
ALTER TABLE [dbo].[tb_CTPN]  WITH CHECK ADD  CONSTRAINT [FK_tb_CTPN_tb_PhieuNhap] FOREIGN KEY([maPhieuNhap])
REFERENCES [dbo].[tb_PhieuNhap] ([maPhieuNhap])
GO
ALTER TABLE [dbo].[tb_CTPN] CHECK CONSTRAINT [FK_tb_CTPN_tb_PhieuNhap]
GO
ALTER TABLE [dbo].[tb_CTPN]  WITH CHECK ADD  CONSTRAINT [FK_tb_CTPN_tb_Sach] FOREIGN KEY([maSach])
REFERENCES [dbo].[tb_Sach] ([maSach])
GO
ALTER TABLE [dbo].[tb_CTPN] CHECK CONSTRAINT [FK_tb_CTPN_tb_Sach]
GO
ALTER TABLE [dbo].[tb_CTPX]  WITH CHECK ADD  CONSTRAINT [FK_tb_CTPX_tb_PhieuXuat] FOREIGN KEY([maPhieuXuat])
REFERENCES [dbo].[tb_PhieuXuat] ([maPhieuXuat])
GO
ALTER TABLE [dbo].[tb_CTPX] CHECK CONSTRAINT [FK_tb_CTPX_tb_PhieuXuat]
GO
ALTER TABLE [dbo].[tb_CTPX]  WITH CHECK ADD  CONSTRAINT [FK_tb_CTPX_tb_Sach] FOREIGN KEY([maSach])
REFERENCES [dbo].[tb_Sach] ([maSach])
GO
ALTER TABLE [dbo].[tb_CTPX] CHECK CONSTRAINT [FK_tb_CTPX_tb_Sach]
GO
ALTER TABLE [dbo].[tb_PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_tb_PhieuNhap_tb_NXB] FOREIGN KEY([maNXB])
REFERENCES [dbo].[tb_NXB] ([maNXB])
GO
ALTER TABLE [dbo].[tb_PhieuNhap] CHECK CONSTRAINT [FK_tb_PhieuNhap_tb_NXB]
GO
ALTER TABLE [dbo].[tb_Sach]  WITH CHECK ADD  CONSTRAINT [FK_tb_Sach_tb_GianHang] FOREIGN KEY([maGianHang])
REFERENCES [dbo].[tb_GianHang] ([maGianHang])
GO
ALTER TABLE [dbo].[tb_Sach] CHECK CONSTRAINT [FK_tb_Sach_tb_GianHang]
GO
ALTER TABLE [dbo].[tb_Sach]  WITH CHECK ADD  CONSTRAINT [FK_tb_Sach_tb_NXB] FOREIGN KEY([maNXB])
REFERENCES [dbo].[tb_NXB] ([maNXB])
GO
ALTER TABLE [dbo].[tb_Sach] CHECK CONSTRAINT [FK_tb_Sach_tb_NXB]
GO

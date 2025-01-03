USE [DB_QLHV]
GO
/****** Object:  Table [dbo].[AnhTieuBieu]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnhTieuBieu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UrlAnh] [varchar](max) NULL,
	[TieuDe] [nvarchar](max) NULL,
	[NgayDang] [date] NULL,
	[MaHV] [varchar](15) NULL,
 CONSTRAINT [PK__AnhTieuB__3214EC27286B35F7] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BCH_CD]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BCH_CD](
	[MaBCH] [int] IDENTITY(1,1) NOT NULL,
	[MaCD] [int] NULL,
	[MaHV] [varchar](15) NULL,
	[ViTri] [int] NOT NULL,
	[NhiemKy] [int] NOT NULL,
	[NamBatDau] [int] NULL,
	[NamKetThuc] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBCH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BCH_HPN]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BCH_HPN](
	[MaBCH] [int] IDENTITY(1,1) NOT NULL,
	[MaHPN] [int] NULL,
	[MaHV] [varchar](15) NULL,
	[ViTri] [int] NOT NULL,
	[NhiemKy] [int] NOT NULL,
	[NamBatDau] [int] NULL,
	[NamKetThuc] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBCH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CapBac]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CapBac](
	[MaCB] [int] IDENTITY(1,1) NOT NULL,
	[TenCB] [nvarchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CapLaiMatKhau]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CapLaiMatKhau](
	[MaCLMK] [int] IDENTITY(1,1) NOT NULL,
	[TenDN] [varchar](25) NULL,
	[MaHV] [varchar](15) NULL,
	[Code] [int] NOT NULL,
	[TinhTrang] [bit] NOT NULL,
	[EditTime] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCLMK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiBo]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiBo](
	[MaChiBo] [int] IDENTITY(1,1) NOT NULL,
	[TenChiBo] [nvarchar](100) NULL,
 CONSTRAINT [PK__ChiBo__EBA100002B7A1E84] PRIMARY KEY CLUSTERED 
(
	[MaChiBo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucDanh]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucDanh](
	[MaCD] [int] IDENTITY(1,1) NOT NULL,
	[TenCD] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CongDoan]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongDoan](
	[MaCD] [int] IDENTITY(1,1) NOT NULL,
	[TenCD] [nvarchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CongVanBaoCao]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongVanBaoCao](
	[Ma] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](max) NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
	[NoiGui] [int] NOT NULL,
	[ThoiGianGui] [datetime] NOT NULL,
	[TepDinhKem] [nvarchar](max) NULL,
	[DaXem] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DangUy]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangUy](
	[MaDangUy] [int] IDENTITY(1,1) NOT NULL,
	[TenDangUy] [nvarchar](100) NULL,
 CONSTRAINT [PK__DangUy__BA90C0F9327356E3] PRIMARY KEY CLUSTERED 
(
	[MaDangUy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhHieu]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhHieu](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[TenDH] [nvarchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhSachBieuDuongPTTD]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhSachBieuDuongPTTD](
	[Ma] [int] IDENTITY(1,1) NOT NULL,
	[MaHV] [varchar](15) NOT NULL,
	[MaPTTD] [int] NOT NULL,
	[XacNhan] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonVi]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonVi](
	[MaDV] [int] IDENTITY(1,1) NOT NULL,
	[TenDV] [nvarchar](25) NOT NULL,
	[EditTime] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoanCanhGD]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoanCanhGD](
	[MaHCGD] [int] IDENTITY(1,1) NOT NULL,
	[MaHV] [varchar](15) NULL,
	[Nam] [int] NOT NULL,
	[MatChongVo] [bit] NULL,
	[LyHon] [bit] NULL,
	[NuoiConMotMinh] [bit] NULL,
	[HoNgheo] [bit] NULL,
	[HoCanNgheo] [bit] NULL,
	[BenhAnBanThan] [nvarchar](100) NULL,
	[BenhAnConCai] [nvarchar](100) NULL,
	[NhaCua] [bit] NULL,
	[VoChong] [bit] NULL,
	[DaCoChong] [bit] NULL,
	[ConBiBenh] [bit] NULL,
	[ConDuoi16Tuoi] [bit] NULL,
	[MacBenhHiemNgheo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHCGD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoatDong]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoatDong](
	[MaHoatDong] [int] IDENTITY(1,1) NOT NULL,
	[MaLoaiHoatDong] [int] NULL,
	[TongTienThuDuoc] [int] NULL,
	[TenHoatDong] [nvarchar](max) NULL,
	[ThoiGian] [date] NOT NULL,
	[MaHPN] [int] NULL,
 CONSTRAINT [PK__HoatDong__BD808BE7E0801190] PRIMARY KEY CLUSTERED 
(
	[MaHoatDong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoatDong_HoiVien]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoatDong_HoiVien](
	[MaHD_HV] [int] IDENTITY(1,1) NOT NULL,
	[MaHoatDong] [int] NOT NULL,
	[MaHV] [varchar](15) NULL,
	[SoTien] [int] NULL,
	[XacNhan] [bit] NULL,
 CONSTRAINT [PK__HoatDong__5B8BBCDAE8B0BD03] PRIMARY KEY CLUSTERED 
(
	[MaHD_HV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoiPhuNu]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoiPhuNu](
	[MaHPN] [int] IDENTITY(1,1) NOT NULL,
	[TenHPN] [nvarchar](25) NOT NULL,
	[MaHV] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoiVien]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoiVien](
	[MaHV] [varchar](15) NOT NULL,
	[TenHV] [nvarchar](50) NOT NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [bit] NOT NULL,
	[DanToc] [nvarchar](25) NULL,
	[Email] [varchar](50) NULL,
	[SDT] [varchar](20) NULL,
	[NamNhapNgu] [int] NULL,
	[BacTho] [smallint] NULL,
	[MaLDV] [int] NULL,
	[MaLHV] [int] NULL,
	[MaDV] [int] NULL,
	[MaHPN] [int] NULL,
	[MaCD] [int] NULL,
	[MaVTDU] [int] NULL,
	[MaVTCB] [int] NULL,
	[MaVTDT] [int] NULL,
	[EditTime] [datetime] NULL,
	[Quequan] [nvarchar](50) NULL,
	[Noiohiennay] [nvarchar](50) NULL,
	[avatar] [nvarchar](max) NULL,
	[NgayVaoDang] [date] NULL,
	[NgayChinhThuc] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoiVien_ChiBo]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoiVien_ChiBo](
	[MaVTCB] [int] IDENTITY(1,1) NOT NULL,
	[TenVTCB] [nvarchar](25) NOT NULL,
	[MaHV] [varchar](15) NULL,
	[MaChiBo] [int] NULL,
	[KetThuc] [date] NULL,
	[BatDau] [date] NULL,
	[XacNhan] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaVTCB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoiVien_DangUy]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoiVien_DangUy](
	[MaVTDU] [int] IDENTITY(1,1) NOT NULL,
	[TenVTDU] [nvarchar](25) NOT NULL,
	[MaDangUy] [int] NULL,
	[MaHV] [varchar](15) NULL,
	[KetThuc] [date] NULL,
	[BatDau] [date] NULL,
	[XacNhan] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaVTDU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhenThuong]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhenThuong](
	[Ma] [int] IDENTITY(1,1) NOT NULL,
	[TenKhenThuong] [nvarchar](50) NULL,
	[LyDo] [nvarchar](max) NULL,
	[Nam] [int] NULL,
	[GhiChu] [nvarchar](max) NULL,
	[MaHV] [varchar](15) NULL,
	[XacNhan] [bit] NULL,
 CONSTRAINT [PK__KhenThuo__3214CC9FCA6E4CEF] PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KyLuat]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KyLuat](
	[Ma] [int] IDENTITY(1,1) NOT NULL,
	[HinhThucKyLuat] [nvarchar](50) NULL,
	[LyDo] [nvarchar](max) NULL,
	[Nam] [int] NULL,
	[GhiChu] [nvarchar](max) NULL,
	[MaHV] [varchar](15) NULL,
 CONSTRAINT [PK__KyLuat__3214CC9F56541445] PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LaoDongSangTao]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LaoDongSangTao](
	[MaLDST] [int] IDENTITY(1,1) NOT NULL,
	[TenDeTai] [nvarchar](200) NULL,
	[MaLoaiLDST] [int] NULL,
	[KetQua] [nvarchar](100) NULL,
	[Nam] [int] NULL,
	[MaHV] [varchar](15) NULL,
	[XacNhan] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLDST] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuCapBac]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuCapBac](
	[MaLSCD] [int] IDENTITY(1,1) NOT NULL,
	[MaCB] [int] NULL,
	[MaHV] [varchar](15) NULL,
	[NgayQD] [date] NULL,
	[XacNhan] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLSCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuChucDanh]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuChucDanh](
	[MaLSCD] [int] IDENTITY(1,1) NOT NULL,
	[MaCD] [int] NULL,
	[MaHV] [varchar](15) NULL,
	[NgayQD] [date] NULL,
	[XacNhan] [bit] NULL,
	[MaDV] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLSCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuDanhHieu]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuDanhHieu](
	[MaLSDH] [int] IDENTITY(1,1) NOT NULL,
	[MaDH] [int] NULL,
	[MaHV] [varchar](15) NULL,
	[NgayQD] [date] NULL,
	[XacNhan] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLSDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuTrinhDo]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuTrinhDo](
	[MaLSTD] [int] IDENTITY(1,1) NOT NULL,
	[MaTD] [int] NULL,
	[MaHV] [varchar](15) NULL,
	[NganhHoc] [nvarchar](100) NULL,
	[TruongCap] [nvarchar](100) NULL,
	[NgayQD] [date] NULL,
	[XacNhan] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLSTD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiDangVien]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiDangVien](
	[MaLDV] [int] IDENTITY(1,1) NOT NULL,
	[TenLDV] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiHoatDong]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiHoatDong](
	[MaLoaiHoatDong] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiHoatDong] [nvarchar](100) NULL,
 CONSTRAINT [PK__LoaiHoat__4879CED5C6A52C36] PRIMARY KEY CLUSTERED 
(
	[MaLoaiHoatDong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiHoiVien]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiHoiVien](
	[MaLHV] [int] IDENTITY(1,1) NOT NULL,
	[TenLHV] [nvarchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLHV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiLDST]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiLDST](
	[MaLoaiLDST] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiLDST] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiLDST] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSinhHoat]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSinhHoat](
	[MaLoaiSinhHoat] [int] IDENTITY(1,1) NOT NULL,
	[TenSinhHoat] [nvarchar](550) NULL,
 CONSTRAINT [PK_LoaiSinhHoat] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSinhHoat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiTinBai]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTinBai](
	[MaLoaiTinbai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiTinBai] [nvarchar](100) NULL,
 CONSTRAINT [PK__LoaiTinB__EFEEEA1DA874716A] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTinbai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NoiNhan]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NoiNhan](
	[Ma] [int] IDENTITY(1,1) NOT NULL,
	[MaHPN] [int] NOT NULL,
	[MaCongVan] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongTraoThiDua]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongTraoThiDua](
	[Ma] [int] IDENTITY(1,1) NOT NULL,
	[TenPhongTraoThiDua] [nvarchar](max) NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[SoLuongDeCu] [int] NULL,
	[Khoa] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhHoat]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhHoat](
	[MaSinhHoat] [int] IDENTITY(1,1) NOT NULL,
	[NgaySinhHoat] [date] NULL,
	[NoiDung] [ntext] NULL,
	[MaHPN] [int] NULL,
	[MaLoaiSinhHoat] [int] NULL,
	[SoLuongVang] [int] NULL,
 CONSTRAINT [PK_SinhHoat] PRIMARY KEY CLUSTERED 
(
	[MaSinhHoat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhHoat_Vang]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhHoat_Vang](
	[MaSH_V] [int] IDENTITY(1,1) NOT NULL,
	[MaSinhHoat] [int] NULL,
	[MaHV] [varchar](15) NOT NULL,
 CONSTRAINT [PK_SinhHoat_Vang] PRIMARY KEY CLUSTERED 
(
	[MaSH_V] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenDN] [varchar](25) NOT NULL,
	[MatKhau] [nvarchar](max) NULL,
	[Quyen] [int] NOT NULL,
	[MaHV] [varchar](15) NULL,
	[EditTime] [datetime] NOT NULL,
	[Khoa] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TenDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThamGia]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThamGia](
	[Ma] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[DonVi] [nvarchar](100) NULL,
	[MaLDST] [int] NULL,
	[VaiTro] [nvarchar](50) NULL,
	[MaHV] [varchar](15) NULL,
 CONSTRAINT [PK__ThamGia__3214CC9FEC79B954] PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinBai]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinBai](
	[MaTinBai] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](100) NULL,
	[NgayDang] [date] NULL,
	[LuotXem] [int] NULL,
	[NoiDung] [nvarchar](max) NULL,
	[NoiDungTomTat] [nvarchar](max) NULL,
	[Img] [varchar](50) NULL,
	[imgtitle] [nvarchar](max) NULL,
	[MaHV] [varchar](15) NULL,
	[MaLoaiTinBai] [int] NULL,
	[NguoiViet] [nvarchar](50) NULL,
	[DonVi] [nvarchar](50) NULL,
	[Img1] [varchar](50) NULL,
	[imgtitle1] [nvarchar](max) NULL,
	[PheDuyet] [bit] NULL,
 CONSTRAINT [PK__TinBai__B8FB4FAB488F2C63] PRIMARY KEY CLUSTERED 
(
	[MaTinBai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ToChucDoanThe]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ToChucDoanThe](
	[MaVTDT] [int] IDENTITY(1,1) NOT NULL,
	[TenVTDT] [nvarchar](25) NOT NULL,
	[NamBatDau] [int] NULL,
	[NamKetThuc] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaVTDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrinhDo]    Script Date: 4/11/2024 11:24:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrinhDo](
	[MaTD] [int] IDENTITY(1,1) NOT NULL,
	[TenTD] [nvarchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AnhTieuBieu] ON 

INSERT [dbo].[AnhTieuBieu] ([ID], [UrlAnh], [TieuDe], [NgayDang], [MaHV]) VALUES (1, N'IMG_2588.jpg', N'Ngày hội sinh viên', CAST(N'2023-08-29' AS Date), NULL)
INSERT [dbo].[AnhTieuBieu] ([ID], [UrlAnh], [TieuDe], [NgayDang], [MaHV]) VALUES (2, N'IMG_2891.jpg', N'Lễ ra quân huấn luyện', CAST(N'2023-08-29' AS Date), NULL)
INSERT [dbo].[AnhTieuBieu] ([ID], [UrlAnh], [TieuDe], [NgayDang], [MaHV]) VALUES (3, N'IMG_2970.jpg', N'Duyệt đội ngũ trong ngày khai giảng', CAST(N'2023-08-29' AS Date), NULL)
INSERT [dbo].[AnhTieuBieu] ([ID], [UrlAnh], [TieuDe], [NgayDang], [MaHV]) VALUES (4, N'IMG_3009.jpg', N'Hội thao của học viên', CAST(N'2023-08-29' AS Date), NULL)
INSERT [dbo].[AnhTieuBieu] ([ID], [UrlAnh], [TieuDe], [NgayDang], [MaHV]) VALUES (5, N'IMG_3124.jpg', N'Đại tướng Phan Văn Giang dự 1 buổi học của học viên', CAST(N'2023-08-29' AS Date), NULL)
INSERT [dbo].[AnhTieuBieu] ([ID], [UrlAnh], [TieuDe], [NgayDang], [MaHV]) VALUES (6, N'IMG_3465.jpg', N'Học viên tham dự Chương trình Chúng tôi là chiến sĩ', CAST(N'2023-08-29' AS Date), NULL)
INSERT [dbo].[AnhTieuBieu] ([ID], [UrlAnh], [TieuDe], [NgayDang], [MaHV]) VALUES (7, N'IMG_4166.jpg', N'Ngày hội sinh viên', CAST(N'2023-08-29' AS Date), NULL)
INSERT [dbo].[AnhTieuBieu] ([ID], [UrlAnh], [TieuDe], [NgayDang], [MaHV]) VALUES (8, N'IMG_9218.jpg', N'Phó Thủ tướng Vũ Đức Đam dự lễ khai giảng năm học 2017-2018', CAST(N'2023-08-29' AS Date), NULL)
INSERT [dbo].[AnhTieuBieu] ([ID], [UrlAnh], [TieuDe], [NgayDang], [MaHV]) VALUES (9, N'IMG_8073_1.jpg', N'Chủ tịch nước trao tặng Huân chương cho Học viện ', CAST(N'2023-08-29' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[AnhTieuBieu] OFF
GO
SET IDENTITY_INSERT [dbo].[BCH_CD] ON 

INSERT [dbo].[BCH_CD] ([MaBCH], [MaCD], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (1, 2, N'07002922', 3, 7, 2017, NULL)
INSERT [dbo].[BCH_CD] ([MaBCH], [MaCD], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (2, 2, N'15252521', 2, 7, 2017, NULL)
INSERT [dbo].[BCH_CD] ([MaBCH], [MaCD], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (3, 2, N'17486525', 1, 7, 2017, NULL)
INSERT [dbo].[BCH_CD] ([MaBCH], [MaCD], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (4, 4, N'18125461', 1, 7, 2017, NULL)
INSERT [dbo].[BCH_CD] ([MaBCH], [MaCD], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (5, 4, N'18134243', 2, 7, 2017, NULL)
INSERT [dbo].[BCH_CD] ([MaBCH], [MaCD], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (6, 4, N'18132466', 3, 7, 2017, NULL)
INSERT [dbo].[BCH_CD] ([MaBCH], [MaCD], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (7, 5, N'09322178', 1, 7, 2017, NULL)
INSERT [dbo].[BCH_CD] ([MaBCH], [MaCD], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (8, 5, N'09322198', 2, 7, 2017, NULL)
INSERT [dbo].[BCH_CD] ([MaBCH], [MaCD], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (9, 5, N'09746333', 3, 7, 2017, NULL)
INSERT [dbo].[BCH_CD] ([MaBCH], [MaCD], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (10, 4, N'18132089', 3, 7, 2012, 2017)
INSERT [dbo].[BCH_CD] ([MaBCH], [MaCD], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (11, 1, N'125798QS222', 1, 7, 2017, NULL)
INSERT [dbo].[BCH_CD] ([MaBCH], [MaCD], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (12, 1, N'154QS222', 2, 7, 2017, NULL)
INSERT [dbo].[BCH_CD] ([MaBCH], [MaCD], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (13, 1, N'987QS1225', 3, 7, 2017, NULL)
INSERT [dbo].[BCH_CD] ([MaBCH], [MaCD], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (14, 3, N'8785QSI698', 1, 7, 2017, NULL)
INSERT [dbo].[BCH_CD] ([MaBCH], [MaCD], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (15, 3, N'8785QS7845', 2, 7, 2017, NULL)
INSERT [dbo].[BCH_CD] ([MaBCH], [MaCD], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (16, 3, N'2250QSI525', 3, 7, 2017, NULL)
SET IDENTITY_INSERT [dbo].[BCH_CD] OFF
GO
SET IDENTITY_INSERT [dbo].[BCH_HPN] ON 

INSERT [dbo].[BCH_HPN] ([MaBCH], [MaHPN], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (1, 2, N'07002922', 1, 8, 2021, NULL)
INSERT [dbo].[BCH_HPN] ([MaBCH], [MaHPN], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (2, 2, N'07002938', 2, 8, 2021, NULL)
INSERT [dbo].[BCH_HPN] ([MaBCH], [MaHPN], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (3, 2, N'20QS044', 2, 8, 2021, NULL)
INSERT [dbo].[BCH_HPN] ([MaBCH], [MaHPN], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (4, 2, N'17QS012', 2, 8, 2021, NULL)
INSERT [dbo].[BCH_HPN] ([MaBCH], [MaHPN], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (5, 2, N'07002967', 2, 7, 2016, NULL)
INSERT [dbo].[BCH_HPN] ([MaBCH], [MaHPN], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (6, 4, N'18186036', 1, 8, 2021, NULL)
INSERT [dbo].[BCH_HPN] ([MaBCH], [MaHPN], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (7, 4, N'14987522', 2, 8, 2021, NULL)
INSERT [dbo].[BCH_HPN] ([MaBCH], [MaHPN], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (8, 4, N'12323123', 2, 8, 2021, NULL)
INSERT [dbo].[BCH_HPN] ([MaBCH], [MaHPN], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (9, 1, N'070029225', 1, 8, 2021, NULL)
INSERT [dbo].[BCH_HPN] ([MaBCH], [MaHPN], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (10, 1, N'07002417', 2, 8, 2021, NULL)
INSERT [dbo].[BCH_HPN] ([MaBCH], [MaHPN], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (11, 1, N'18QS008', 2, 8, 2021, NULL)
INSERT [dbo].[BCH_HPN] ([MaBCH], [MaHPN], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (12, 3, N'1875200125', 1, 8, 2021, NULL)
INSERT [dbo].[BCH_HPN] ([MaBCH], [MaHPN], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (13, 3, N'1254TG5022', 2, 8, 2021, NULL)
INSERT [dbo].[BCH_HPN] ([MaBCH], [MaHPN], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (14, 3, N'137SD548', 2, 8, 2021, NULL)
INSERT [dbo].[BCH_HPN] ([MaBCH], [MaHPN], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (15, 5, N'5874850012', 1, 8, 2021, NULL)
INSERT [dbo].[BCH_HPN] ([MaBCH], [MaHPN], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (16, 5, N'1254TS5687', 2, 8, 2021, NULL)
INSERT [dbo].[BCH_HPN] ([MaBCH], [MaHPN], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (17, 5, N'1254TSH112', 2, 8, 2021, NULL)
INSERT [dbo].[BCH_HPN] ([MaBCH], [MaHPN], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (18, 1, N'10KC0658', 2, 0, 2023, NULL)
INSERT [dbo].[BCH_HPN] ([MaBCH], [MaHPN], [MaHV], [ViTri], [NhiemKy], [NamBatDau], [NamKetThuc]) VALUES (19, 1, N'19QS015', 2, 0, 2023, NULL)
SET IDENTITY_INSERT [dbo].[BCH_HPN] OFF
GO
SET IDENTITY_INSERT [dbo].[CapBac] ON 

INSERT [dbo].[CapBac] ([MaCB], [TenCB]) VALUES (1, N'Hạ sĩ')
INSERT [dbo].[CapBac] ([MaCB], [TenCB]) VALUES (2, N'Trung sĩ')
INSERT [dbo].[CapBac] ([MaCB], [TenCB]) VALUES (3, N'Thượng sĩ')
INSERT [dbo].[CapBac] ([MaCB], [TenCB]) VALUES (4, N'Thiếu uý')
INSERT [dbo].[CapBac] ([MaCB], [TenCB]) VALUES (5, N'Trung uý')
INSERT [dbo].[CapBac] ([MaCB], [TenCB]) VALUES (6, N'Thượng uý')
INSERT [dbo].[CapBac] ([MaCB], [TenCB]) VALUES (7, N'Đại uý')
INSERT [dbo].[CapBac] ([MaCB], [TenCB]) VALUES (8, N'Thiếu tá')
INSERT [dbo].[CapBac] ([MaCB], [TenCB]) VALUES (9, N'Trung tá')
INSERT [dbo].[CapBac] ([MaCB], [TenCB]) VALUES (10, N'Thượng tá')
INSERT [dbo].[CapBac] ([MaCB], [TenCB]) VALUES (11, N'Đại tá')
INSERT [dbo].[CapBac] ([MaCB], [TenCB]) VALUES (12, N'Thiếu tướng')
INSERT [dbo].[CapBac] ([MaCB], [TenCB]) VALUES (13, N'Trung tướng')
INSERT [dbo].[CapBac] ([MaCB], [TenCB]) VALUES (14, N'Thượng tướng')
INSERT [dbo].[CapBac] ([MaCB], [TenCB]) VALUES (15, N'Đại tướng')
SET IDENTITY_INSERT [dbo].[CapBac] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiBo] ON 

INSERT [dbo].[ChiBo] ([MaChiBo], [TenChiBo]) VALUES (1, N'Chi bộ bộ môn KHMT')
INSERT [dbo].[ChiBo] ([MaChiBo], [TenChiBo]) VALUES (2, N'Chi bộ Đại đội 154')
INSERT [dbo].[ChiBo] ([MaChiBo], [TenChiBo]) VALUES (3, N'Chi bộ Đại đội 155')
INSERT [dbo].[ChiBo] ([MaChiBo], [TenChiBo]) VALUES (4, N'Chi bộ Đại đội 156')
INSERT [dbo].[ChiBo] ([MaChiBo], [TenChiBo]) VALUES (5, N'Chi bộ Đại đội 354')
INSERT [dbo].[ChiBo] ([MaChiBo], [TenChiBo]) VALUES (6, N'Chi bộ bộ môn Hệ thống thông tin')
INSERT [dbo].[ChiBo] ([MaChiBo], [TenChiBo]) VALUES (7, N'Chi bộ bộ môn Công nghệ phần mềm')
SET IDENTITY_INSERT [dbo].[ChiBo] OFF
GO
SET IDENTITY_INSERT [dbo].[ChucDanh] ON 

INSERT [dbo].[ChucDanh] ([MaCD], [TenCD]) VALUES (1, N'CN Khoa')
INSERT [dbo].[ChucDanh] ([MaCD], [TenCD]) VALUES (2, N'Phó CN Khoa')
INSERT [dbo].[ChucDanh] ([MaCD], [TenCD]) VALUES (3, N'CN Bộ môn')
INSERT [dbo].[ChucDanh] ([MaCD], [TenCD]) VALUES (4, N'Phó CN Bộ môn')
INSERT [dbo].[ChucDanh] ([MaCD], [TenCD]) VALUES (5, N'Trưởng phòng')
INSERT [dbo].[ChucDanh] ([MaCD], [TenCD]) VALUES (6, N'Phó trưởng phòng')
INSERT [dbo].[ChucDanh] ([MaCD], [TenCD]) VALUES (7, N'Trưởng ban và tương đương')
INSERT [dbo].[ChucDanh] ([MaCD], [TenCD]) VALUES (8, N'Phó trưởng ban và tương đương')
INSERT [dbo].[ChucDanh] ([MaCD], [TenCD]) VALUES (9, N'Trợ lý')
INSERT [dbo].[ChucDanh] ([MaCD], [TenCD]) VALUES (10, N'Văn thư')
INSERT [dbo].[ChucDanh] ([MaCD], [TenCD]) VALUES (11, N'Kỹ thuật viên hướng dẫn TH, TN')
INSERT [dbo].[ChucDanh] ([MaCD], [TenCD]) VALUES (12, N'Nhân viên')
INSERT [dbo].[ChucDanh] ([MaCD], [TenCD]) VALUES (13, N'Bếp trưởng')
INSERT [dbo].[ChucDanh] ([MaCD], [TenCD]) VALUES (14, N'Trợ giảng')
INSERT [dbo].[ChucDanh] ([MaCD], [TenCD]) VALUES (15, N'Giảng viên')
INSERT [dbo].[ChucDanh] ([MaCD], [TenCD]) VALUES (16, N'Giảng viên chính')
SET IDENTITY_INSERT [dbo].[ChucDanh] OFF
GO
SET IDENTITY_INSERT [dbo].[CongDoan] ON 

INSERT [dbo].[CongDoan] ([MaCD], [TenCD]) VALUES (1, N'Công Đoàn d1')
INSERT [dbo].[CongDoan] ([MaCD], [TenCD]) VALUES (2, N'Công Đoàn d3')
INSERT [dbo].[CongDoan] ([MaCD], [TenCD]) VALUES (3, N'Công Đoàn K12')
INSERT [dbo].[CongDoan] ([MaCD], [TenCD]) VALUES (4, N'Công Đoàn P1')
INSERT [dbo].[CongDoan] ([MaCD], [TenCD]) VALUES (5, N'Công Đoàn P8')
SET IDENTITY_INSERT [dbo].[CongDoan] OFF
GO
SET IDENTITY_INSERT [dbo].[CongVanBaoCao] ON 

INSERT [dbo].[CongVanBaoCao] ([Ma], [TieuDe], [NoiDung], [NoiGui], [ThoiGianGui], [TepDinhKem], [DaXem]) VALUES (1, N'test', N'test', 0, CAST(N'2023-09-12T12:05:18.177' AS DateTime), N'5_FTPServer.docx', 1)
INSERT [dbo].[CongVanBaoCao] ([Ma], [TieuDe], [NoiDung], [NoiGui], [ThoiGianGui], [TepDinhKem], [DaXem]) VALUES (2, N'a', N'aa', 0, CAST(N'2023-09-12T12:07:47.043' AS DateTime), N'5_TranDoanTuan.docx', 1)
INSERT [dbo].[CongVanBaoCao] ([Ma], [TieuDe], [NoiDung], [NoiGui], [ThoiGianGui], [TepDinhKem], [DaXem]) VALUES (3, N'a', N'a', 1, CAST(N'2023-09-12T12:08:49.897' AS DateTime), N'7.1.TỜKHAIYTEBATBUOCSaukhilênhè.docx', 1)
INSERT [dbo].[CongVanBaoCao] ([Ma], [TieuDe], [NoiDung], [NoiGui], [ThoiGianGui], [TepDinhKem], [DaXem]) VALUES (4, N'hello', N'hello', 0, CAST(N'2023-09-15T09:09:19.473' AS DateTime), N'1.docx', 1)
INSERT [dbo].[CongVanBaoCao] ([Ma], [TieuDe], [NoiDung], [NoiGui], [ThoiGianGui], [TepDinhKem], [DaXem]) VALUES (5, N'abc', N'abc', 1, CAST(N'2023-09-19T16:28:32.660' AS DateTime), N'abc.docx', 1)
INSERT [dbo].[CongVanBaoCao] ([Ma], [TieuDe], [NoiDung], [NoiGui], [ThoiGianGui], [TepDinhKem], [DaXem]) VALUES (6, N'abc', N'abc', 0, CAST(N'2023-09-23T09:51:14.153' AS DateTime), N'1.0 Version.zip', 1)
INSERT [dbo].[CongVanBaoCao] ([Ma], [TieuDe], [NoiDung], [NoiGui], [ThoiGianGui], [TepDinhKem], [DaXem]) VALUES (7, N'a', N'', 1, CAST(N'2023-10-07T00:53:45.137' AS DateTime), N'10k.docx', 1)
INSERT [dbo].[CongVanBaoCao] ([Ma], [TieuDe], [NoiDung], [NoiGui], [ThoiGianGui], [TepDinhKem], [DaXem]) VALUES (8, N'a', N'', 1, CAST(N'2023-10-07T00:54:30.467' AS DateTime), N'4Đ-NGÂN HÀNG CÂU HỎI MÔN HỌC CTĐ.docx', 1)
INSERT [dbo].[CongVanBaoCao] ([Ma], [TieuDe], [NoiDung], [NoiGui], [ThoiGianGui], [TepDinhKem], [DaXem]) VALUES (9, N'a', N'a', 1, CAST(N'2023-10-09T07:38:54.927' AS DateTime), N'4Đ-NGÂN HÀNG CÂU HỎI MÔN HỌC CTĐ.docx', 1)
SET IDENTITY_INSERT [dbo].[CongVanBaoCao] OFF
GO
SET IDENTITY_INSERT [dbo].[DangUy] ON 

INSERT [dbo].[DangUy] ([MaDangUy], [TenDangUy]) VALUES (1, N'Đảng ủy Học viện')
INSERT [dbo].[DangUy] ([MaDangUy], [TenDangUy]) VALUES (2, N'Đảng ủy Tiểu đoàn 1')
INSERT [dbo].[DangUy] ([MaDangUy], [TenDangUy]) VALUES (3, N'Đảng ủy Tiểu đoàn 2')
INSERT [dbo].[DangUy] ([MaDangUy], [TenDangUy]) VALUES (4, N'Đảng ủy Tiểu đoàn 3')
INSERT [dbo].[DangUy] ([MaDangUy], [TenDangUy]) VALUES (5, N'Đảng ủy Tiểu đoàn 5')
INSERT [dbo].[DangUy] ([MaDangUy], [TenDangUy]) VALUES (6, N'Đảng ủy Viện CNTT và TT')
SET IDENTITY_INSERT [dbo].[DangUy] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhHieu] ON 

INSERT [dbo].[DanhHieu] ([MaDH], [TenDH]) VALUES (1, N'Trợ giảng')
INSERT [dbo].[DanhHieu] ([MaDH], [TenDH]) VALUES (2, N'Giảng viên')
INSERT [dbo].[DanhHieu] ([MaDH], [TenDH]) VALUES (3, N'Giảng viên chính')
INSERT [dbo].[DanhHieu] ([MaDH], [TenDH]) VALUES (4, N'Phó GS')
INSERT [dbo].[DanhHieu] ([MaDH], [TenDH]) VALUES (5, N'GS')
SET IDENTITY_INSERT [dbo].[DanhHieu] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhSachBieuDuongPTTD] ON 

INSERT [dbo].[DanhSachBieuDuongPTTD] ([Ma], [MaHV], [MaPTTD], [XacNhan]) VALUES (4, N'1', 1, 1)
INSERT [dbo].[DanhSachBieuDuongPTTD] ([Ma], [MaHV], [MaPTTD], [XacNhan]) VALUES (5, N'19QS044', 1, 1)
INSERT [dbo].[DanhSachBieuDuongPTTD] ([Ma], [MaHV], [MaPTTD], [XacNhan]) VALUES (8, N'10KC0658', 1, 0)
SET IDENTITY_INSERT [dbo].[DanhSachBieuDuongPTTD] OFF
GO
SET IDENTITY_INSERT [dbo].[DonVi] ON 

INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (1, N'P1', CAST(N'2023-04-22T16:25:52.560' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (2, N'P2', CAST(N'2023-04-22T16:25:52.560' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (3, N'P3', CAST(N'2023-04-22T16:25:52.560' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (4, N'P4', CAST(N'2023-04-22T16:25:52.560' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (5, N'P5', CAST(N'2023-04-22T16:25:52.560' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (6, N'P6', CAST(N'2023-04-22T16:25:52.560' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (7, N'P7', CAST(N'2023-04-22T16:25:52.560' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (8, N'P8', CAST(N'2023-04-22T16:25:52.560' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (9, N'P9', CAST(N'2023-04-22T16:25:52.560' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (10, N'P10', CAST(N'2023-04-22T16:25:52.560' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (11, N'P11', CAST(N'2023-04-22T16:25:52.560' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (12, N'P12', CAST(N'2023-04-22T16:25:52.560' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (13, N'P13', CAST(N'2023-04-22T16:25:52.560' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (14, N'TT CNTT', CAST(N'2023-04-22T16:25:52.563' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (15, N'K11', CAST(N'2023-04-22T16:25:52.563' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (16, N'K12', CAST(N'2023-04-22T16:25:52.563' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (17, N'K13', CAST(N'2023-04-22T16:25:52.563' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (18, N'K21', CAST(N'2023-04-22T16:25:52.563' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (19, N'K22', CAST(N'2023-04-22T16:25:52.563' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (20, N'K23', CAST(N'2023-04-22T16:25:52.563' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (21, N'K24', CAST(N'2023-04-22T16:25:52.563' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (22, N'K31', CAST(N'2023-04-22T16:25:52.563' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (23, N'K32', CAST(N'2023-04-22T16:25:52.563' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (24, N'K51', CAST(N'2023-04-22T16:25:52.563' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (25, N'K52', CAST(N'2023-04-22T16:25:52.563' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (26, N'K6', CAST(N'2023-04-22T16:25:52.563' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (27, N'K7', CAST(N'2023-04-22T16:25:52.563' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (28, N'V1', CAST(N'2023-04-22T16:25:52.563' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (29, N'V2', CAST(N'2023-04-22T16:25:52.563' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (30, N'V3', CAST(N'2023-04-22T16:25:52.563' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (31, N'TTCN', CAST(N'2023-04-22T16:25:52.563' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (32, N'TTHL 125', CAST(N'2023-04-22T16:25:52.563' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (33, N'H3', CAST(N'2023-04-22T16:25:52.563' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (34, N'H4', CAST(N'2023-04-22T16:25:52.567' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (35, N'H5', CAST(N'2023-04-22T16:25:52.567' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (36, N'd1', CAST(N'2023-04-22T16:25:52.567' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (37, N'd2', CAST(N'2023-04-22T16:25:52.567' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (38, N'd3', CAST(N'2023-04-22T16:25:52.567' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [EditTime]) VALUES (39, N'd4', CAST(N'2023-04-22T16:25:52.567' AS DateTime))
SET IDENTITY_INSERT [dbo].[DonVi] OFF
GO
SET IDENTITY_INSERT [dbo].[HoanCanhGD] ON 

INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (1, N'07002922', 2021, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, 1, 1, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (2, N'07002938', 2021, 0, 0, 0, 0, 0, NULL, N'con mổ tim', 0, 0, 1, 1, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (3, N'20QS044', 2021, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 1, 1, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (4, N'17QS012', 2021, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 1, 1, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (5, N'07002967', 2021, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 1, 1, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (6, N'17QS034', 2021, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 1, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (7, N'07002987', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 1, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (8, N'18186036', 2021, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (9, N'18132089', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (10, N'18132466', 2021, 0, 0, 0, 0, 0, N'Null', NULL, 0, 1, 0, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (11, N'18123432', 2021, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (12, N'14987522', 2021, 0, 0, 0, 0, 1, NULL, N'con bại não', 1, 1, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (13, N'12323123', 2021, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (14, N'13424244', 2021, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (15, N'12376844', 2021, 1, 0, 1, 0, 0, NULL, NULL, 1, 0, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (16, N'12321214', 2021, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (21, N'18125461', 2021, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (22, N'18134243', 2021, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (23, N'09322198', 2021, 0, 1, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (24, N'09322178', 2021, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, 0, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (25, N'09232321', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (26, N'09248533', 2021, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, 0, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (27, N'09746333', 2021, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (28, N'13840203', 2021, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, 0, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (29, N'15252521', 2021, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (30, N'15469273', 2021, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (31, N'17486525', 2021, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (32, N'070029225', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (33, N'07002417', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (34, N'10KC0658', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (35, N'18QS008', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (36, N'18QS049', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (37, N'18QS050', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (38, N'19QS015', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (39, N'2019010068', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (40, N'19QS044', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (41, N'2019010019', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (42, N'2019010041', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (43, N'12QS0979', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (44, N'12QS0002', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (45, N'137SD587', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 1, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (46, N'137SD548', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 1, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (47, N'1875248987', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (48, N'1875200125', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 1, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (49, N'1254TG5687', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (50, N'1254TG5022', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (51, N'1254TG7889', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (52, N'1254TG0089', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (53, N'1254TSH112', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (54, N'1254TS5687', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (55, N'1254TS5999', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (56, N'5874855999', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (57, N'5874850012', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (58, N'5874858545', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (59, N'58748QS021', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (60, N'58748QS222', 2021, 0, 0, 0, 1, 0, NULL, NULL, 1, 0, NULL, 0, 0, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (61, N'125798QS222', 2021, 0, 0, 0, 0, 1, NULL, NULL, 1, 0, 1, 0, 0, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (62, N'154QS222', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 0, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (63, N'987QS1225', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 0, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (64, N'8785QSI525', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 0, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (65, N'8785QSI698', 2021, 0, 0, 0, 1, 0, NULL, NULL, 1, 1, 1, 0, 0, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (66, N'8785QS7845', 2021, 0, 1, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 0, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (67, N'2250QSI525', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 0, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (68, N'8785QSI536', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 0, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (69, N'8785EW858', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 0, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (70, N'8785QSI799', 2021, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 0, 0)
INSERT [dbo].[HoanCanhGD] ([MaHCGD], [MaHV], [Nam], [MatChongVo], [LyHon], [NuoiConMotMinh], [HoNgheo], [HoCanNgheo], [BenhAnBanThan], [BenhAnConCai], [NhaCua], [VoChong], [DaCoChong], [ConBiBenh], [ConDuoi16Tuoi], [MacBenhHiemNgheo]) VALUES (71, N'1', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[HoanCanhGD] OFF
GO
SET IDENTITY_INSERT [dbo].[HoatDong] ON 

INSERT [dbo].[HoatDong] ([MaHoatDong], [MaLoaiHoatDong], [TongTienThuDuoc], [TenHoatDong], [ThoiGian], [MaHPN]) VALUES (1, 1, 123312000, N'Ủng hộ đồng bào bị thiên tai, hoạn nạn', CAST(N'2022-04-05' AS Date), 0)
INSERT [dbo].[HoatDong] ([MaHoatDong], [MaLoaiHoatDong], [TongTienThuDuoc], [TenHoatDong], [ThoiGian], [MaHPN]) VALUES (2, 2, 12222222, N'Hoạt động văn nghệ chào mừng Quốc khánh 2/9', CAST(N'2022-04-05' AS Date), 0)
INSERT [dbo].[HoatDong] ([MaHoatDong], [MaLoaiHoatDong], [TongTienThuDuoc], [TenHoatDong], [ThoiGian], [MaHPN]) VALUES (7, 3, 1000000, N'Ủng hộ hội viên a bị tai nạn', CAST(N'2023-09-12' AS Date), 0)
INSERT [dbo].[HoatDong] ([MaHoatDong], [MaLoaiHoatDong], [TongTienThuDuoc], [TenHoatDong], [ThoiGian], [MaHPN]) VALUES (9, 3, 20000000, N'Ra quân huấn luyện năm 2023', CAST(N'2023-09-19' AS Date), 0)
INSERT [dbo].[HoatDong] ([MaHoatDong], [MaLoaiHoatDong], [TongTienThuDuoc], [TenHoatDong], [ThoiGian], [MaHPN]) VALUES (22, 2, NULL, N'Tổ chức hoạt động chào mừng Ngày Quốc tế Phụ nữ 8/3', CAST(N'2023-09-23' AS Date), 1)
INSERT [dbo].[HoatDong] ([MaHoatDong], [MaLoaiHoatDong], [TongTienThuDuoc], [TenHoatDong], [ThoiGian], [MaHPN]) VALUES (23, 3, 1000000, N'Thăm hội viên a bị tai nạn', CAST(N'2023-09-24' AS Date), 1)
SET IDENTITY_INSERT [dbo].[HoatDong] OFF
GO
SET IDENTITY_INSERT [dbo].[HoatDong_HoiVien] ON 

INSERT [dbo].[HoatDong_HoiVien] ([MaHD_HV], [MaHoatDong], [MaHV], [SoTien], [XacNhan]) VALUES (4, 1, N'1', 119000000, 1)
INSERT [dbo].[HoatDong_HoiVien] ([MaHD_HV], [MaHoatDong], [MaHV], [SoTien], [XacNhan]) VALUES (5, 1, N'1875200125', 100000, 1)
INSERT [dbo].[HoatDong_HoiVien] ([MaHD_HV], [MaHoatDong], [MaHV], [SoTien], [XacNhan]) VALUES (6, 1, N'1254TG5022', 200000, 1)
INSERT [dbo].[HoatDong_HoiVien] ([MaHD_HV], [MaHoatDong], [MaHV], [SoTien], [XacNhan]) VALUES (7, 1, N'19QS044', 12000, 1)
INSERT [dbo].[HoatDong_HoiVien] ([MaHD_HV], [MaHoatDong], [MaHV], [SoTien], [XacNhan]) VALUES (8, 1, N'18QS049', 2000000, 1)
INSERT [dbo].[HoatDong_HoiVien] ([MaHD_HV], [MaHoatDong], [MaHV], [SoTien], [XacNhan]) VALUES (9, 1, N'2019010019', 2000000, 1)
SET IDENTITY_INSERT [dbo].[HoatDong_HoiVien] OFF
GO
SET IDENTITY_INSERT [dbo].[HoiPhuNu] ON 

INSERT [dbo].[HoiPhuNu] ([MaHPN], [TenHPN], [MaHV]) VALUES (1, N'HPN d1', N'070029225')
INSERT [dbo].[HoiPhuNu] ([MaHPN], [TenHPN], [MaHV]) VALUES (2, N'HPN d3', N'07002922')
INSERT [dbo].[HoiPhuNu] ([MaHPN], [TenHPN], [MaHV]) VALUES (3, N'HPN V4', N'1875200125')
INSERT [dbo].[HoiPhuNu] ([MaHPN], [TenHPN], [MaHV]) VALUES (4, N'HPN P1 và P12', N'18186036')
INSERT [dbo].[HoiPhuNu] ([MaHPN], [TenHPN], [MaHV]) VALUES (5, N'HPN P6, P8 và TT CNTT', N'5874850012')
INSERT [dbo].[HoiPhuNu] ([MaHPN], [TenHPN], [MaHV]) VALUES (8, N'HPN TTHL125', N'07002938')
SET IDENTITY_INSERT [dbo].[HoiPhuNu] OFF
GO
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'07002417', N'Tống Thị Hồng Tươi', CAST(N'1971-08-12' AS Date), 0, N'Kinh', N'TTHongTuoi@gmail.com', N'0915692354', 1989, 3, 1, 2, 36, 1, NULL, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.570' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'07002922', N'Nguyễn Thị Tuyết', CAST(N'1980-10-20' AS Date), 0, N'Kinh', N'abc@gmail.com', N'0988123765', 2003, 2, 1, 2, 38, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'070029225', N'Nguyễn Thị Hoa Sáu', CAST(N'1970-02-12' AS Date), 0, N'Kinh', N'NguyenThiHoaSau@gmail.com', N'0917598282', 1988, 3, 1, 1, 36, 1, NULL, NULL, 1, NULL, CAST(N'2023-04-22T16:25:52.570' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'07002938', N'Định Thị Hằng', CAST(N'1985-05-14' AS Date), 0, N'Kinh', N'abc@gmail.com', N'0917598282', 2007, 2, 3, 2, 38, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'07002967', N'Lê Thị Trường', CAST(N'1974-09-10' AS Date), 0, N'Kinh', N'abc@gmail.com', N'0917598282', 1993, 2, 1, 2, 38, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'07002987', N'Thẩm Thị Hồng Minh', CAST(N'1980-02-14' AS Date), 0, N'Kinh', N'abc@gmail.com', N'0917598282', 2003, 2, 3, 2, 38, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'09232321', N'Bùi Tiến Cường', CAST(N'1978-03-23' AS Date), 1, N'Kinh', N'abc@gmail.com', N'0917598282', 1998, 2, 1, 2, 8, 2, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'09248533', N'Nguyễn Ngọc Anh', CAST(N'1990-09-20' AS Date), 0, N'Kinh', N'abc@gmail.com', N'0917598282', 2015, 2, 1, 2, 8, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'09322178', N'Vũ Văn Hạnh', CAST(N'1970-10-13' AS Date), 1, N'Kinh', N'abc@gmail.com', N'0917598282', 2003, 2, 1, 2, 8, 2, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'09322198', N'Nguyễn Hữu Thanh', CAST(N'1973-04-20' AS Date), 1, N'Kinh', N'abc@gmail.com', N'0917598282', 2000, 2, 1, 2, 8, 2, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'09746333', N'Trần Huyền Diệu', CAST(N'1980-06-15' AS Date), 0, N'Kinh', N'abc@gmail.com', N'0917598282', NULL, 2, 1, 2, 8, 2, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'1', N'Lê Thị Hiền', CAST(N'2001-08-12' AS Date), 0, N'Kinh', N'Admin@gmail.com', N'0123456789', 2019, 2, 1, 5, 36, 1, 5, NULL, 5, NULL, NULL, N'Thái Bình', N'Thái Bình', NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'10', N'Chử Thành Hai', CAST(N'2000-07-24' AS Date), 0, N'Kinh', NULL, N'0834256345', 2018, 2, 1, 5, 36, 1, NULL, NULL, NULL, NULL, NULL, N'Phú Thọ', N'Hà Nội', NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'10KC0658', N'Phạm Thị Nguyệt', CAST(N'1974-05-22' AS Date), 0, N'Kinh', N'PhamThiNguyet@gmail.com', N'08569547815', 1993, 3, 1, 2, 36, 1, NULL, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.570' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'11', N'Nguyễn Thị Như Huỳnh', CAST(N'2000-08-31' AS Date), 0, N'Kinh', N'123@gmail.com', N'123', 2018, 3, 2, 5, 36, 1, NULL, NULL, NULL, NULL, NULL, N'Hòa Bình', N'Hà Nội', N'106345100_3698519970174938_6594183448287008765_o.png', CAST(N'2022-07-14' AS Date), NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'12321214', N'Nguyễn Thị Thủy', CAST(N'1972-09-17' AS Date), 0, N'Kinh', N'abc@gmail.com', N'0917598282', 2011, 2, 1, 2, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'12323123', N'Dương Quỳnh Anh', CAST(N'1979-08-18' AS Date), 0, N'Kinh', N'abc@gmail.com', N'0917598282', 2004, 2, 1, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'12376844', N'Đinh Thị Lan Thanh', CAST(N'1970-04-12' AS Date), 0, N'Kinh', N'abc@gmail.com', N'0917598282', 1993, 2, 1, 2, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'1254TG0089', N'Trần Thị Lan', CAST(N'1975-02-05' AS Date), 0, N'Kinh', N'TranThiLan@gmail.com', N'0985666333', 2006, 4, 1, 1, 16, 3, NULL, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.573' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'1254TG5022', N'Phan Thị Hương', CAST(N'1983-09-22' AS Date), 0, N'Kinh', N'PhanThiHuong@gmail.com', N'0985620012', 2005, 5, 1, 1, 16, 3, NULL, NULL, NULL, 1, CAST(N'2023-04-22T16:25:52.573' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'1254TG5687', N'Hoàng Thị Vân', CAST(N'1979-09-22' AS Date), 0, N'Kinh', N'HoangThiVan@gmail.com', N'0985625455', 2003, 4, 1, 1, 16, 3, NULL, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.573' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'1254TG7889', N'Nguyễn Phương Nhung', CAST(N'1977-02-25' AS Date), 0, N'Kinh', N'NguyenPhuongNhung@gmail.com', N'0985666566', 2005, 4, 1, 1, 16, 3, NULL, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.573' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'1254TS5687', N'Nguyễn Thu Phương', CAST(N'1980-02-05' AS Date), 0, N'Mường', N'NguyenThuPhuong@gmail.com', N'0985452525', 2004, 3, 1, 2, 8, 5, NULL, NULL, 4, NULL, CAST(N'2023-04-22T16:25:52.573' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'1254TS5999', N'Nguyễn Thị Thúy Mùi', CAST(N'1980-02-05' AS Date), 0, N'Kinh', N'NguyenThiThuyMui@gmail.com', N'098500047', 2004, 3, 1, 2, 8, 5, NULL, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.573' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'1254TSH112', N'Nguyễn Thị Ngân', CAST(N'1989-02-05' AS Date), 0, N'Mường', N'NguyenThiNgan@gmail.com', N'0985456666', 2008, 3, 1, 2, 6, 5, NULL, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.573' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'125798QS222', N'Nguyễn Văn Minh', CAST(N'1980-02-15' AS Date), 1, N'Kinh', N'NguyenVanMinh@gmail.com', N'0987887887', 2004, 3, 1, 2, 36, 2, 1, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.577' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'12QS0002', N'Tạ Thị Diệu', CAST(N'1975-12-22' AS Date), 0, N'Kinh', N'TaThiDieu@gmail.com', N'0879536262', 2001, 4, 1, 1, 16, 3, NULL, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.573' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'12QS0979', N'Nguyễn Hoài Anh', CAST(N'1977-07-13' AS Date), 0, N'Kinh', N'NguyenHoaiAnh@gmail.com', N'0985645588', 2003, 5, 1, 1, 16, 3, 3, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.573' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'13424244', N'Nguyễn Thị Cúc', CAST(N'1970-06-12' AS Date), 0, N'Kinh', N'abc@gmail.com', N'0985645588', 2011, 2, 3, 3, 1, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'137SD548', N'Nguyễn Thị Hiền', CAST(N'1978-10-19' AS Date), 0, N'Kinh', N'NguyenThiHien@gmail.com', N'0941000036', 2003, 5, 1, 1, 16, 3, NULL, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.573' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'137SD587', N'Nguyễn Kim Dung', CAST(N'1973-09-09' AS Date), 0, N'Kinh', N'NguyenKimDung@gmail.com', N'0985875465', 2001, 4, 1, 1, 16, 3, 3, NULL, 2, NULL, CAST(N'2023-04-22T16:25:52.573' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'13840203', N'Nguyễn Thành Minh', CAST(N'1980-07-17' AS Date), 1, N'Kinh', N'abc@gmail.com', N'0985645588', 2011, 2, 2, 2, 38, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'14987522', N'Lê Thị Lan Anh', CAST(N'1980-09-23' AS Date), 0, N'Kinh', N'abc@gmail.com', N'0985645588', 2013, 2, 1, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'15252521', N'Nguyễn Đức Thắng', CAST(N'1980-04-15' AS Date), 1, N'Kinh', N'abc@gmail.com', N'0985645588', 2005, 2, 1, 3, 38, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'15469273', N'Nguyễn Minh Đức', CAST(N'1983-09-23' AS Date), 1, N'Kinh', N'abc@gmail.com', N'0985645588', 2008, 2, 4, 3, 38, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'154QS222', N'Bùi Minh Đức', CAST(N'1978-09-15' AS Date), 1, N'Kinh', N'BuiMinhDuc@gmail.com', N'0987880121', 2004, 3, 1, 1, 36, 2, 1, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.577' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'17486525', N'Trần Đình Mạnh', CAST(N'1979-08-12' AS Date), 1, N'Kinh', N'abc@gmail.com', N'0985645588', 2013, 2, 1, 2, 38, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'17QS012', N'Trần Thị Huế', CAST(N'1998-06-20' AS Date), 0, N'Kinh', N'abc@gmail.com', N'0985645588', 2017, 2, 2, 5, 38, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'17QS034', N'Đinh Thị Thu Hường', CAST(N'1998-09-15' AS Date), 0, N'Kinh', N'abc@gmail.com', N'0985645588', 2016, 2, 1, 5, 38, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'18123432', N'Đàm Thị Tố Nga', CAST(N'1971-09-23' AS Date), 0, N'Kinh', N'abc@gmail.com', N'0985645588', 1989, 2, 1, 2, 1, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'18125461', N'Nguyễn Tiến Dũng', CAST(N'1978-02-21' AS Date), 1, N'Kinh', N'abc@gmail.com', N'0985645588', 2008, 2, 1, 2, 1, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'18132089', N'Lê Minh Thu', CAST(N'1992-09-12' AS Date), 0, N'Kinh', N'abc@gmail.com', N'0985645588', 2015, 2, 1, 1, 1, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'18132466', N'Nguyễn Hải Hà', CAST(N'1980-06-16' AS Date), 0, N'Kinh', N'abc@gmail.com', N'0985645588', 2003, 2, 1, 1, 1, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'18134243', N'Phan Hoàng Anh', CAST(N'1984-07-23' AS Date), 1, N'Kinh', N'abc@gmail.com', N'0985645588', 2010, 2, 1, 2, 1, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'18186036', N'Nguyễn Thị Bích Hạnh', CAST(N'1970-12-21' AS Date), 0, N'Kinh', N'abc@gmail.com', N'0985645588', 1989, 2, 1, 2, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'1875200125', N'Chu Thị Hường', CAST(N'1979-07-22' AS Date), 0, N'Kinh', N'ChuThiHuong@gmail.com', N'0789215487', 2003, 5, 1, 1, 16, 3, NULL, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.573' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'1875248987', N'Đỗ Phương Loan', CAST(N'1973-06-21' AS Date), 0, N'Kinh', N'DoPhuongLoan@gmail.com', N'0978142653', 1999, 4, 1, 1, 16, 3, NULL, NULL, 3, NULL, CAST(N'2023-04-22T16:25:52.573' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'18QS008', N'Triệu Ninh Ngân', CAST(N'1999-12-20' AS Date), 0, N'Kinh', N'TrieuNinhNgan@gmail.com', N'0982154789', 2017, 2, 1, 5, 36, 1, NULL, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.570' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'18QS049', N'Nguyễn Thị Kim Khánh', CAST(N'1999-02-15' AS Date), 0, N'Kinh', N'NguyenThiKimKhanh@gmail.com', N'0975489254', 2017, 2, 1, 5, 36, 1, NULL, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.570' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'18QS050', N'Nguyễn Thị Thanh Thùy', CAST(N'1997-08-29' AS Date), 0, N'Kinh', N'NguyenThiThanhThuy@gmail.com', N'0978562032', 2017, 2, 1, 5, 36, 1, NULL, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.570' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'19QS015', N'Bùi Thị Thoa', CAST(N'2000-02-04' AS Date), 0, N'Kinh', N'BuiThiThoa@gmail.com', N'0982365210', 2018, 2, 1, 5, 36, 1, NULL, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.570' AS DateTime), N'Hòa Bình', N'Hòa Bình', N'3dcab39c87d77193a8d7e6ab710d459a5ec2770772cf9.jpg', CAST(N'2018-06-15' AS Date), CAST(N'2019-06-15' AS Date))
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'19QS044', N'Nông Thị Trang', CAST(N'2000-09-13' AS Date), 0, N'Kinh', N'NongThiTrang@gmail.com', N'0917524158', 2018, 2, 2, 5, 36, 1, NULL, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.573' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'2019010019', N'Bàn Thị Trang', CAST(N'2001-03-13' AS Date), 0, N'Kinh', N'BanThiTrang@gmail.com', N'0985236541', 2019, 2, 1, 5, 36, 1, NULL, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.573' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'2019010041', N'Nguyễn Thị Huyền Trang', CAST(N'2001-02-23' AS Date), 0, N'Kinh', N'NguyenThiHuyenTrang@gmail.com', N'0985625525', 2019, 2, 1, 5, 36, 1, NULL, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.573' AS DateTime), N'Nghệ An', N'Hà Nội', N'1.png', NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'2019010068', N'Đào Việt Hà', CAST(N'2001-06-20' AS Date), 0, N'Kinh', N'DaoVietHa@gmail.com', N'030654214878', 2019, 2, 1, 5, 36, 1, NULL, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.573' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'20QS044', N'Nguyễn Thị Hồng Vy', CAST(N'2001-10-10' AS Date), 0, N'Kinh', N'Vy@gmail.com', N'0234567865', 2019, 2, 3, 5, 38, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'2250QSI525', N'Nông Thị Bình', CAST(N'1978-09-15' AS Date), 0, N'Mường', N'NongThiBinh@gmail.com', N'0986989012', 2004, 3, 1, 1, 16, 2, 1, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.577' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'5874850012', N'Cao Doãn Thu Trang', CAST(N'1985-08-05' AS Date), 0, N'Kinh', N'CaoDoanThuTrang@gmail.com', N'0985625552', 2009, 3, 1, 2, 8, 5, NULL, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.577' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'5874855999', N'Bùi Lệ Mỹ', CAST(N'1976-02-05' AS Date), 0, N'Kinh', N'BuiLeMy@gmail.com', N'098500047', 2000, 3, 1, 2, 8, 5, NULL, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.577' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'5874858545', N'Phan Hồng Phương Nhung', CAST(N'1980-10-15' AS Date), 0, N'Tày', N'PhanHongPhuongNhung@gmail.com', N'0987888995', 2009, 3, 1, 2, 8, 5, NULL, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.577' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'58748QS021', N'Nguyễn Thị Thu Thủy', CAST(N'1977-09-15' AS Date), 0, N'Kinh', N'NguyenThiThuThuy@gmail.com', N'0987880012', 2003, 3, 1, 2, 14, 5, NULL, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.577' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'58748QS222', N'Nguyễn Thị Hạnh', CAST(N'1980-09-15' AS Date), 0, N'Kinh', N'NguyenThiHanh@gmail.com', N'0987880121', 2004, 3, 1, 2, 36, 5, 1, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.577' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'6', N'Nguyễn Thị A', CAST(N'2001-07-10' AS Date), 0, N'Kinh', N'A@gmail.com', N'0834256345', 2019, 2, 1, 5, 36, 2, NULL, NULL, NULL, NULL, NULL, N'Nghệ An', N'Hà Nội', NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'8785EW858', N'Đoàn Việt Thắng', CAST(N'1979-11-15' AS Date), 1, N'Kinh', N'DoanVietThang@gmail.com', N'0956874114', 2000, 4, 1, 2, 16, 2, 1, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.577' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'8785QS7845', N'Nguyễn Mạnh Trường', CAST(N'1977-09-20' AS Date), 1, N'Kinh', N'NguyenManhTruong@gmail.com', N'0986989708', 2003, 4, 1, 1, 16, 2, 1, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.577' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'8785QSI525', N'Đinh Minh Quang', CAST(N'1980-09-15' AS Date), 1, N'Nùng', N'DinhMinhQuang@gmail.com', N'0986989587', 2002, 3, 1, 2, 36, 2, 1, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.577' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'8785QSI536', N'Nguyễn Minh Tuấn', CAST(N'1975-10-15' AS Date), 1, N'Kinh', N'NguyenMinhTuan@gmail.com', N'0986989587', 2000, 4, 1, 1, 16, NULL, 1, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.577' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'8785QSI698', N'Đinh Xuân Quang', CAST(N'1978-09-15' AS Date), 1, N'Kinh', N'DinhXuanQuang@gmail.com', N'0986989222', 2002, 3, 1, 2, 16, NULL, 1, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.577' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'8785QSI799', N'Nguyễn Mạnh Hùng', CAST(N'1981-09-20' AS Date), 1, N'Kinh', N'NguyenManhHung@gmail.com', N'0986989541', 2006, 3, 1, 1, 16, NULL, 1, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.577' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'9', N'Hồ Anh Dũng', CAST(N'2000-03-12' AS Date), 0, N'Kinh', N'test@test.com', N'0834256345', 2018, 2, 1, 1, 36, 1, NULL, NULL, NULL, NULL, NULL, N'Nghệ An', N'Hà Nội', NULL, CAST(N'2022-06-01' AS Date), CAST(N'2023-06-01' AS Date))
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [NgaySinh], [GioiTinh], [DanToc], [Email], [SDT], [NamNhapNgu], [BacTho], [MaLDV], [MaLHV], [MaDV], [MaHPN], [MaCD], [MaVTDU], [MaVTCB], [MaVTDT], [EditTime], [Quequan], [Noiohiennay], [avatar], [NgayVaoDang], [NgayChinhThuc]) VALUES (N'987QS1225', N'Phạm Văn Hồng', CAST(N'1979-12-15' AS Date), 1, N'Kinh', N'PhamVanHong@gmail.com', N'098788887', 2003, 3, 1, 1, 36, NULL, 1, NULL, NULL, NULL, CAST(N'2023-04-22T16:25:52.577' AS DateTime), NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[HoiVien_ChiBo] ON 

INSERT [dbo].[HoiVien_ChiBo] ([MaVTCB], [TenVTCB], [MaHV], [MaChiBo], [KetThuc], [BatDau], [XacNhan]) VALUES (1, N'Đảng viên', N'19QS015', 2, CAST(N'2020-04-05' AS Date), CAST(N'2018-03-04' AS Date), 1)
INSERT [dbo].[HoiVien_ChiBo] ([MaVTCB], [TenVTCB], [MaHV], [MaChiBo], [KetThuc], [BatDau], [XacNhan]) VALUES (2, N'Chi ủy viên', N'19QS015', 2, CAST(N'2023-03-12' AS Date), CAST(N'2020-04-06' AS Date), 1)
INSERT [dbo].[HoiVien_ChiBo] ([MaVTCB], [TenVTCB], [MaHV], [MaChiBo], [KetThuc], [BatDau], [XacNhan]) VALUES (3, N'Đảng viên', N'2019010019', 3, NULL, CAST(N'2018-03-04' AS Date), 1)
INSERT [dbo].[HoiVien_ChiBo] ([MaVTCB], [TenVTCB], [MaHV], [MaChiBo], [KetThuc], [BatDau], [XacNhan]) VALUES (4, N'Đảng viên', N'19QS044', 2, NULL, CAST(N'2018-03-04' AS Date), 1)
INSERT [dbo].[HoiVien_ChiBo] ([MaVTCB], [TenVTCB], [MaHV], [MaChiBo], [KetThuc], [BatDau], [XacNhan]) VALUES (5, N'Đảng viên', N'2019010041', 3, CAST(N'2023-03-12' AS Date), CAST(N'2018-03-04' AS Date), 1)
INSERT [dbo].[HoiVien_ChiBo] ([MaVTCB], [TenVTCB], [MaHV], [MaChiBo], [KetThuc], [BatDau], [XacNhan]) VALUES (6, N'Chi ủy viên', N'19QS015', 2, CAST(N'2023-09-02' AS Date), CAST(N'2023-03-12' AS Date), 1)
INSERT [dbo].[HoiVien_ChiBo] ([MaVTCB], [TenVTCB], [MaHV], [MaChiBo], [KetThuc], [BatDau], [XacNhan]) VALUES (7, N'Chi ủy viên', N'2019010041', 3, NULL, CAST(N'2023-03-12' AS Date), 1)
INSERT [dbo].[HoiVien_ChiBo] ([MaVTCB], [TenVTCB], [MaHV], [MaChiBo], [KetThuc], [BatDau], [XacNhan]) VALUES (8, N'Đảng viên', N'6', 3, NULL, CAST(N'2021-03-13' AS Date), 0)
INSERT [dbo].[HoiVien_ChiBo] ([MaVTCB], [TenVTCB], [MaHV], [MaChiBo], [KetThuc], [BatDau], [XacNhan]) VALUES (10, N'Đảng viên', N'19QS015', 2, NULL, CAST(N'2023-09-02' AS Date), 1)
INSERT [dbo].[HoiVien_ChiBo] ([MaVTCB], [TenVTCB], [MaHV], [MaChiBo], [KetThuc], [BatDau], [XacNhan]) VALUES (11, N'Phó bí thư chi bộ', N'19QS015', 2, NULL, CAST(N'2023-10-14' AS Date), 0)
SET IDENTITY_INSERT [dbo].[HoiVien_ChiBo] OFF
GO
SET IDENTITY_INSERT [dbo].[HoiVien_DangUy] ON 

INSERT [dbo].[HoiVien_DangUy] ([MaVTDU], [TenVTDU], [MaDangUy], [MaHV], [KetThuc], [BatDau], [XacNhan]) VALUES (1, N'Đảng uỷ viên', 2, N'19QS015', NULL, CAST(N'2023-04-05' AS Date), 1)
INSERT [dbo].[HoiVien_DangUy] ([MaVTDU], [TenVTDU], [MaDangUy], [MaHV], [KetThuc], [BatDau], [XacNhan]) VALUES (2, N'Đảng ủy viên', 3, N'19QS015', NULL, CAST(N'2023-09-10' AS Date), 0)
SET IDENTITY_INSERT [dbo].[HoiVien_DangUy] OFF
GO
SET IDENTITY_INSERT [dbo].[KhenThuong] ON 

INSERT [dbo].[KhenThuong] ([Ma], [TenKhenThuong], [LyDo], [Nam], [GhiChu], [MaHV], [XacNhan]) VALUES (1, N'Chiến sĩ thi đua cơ sở', N'Đạt thành tích xuất sắc trong phong trào thi đua quyết thắng năm học 2018-2019', 2019, NULL, N'19QS015', 1)
INSERT [dbo].[KhenThuong] ([Ma], [TenKhenThuong], [LyDo], [Nam], [GhiChu], [MaHV], [XacNhan]) VALUES (2, N'Chiến sĩ thi đua cơ sở', N'Đạt thành tích xuất sắc trong phong trào thi đua quyết thắng năm học 2018-2019', 2019, NULL, N'19QS044', 1)
INSERT [dbo].[KhenThuong] ([Ma], [TenKhenThuong], [LyDo], [Nam], [GhiChu], [MaHV], [XacNhan]) VALUES (3, N'Chiến sĩ tiên tiến', N'Đạt thành tích tốt trong phong trào thi đua quyết thắng năm học 2021-2022', 2022, NULL, N'2019010041', 1)
INSERT [dbo].[KhenThuong] ([Ma], [TenKhenThuong], [LyDo], [Nam], [GhiChu], [MaHV], [XacNhan]) VALUES (9, N'Chiến sĩ tiên tiến', N'Đạt thành tích tốt trong phong trào thi đua quyết thắng năm học 2021-2022', 2022, NULL, N'2019010041', 1)
INSERT [dbo].[KhenThuong] ([Ma], [TenKhenThuong], [LyDo], [Nam], [GhiChu], [MaHV], [XacNhan]) VALUES (12, N'Chiến sĩ thi đua', N'Đạt thành tích suất sắc trong phong trào thi đua quyết thắng năm học 2019-2020', 2020, NULL, N'2019010041', 1)
INSERT [dbo].[KhenThuong] ([Ma], [TenKhenThuong], [LyDo], [Nam], [GhiChu], [MaHV], [XacNhan]) VALUES (13, N'Chiến sĩ tiên tiến', N'Đạt thành tích tốt trong phong trào thi đua quyết thắng năm học 2021-2022', 2022, N'CSTT', N'6', 0)
INSERT [dbo].[KhenThuong] ([Ma], [TenKhenThuong], [LyDo], [Nam], [GhiChu], [MaHV], [XacNhan]) VALUES (14, N'Chiến sĩ thi đua', N'Đạt thành tích tốt trong phong trào thi đua quyết thắng năm học 2022-2023', 2023, NULL, N'19QS015', 0)
INSERT [dbo].[KhenThuong] ([Ma], [TenKhenThuong], [LyDo], [Nam], [GhiChu], [MaHV], [XacNhan]) VALUES (17, N'Chiến sĩ thi đua', N'Đạt thành tích suất sắc trong phong trào thi đua quyết thắng năm học 2022-2023', 2023, NULL, N'19QS015', 0)
SET IDENTITY_INSERT [dbo].[KhenThuong] OFF
GO
SET IDENTITY_INSERT [dbo].[KyLuat] ON 

INSERT [dbo].[KyLuat] ([Ma], [HinhThucKyLuat], [LyDo], [Nam], [GhiChu], [MaHV]) VALUES (1, N'Khiển trách', N'Sinh con thứ 3', 2022, NULL, N'19QS015')
INSERT [dbo].[KyLuat] ([Ma], [HinhThucKyLuat], [LyDo], [Nam], [GhiChu], [MaHV]) VALUES (2, N'Khiển trách', N'Sinh con thứ 3', 2021, NULL, N'1')
INSERT [dbo].[KyLuat] ([Ma], [HinhThucKyLuat], [LyDo], [Nam], [GhiChu], [MaHV]) VALUES (4, N'Cảnh cáo', N'Sinh con thứ 3', 2020, N'abc', N'1')
SET IDENTITY_INSERT [dbo].[KyLuat] OFF
GO
SET IDENTITY_INSERT [dbo].[LaoDongSangTao] ON 

INSERT [dbo].[LaoDongSangTao] ([MaLDST], [TenDeTai], [MaLoaiLDST], [KetQua], [Nam], [MaHV], [XacNhan]) VALUES (1, N'Nghiên cứu ảo hóa mạng SDN ', 3, N'Giấy khen', 2020, N'1875200125', 1)
INSERT [dbo].[LaoDongSangTao] ([MaLDST], [TenDeTai], [MaLoaiLDST], [KetQua], [Nam], [MaHV], [XacNhan]) VALUES (2, N'Khai phá dữ liệu cho điện toán đám mây', 3, N'Giấy khen', 2021, N'19QS015', 1)
INSERT [dbo].[LaoDongSangTao] ([MaLDST], [TenDeTai], [MaLoaiLDST], [KetQua], [Nam], [MaHV], [XacNhan]) VALUES (3, N'Tự động hóa phát triển phần mềm.', 3, N'Giấy khen', 2021, N'19QS044', 1)
INSERT [dbo].[LaoDongSangTao] ([MaLDST], [TenDeTai], [MaLoaiLDST], [KetQua], [Nam], [MaHV], [XacNhan]) VALUES (4, N'Hệ thống đa tác tử', 3, N'Bằng khen', 2021, N'2019010068', 1)
INSERT [dbo].[LaoDongSangTao] ([MaLDST], [TenDeTai], [MaLoaiLDST], [KetQua], [Nam], [MaHV], [XacNhan]) VALUES (5, N'Mạng Nơron nhân tạo trong xử lý dữ liệu ', 3, N'Giấy khen', 2020, N'1875248987', 1)
INSERT [dbo].[LaoDongSangTao] ([MaLDST], [TenDeTai], [MaLoaiLDST], [KetQua], [Nam], [MaHV], [XacNhan]) VALUES (6, N'Phân tích dữ liệu an ninh mạng', 3, N'Giấy khen', 2019, N'18186036', 1)
INSERT [dbo].[LaoDongSangTao] ([MaLDST], [TenDeTai], [MaLoaiLDST], [KetQua], [Nam], [MaHV], [XacNhan]) VALUES (7, N'Kiểm thử phần mềm sử dụng các kỹ thuật tìm kiếm siêu heuristic', 3, N'Giấy khen', 2020, N'19QS015', 1)
INSERT [dbo].[LaoDongSangTao] ([MaLDST], [TenDeTai], [MaLoaiLDST], [KetQua], [Nam], [MaHV], [XacNhan]) VALUES (10, N'Các phương pháp biểu diễn dữ liệu thưa trong xử lý ảnh và tín hiệu.', 3, N'Giấy khen', 2020, N'19QS015', 1)
INSERT [dbo].[LaoDongSangTao] ([MaLDST], [TenDeTai], [MaLoaiLDST], [KetQua], [Nam], [MaHV], [XacNhan]) VALUES (12, N'Mô hình xác suất trong các bài toán ngược của xử lý ảnh', 1, N'Giấy khen', 2022, N'10KC0658', 1)
INSERT [dbo].[LaoDongSangTao] ([MaLDST], [TenDeTai], [MaLoaiLDST], [KetQua], [Nam], [MaHV], [XacNhan]) VALUES (19, N'Xử lý ngôn ngữ tự nhiên', 1, N'Giấy khen', 2019, N'19QS015', 1)
INSERT [dbo].[LaoDongSangTao] ([MaLDST], [TenDeTai], [MaLoaiLDST], [KetQua], [Nam], [MaHV], [XacNhan]) VALUES (21, N'Tính toán kết cấu bằng vật liệu composite áp điện và composite có cơ tính biến thiên', 4, N'Giấy khen', 2022, N'6', 0)
INSERT [dbo].[LaoDongSangTao] ([MaLDST], [TenDeTai], [MaLoaiLDST], [KetQua], [Nam], [MaHV], [XacNhan]) VALUES (22, N'Tối ưu hoá kết cấu', 2, N'Giấy khen', 2023, N'19QS015', 0)
INSERT [dbo].[LaoDongSangTao] ([MaLDST], [TenDeTai], [MaLoaiLDST], [KetQua], [Nam], [MaHV], [XacNhan]) VALUES (23, N'Tải trọng di động và tính toán kết cấu gia cường chịu tải trọng di động', 4, N'Được nghiệm thu', 2023, N'19QS015', 0)
SET IDENTITY_INSERT [dbo].[LaoDongSangTao] OFF
GO
SET IDENTITY_INSERT [dbo].[LichSuCapBac] ON 

INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (1, 7, N'07002922', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (4, 3, N'17QS012', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (5, 4, N'07002967', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (6, 3, N'17QS034', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (7, 6, N'07002987', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (8, 10, N'18186036', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (9, 6, N'18132089', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (10, 9, N'18132466', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (11, 10, N'18123432', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (12, 8, N'14987522', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (13, 8, N'12323123', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (14, 10, N'12376844', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (15, 8, N'12321214', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (16, 6, N'17486525', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (17, 7, N'13840203', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (18, 7, N'18125461', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (19, 6, N'18134243', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (23, 8, N'09322198', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (24, 9, N'09322178', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (25, 7, N'09232321', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (26, 5, N'09248533', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (27, 7, N'09746333', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (28, 9, N'070029225', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (29, 9, N'07002417', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (30, 8, N'10KC0658', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (31, 8, N'10KC0658', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (32, 3, N'18QS008', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (33, 3, N'18QS049', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (34, 3, N'18QS050', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (36, 2, N'2019010068', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (37, 2, N'19QS044', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (38, 1, N'2019010019', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (40, 9, N'12QS0979', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (41, 8, N'12QS0002', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (42, 8, N'137SD587', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (43, 9, N'137SD548', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (44, 8, N'1875248987', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (45, 10, N'1875200125', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (46, 8, N'1254TG5687', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (47, 9, N'1254TG5022', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (48, 8, N'1254TG7889', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (49, 7, N'1254TG0089', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (50, 6, N'1254TSH112', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (51, 9, N'1254TS5687', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (52, 9, N'1254TS5999', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (53, 9, N'5874855999', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (54, 8, N'5874850012', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (55, 6, N'5874858545', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (56, 8, N'58748QS021', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (57, 8, N'58748QS222', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (58, 7, N'125798QS222', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (59, 7, N'154QS222', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (60, 9, N'987QS1225', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (61, 7, N'8785QSI525', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (62, 7, N'8785QSI698', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (63, 9, N'8785QS7845', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (64, 7, N'2250QSI525', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (65, 7, N'8785QSI536', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (66, 8, N'8785EW858', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (67, 8, N'8785QSI799', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (69, 3, N'1', CAST(N'2023-08-19' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (74, 1, N'1', CAST(N'2022-06-09' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (77, 8, N'07002417', CAST(N'2017-08-11' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (78, 2, N'19QS015', CAST(N'2022-06-15' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (81, 3, N'2019010041', CAST(N'2022-08-17' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (82, 4, N'2019010041', CAST(N'2024-01-03' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (83, 1, N'2019010041', CAST(N'2020-07-12' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (85, 2, N'2019010041', CAST(N'2021-08-08' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (86, 3, N'19QS015', CAST(N'2022-07-08' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (87, 3, N'6', CAST(N'2022-08-14' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (88, 4, N'6', CAST(N'2023-09-15' AS Date), 0)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (89, 5, N'19QS015', CAST(N'2023-09-16' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (90, 6, N'19QS015', CAST(N'2024-01-28' AS Date), 0)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (92, 5, N'2019010041', CAST(N'2024-12-27' AS Date), 0)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (93, 1, N'9', CAST(N'2020-02-07' AS Date), 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (94, 3, N'10', NULL, 1)
INSERT [dbo].[LichSuCapBac] ([MaLSCD], [MaCB], [MaHV], [NgayQD], [XacNhan]) VALUES (96, 3, N'11', CAST(N'2022-08-09' AS Date), 1)
SET IDENTITY_INSERT [dbo].[LichSuCapBac] OFF
GO
SET IDENTITY_INSERT [dbo].[LichSuChucDanh] ON 

INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (1, 12, N'07002922', CAST(N'2020-08-12' AS Date), 1, 38)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (2, 12, N'07002938', CAST(N'2020-08-12' AS Date), 1, 38)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (3, 11, N'07002967', CAST(N'2020-08-12' AS Date), 1, 38)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (4, 12, N'07002987', CAST(N'2020-08-12' AS Date), 1, 38)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (5, 12, N'18186036', CAST(N'2020-08-12' AS Date), 1, 1)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (6, 9, N'18132089', CAST(N'2020-08-12' AS Date), 1, 1)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (7, 9, N'18132466', CAST(N'2020-08-12' AS Date), 1, 1)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (8, 12, N'18123432', CAST(N'2020-08-12' AS Date), 1, 1)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (9, 12, N'14987522', CAST(N'2020-08-12' AS Date), 1, 1)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (10, 12, N'12323123', CAST(N'2020-08-12' AS Date), 1, 1)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (11, 12, N'13424244', CAST(N'2020-08-12' AS Date), 1, 1)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (12, 12, N'12376844', CAST(N'2020-08-12' AS Date), 1, 1)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (13, 12, N'12321214', CAST(N'2020-08-12' AS Date), 1, 1)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (14, 12, N'15252521', CAST(N'2020-08-12' AS Date), 1, 38)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (15, 13, N'15469273', CAST(N'2020-08-12' AS Date), 1, 38)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (16, 9, N'17486525', CAST(N'2020-08-12' AS Date), 1, 38)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (17, 9, N'13840203', CAST(N'2020-08-12' AS Date), 1, 38)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (18, 12, N'18125461', CAST(N'2020-08-12' AS Date), 1, 1)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (19, 12, N'18134243', CAST(N'2020-08-12' AS Date), 1, 1)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (20, 12, N'09322198', CAST(N'2020-08-12' AS Date), 1, 8)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (21, 9, N'09322178', CAST(N'2020-08-12' AS Date), 1, 8)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (22, 11, N'09232321', CAST(N'2020-08-12' AS Date), 1, 8)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (23, 10, N'09248533', CAST(N'2020-08-12' AS Date), 1, 8)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (24, 12, N'09746333', CAST(N'2020-08-12' AS Date), 1, 8)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (25, 12, N'070029225', CAST(N'2020-08-12' AS Date), 1, 36)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (26, 12, N'07002417', CAST(N'2023-09-09' AS Date), 1, 36)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (27, 12, N'10KC0658', CAST(N'2020-08-12' AS Date), 1, 36)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (28, 14, N'12QS0979', CAST(N'2020-08-12' AS Date), 1, 16)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (29, 12, N'12QS0002', CAST(N'2020-08-12' AS Date), 1, 16)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (30, 12, N'137SD587', CAST(N'2020-08-12' AS Date), 1, 16)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (31, 14, N'137SD548', CAST(N'2020-08-12' AS Date), 1, 16)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (32, 12, N'1875248987', CAST(N'2020-08-12' AS Date), 1, 16)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (33, 14, N'1875200125', CAST(N'2020-08-12' AS Date), 1, 16)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (34, 12, N'1254TG5687', CAST(N'2020-08-12' AS Date), 1, 16)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (35, 14, N'1254TG5022', CAST(N'2020-08-12' AS Date), 1, 16)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (36, 12, N'1254TG7889', CAST(N'2020-08-12' AS Date), 1, 16)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (37, 12, N'1254TG0089', CAST(N'2020-08-12' AS Date), 1, 16)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (38, 12, N'1254TSH112', CAST(N'2020-08-12' AS Date), 1, 6)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (39, 12, N'1254TS5687', CAST(N'2020-08-12' AS Date), 1, 8)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (40, 12, N'1254TS5999', CAST(N'2020-08-12' AS Date), 1, 8)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (41, 12, N'5874855999', CAST(N'2020-08-12' AS Date), 1, 8)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (42, 12, N'5874850012', CAST(N'2020-08-12' AS Date), 1, 8)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (43, 12, N'5874858545', CAST(N'2020-08-12' AS Date), 1, 8)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (44, 12, N'58748QS021', CAST(N'2020-08-12' AS Date), 1, 14)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (45, 12, N'58748QS222', CAST(N'2020-08-12' AS Date), 1, 36)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (46, 12, N'125798QS222', CAST(N'2020-08-12' AS Date), 1, 36)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (47, 12, N'154QS222', CAST(N'2020-08-12' AS Date), 1, 36)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (48, 12, N'987QS1225', CAST(N'2020-08-12' AS Date), 1, 36)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (49, 12, N'8785QSI525', CAST(N'2020-08-12' AS Date), 1, 36)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (50, 12, N'8785QSI698', CAST(N'2020-08-12' AS Date), 1, 16)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (51, 12, N'8785QS7845', CAST(N'2020-08-12' AS Date), 1, 16)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (52, 12, N'2250QSI525', CAST(N'2020-08-12' AS Date), 1, 16)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (53, 12, N'8785QSI536', CAST(N'2020-08-12' AS Date), 1, 16)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (54, 12, N'8785EW858', CAST(N'2020-08-12' AS Date), 1, 16)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (55, 12, N'8785QSI799', CAST(N'2020-08-12' AS Date), 1, 16)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (56, 10, N'07002417', CAST(N'2023-09-01' AS Date), 1, 36)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (57, 12, N'07002417', CAST(N'2021-12-09' AS Date), 1, 36)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (58, 12, N'6', CAST(N'2023-09-03' AS Date), 1, 36)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (60, 9, N'19QS015', CAST(N'2023-09-15' AS Date), 1, 1)
INSERT [dbo].[LichSuChucDanh] ([MaLSCD], [MaCD], [MaHV], [NgayQD], [XacNhan], [MaDV]) VALUES (61, 10, N'07002417', CAST(N'2023-09-09' AS Date), 0, 37)
SET IDENTITY_INSERT [dbo].[LichSuChucDanh] OFF
GO
SET IDENTITY_INSERT [dbo].[LichSuDanhHieu] ON 

INSERT [dbo].[LichSuDanhHieu] ([MaLSDH], [MaDH], [MaHV], [NgayQD], [XacNhan]) VALUES (1, 3, N'12QS0979', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuDanhHieu] ([MaLSDH], [MaDH], [MaHV], [NgayQD], [XacNhan]) VALUES (2, 3, N'137SD548', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuDanhHieu] ([MaLSDH], [MaDH], [MaHV], [NgayQD], [XacNhan]) VALUES (3, 3, N'1875200125', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuDanhHieu] ([MaLSDH], [MaDH], [MaHV], [NgayQD], [XacNhan]) VALUES (4, 2, N'1254TG5022', CAST(N'2020-08-12' AS Date), 1)
SET IDENTITY_INSERT [dbo].[LichSuDanhHieu] OFF
GO
SET IDENTITY_INSERT [dbo].[LichSuTrinhDo] ON 

INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (1, 2, N'07002922', N'Cơ khí', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (2, 2, N'07002938', N'Chế tạo máy', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (3, 4, N'20QS044', N'Thông tin', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (4, 4, N'17QS012', N'Thông tin', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (5, 2, N'07002967', NULL, N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (6, 4, N'17QS034', N'Thông tin', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (7, 2, N'07002987', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (8, 3, N'18186036', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (9, 5, N'18132089', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (10, 5, N'18132466', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (11, 3, N'18123432', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (12, 4, N'14987522', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (13, 3, N'12323123', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (14, 1, N'13424244', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (15, 3, N'12376844', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (16, 2, N'12321214', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (17, 2, N'15252521', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (18, 2, N'15469273', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (19, 3, N'17486525', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (20, 3, N'13840203', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (21, 2, N'18125461', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (22, 3, N'18134243', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (23, 2, N'09322198', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (24, 2, N'09322178', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (25, 3, N'09232321', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (26, 4, N'09248533', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (27, 4, N'09746333', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (28, 2, N'070029225', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (29, 2, N'07002417', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-14' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (30, 1, N'10KC0658', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (31, 4, N'18QS008', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (32, 4, N'18QS049', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (33, 4, N'18QS050', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (34, 4, N'19QS015', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (35, 4, N'2019010068', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (36, 4, N'2019010019', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (37, 4, N'2019010041', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (38, 4, N'19QS044', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (39, 5, N'12QS0979', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (40, 4, N'12QS0002', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (41, 4, N'137SD587', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (42, 6, N'137SD548', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (43, 3, N'1875248987', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (44, 6, N'1875200125', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (45, 5, N'1254TG5687', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (46, 6, N'1254TG5022', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (47, 3, N'1254TG7889', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (48, 3, N'1254TG0089', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (49, 4, N'1254TSH112', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (50, 4, N'1254TS5687', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (51, 5, N'1254TS5999', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (52, 5, N'5874855999', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (53, 4, N'5874850012', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (54, 3, N'5874858545', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (55, 4, N'58748QS021', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (56, 4, N'58748QS222', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (57, 3, N'125798QS222', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (58, 3, N'154QS222', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (59, 4, N'987QS1225', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (60, 4, N'8785QSI525', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (61, 4, N'8785QSI698', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (62, 4, N'8785QS7845', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (63, 4, N'2250QSI525', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (64, 4, N'8785QSI536', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (65, 4, N'8785EW858', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (66, 4, N'8785QSI799', N'CNTT', N'Học viện Kỹ thuật quân sự', CAST(N'2020-08-12' AS Date), 1)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (71, 4, N'6', N'CNTT', N'Học viện Kỹ thuật Quân sự', CAST(N'2023-09-24' AS Date), 0)
INSERT [dbo].[LichSuTrinhDo] ([MaLSTD], [MaTD], [MaHV], [NganhHoc], [TruongCap], [NgayQD], [XacNhan]) VALUES (72, 5, N'19QS015', N'CNTT', N'Học viện Kỹ thuật Quân sự', CAST(N'2023-09-22' AS Date), 0)
SET IDENTITY_INSERT [dbo].[LichSuTrinhDo] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiDangVien] ON 

INSERT [dbo].[LoaiDangVien] ([MaLDV], [TenLDV]) VALUES (1, N'Đảng viên chính thức')
INSERT [dbo].[LoaiDangVien] ([MaLDV], [TenLDV]) VALUES (2, N'Đảng viên dự bị')
INSERT [dbo].[LoaiDangVien] ([MaLDV], [TenLDV]) VALUES (3, N'Chưa kết nạp đảng')
INSERT [dbo].[LoaiDangVien] ([MaLDV], [TenLDV]) VALUES (4, N'abc')
SET IDENTITY_INSERT [dbo].[LoaiDangVien] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiHoatDong] ON 

INSERT [dbo].[LoaiHoatDong] ([MaLoaiHoatDong], [TenLoaiHoatDong]) VALUES (1, N'Hoạt động ủng hộ, đền ơn đáp nghĩa')
INSERT [dbo].[LoaiHoatDong] ([MaLoaiHoatDong], [TenLoaiHoatDong]) VALUES (2, N'Hoạt động phong trào, chăm sóc sức khỏe hội viên')
INSERT [dbo].[LoaiHoatDong] ([MaLoaiHoatDong], [TenLoaiHoatDong]) VALUES (3, N'Hoạt động chăm lo, giúp đỡ hội viên')
SET IDENTITY_INSERT [dbo].[LoaiHoatDong] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiHoiVien] ON 

INSERT [dbo].[LoaiHoiVien] ([MaLHV], [TenLHV]) VALUES (1, N'Sĩ quan')
INSERT [dbo].[LoaiHoiVien] ([MaLHV], [TenLHV]) VALUES (2, N'Quân nhân chuyên nghiệp')
INSERT [dbo].[LoaiHoiVien] ([MaLHV], [TenLHV]) VALUES (3, N'Công nhân viên Quốc phòng')
INSERT [dbo].[LoaiHoiVien] ([MaLHV], [TenLHV]) VALUES (4, N'Lao động hợp đồng')
INSERT [dbo].[LoaiHoiVien] ([MaLHV], [TenLHV]) VALUES (5, N'Học viên')
SET IDENTITY_INSERT [dbo].[LoaiHoiVien] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiLDST] ON 

INSERT [dbo].[LoaiLDST] ([MaLoaiLDST], [TenLoaiLDST]) VALUES (1, N'Đề tài cấp Nhà nước')
INSERT [dbo].[LoaiLDST] ([MaLoaiLDST], [TenLoaiLDST]) VALUES (2, N'Đề tài cấp Bộ quốc phòng')
INSERT [dbo].[LoaiLDST] ([MaLoaiLDST], [TenLoaiLDST]) VALUES (3, N'Đề tài cấp Học viện')
INSERT [dbo].[LoaiLDST] ([MaLoaiLDST], [TenLoaiLDST]) VALUES (4, N'Đề tài cấp cơ sở')
INSERT [dbo].[LoaiLDST] ([MaLoaiLDST], [TenLoaiLDST]) VALUES (5, N'Sáng kiến cải tiến kỹ thuật')
SET IDENTITY_INSERT [dbo].[LoaiLDST] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSinhHoat] ON 

INSERT [dbo].[LoaiSinhHoat] ([MaLoaiSinhHoat], [TenSinhHoat]) VALUES (1, N'Tổng kết phong trào thi đua hoạt động phụ nữ năm học 2022-2023')
INSERT [dbo].[LoaiSinhHoat] ([MaLoaiSinhHoat], [TenSinhHoat]) VALUES (2, N'Đề xuất phương án hành động tháng 10')
INSERT [dbo].[LoaiSinhHoat] ([MaLoaiSinhHoat], [TenSinhHoat]) VALUES (3, N'Đề xuất phương án hành động tháng 1')
INSERT [dbo].[LoaiSinhHoat] ([MaLoaiSinhHoat], [TenSinhHoat]) VALUES (6, N'Đề xuất phương án hành động tháng 3')
INSERT [dbo].[LoaiSinhHoat] ([MaLoaiSinhHoat], [TenSinhHoat]) VALUES (7, N'Tổng kết phong trào thi đua năm 2023')
SET IDENTITY_INSERT [dbo].[LoaiSinhHoat] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiTinBai] ON 

INSERT [dbo].[LoaiTinBai] ([MaLoaiTinbai], [TenLoaiTinBai]) VALUES (1, N'Gương người tốt, việc tốt')
INSERT [dbo].[LoaiTinBai] ([MaLoaiTinbai], [TenLoaiTinBai]) VALUES (2, N'Tin hoạt động')
INSERT [dbo].[LoaiTinBai] ([MaLoaiTinbai], [TenLoaiTinBai]) VALUES (3, N'Hoạt động học tập, NCKH')
SET IDENTITY_INSERT [dbo].[LoaiTinBai] OFF
GO
SET IDENTITY_INSERT [dbo].[NoiNhan] ON 

INSERT [dbo].[NoiNhan] ([Ma], [MaHPN], [MaCongVan]) VALUES (1, 1, 1)
INSERT [dbo].[NoiNhan] ([Ma], [MaHPN], [MaCongVan]) VALUES (2, 2, 1)
INSERT [dbo].[NoiNhan] ([Ma], [MaHPN], [MaCongVan]) VALUES (3, 3, 1)
INSERT [dbo].[NoiNhan] ([Ma], [MaHPN], [MaCongVan]) VALUES (4, 4, 1)
INSERT [dbo].[NoiNhan] ([Ma], [MaHPN], [MaCongVan]) VALUES (5, 5, 1)
INSERT [dbo].[NoiNhan] ([Ma], [MaHPN], [MaCongVan]) VALUES (6, 1, 2)
INSERT [dbo].[NoiNhan] ([Ma], [MaHPN], [MaCongVan]) VALUES (7, 2, 2)
INSERT [dbo].[NoiNhan] ([Ma], [MaHPN], [MaCongVan]) VALUES (8, 3, 2)
INSERT [dbo].[NoiNhan] ([Ma], [MaHPN], [MaCongVan]) VALUES (9, 0, 3)
INSERT [dbo].[NoiNhan] ([Ma], [MaHPN], [MaCongVan]) VALUES (10, 1, 4)
INSERT [dbo].[NoiNhan] ([Ma], [MaHPN], [MaCongVan]) VALUES (11, 2, 4)
INSERT [dbo].[NoiNhan] ([Ma], [MaHPN], [MaCongVan]) VALUES (12, 3, 4)
INSERT [dbo].[NoiNhan] ([Ma], [MaHPN], [MaCongVan]) VALUES (13, 0, 5)
INSERT [dbo].[NoiNhan] ([Ma], [MaHPN], [MaCongVan]) VALUES (14, 1, 6)
INSERT [dbo].[NoiNhan] ([Ma], [MaHPN], [MaCongVan]) VALUES (15, 0, 7)
INSERT [dbo].[NoiNhan] ([Ma], [MaHPN], [MaCongVan]) VALUES (16, 0, 8)
INSERT [dbo].[NoiNhan] ([Ma], [MaHPN], [MaCongVan]) VALUES (17, 3, 8)
INSERT [dbo].[NoiNhan] ([Ma], [MaHPN], [MaCongVan]) VALUES (18, 0, 9)
SET IDENTITY_INSERT [dbo].[NoiNhan] OFF
GO
SET IDENTITY_INSERT [dbo].[PhongTraoThiDua] ON 

INSERT [dbo].[PhongTraoThiDua] ([Ma], [TenPhongTraoThiDua], [NgayBatDau], [NgayKetThuc], [SoLuongDeCu], [Khoa]) VALUES (1, N'Phong trào thi đua lập thành tích chào  mừng ngày thành lập QĐND Việt Nam 22/12', CAST(N'2022-10-20' AS Date), CAST(N'2022-12-22' AS Date), 30, 0)
INSERT [dbo].[PhongTraoThiDua] ([Ma], [TenPhongTraoThiDua], [NgayBatDau], [NgayKetThuc], [SoLuongDeCu], [Khoa]) VALUES (4, N'Phong trào thi đua chào mừng 65 năm ngày thành lập Học viên', CAST(N'2023-09-10' AS Date), CAST(N'2023-10-30' AS Date), 20, 0)
SET IDENTITY_INSERT [dbo].[PhongTraoThiDua] OFF
GO
SET IDENTITY_INSERT [dbo].[SinhHoat] ON 

INSERT [dbo].[SinhHoat] ([MaSinhHoat], [NgaySinhHoat], [NoiDung], [MaHPN], [MaLoaiSinhHoat], [SoLuongVang]) VALUES (1, CAST(N'2023-01-08' AS Date), N'Tổng kết phong trào thi đua hoạt động phụ nữ năm học 2022-2023', 5, 1, 2)
INSERT [dbo].[SinhHoat] ([MaSinhHoat], [NgaySinhHoat], [NoiDung], [MaHPN], [MaLoaiSinhHoat], [SoLuongVang]) VALUES (2, CAST(N'2023-01-03' AS Date), N'Tổng kết phong trào thi đua hoạt động phụ nữ năm học 2022-2023', 2, 1, 1)
INSERT [dbo].[SinhHoat] ([MaSinhHoat], [NgaySinhHoat], [NoiDung], [MaHPN], [MaLoaiSinhHoat], [SoLuongVang]) VALUES (8, CAST(N'2024-03-02' AS Date), N'Tổng kết phong trào thi đua hoạt động phụ nữ năm học 2022-2023', 1, 1, 1)
INSERT [dbo].[SinhHoat] ([MaSinhHoat], [NgaySinhHoat], [NoiDung], [MaHPN], [MaLoaiSinhHoat], [SoLuongVang]) VALUES (9, CAST(N'2024-03-15' AS Date), N'Đề xuất phương án hành động t10/2022', 0, 2, 1)
INSERT [dbo].[SinhHoat] ([MaSinhHoat], [NgaySinhHoat], [NoiDung], [MaHPN], [MaLoaiSinhHoat], [SoLuongVang]) VALUES (16, CAST(N'2024-03-21' AS Date), N'Đề xuất phương án hành động tháng 1', 0, 3, 3)
SET IDENTITY_INSERT [dbo].[SinhHoat] OFF
GO
SET IDENTITY_INSERT [dbo].[SinhHoat_Vang] ON 

INSERT [dbo].[SinhHoat_Vang] ([MaSH_V], [MaSinhHoat], [MaHV]) VALUES (1, 1, N'1254TSH112')
INSERT [dbo].[SinhHoat_Vang] ([MaSH_V], [MaSinhHoat], [MaHV]) VALUES (2, 1, N'58748QS222')
INSERT [dbo].[SinhHoat_Vang] ([MaSH_V], [MaSinhHoat], [MaHV]) VALUES (8, 8, N'09248533')
INSERT [dbo].[SinhHoat_Vang] ([MaSH_V], [MaSinhHoat], [MaHV]) VALUES (9, 8, N'10KC0658')
INSERT [dbo].[SinhHoat_Vang] ([MaSH_V], [MaSinhHoat], [MaHV]) VALUES (10, 16, N'12321214')
INSERT [dbo].[SinhHoat_Vang] ([MaSH_V], [MaSinhHoat], [MaHV]) VALUES (11, 16, N'09322178')
INSERT [dbo].[SinhHoat_Vang] ([MaSH_V], [MaSinhHoat], [MaHV]) VALUES (24, 16, N'12323123')
INSERT [dbo].[SinhHoat_Vang] ([MaSH_V], [MaSinhHoat], [MaHV]) VALUES (25, 9, N'12376844')
SET IDENTITY_INSERT [dbo].[SinhHoat_Vang] OFF
GO
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'987QS1225', N'1b56cde4e95bd5a76a8e676cd1c0280d', 3, N'987QS1225', CAST(N'2023-04-22T16:25:52.590' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'admin', N'c4ca4238a0b923820dcc509a6f75849b', 1, N'1', CAST(N'2021-07-08T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'buimailinh', N'87c24cd4963fbe9e0f522608b51c87ec', 3, N'5874855999', CAST(N'2023-04-22T16:25:52.590' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'buitiencuong', N'31bd8219680d0465365539e1b1608828', 3, N'09232321', CAST(N'2021-07-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'chankiet', N'7323052e6af67a93067ff3d4ee489489', 3, N'1254TG7889', CAST(N'2023-04-22T16:25:52.590' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'dammai', N'c4ca4238a0b923820dcc509a6f75849b', 3, N'137SD548', CAST(N'2023-04-22T16:25:52.590' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'damthitonga', N'ba4946878a66fd75e46e48abdfabc197', 3, N'18123432', CAST(N'2021-07-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'dinhthihang', N'bfaca7c76f8260c21e458a5363a66676', 2, N'07002938', CAST(N'2021-07-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'dinhthilanthanh', N'fe95ceda670a53d776d0dc13d87dfe04', 3, N'12376844', CAST(N'2021-07-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'dinhthithuhuong', N'a29f321c8363f13a19925cb19c8beff9', 3, N'17QS034', CAST(N'2021-07-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'duongquynhanh', N'12bdaa90abd43ac3212cfd405dde3fc7', 3, N'12323123', CAST(N'2021-07-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'haidang', N'3099f479583440df324a30a2f57598a3', 3, N'2019010019', CAST(N'2023-04-22T16:25:52.590' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'hhyen', N'a87ff679a2f3e71d9181a67b7542122c', 3, N'07002417', CAST(N'2023-04-22T16:25:52.587' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'hongquan', N'c4aa3c3692807f528451d33d31cb831d', 3, N'1254TG5687', CAST(N'2023-04-22T16:25:52.590' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'hongtham', N'8f14e45fceea167a5a36dedd4bea2543', 2, N'1875200125', CAST(N'2023-04-22T16:25:52.590' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'khoinguyen', N'6cb9d39523ea110caab75f871e7a2f6c', 3, N'1254TG5022', CAST(N'2023-04-22T16:25:52.590' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'khongquanghuy', N'260db79e296b7d19ce1584ee3198865d', 3, N'18QS050', CAST(N'2023-04-22T16:25:52.587' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'lananh', N'6e007f8d232ac1d1158c817af46af797', 3, N'12QS0002', CAST(N'2023-04-22T16:25:52.590' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'ledaiduong', N'412f21f833a82aa0983c3241258f07bf', 3, N'1254TS5687', CAST(N'2023-04-22T16:25:52.590' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'leminhthu', N'878424eb60ea2a1f03aeb55ca8c40962', 3, N'18132089', CAST(N'2021-07-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'lenguyennhutnam', N'324c6b4cdd36df9aeb562b382453847b', 3, N'1254TSH112', CAST(N'2023-04-22T16:25:52.590' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'lethilananh', N'3003b7d838663d7a40cda98729952686', 3, N'14987522', CAST(N'2021-07-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'lethitruong', N'c031554b27f80a2091186f01fe93fe41', 3, N'07002967', CAST(N'2021-07-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'linhthao', N'199d2cbdcd964c34142d190caf9d194b', 3, N'10KC0658', CAST(N'2023-04-22T16:25:52.587' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'mailinh', N'ed265d464e43c2ddb5702cd0a63c4cd8', 2, N'5874850012', CAST(N'2023-04-22T16:25:52.590' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'minhtuc157', N'c4ca4238a0b923820dcc509a6f75849b', 3, N'11', CAST(N'2023-10-09T11:46:45.080' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'ngocbach', N'9c82da89b7968a943ce413f5b14fdeed', 3, N'1875248987', CAST(N'2023-04-22T16:25:52.590' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'ngochien', N'cb7337ad48a22df1eda92b9b2994ac42', 3, N'154QS222', CAST(N'2023-04-22T16:25:52.590' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'ngoctrinh', N'67bbdf22c2685afaed0f2b239f16adc5', 3, N'2250QSI525', CAST(N'2023-04-22T16:25:52.590' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'ngoha', N'07ad4374e048a053f15f9e88aff54ced', 3, N'8785QS7845', CAST(N'2023-04-22T16:25:52.590' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'nguyenducthang', N'9f9abc0b37a6f3688a55f3829eec9981', 3, N'15252521', CAST(N'2021-07-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'nguyenhaiha', N'5195eb6e45fd64681c9d6175613457aa', 3, N'18132466', CAST(N'2021-07-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'nguyenhuuthanh', N'f5e33b710d7dacc06da4912a7fbde299', 3, N'09322198', CAST(N'2021-07-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'nguyenminhduc', N'534615f848b726d60a0641204d778e14', 3, N'15469273', CAST(N'2021-07-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'nguyenngocanh', N'fbb6af53c58e299140263ed965846cf9', 3, N'09248533', CAST(N'2021-07-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'nguyenthanhminh', N'12e01ad8279930c494cad507896fd25b', 3, N'13840203', CAST(N'2021-07-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'nguyenthibichhanh', N'd9707595e6d6dd83937c4e15b15bf6bf', 2, N'18186036', CAST(N'2021-07-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'nguyenthicuc', N'13610b381ca016cf031ea6181d43ec6e', 3, N'13424244', CAST(N'2021-07-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'nguyenthihien', N'13eb0f57069a770867aec10c097639db', 3, N'125798QS222', CAST(N'2023-04-22T16:25:52.590' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'nguyenthihongvy', N'a679ed2ecba33666200a568a85b6d7af', 3, N'20QS044', CAST(N'2021-07-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'nguyenthithuy', N'9d756e84cd4376a09590b1196147a929', 3, N'12321214', CAST(N'2021-07-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'nguyenthituyet', N'bec1afa9a6f08486fe6195a1269df6c9', 2, N'07002922', CAST(N'2021-07-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'nguyentiendung', N'c3501069be40abd92f3f9bf3c04a13ee', 3, N'18125461', CAST(N'2021-07-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'nhuhuynh', N'6af8ed9ea47d91b6107400364174ce19', 3, N'10', CAST(N'2023-10-09T09:54:58.863' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'nquoctruong', N'e937bb9677a9e818caec1e2ad5edd878', 3, N'58748QS222', CAST(N'2023-04-22T16:25:52.590' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'phamducanh', N'58de8573977294b5303817fa738c381b', 3, N'18QS049', CAST(N'2023-04-22T16:25:52.587' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'phamducthinh', N'6d6cff944890dc7551a61fced26045e6', 3, N'1254TS5999', CAST(N'2023-04-22T16:25:52.590' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'phamkienthanh', N'1679091c5a880faf6fb5e6087eb1b2dc', 3, N'6', CAST(N'2023-09-10T15:19:22.937' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'phamquocviet', N'c81e728d9d4c2f636f067f89cc14862c', 2, N'070029225', CAST(N'2023-04-22T16:25:52.587' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'phanhoanganh', N'63489a370d7264a80c4e57783bb8b291', 3, N'18134243', CAST(N'2021-07-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'phucuong', N'e256fad2ee4b7160fc3de5c35dd153dd', 3, N'2019010068', CAST(N'2023-04-22T16:25:52.587' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'phuonganh', N'1e8107e1a396b6b18c4fea98381c511a', 3, N'5874858545', CAST(N'2023-04-22T16:25:52.590' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'sasa', N'ec2e877ec40e45643853951ccbc98323', 3, N'12QS0979', CAST(N'2023-04-22T16:25:52.590' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'saud1', N'c4ca4238a0b923820dcc509a6f75849b', 2, N'070029225', CAST(N'2021-07-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'songhuong', N'a938145d95f90015667940df75155b9b', 3, N'8785QSI536', CAST(N'2023-04-22T16:25:52.593' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'thamthihongminh', N'f2cd9970d7c8a83ff42fa8f092a111c6', 3, N'07002987', CAST(N'2021-07-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'thanhhuyen', N'e4da3b7fbbce2345d7772b0674a318d5', 3, N'19QS015', CAST(N'2023-04-22T16:25:52.587' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'thanhthuy', N'd380beac35b292e49c8d3e5a53570bd0', 3, N'8785QSI525', CAST(N'2023-04-22T16:25:52.590' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'thuha', N'eccbc87e4b5ce2fe28308fd9f2a7baf3', 2, N'2019010041', CAST(N'2023-04-22T16:25:52.590' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'thuhuong', N'c23390a68b45333ed6543a50518c0545', 3, N'8785QSI698', CAST(N'2023-04-22T16:25:52.590' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'thutra', N'd38dabe56a8b18e94a821fd4ed44ca19', 3, N'1254TG0089', CAST(N'2023-04-22T16:25:52.590' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'thuynga', N'199100c49bb31c6d136f700cc2bcacf0', 3, N'137SD587', CAST(N'2023-04-22T16:25:52.590' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'tientruong', N'a99778d758b0b016129a2d526df84124', 3, N'58748QS021', CAST(N'2023-04-22T16:25:52.590' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'trandinhmanh', N'90211ae45c24acf670c1f44f397e5536', 3, N'17486525', CAST(N'2021-07-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'tranhuyendieu', N'6cd8f70e39c7f04b78dd9b495c21ac2d', 3, N'09746333', CAST(N'2021-07-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'tranthihue', N'91cc3d0d3931ec683f65714794c2a6ef', 3, N'17QS012', CAST(N'2021-07-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'trantiendung', N'f9530238bfb5f85d7998346b108d1a3c', 3, N'19QS044', CAST(N'2023-04-22T16:25:52.590' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'trinhtrinh', N'810003dcc3bb556b8e297f5bf0848e36', 3, N'8785EW858', CAST(N'2023-04-22T16:25:52.593' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'tutu', N'ea8580a09d220992ae97eb16c438f145', 3, N'9', CAST(N'2023-10-09T07:37:24.580' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'vansang', N'4ac5cc089d2f26d9da20f174bfc3e9ae', 3, N'18QS008', CAST(N'2023-04-22T16:25:52.587' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'vantai', N'33710e0642bb1726ce9124880aeec9eb', 3, N'8785QSI799', CAST(N'2023-04-22T16:25:52.593' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaHV], [EditTime], [Khoa]) VALUES (N'vuvanhanh', N'c4aa3c3692807f528451d33d31cb831d', 3, N'09322178', CAST(N'2021-07-28T00:00:00.000' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[ThamGia] ON 

INSERT [dbo].[ThamGia] ([Ma], [HoTen], [DonVi], [MaLDST], [VaiTro], [MaHV]) VALUES (8, N'Chu Thị Hường', N'V4', 1, N'Chủ trì', N'1875200125')
INSERT [dbo].[ThamGia] ([Ma], [HoTen], [DonVi], [MaLDST], [VaiTro], [MaHV]) VALUES (9, N'Nguyễn Thị Vân', N'd1', 1, N'Tham gia', NULL)
INSERT [dbo].[ThamGia] ([Ma], [HoTen], [DonVi], [MaLDST], [VaiTro], [MaHV]) VALUES (10, N'Bùi Thị Thoa', N'd1', 2, N'Chủ trì', N'19QS015')
INSERT [dbo].[ThamGia] ([Ma], [HoTen], [DonVi], [MaLDST], [VaiTro], [MaHV]) VALUES (11, N'Đỗ Thị Diệp', N'd1', 2, N'Tham gia', NULL)
INSERT [dbo].[ThamGia] ([Ma], [HoTen], [DonVi], [MaLDST], [VaiTro], [MaHV]) VALUES (12, N'Triệu Thúy Hằng', N'd1', 2, N'Tham gia', NULL)
INSERT [dbo].[ThamGia] ([Ma], [HoTen], [DonVi], [MaLDST], [VaiTro], [MaHV]) VALUES (13, N'Nông Thị Trang', N'd1', 3, N'Chủ trì', N'19QS044')
INSERT [dbo].[ThamGia] ([Ma], [HoTen], [DonVi], [MaLDST], [VaiTro], [MaHV]) VALUES (14, N'Nguyễn Thị Nga', N'd1', 3, N'Tham gia', NULL)
INSERT [dbo].[ThamGia] ([Ma], [HoTen], [DonVi], [MaLDST], [VaiTro], [MaHV]) VALUES (15, N'Đào Việt Hà', N'd1', 4, N'Chủ trì', N'2019010068')
INSERT [dbo].[ThamGia] ([Ma], [HoTen], [DonVi], [MaLDST], [VaiTro], [MaHV]) VALUES (16, N'Đỗ Phương Loan', N'V4', 5, N'Chủ trì', N'1875248987')
INSERT [dbo].[ThamGia] ([Ma], [HoTen], [DonVi], [MaLDST], [VaiTro], [MaHV]) VALUES (17, N'Nguyễn Thị Bích Hạnh', N'P1', 6, N'Chủ trì', N'18186036')
INSERT [dbo].[ThamGia] ([Ma], [HoTen], [DonVi], [MaLDST], [VaiTro], [MaHV]) VALUES (18, N'Bùi Thị Thoa', N'd1', 7, N'Chủ trì', N'19QS015')
INSERT [dbo].[ThamGia] ([Ma], [HoTen], [DonVi], [MaLDST], [VaiTro], [MaHV]) VALUES (19, N'Nguyễn Thu Phương', N'd1', 7, N'Tham gia', N'1254TS5687')
INSERT [dbo].[ThamGia] ([Ma], [HoTen], [DonVi], [MaLDST], [VaiTro], [MaHV]) VALUES (20, N'Bùi Thị Thoa', N'd1', 10, N'Chủ trì', N'19QS015')
INSERT [dbo].[ThamGia] ([Ma], [HoTen], [DonVi], [MaLDST], [VaiTro], [MaHV]) VALUES (21, N'Đỗ Thị Diệp', N'd1', 10, N'Tham gia', NULL)
INSERT [dbo].[ThamGia] ([Ma], [HoTen], [DonVi], [MaLDST], [VaiTro], [MaHV]) VALUES (22, N'Nguyễn Thị Vân', N'd1', 10, N'Tham gia', NULL)
INSERT [dbo].[ThamGia] ([Ma], [HoTen], [DonVi], [MaLDST], [VaiTro], [MaHV]) VALUES (26, N'Phạm Thị Nguyệt', N'd1', 12, N'Chủ trì', N'10KC0658')
INSERT [dbo].[ThamGia] ([Ma], [HoTen], [DonVi], [MaLDST], [VaiTro], [MaHV]) VALUES (27, N'Bùi Thị Thoa', N'd1', 12, N'Tham gia', N'19QS015')
INSERT [dbo].[ThamGia] ([Ma], [HoTen], [DonVi], [MaLDST], [VaiTro], [MaHV]) VALUES (28, N'a', N'a', 12, N'Tham gia', NULL)
INSERT [dbo].[ThamGia] ([Ma], [HoTen], [DonVi], [MaLDST], [VaiTro], [MaHV]) VALUES (48, N'Bùi Thị Thoa', N'd1', 19, N'Chủ trì', N'19QS015')
INSERT [dbo].[ThamGia] ([Ma], [HoTen], [DonVi], [MaLDST], [VaiTro], [MaHV]) VALUES (49, N'Nguyễn Thị Huyền Trang', N'd1', 19, N'Tham gia', N'2019010041')
INSERT [dbo].[ThamGia] ([Ma], [HoTen], [DonVi], [MaLDST], [VaiTro], [MaHV]) VALUES (50, N'Nguyễn Thị Vân', N'd1', 19, N'Tham gia', N'')
INSERT [dbo].[ThamGia] ([Ma], [HoTen], [DonVi], [MaLDST], [VaiTro], [MaHV]) VALUES (54, N'Nguyễn Thị A', N'd1', 21, N'Chủ trì', N'6')
INSERT [dbo].[ThamGia] ([Ma], [HoTen], [DonVi], [MaLDST], [VaiTro], [MaHV]) VALUES (55, N'Nguyễn Thị Vân', N'd1', 21, N'Tham gia', N'')
INSERT [dbo].[ThamGia] ([Ma], [HoTen], [DonVi], [MaLDST], [VaiTro], [MaHV]) VALUES (56, N'Đỗ Thị Diệp', N'd1', 21, N'Tham gia', N'')
INSERT [dbo].[ThamGia] ([Ma], [HoTen], [DonVi], [MaLDST], [VaiTro], [MaHV]) VALUES (57, N'Bùi Thị Thoa', N'd1', 22, N'Chủ trì', N'19QS015')
INSERT [dbo].[ThamGia] ([Ma], [HoTen], [DonVi], [MaLDST], [VaiTro], [MaHV]) VALUES (58, N'Đỗ Thị Diệp', N'd1', 22, N'Tham gia', N'')
INSERT [dbo].[ThamGia] ([Ma], [HoTen], [DonVi], [MaLDST], [VaiTro], [MaHV]) VALUES (59, N'Nguyễn Thị Vân', N'd1', 22, N'Tham gia', N'')
INSERT [dbo].[ThamGia] ([Ma], [HoTen], [DonVi], [MaLDST], [VaiTro], [MaHV]) VALUES (60, N'Bùi Thị Thoa', N'd1', 23, N'Chủ trì', N'19QS015')
SET IDENTITY_INSERT [dbo].[ThamGia] OFF
GO
SET IDENTITY_INSERT [dbo].[TinBai] ON 

INSERT [dbo].[TinBai] ([MaTinBai], [TieuDe], [NgayDang], [LuotXem], [NoiDung], [NoiDungTomTat], [Img], [imgtitle], [MaHV], [MaLoaiTinBai], [NguoiViet], [DonVi], [Img1], [imgtitle1], [PheDuyet]) VALUES (3, N'Cô nữ sinh đam mê với các mạch điện tử', CAST(N'2023-03-22' AS Date), 417, N'4 năm liền đạt danh hiệu Chiến sĩ thi đua cơ sở, 3 năm đạt danh hiệu học viên giỏi, 6 lần nhận học bổng của Học viện KTQS; nhận Giải thưởng Nữ sinh khoa học công nghệ Việt Nam 2022… đó chỉ là một phần trong bảng thành tích đầy ấn tượng của học viên Nguyễn Thị Uyên - Lớp Thông tin, Đại đội 354, Tiểu đoàn 3, Học viện KTQS.
Xuất thân trong một gia đình không có ai theo nghiệp nhà binh, bố mẹ đều là nông dân nhưng chỉ một lần được xem duyệt binh, diễu hành kỷ niệm 70 năm Cách mạng Tháng Tám và Quốc khánh 2/9, Uyên đã nuôi trong mình ước mơ được khoác lên mình màu xanh áo lính.
Uyên tâm sự: “Lúc đó em xem qua ti vi mà không rời mắt, nhìn thấy các anh, chị trong bộ quân phục vừa uy nghiêm, vừa hùng dũng, em cũng muốn mình được trở thành như vậy. Niềm yêu thích bắt đầu từ đó. Sau này, để bố mẹ không phải vất vả lo tiền học phí, em quyết định thi vào Quân đội, coi như đỡ cho bố mẹ phần nào, sẵn có niềm yêu thích với kỹ thuật nên em chọn đăng ký Học viện KTQS”.Lựa chọn chuyên ngành học Thông tin thuộc Khoa Vô tuyến điện tử, Uyên cho biết, đây là ngành học nghiên cứu về hệ thống thông tin liên lạc trong Quân đội cũng như ngoài dân sự, ngoài ra còn học các kiến thức về mạch điện tử, truyền tin, mã hóa... Ngành học này luôn được đánh giá là "nặng" với các kiến thức từ đại cương, cơ sở ngành, chuyên ngành. Ngoài các kiến thức cơ sở thì cùng với sự thay đổi nhanh chóng của công nghệ, việc cập nhật kiến thức chuyên ngành cũng cần phải thường xuyên, nhanh nhạy, tích cực và chủ động nhiều hơn. Thế nhưng, dường như mọi thứ không làm khó được với cô học viên Nguyễn Thị Uyên.
Đam mê với các mạch điện tử, Uyên đã chủ động tham gia nghiên cứu các đề tài chuyên ngành về mạch điện tử. Năm học 2021-2022, Uyên đã bắt đầu tham gia nghiên cứu chuyên ngành với đề tài "Nghiên cứu, thiết kế, chế tạo mạch Balun dải rộng cho các bộ khuếch đại công suất đẩy kéo cân bằng băng rộng". Đề tài này được xếp loại Xuất sắc và nhận Giấy khen của Học viện.
Chia sẻ về quá trình nghiên cứu đề tài, Uyên cho biết: “Em lựa chọn đề tài này vì em thích nghiên cứu về mảng điện tử, các mạch điện tương tự. Khi nghiên cứu thì cũng có rất nhiều khó khăn phát sinh, vì việc nghiên cứu chuyên ngành em chưa từng có kinh nghiệm. Trong quá trình làm nghiên cứu, ngoài sự chỉ dạy của thầy, của các anh chị khóa trên thì chủ yếu phải tự tìm hiểu, mày mò. Mạch điện em làm là mạch cao tần, yêu cầu độ chính xác cao, tỉ mỉ, tuân thủ các quy trình từ thiết kế đến đo kiểm. Khi thiết kế thì thời gian mô phỏng rất lâu và tốn thời gian mới ra được kết quả.
Sau khi mô phỏng hoàn chỉnh rồi thì việc đặt mạch nếu muốn có chất lượng tốt phải đặt mạch in và các linh kiện ở nước ngoài. Việc này tốn khá nhiều thời gian cũng như tiền bạc. Khi đo kiểm cũng phải rất cẩn thận vì các máy móc phương tiện để đo rất đắt, nếu trường hợp kết quả không tốt, coi như phải làm thiết kế lại từ đầu. Giai đoạn này năm trước khi chuẩn bị báo cáo đề tài nghiên cứu khoa học, em gần như thức xuyên ngày, xuyên đêm để mô phỏng mạch. Khi có mạch rồi thì cũng phải tự tay hàn mạch, đo kiểm, hiệu chỉnh”.Những khó khăn trong việc nghiên cứu rồi cũng qua đi, để sau đó là “trái ngọt” khi kết quả thiết kế khá tốt, đề tài của Uyên không những được nhận Giấy khen của Học viện mà còn là bàn đạp để Uyên tiếp tục nghiên cứu, viết thành một bài báo khoa học, gửi tới Hội nghị khoa học quốc tế.
Nhận xét về học viên do mình trực tiếp hướng dẫn, Trung tá Lương Duy Mạnh - Phó Chủ nhiệm Bộ môn Cơ sở Kỹ thuật vô tuyến/Khoa Vô tuyến điện tử cho biết, Uyên đã có hai năm liên tiếp thực hiện đề tài nghiên cứu khoa học. Không chỉ là một học viên chăm chỉ, Uyên có khả năng nghiên cứu độc lập và tư duy giải quyết các vấn đề kỹ thuật tốt.
Mặc dù thực hiện đề tài nghiên cứu khoa học thuộc lĩnh vực thiết kế mạch điện siêu cao tần là lĩnh vực mới và khó, tuy nhiên Uyên rất chăm chỉ, nỗ lực và luôn làm việc một cách nghiêm túc, tự trau dồi kiến thức thông qua khả năng tìm và dịch các bài báo khoa học bằng tiếng Anh thuộc lĩnh vực nghiên cứu cũng như thường xuyên trao đổi với giáo viên hướng dẫn để tháo gỡ một cách kịp thời các vấn đề khó khăn trong quá trình làm nghiên cứu khoa học.
Theo học viên Nguyễn Thanh Huy - Lớp trưởng Lớp Thông tin, Đại đội 354, Uyên là một học viên có nhiều tài năng, cả trong học tập, nghiên cứu khoa học; đồng thời là một người năng nổ, nhiệt tình, trách nhiệm trong công việc và trong cuộc sống, luôn được mọi người yêu quý, tin tưởng.
Nói về cô bạn cùng lớp, học viên Nguyễn Thanh Huy cho biết, trong suốt thời gian học tập tại Học viện, Uyên luôn là một trong những học viên có kết quả học tập tốt nhất trong Lớp và Đại đội; đạt được nhiều danh hiệu và khen thưởng. Ngoài thời gian học tập trên lớp, hoàn thành bài tập được giao, Uyên còn có niềm đam mê với hoạt động nghiên cứu khoa học và tham gia các hoạt động, cuộc thi do các cấp tổ chức, giành được nhiều kết quả nổi bật.
Trong công việc nghiên cứu khoa học, Uyên luôn đặt trách nhiệm lên hàng đầu và thể hiện sự tận tâm, nhiệt tình trong mọi hoạt động. Uyên luôn chú ý đến từng chi tiết, đảm bảo công việc được thực hiện đúng tiến độ và chất lượng.Chia sẻ về những dự định trong tương lai, cô học viên với bảng thành tích khủng không nói nhiều với chúng tôi về những mong muốn của bản thân mà hào hứng bàn luận về câu chuyện chuyển đổi số trong Quân đội, sự ảnh hưởng của chuyển đổi số tới việc học tập, nghiên cứu, cũng như công việc sau này của các học viên tại Học viện KTQS.
Theo Uyên, ngành học mà Uyên đang theo học liên quan đến thông tin liên lạc, trong khi đó, để quá trình chuyển đổi số được tốt thì yêu cầu về mạng lưới thông tin phải đi trước một bước, đảm bảo thông suốt. Ví dụ như hiện nay, việc hội họp trực tuyến, chỉ huy điều hành trực tuyến, triển khai công việc qua mạng quân sự, số hóa tài liệu quân sự để từ đó có bộ cơ sở dữ liệu chung... đều là những công việc thường xuyên và muốn diễn ra được thì yêu cầu hệ thống thông tin liên lạc phải bảo đảm liên tục, vững chắc.
Việc chuyển đổi số không chỉ đơn thuần là ứng dụng công nghệ thông tin (điều này chỉ là chuyển từ công cụ này sang công cụ khác) mà còn phải là thay đổi từ cách sống, làm việc, công nghệ số ở đây chỉ là phương thức thực hiện. Uyên cho biết: “Hiện tại em cũng đang học các môn học để phục vụ cho chuyển đổi số của Quân đội (cuối năm nay khi bọn em tốt nghiệp, đi về các đơn vị công tác sẽ trực tiếp tham gia vào quá trình chuyển đổi số tại đơn vị). Chuyển đổi số rõ ràng là một quá trình tất yếu, đây là xu hướng chung không chỉ ở Việt Nam mà trên toàn thế giới. Khi thực hiện chuyển đổi số thì giá trị mà nó mang lại không chỉ dừng ở việc "tạo" ra "công cụ mới" (công cụ số), mà ở đây cái chính đó là thay đổi về tâm thức, cách làm, cách hiểu của chúng ta ra khỏi những việc làm bàn giấy truyền thống, mà thay vào đó đặt chúng ta - những người sử dụng ở vị trí trung tâm. Hiện tại, khi còn đang là học viên thì em thấy mình cần học tập, nắm chắc và làm chủ các kỹ năng cần thiết trong quá trình chuyển đổi số, cần phải thay đổi lối tư duy cũ để hướng tới cách làm mới; tiếp tục nghiên cứu các giải pháp để đẩy mạnh quá trình chuyển đổi số”.
Chia tay cô nữ sinh với vóc dáng nhỏ nhắn trong bộ quân phục cùng những khao khát chinh phục những đỉnh cao mới trong khoa học, tin rằng, chắc chắn Uyên sẽ còn nhiều bước tiến xa hơn nữa trong học tập cũng như công việc, như chính lời khẳng định của học viên Trần Ngọc Hương Thảo, bạn cùng lớp với Uyên: “Uyên luôn nỗ lực cố gắng hết mình, có chí hướng vươn lên và có những ý tưởng độc đáo, ý kiến hay. Em tin rằng bạn ấy sẽ còn gặt hái được những thành quả tốt hơn nữa trong học tập và công việc”.', N'4 năm liền đạt danh hiệu Chiến sĩ thi đua cơ sở, 3 năm đạt ', N'ST233.jpg', N'abc', N'1', 1, N'Đỗ Thành Long', N'Tiểu đoàn 1', N'ST233.jpg', N'abc', 1)
INSERT [dbo].[TinBai] ([MaTinBai], [TieuDe], [NgayDang], [LuotXem], [NoiDung], [NoiDungTomTat], [Img], [imgtitle], [MaHV], [MaLoaiTinBai], [NguoiViet], [DonVi], [Img1], [imgtitle1], [PheDuyet]) VALUES (4, N'Lê Ngọc Hải - Học viên tiêu biểu của Đại đội 356', CAST(N'2023-03-19' AS Date), 240, N'Nhắc đến Đăklăk là nhắc đến mảnh đất của những mảnh vườn cà phê trù phú và những người con cần cù, sáng tạo trong lao động, giàu truyền thống cách mạng và truyền thống hiếu học. Tiếp bước truyền thống quê hương, đồng chí Lê Ngọc Hải - Học viên Lớp Thông tin/Đại đội 356/Tiểu đoàn 3 luôn nỗ lực phấn đấu vươn lên để đạt thành tích cao trong học tập và rèn luyện, là tấm gương sáng để học viên trong đơn vị noi theo.

      Sinh năm 2002 trong một gia đình thuần nông, nên từ nhỏ, Hải đã quen với những khó khăn, vất vả. Hoàn cảnh gia đình và truyền thống quê hương đã thôi thúc Hải sống có lý tưởng, có mục tiêu rõ ràng để trở thành người có ích cho xã hội. Hải có một mơ ước chảy bỏng được trở thành sĩ quan trong Quân đội nhân dân Việt Nam, đóng góp sức mình xây dựng và bảo vệ Tổ quốc. Đó chính là động lực thôi thúc Hải học tập và lựa chọn Học viện KTQS làm nơi rèn đức, luyện tài để thực hiện đam mê.rong kỳ thi đại học năm 2020, Hải đã đăng kí và trúng tuyển vào Học viện với số điểm là 27.55. Trong những ngày đầu học tập, rèn luyện tại Học viện, mặc dù gặp nhiều khó khăn do yêu cầu cao của môi trường đào tạo sĩ quan, song Hải luôn nỗ lực, cố gắng vươn lên, tích cực trong mọi hoạt động, luôn tự giác rèn luyện tác phong, xây dựng cho mình lối sống vui vẻ, hòa đồng và hết lòng giúp đỡ đồng chí đồng đội. Bên cạnh đó, Hải đã nhận thức đúng mục tiêu, yêu cầu đào tạo của Học viện nên đã xây dựng được động cơ học tập đúng đắn, phát huy tối đa tinh thần tự học, tự rút kinh nghiệm, tìm ra phương pháp học tập khoa học, sáng tạo và hiệu quả hơn.

      Nhờ có phương pháp và động cơ học tập đúng đắn, trong những năm qua, kết quả học tập, rèn luyện của Hải không ngừng tiến bộ và luôn đạt được thành tích cao. Năm học 2020-2021, Hải đạt kết quả học tập Giỏi (8,00). Đến năm học 2021-2022, thành tích đó được cải thiện rõ rệt khi Hải là một trong những học viên có kết quả học tập cao nhất trong đơn vị (8.44), được tặng danh hiệu Chiến sĩ thi đua cơ sở và nhận học bổng loại A. Sang học kỳ I năm học 2022-2023 vừa qua, Hải tiếp tục gặt hái được những kết quả đáng biểu dương như: học lực đạt loại giỏi (8,67), Giấy khen vì đã có thành tích xuất sắc trong đợt thi đua cao điểm chào mừng kỷ niệm 50 năm Chiến thắng “Hà Nội - Điện Biên Phủ trên không”, Đoàn viên suất sắc tiêu biểu và đạt học bổng loại A.

      Khi được hỏi về phương pháp học tập của mình, Ngọc Hải khiêm tốn chia sẻ: "Để có thành tích học tập tốt, mình chủ động tìm kiếm kiến thức từ những nguồn tài liệu sẵn có, chịu khó học hỏi từ bạn bè và phân bố thời gian hợp lý cho cả việc học văn hóa và rèn luyện. Mình nhận ra rằng, chìa khóa của việc học tập hiệu quả chính là không quá áp lực về thành tích mà phải xuất phát từ niềm đam mê và tinh thần tự giác”.

      Tin tưởng rằng, với kết quả đạt được trong thời gian vừa qua, đồng chí Lê Ngọc Hải sẽ phát huy hơn nữa khả năng của mình và gặt hái được nhiều thành công mới trên con đường học tập, rèn luyện tại Học viện KTQS.', N'Nhắc đến Đăklăk là nhắc đến mảnh đất của những mảnh vườn cà phê trù phú và những người con ', N'c356_NgocHai.png', N'abc', N'1', 2, N'Nguyễn Đức Toàn', N'V4', N'c356_NgocHai.png', N'abc', 1)
INSERT [dbo].[TinBai] ([MaTinBai], [TieuDe], [NgayDang], [LuotXem], [NoiDung], [NoiDungTomTat], [Img], [imgtitle], [MaHV], [MaLoaiTinBai], [NguoiViet], [DonVi], [Img1], [imgtitle1], [PheDuyet]) VALUES (6, N'Đinh Đoàn Xuân Phương - Tấm gương học tập và thi Olympic của Đại đội 156', CAST(N'2023-08-27' AS Date), 248, N' ‘‘Năng động, sáng tạo, luôn cố gắng trong học tập, đi đầu trong phong trào thi Olympic của đơn vị, được chỉ huy và đồng đội tin tưởng". Đó là những nhận xét của mọi người dành cho Trung sĩ Đinh Đoàn Xuân Phương - Lớp phó Lớp An ninh Hệ thống thông tin/Đại đội 156/Tiểu đoàn 1.
 Sinh ra và lớn lên ở Quảng Bình - một vùng đất có bề dày lịch sử và văn hóa lâu đời, quê hương của Đại tướng Võ Nguyên Giáp, ngay từ khi còn ngồi trên ghế nhà trường, Phương đã luôn phấn đấu để trở thành con ngoan, trò giỏi. Với ước mơ được khoác lên mình màu xanh áo lính, khát khao cống hiến sức trẻ cho Quân đội, mùa tuyển sinh năm 2020, với thành tích giải Nhì Học sinh Giỏi quốc gia môn Toán, Phương đã được tuyển thẳng vào Học viện KTQS.
Không ngủ quên trong chiến thắng, ngay từ những ngày đầu được học tập và rèn luyện tại Học viện, Phương luôn có động cơ học tập đúng đắn; tích cực, tự giác, không ngừng phấn đấu vươn lên trong công tác, hoạt động phong trào và thực hiện nhiệm vụ. Với thành tích học tập và rèn luyện ngày càng tiến bộ, năm học 2020 - 2021, kết quả học tập đạt 8,14 và năm học 2021 - 2022 đạt 8,17, Đinh Đoàn Xuân Phương được Thủ trưởng Học viện tặng thưởng danh hiệu Chiến sĩ thi đua; đạt học bổng loại B Học kỳ I năm học 2022 - 2023. Đặc biệt, chàng trai này còn có niềm đam mê với các môn học về Toán - Tin, các môn học liên quan đến ngành khoa học này, Phương đều đạt điểm giỏi. Tháng 12/2022 Phương đã tham dự kỳ thi Olympic Tin học sinh viên toàn quốc và đạt được giải Ba. Không dừng lại ở đó, tại kỳ thi Olympic Toán học Sinh viên và Học sinh lần thứ 29 vừa qua, Phương đã mang tấm Huy chương Vàng duy nhất về cho đội tuyển Học viện. Bên cạnh đó, đồng chí còn thường xuyên được nhận khen thưởng trong các phong trào, đợt thi đua do đơn vị phát động như Giấy khen đợt thi đua cao điểm Chào mừng kỉ niệm 50 năm Chiến thắng “Hà Nội - Điện Biên Phủ trên không”…
    Tin tưởng rằng trong thời gian tới, đồng chí Đinh Đoàn Xuân Phương sẽ tiếp tục phát huy những thành tích đã đạt được, tích cực giúp đỡ đồng chí, đồng đội để xây dựng tập thể lớp ngày càng vững mạnh hơn, xứng đáng là lá cờ đầu trong Phong trào thi đua Quyết thắng của Đại đội  ‘‘Năng động, sáng tạo, luôn cố gắng trong học tập, đi đầu trong phong trào thi Olympic của đơn vị, được chỉ huy và đồng đội tin tưởng". Đó là những nhận xét của mọi người dành cho Trung sĩ Đinh Đoàn Xuân Phương - Lớp phó Lớp An ninh Hệ thống thông tin/Đại đội 156/Tiểu đoàn 1.
 Sinh ra và lớn lên ở Quảng Bình - một vùng đất có bề dày lịch sử và văn hóa lâu đời, quê hương của Đại tướng Võ Nguyên Giáp, ngay từ khi còn ngồi trên ghế nhà trường, Phương đã luôn phấn đấu để trở thành con ngoan, trò giỏi. Với ước mơ được khoác lên mình màu xanh áo lính, khát khao cống hiến sức trẻ cho Quân đội, mùa tuyển sinh năm 2020, với thành tích giải Nhì Học sinh Giỏi quốc gia môn Toán, Phương đã được tuyển thẳng vào Học viện KTQS.
Không ngủ quên trong chiến thắng, ngay từ những ngày đầu được học tập và rèn luyện tại Học viện, Phương luôn có động cơ học tập đúng đắn; tích cực, tự giác, không ngừng phấn đấu vươn lên trong công tác, hoạt động phong trào và thực hiện nhiệm vụ. Với thành tích học tập và rèn luyện ngày càng tiến bộ, năm học 2020 - 2021, kết quả học tập đạt 8,14 và năm học 2021 - 2022 đạt 8,17, Đinh Đoàn Xuân Phương được Thủ trưởng Học viện tặng thưởng danh hiệu Chiến sĩ thi đua; đạt học bổng loại B Học kỳ I năm học 2022 - 2023. Đặc biệt, chàng trai này còn có niềm đam mê với các môn học về Toán - Tin, các môn học liên quan đến ngành khoa học này, Phương đều đạt điểm giỏi. Tháng 12/2022 Phương đã tham dự kỳ thi Olympic Tin học sinh viên toàn quốc và đạt được giải Ba. Không dừng lại ở đó, tại kỳ thi Olympic Toán học Sinh viên và Học sinh lần thứ 29 vừa qua, Phương đã mang tấm Huy chương Vàng duy nhất về cho đội tuyển Học viện. Bên cạnh đó, đồng chí còn thường xuyên được nhận khen thưởng trong các phong trào, đợt thi đua do đơn vị phát động như Giấy khen đợt thi đua cao điểm Chào mừng kỉ niệm 50 năm Chiến thắng “Hà Nội - Điện Biên Phủ trên không”…
    Tin tưởng rằng trong thời gian tới, đồng chí Đinh Đoàn Xuân Phương sẽ tiếp tục phát huy những thành tích đã đạt được, tích cực giúp đỡ đồng chí, đồng đội để xây dựng tập thể lớp ngày càng vững mạnh hơn, xứng đáng là lá cờ đầu trong Phong trào thi đua Quyết thắng của Đại đội  ‘‘Năng động, sáng tạo, luôn cố gắng trong học tập, đi đầu trong phong trào thi Olympic của đơn vị, được chỉ huy và đồng đội tin tưởng". Đó là những nhận xét của mọi người dành cho Trung sĩ Đinh Đoàn Xuân Phương - Lớp phó Lớp An ninh Hệ thống thông tin/Đại đội 156/Tiểu đoàn 1.
 Sinh ra và lớn lên ở Quảng Bình - một vùng đất có bề dày lịch sử và văn hóa lâu đời, quê hương của Đại tướng Võ Nguyên Giáp, ngay từ khi còn ngồi trên ghế nhà trường, Phương đã luôn phấn đấu để trở thành con ngoan, trò giỏi. Với ước mơ được khoác lên mình màu xanh áo lính, khát khao cống hiến sức trẻ cho Quân đội, mùa tuyển sinh năm 2020, với thành tích giải Nhì Học sinh Giỏi quốc gia môn Toán, Phương đã được tuyển thẳng vào Học viện KTQS.
Không ngủ quên trong chiến thắng, ngay từ những ngày đầu được học tập và rèn luyện tại Học viện, Phương luôn có động cơ học tập đúng đắn; tích cực, tự giác, không ngừng phấn đấu vươn lên trong công tác, hoạt động phong trào và thực hiện nhiệm vụ. Với thành tích học tập và rèn luyện ngày càng tiến bộ, năm học 2020 - 2021, kết quả học tập đạt 8,14 và năm học 2021 - 2022 đạt 8,17, Đinh Đoàn Xuân Phương được Thủ trưởng Học viện tặng thưởng danh hiệu Chiến sĩ thi đua; đạt học bổng loại B Học kỳ I năm học 2022 - 2023. Đặc biệt, chàng trai này còn có niềm đam mê với các môn học về Toán - Tin, các môn học liên quan đến ngành khoa học này, Phương đều đạt điểm giỏi. Tháng 12/2022 Phương đã tham dự kỳ thi Olympic Tin học sinh viên toàn quốc và đạt được giải Ba. Không dừng lại ở đó, tại kỳ thi Olympic Toán học Sinh viên và Học sinh lần thứ 29 vừa qua, Phương đã mang tấm Huy chương Vàng duy nhất về cho đội tuyển Học viện. Bên cạnh đó, đồng chí còn thường xuyên được nhận khen thưởng trong các phong trào, đợt thi đua do đơn vị phát động như Giấy khen đợt thi đua cao điểm Chào mừng kỉ niệm 50 năm Chiến thắng “Hà Nội - Điện Biên Phủ trên không”…
    Tin tưởng rằng trong thời gian tới, đồng chí Đinh Đoàn Xuân Phương sẽ tiếp tục phát huy những thành tích đã đạt được, tích cực giúp đỡ đồng chí, đồng đội để xây dựng tập thể lớp ngày càng vững mạnh hơn, xứng đáng là lá cờ đầu trong Phong trào thi đua Quyết thắng của Đại đội 156.', N' ‘‘Năng động, sáng tạo, luôn cố gắng trong học tập, đi đầu trong phong trào thi Olympic của đơn vị, được chỉ huy và đồng đội tin tưởng". Đó là những nhận xét của mọi người dành cho Trung sĩ Đinh Đoàn ', N'd1_xuanphuong1.jpg', N'abc', N'1', 1, N'Nguyễn Đức Toàn', N'Tiểu đoàn 1', N'd1_xuanphuong1.jpg', N'abc', 1)
INSERT [dbo].[TinBai] ([MaTinBai], [TieuDe], [NgayDang], [LuotXem], [NoiDung], [NoiDungTomTat], [Img], [imgtitle], [MaHV], [MaLoaiTinBai], [NguoiViet], [DonVi], [Img1], [imgtitle1], [PheDuyet]) VALUES (8, N'Xây dựng tiêu chí nhà trường quân đội thông minh, hiện đại
', CAST(N'2023-08-26' AS Date), 244, N'Tại Hội thảo “Mô hình nhà trường quân đội thông minh, hiện đại, gắn với chuyển đổi số”, chuyên gia đề xuất xây dựng tiêu chí cho mô hình trường học này. Hội thảo do Học viện KTQS tổ chức vào chiều 6/3. Phát biểu tại hội thảo, Trung tướng Lê Minh Thái - Giám đốc Học viện KTQS nhấn mạnh, xây dựng nhà trường quân đội thông minh, hiện đại, thực hiện chuyển đổi số trong giáo dục, đào tạo là chủ trương lớn đang được Quân ủy Trung ương, Bộ Quốc phòng chỉ đạo các cơ quan, đơn vị triển khai thực hiện.

     Qua đó nhằm số hóa, thông minh hóa một cách toàn diện về phương pháp dạy và học, về quản trị nhà trường, giúp nâng cao chất lượng đào tạo, đưa công tác giáo dục - đào tạo trong quân đội tiến theo con đường hội nhập và phát triển.

     Theo Trung tướng Lê Minh Thái, hội thảo là bước tiếp nối kết quả nghiên cứu, tìm hiểu về mô hình, các thành tố của nhà trường thông minh đã được triển khai thực hiện từ năm 2018.

     Đây cũng là cơ hội để Học viện, các cơ quan đơn vị trong và ngoài quân đội trao đổi kinh nghiệm thực tiễn, thảo luận những vấn đề mang tính học thuật xung quanh việc xây dựng mô hình và bộ tiêu chí đánh giá nhà trường quân đội thông minh, hiện đại, gắn với chuyển đổi số. Tại hội thảo, các đại biểu tập trung trao đổi về các vấn đề liên quan tới xu hướng áp dụng sư phạm thông minh trên cơ sở áp dụng thành tựu mới của công nghệ thông tin - truyền thông, thực hiện chuyển đổi số trong giáo dục đại học; kinh nghiệm thực tiễn cũng như giải pháp có thể vận dụng trong xây dựng nhà trường thông minh, hiện đại, gắn với chuyển đổi số, nâng cao chất lượng đào tạo đối với nhà trường quân đội.

     Các ý kiến đều khẳng định, chuyển đổi số, xây dựng nhà trường thông minh, hiện đại là xu thế tất yếu, khách quan của giáo dục - đào tạo; trong đó có các nhà trường trong quân đội, là cơ sở góp phần nâng cao chất lượng giáo dục - đào tạo và đáp ứng nhu cầu học tập linh hoạt, học tập suốt đời của từng cá nhân.

     Quá trình chuyển đổi số là tiền đề cốt lõi để đạt tới mục tiêu xây dựng nhà trường thông minh, hiện đại. Thực hiện chuyển đổi số, xây dựng cơ sở vật chất theo hướng thông minh, hiện đại hóa được nhiều cơ sở đào tạo trong, ngoài quân đội tích cực thực hiện và thu được những kết quả quan trọng, đáng khích lệ. Các ý kiến cũng nhìn nhận, thực hiện chuyển đổi số, xây dựng mô hình nhà trường thông minh, hiện đại là quá trình có nhiều khó khăn, thách thức và không có điểm dừng cuối cùng. Với các trường thuộc khối lực lượng vũ trang, việc này càng gặp nhiều khó khăn hơn, nhất là vấn đề bảo mật, bảo đảm an ninh, an toàn thông tin. Điều này đòi hỏi chi phí đầu tư hạ tầng cũng như sự phức tạp trong triển khai thực hiện tăng lên nhiều lần so với các cơ sở đào tạo thông thường khác.

     Để có cơ sở định hướng đầu tư, xây dựng và đánh giá mức độ thông minh, hiện đại, mức độ chuyển đổi số của từng nhà trường quân đội, Bộ Quốc phòng cần nghiên cứu và ban hành mô hình, bộ tiêu chí chung về nhà trường thông minh, hiện đại, gắn với chuyển đổi số. Theo tiến trình phát triển, mô hình và bộ tiêu chí này cũng phải được thường xuyên cập nhật, sửa đổi cho phù hợp thực tiễn khách quan.', N'Tại Hội thảo “Mô hình nhà trường quân đội thông minh, hiện đại, gắn với chuyển đổi số”, chuyên gia đề xuất xây dựng tiêu chí cho mô hình trường học này.', N'ht1.jpg', N'Trung tướng GS.TS Lê Minh Thái - Giám đốc Học viện KTQS phát biểu tại hội thảo', N'1', 2, N'Thái Thị Minh Tú', N'Tiểu đoàn 1', N'ht2.jpg', N'Chuyên gia chia sẻ tại hội thảo', 1)
INSERT [dbo].[TinBai] ([MaTinBai], [TieuDe], [NgayDang], [LuotXem], [NoiDung], [NoiDungTomTat], [Img], [imgtitle], [MaHV], [MaLoaiTinBai], [NguoiViet], [DonVi], [Img1], [imgtitle1], [PheDuyet]) VALUES (9, N'Sôi nổi Hội thi “Rung chuông vàng” của tuổi trẻ Học viện KTQS', CAST(N'2023-08-27' AS Date), 57, N'Nằm trong chuỗi các hoạt động Tháng Thanh niên năm 2024, ngày 23/3, Học viện KTQS đã tổ chức Hội thi “Rung chuông vàng” tìm hiểu truyền thống 93 năm Đoàn TNCS Hồ Chí Minh, 70 năm chiến thắng lịch sử Điện Biên Phủ, 80 năm Ngày thành lập Quân đội nhân dân Việt Nam và 58 năm truyền thống Học viện KTQS Anh hùng.   Dự và chỉ đạo Hội thi có Đại tá Cao Trung Hà - Phó Chủ nhiệm Chính trị Học viện. Đến dự và động viên Hội thi có đại biểu chỉ huy các đơn vị, Ban Công tác quần chúng/Phòng Chính trị và đặc biệt là sự có mặt của đông đảo cán bộ, đoàn viên thanh niên (ĐVTN) trong Học viện và các đơn vị kết nghĩa: Học viên Thanh thiếu niên Việt Nam, Đại học Quốc gia Hà Nội, Học viện Báo chí tuyên truyền, Đại học Sư phạm Hà Nội.

     Tham gia Hội thi, Ban tổ chức đã đưa ra 23 câu hỏi thú vị, bổ ích, sử dụng kiến thức tổng hợp. Ngoài những câu hỏi xoay quanh về truyền thống và hoạt động của Đoàn TNCS Hồ Chí Minh, các thí sinh tham gia Hội thi còn được tìm hiểu kiến thức về truyền thống Quân đội nhân dân Việt Nam và 30 năm Ngày hội Quốc phòng toàn dân, 70 chiến thắng lịch sử Điện Biên Phủ và 58 năm Ngày truyền thống Học viện KTQS anh hùng.

     Hội thi diễn ra vô cùng kịch tính và hồi hộp. Sau chặng thi thứ nhất là phần chơi dành cho các bạn khán giả với 5 câu hỏi đã đem đến cho chương trình không khí sôi động, gay cấn cùng những phần thưởng hấp dẫn. Bước vào vòng thi thứ 2, sau câu hỏi thứ 17, trên sân thi đấu chỉ còn lại 10 thí sinh. Hội thi càng trở nên đầy căng thẳng và hồi hộp hơn bao giờ hết vì đã có 115 thí sinh bị loại được cứu vào sân bằng trò chơi nhảy bao bố thông qua phần cứu trợ. Khi chỉ còn lại một thí sinh duy nhất, Trung sĩ Võ Văn Đạt, trong những giây đầu của câu hỏi thứ 22, ngôi sao hi vọng của Văn Đạt vang lên và lần lượt các chiếc máy bay của khán giả đã tham gia cứu trợ, nhờ đó mà Đạt đã đưa ra được đáp án đúng.

     Xuất sắc vượt qua 125 thí sinh tham gia thi, Trung sĩ Võ Văn Đạt đến từ Đoàn cơ sở Tiểu đoàn 2 đã giành giải Nhất chung cuộc và được “Rung chuông vàng”. Giải Nhì thuộc về Binh nhì Trần Kinh Châu thuộc Đoàn cơ sở Hệ 3 và Hạ sĩ Nguyễn Bá Tước đến từ Đoàn cơ sở Tiểu đoàn 1. Giải Ba thuộc về Hạ sĩ Nguyễn Văn Việt Anh đến từ Đoàn cơ sở Tiểu đoàn 3 và Trung sĩ Nguyễn Xuân Trường thuộc Đoàn cơ sở Tiểu đoàn 4. Ban tổ chức đã trao giấy chứng nhận và phần thưởng cho các thi sinh xuất sắc trong Hội thi.

     Thiếu tá Vũ Huy Hoàng - Trưởng ban Công tác quần chúng chia sẻ: Hội thi ‘‘Rung chuông vàng’’ năm 2024 là hoạt động ngoại khóa thiết thực nhằm nâng cao chất lượng giáo dục toàn diện, tạo sân chơi trí tuệ, lành mạnh, bổ ích cho cán bộ, ĐVTN; tạo diễn đàn giao lưu học hỏi, trau dồi kinh nghiệm, kiến thức, để các ĐVTN được thử sức, bộc lộ khả năng tư duy, trí tuệ của mình, chiếm lĩnh kiến thức, xây dựng thói quen tự học và sáng tạo trong quá trình học tập, rèn luyện, góp phần hoàn thành xuất sắc nhiệm vụ được giao.', N'Nằm trong chuỗi các hoạt động Tháng Thanh niên năm 2024, ngày 23/3, Học viện KTQS đã tổ chức Hội thi “Rung chuông vàng” tìm hiểu truyền thống 93 năm Đoàn TNCS Hồ Chí Minh, 70 năm chiến thắng lịch sử Điện Biên Phủ, 80 năm Ngày thành lập Quân đội nhân dân Việt Nam và 58 năm truyền thống Học viện KTQS Anh hùng.', N'v1.png', N'Ảnh hội thi', N'1', 2, N'Thái Thị Minh Tú', N'Tiểu đoàn 1', N'v2.png', N'Ảnh hội thi', 1)
INSERT [dbo].[TinBai] ([MaTinBai], [TieuDe], [NgayDang], [LuotXem], [NoiDung], [NoiDungTomTat], [Img], [imgtitle], [MaHV], [MaLoaiTinBai], [NguoiViet], [DonVi], [Img1], [imgtitle1], [PheDuyet]) VALUES (10, N'Lý Bích Ngọc - Tấm gương tiêu biểu trong học tập và rèn luyện của Đại đội 156', CAST(N'2023-08-27' AS Date), 248, N'Đến Đại đội 156/Tiểu đoàn 1 không ai không biết đến Trung sĩ Lý Bích Ngọc - Học viên Lớp An ninh hệ thống thông tin. Ngọc là một cô gái hoạt bát, năng động, cây thể thao số một của Tiểu đoàn, gương đi đầu trong học tập, rèn luyện của Đại đội.
Sinh ra và lớn lên trên mảnh đất Cao Bằng giàu bản sắc văn hóa dân tộc và là nơi lưu giữ nhiều giá trị lịch sử văn hóa truyền thống, nên ngay từ nhỏ, Bích Ngọc đã ấp ủ niềm đam mê nối tiếp truyền thống vẻ vang ấy. Năm 2020, với ước mơ được khoác lên mình màu xanh áo lính, trở thành một quân nhân trong Quân đội nhân dân Việt Nam, Lý Bích Ngọc đã thi đỗ vào Học viện KTQS với số điểm 28.50. Những ngày đầu của cuộc sống quân ngũ đối với Bích Ngọc là khoảng thời gian đầy gian nan, vất vả. Phải xa gia đình, tập làm quen với môi trường sinh hoạt mới nhưng cô gái ấy luôn tràn đầy nhiệt huyết, mạnh mẽ, kiên định với con đường mà mình đã chọn.
    Kết thúc 06 tháng tạo nguồn tại Trung đoàn 24/Sư đoàn 304/Quân đoàn 2 trở về Học viện, Ngọc được phân vào Lớp An ninh hệ thống thông tin, Đại đội 156. Để đáp ứng mục tiêu, yêu cầu đào tạo của Học viện, Ngọc luôn cố gắng, nỗ lực hết mình trong việc xây dựng động cơ học tập, phát huy tối đa tinh thần tự học, tự rèn, tự rút kinh nghiệm, tìm ra phương pháp học tập sáng tạo, hiệu quả. Bằng động cơ học tập đúng đắn và sự thông minh vốn có, kết quả học tập của Ngọc không ngừng tiến bộ. Học kỳ đầu tiên tại Học viện, điểm tổng kết của Ngọc đạt 8.06, đặc biệt, Học kỳ I năm học 2022 - 2023 vừa qua, điểm tổng kết của Ngọc đạt 8.55, đứng top đầu của Lớp, của Đại đội và được đề nghị trao tặng học bổng loại A.
     Ngoài niềm say mê trong học tập, Ngọc rất tích cực tìm tòi, cùng đồng chí, đồng đội tham gia NCKH. Năm học 2022-2023, đề tài mà nhóm của Ngọc thực hiện có chủ đề “Nghiên cứu xây dựng công cụ phân loại linh kiện trên bo mạch điện tử”. Đề tài thuộc lĩnh vực trí tuệ nhân tạo và khoa học máy tính, yêu cầu lượng kiến thức nhiều và khó, cần có sự cố gắng cao cũng như tinh thần ham tìm tòi, học hỏi của người nghiên cứu. Tuy chỉ là học viên năm thứ 3, vừa bước vào học các môn cơ sở ngành, nhưng Ngọc và nhóm nghiên cứu đã mạnh dạn chọn đề tài này để thử sức. Theo chúng tôi được biết thì đề tài đang trong giai đoạn hoàn chỉnh, nhóm nghiên cứu của Ngọc rất tự tin về kết quả nghiên cứu của mình.
    Bên cạnh đó, Ngọc còn rất hăng hái, nhiệt tình tham gia các hoạt động phong trào của đơn vị. Hình ảnh một cô gái luôn vui vẻ, hòa đồng, nhiệt tình giúp đỡ đồng chí đồng đội; tích cực tham gia các tổ nhóm phương pháp, đôi bạn học tập không còn xa lạ với các học viên trong Đại đội. Ngọc còn là tuyển thủ bóng chuyền, bóng đá xuất sắc nhất của Đại đội và Tiểu đoàn. Năm 2022, tham gia đội thi Nét đẹp quân nhân, Ngọc cùng với các hội viên trong đơn vị đã xuất sắc giành giải Nhất cấp Học viện.
     Với những thành tích đã đạt được, năm 2022, Ngọc vinh dự trở thành một những học viên đầu tiên của đơn vị được kết nạp vào Đảng Cộng sản Việt Nam. Lý Bích Ngọc xứng đáng là tấm gương tiêu biểu, tiên phong trong các phong trào học tập, rèn luyện của đơn vị. Với tinh thần ham học hỏi, ý chí cầu tiến, không ngừng phấn đấu vươn lên, tin tưởng rằng đồng chí sẽ còn gặt hái được nhiều thành công hơn nữa.', N'Đến Đại đội 156/Tiểu đoàn 1 không ai không biết đến Trung sĩ Lý Bích Ngọc - Học viên Lớp An ninh hệ thống thông tin. Ngọc là một cô gái hoạt bát, năng động, cây thể thao số một của Tiểu đoàn, gương đi...', N'1.png', N'abc', N'1', 1, N'Trần Doãn Tuấn', N'Tiểu đoàn 1', NULL, NULL, 1)
INSERT [dbo].[TinBai] ([MaTinBai], [TieuDe], [NgayDang], [LuotXem], [NoiDung], [NoiDungTomTat], [Img], [imgtitle], [MaHV], [MaLoaiTinBai], [NguoiViet], [DonVi], [Img1], [imgtitle1], [PheDuyet]) VALUES (11, N'Học viện KTQS tổ chức Lễ báo công dâng Bác', CAST(N'2023-08-28' AS Date), 1900, N'Sáng 22/8, tại Hà Nội, Đoàn đại biểu dự Đại hội Đại biểu Công đoàn Học viện KTQS lần thứ tư, giai đoạn 2023-2028, gồm 102 đại biểu là những cán bộ, đoàn viên ưu tú đại diện cho gần 700 cán bộ, đoàn viên công đoàn (ĐVCĐ) trong toàn Học viện KTQS đã dự Lễ báo công dâng Bác. Dự lễ có Đại tá Trần Văn Duy - Phó Chính ủy Học viện.
    Phát biểu tại Lễ báo công, Đại tá Bùi Sơn Nam - Phó Chủ nhiệm Chính trị khẳng định, 100% cán bộ, ĐVCĐ của Học viện đã nhận thức rõ nghĩa vụ và trách nhiệm vinh quang đối với sự nghiệp xây dựng, bảo vệ Tổ quốc; luôn tin tưởng tuyệt đối vào sự lãnh đạo của Đảng; chủ động khắc phục khó khăn, không ngừng tu dưỡng, rèn luyện về bản lĩnh chính trị, phẩm chất đạo đức, lối sống; tận tâm với công việc, tâm huyết, say mê học tập, nghiên cứu khoa học; phát huy tính năng động, sáng tạo, không ngừng trau dồi kiến thức, nâng cao trình độ chuyên môn; tích cực đổi mới phương pháp giảng dạy, tác phong công tác; tăng cường ứng dụng công nghệ thông tin, tích cực học tập nâng cao trình độ ngoại ngữ, đáp ứng yêu cầu, nhiệm vụ của Học viện trong tình hình mới.Nhiều tập thể, cá nhân đạt thành tích xuất sắc trong giảng dạy, nghiên cứu khoa học; có nhiều đề tài, sản phẩm, sáng kiến cải tiến kỹ thuật có hàm lượng khoa học cao, ứng dụng trong công tác huấn luyện, sẵn sàng chiến đấu, được Thủ trưởng Bộ Quốc phòng, Thủ trưởng Tổng cục Kỹ thuật khen thưởng; tham gia giải thưởng "Tuổi trẻ sáng tạo trong Quân đội", hội thi ngành kỹ thuật cấp toàn quân; hướng dẫn học viên, sinh viên nghiên cứu khoa học, thi Olympic đạt nhiều thành tích cao... Qua đó, ngày càng khẳng định vị trí, vai trò và đóng góp tích cực vào kết quả hoàn thành nhiệm vụ chính trị của Học viện, các cơ quan, đơn vị.
Trong 5 năm, đã có 339 lượt cán bộ, ĐVCĐ, hội viên đạt danh hiệu Chiến sĩ thi đua cơ sở, 670 lượt đạt danh hiệu Chiến sĩ tiên tiến; 01 đồng chí được Thủ tướng Chính phủ tặng Bằng khen; 01 đồng chí được cấp Bằng độc quyền sáng chế; 09 lượt ĐVCĐ được Thủ trưởng Bộ Quốc phòng tặng Bằng khen; 53 lượt Công đoàn cơ sở, ĐVCĐ được tặng Cờ thi đua, Bằng khen của Thủ trưởng Tổng cục Chính trị; 09 lượt Công đoàn cơ sở, ĐVCĐ được Tổng Liên đoàn Lao động Việt Nam tặng Bằng khen; 398 lượt Công đoàn cơ sở, ĐVCĐ được Thủ trưởng Học viện tặng Bằng khen, Giấy khen; 02 đoàn viên được công nhận giáo viên giỏi cấp Bộ Quốc phòng; 21 giáo viên dạy giỏi, dạy tốt cấp Học viện; 01 đồng chí được tặng Giải thưởng Nguyễn Đức Cảnh, nhiều đồng chí được tặng kỷ niệm chương Vì sự nghiệp xây dựng tổ chức Công đoàn.', N'Sáng 22/8, tại Hà Nội, Đoàn đại biểu dự Đại hội Đại biểu Công đoàn Học viện KTQS lần thứ tư, giai đoạn 2023-2028, gồm 102 đại biểu là nhữ...', N'hocvienkythuatquansu2.jpg', N'Các đại biểu Học viện KTQS dâng hoa, viếng Lăng Chủ tịch Hồ Chí Minh', N'1', 2, N'Trần Doãn Tuấn', N'Tiểu đoàn 1', N'hocvienkythuatquansu2.jpg', N'Các đại biểu Học viện KTQS dâng hoa, viếng Lăng Chủ tịch Hồ Chí Minh', 1)
INSERT [dbo].[TinBai] ([MaTinBai], [TieuDe], [NgayDang], [LuotXem], [NoiDung], [NoiDungTomTat], [Img], [imgtitle], [MaHV], [MaLoaiTinBai], [NguoiViet], [DonVi], [Img1], [imgtitle1], [PheDuyet]) VALUES (12, N'Hàng trăm đoàn viên Công đoàn Học viện KTQS là Chiến sĩ thi đua', CAST(N'2023-08-28' AS Date), 13, N' 5 năm qua, tổ chức Công đoàn Học viện KTQS có 339 lượt cán bộ đoàn viên Công đoàn, hội viên đạt danh hiệu Chiến sĩ thi đua cơ sở; 670 lượt đạt danh hiệu Chiến sĩ tiên tiến.
    Trong hai ngày 22 và 23/8, tại Hà Nội, diễn ra Đại hội Đại biểu Công đoàn Học viện KTQS lần thứ IV (2023 - 2028), với sự tham gia của 102 đại biểu ưu tú, đại diện cho gần 700 đoàn viên Công đoàn trong toàn Học viện.
    Tới dự đại hội có lãnh đạo Học viện Học viện KTQS; lãnh đạo, đại biểu Ban Công đoàn Quốc phòng, Ban Thanh niên Quân đội, Ban Phụ nữ Quân đội; đại diện các cơ quan, đơn vị trong toàn Học viện.
Theo Phòng Chính trị, hiện nay, Học viện KTQS có 26 tổ chức Công đoàn cơ sở (CĐCS) với 696 đoàn viên Công đoàn. 100% đoàn viên được đào tạo qua các trường trong và ngoài Quân đội. Trong những năm qua, tổ chức Công đoàn thường xuyên được củng cố, kiện toàn phù hợp với tình hình tổ chức, biên chế và thực hiện tốt chức năng, nhiệm vụ; có sự trưởng thành về mọi mặt. Với đoàn viên Công đoàn, chất lượng chính trị; trình độ học vấn, chuyên môn, tay nghề có nhiều chuyển biến tiến bộ, có sức khỏe, sẵn sàng nhận và hoàn thành tốt mọi nhiệm vụ được giao.
     Bám sát yêu cầu thực tiễn và tình hình thực hiện nhiệm vụ chính trị của Học viện, cơ quan, đơn vị, các phong trào thi đua của Công đoàn được triển khai chặt chẽ, sâu rộng, có sức lan tỏa. Các CĐCS tiếp tục duy trì và thực hiện tốt các phong trào thi đua “Lao động giỏi, lao động sáng tạo”; “Xanh, sạch, đẹp, bảo đảm an toàn vệ sinh lao động”; “5 nhất - 3 không”; “An toàn lao động, an toàn giao thông, không vi phạm kỷ luật”; “Chương trình 1 triệu sáng kiến”; “Luyện tay nghề, thi thợ giỏi”…
Trong giảng dạy, cán bộ, đoàn viên Công đoàn khối các Khoa, Viện, Trung tâm đã áp dụng những phương pháp dạy học tiên tiến, ứng dụng công nghệ thông tin vào bài giảng. Các cán bộ, đoàn viên Công đoàn làm công tác hướng dẫn thực hành tại các phòng thí nghiệm, lớp trang bị, xưởng thực hành đã chủ động tổ chức huấn luyện, bồi dưỡng chuyên môn, nghiệp vụ, làm chủ trang thiết bị máy móc hiện đại.
   Bên cạnh đó, cán bộ, đoàn viên Công đoàn khối Phòng, Ban, Hệ, Tiểu đoàn tích cực học tập nâng cao trình độ chuyên môn, nhiệt tình, trách nhiệm, xây dựng tác phong làm việc khoa học, chu đáo, đẩy mạnh thực hiện cải cách hành chính trong thực hiện nhiệm vụ, tham mưu đúng, trúng, hiệu quả, bảo đảm, phục vụ tốt nhiệm vụ chính trị của Học viện, cơ quan, đơn vị.
    Trong phong trào thi đua đã có nhiều đề tài, công trình, sản phẩm, sáng kiến tiêu biểu được lãnh đạo Bộ Quốc phòng, Tổng cục Kỹ thuật khen thưởng; nhiều tập thể, cá nhân được tuyên dương trong phong trào “Lao động giỏi, Lao động sáng tạo”; tham gia Hội thi “Thợ giỏi ngành cơ khí” cấp toàn quân đoạt giải tập thể và nhiều giải cá nhân.
     Trong 5 năm, tổ chức Công đoàn Học viện đã có 339 lượt cán bộ đoàn viên Công đoàn, hội viên đạt danh hiệu Chiến sĩ thi đua cơ sở; 670 lượt đạt danh hiệu Chiến sĩ tiên tiến; 01 cá nhân được Thủ tướng Chính phủ tặng Bằng khen; 01 cá nhân được cấp Bằng độc quyền sáng chế; 09 lượt đoàn viên Công đoàn được lãnh đạo Bộ Quốc phòng tặng Bằng khen; 43 lượt CĐCS, đoàn viên Công đoàn được lãnh đạo Tổng cục Chính trị tặng Bằng khen về công tác Công đoàn; 10 lượt CĐCS được Tổng cục Chính trị tặng Cờ thi đua; 09 lượt CĐCS, đoàn viên Công đoàn được Tổng Liên đoàn lao động Việt Nam tặng Bằng khen; nhiều cá nhân được tặng Kỷ niệm chương Vì sự nghiệp xây dựng tổ chức Công đoàn.
     Phát biểu chỉ đạo đại hội, Thiếu tướng Trần Văn Thưởng - Bí thư Đảng ủy, Chính ủy Học viện KTQS khẳng định: Phong trào công nhân và hoạt động Công đoàn Học viện luôn được đánh giá là một trong những đơn vị tích cực, hoạt động có chất lượng trong toàn quân, góp phần quan trọng vào sự nghiệp xây dựng và phát triển Học viện KTQS.Thiếu tướng Trần Văn Thưởng đề nghị, thời gian tới, tổ chức Công đoàn phải phát huy tốt vai trò vận động, tập hợp quần chúng; tổ chức các phong trào thi đua theo hướng có trọng tâm trọng điểm, tập trung vào nhiệm vụ chủ yếu, khâu yếu, việc mới, việc khó.
   Mỗi cán bộ, đoàn viên Công đoàn phải thật sự nghiêm túc, gương mẫu chấp hành pháp luật, kỷ luật, và nội quy, quy định của đơn vị, phải là người đi đầu tiếp cận làm chủ khoa học - kỹ thuật công nghệ hiện đại, khai thác và phát huy tốt nhất trang thiết bị công nghệ hiện có, đẩy mạnh hoạt động nghiên cứu nâng cao chất lượng trong công tác giáo dục, đào tạo của Học viện.
    Đồng thời, Ban chấp hành Công đoàn phải thường xuyên quan tâm chăm lo, bảo vệ quyền, lợi ích hợp pháp, chính đáng của đoàn viên, người lao động, coi đây là điểm then chốt để người lao động tự nguyện tham gia Công đoàn, tin tưởng vào tổ chức Công đoàn. Thực hiện có hiệu quả các hoạt động xã hội, tích cực chăm lo đời sống vật chất, tinh thần của đoàn viên, công nhân viên chức, lao động quốc phòng…
Giai đoạn 2018 - 2023, đã có nhiều đoàn viên Công đoàn ở Học viện KTQS đăng ký đổi mới phương pháp giảng dạy được đánh giá kết quả từ khá trở lên; tham gia viết 227 đầu tài liệu, giáo trình; chủ trì, tham gia 146 đề tài các cấp; hướng dẫn 19 nhóm học viên, sinh viên nghiên cứu khoa học; có 36 sáng kiến, cải tiến kỹ thuật được Học viện, Bộ Quốc phòng công nhận; viết báo, tạp chí chuyên ngành với 229 bài; tham gia bồi dưỡng đội tuyển Olympic Vật lý, Cơ học, Tin học, tiếng Anh, tiếng Nga cho 156 học viên, sinh viên đạt được nhiều thành tích cao; tham gia Giải thưởng Tuổi trẻ sáng tạo trong Quân đội đạt 03 giải Nhất, 02 giải Nhì, 01 giải Ba.', N' 5 năm qua, tổ chức Công đoàn Học viện KTQS có 339 lượt cán bộ đoàn viên Công đoàn, hội viên đạt danh hiệu Chiến sĩ thi đua cơ sở; 670  ...', N'tin2_2.jpg', N'Đại biểu dự Đại hội làm lễ chào cờ, sáng 23/8', N'1', 2, N'Trần Doãn Tuấn', N'Tiểu đoàn 1', NULL, NULL, 1)
INSERT [dbo].[TinBai] ([MaTinBai], [TieuDe], [NgayDang], [LuotXem], [NoiDung], [NoiDungTomTat], [Img], [imgtitle], [MaHV], [MaLoaiTinBai], [NguoiViet], [DonVi], [Img1], [imgtitle1], [PheDuyet]) VALUES (13, N'Seminar “Canh tác thông minh sử dụng trí tuệ nhân tạo và máy bay không người lái tự động”', CAST(N'2023-08-28' AS Date), 19, N'Ngày 22/8/2023, Trung tâm Toán ứng dụng và Tin học/Viện CNTT&TT đã tổ chức buổi seminar học thuật với chủ đề “Canh tác thông minh sử dụng trí tuệ nhân tạo và máy bay không người lái tự động”. Báo cáo viên là TS Nguyễn Trung Thành đến từ Đại học Rowan (New Jersey, Hoa Kỳ).Tại buổi seminar, TS Nguyễn Trung Thành đã trình bày việc ứng dụng Trí tuệ nhân tạo (AI), các mô hình Toán học và máy bay không người lái tự động trong các trang trại việt quất tại Bang New Jersey, Hoa Kỳ. Các ứng dụng này bao gồm đếm số lượng quả việt quất từ đó ước lượng sản lượng thu hoạch, phát hiện sâu bệnh trên bụi việt quất, phát hiện và kiểm soát cỏ dại…

     Buổi seminar đã diễn ra sôi nổi với sự tham gia thảo luận của các cán bộ giảng viên, nghiên cứu sinh, học viên. Đây là cơ hội để các cán bộ giảng viên, nghiên cứu sinh của Viện CNTT&TT trao đổi với các chuyên gia nước ngoài về những chủ đề đang được quan tâm hiện nay trong nước và quốc tế, đặc biệt là sự liên kết giữa Toán học với Công nghệ thông tin và các ứng dụng trong thực tiễn. Kết thúc buổi seminar, nhiều giảng viên đã liên hệ với TS Thành để tìm kiếm cơ hội hợp tác trong nghiên cứu cũng như trao đổi học thuật.  

    * Đôi nét về báo cáo viên tại seminar: TS Nguyễn Trung Thành nhận bằng Cử nhân và Thạc sĩ Toán học tại Đại học Quốc gia Hà Nội năm 2002 và 2003, bằng Tiến sĩ Khoa học Kỹ thuật tại Vrije Universiteit Brussel (Đại học Tự do Brussels) năm 2007. Từ năm 2007-2012, ông làm việc tại Viện Toán Ứng dụng và Tính toán Johann Radon của Viện Hàn lâm Khoa học Áo; từ 2012-2014 tại Khoa Toán & Thống kê tại Đại học North Carolina (Bang North Carolina, Hoa Kỳ); từ 2014-2017 tại Khoa Toán Đại học Bang Iowa (Bang Iowa, Hoa Kỳ) và từ 2017 đến nay tại Đại học Rowan (Bang New Jersey, Hoa Kỳ). TS Thành là chuyên gia về Bài toán ngược trong Lý thuyết Phương trình đạo hàm riêng (bài toán dò mìn, phát hiện vật thể bằng sóng rada…). Ngoài ra, ông cũng quan tâm nghiên cứu nhiều chủ đề khác nhau trong Toán ứng dụng như mô hình hóa và ước lượng tham số, tối ưu hóa, tính toán khoa học, học máy và các ứng dụng thực tiễn.', N'Ngày 22/8/2023, Trung tâm Toán ứng dụng và Tin học/Viện CNTT&TT đã tổ chức buổi seminar học thuật với chủ đề “Canh tác thông minh sử dụng trí tuệ nhân tạo và máy bay không người lái tự động”. Báo cáo ...', N'V4seminar_1.jpg', N'Quang cảnh buổi Seminar', N'1', 3, N'Dương Phước Lộc', N'Tiểu đoàn 1', N'V4seminar_1.jpg', N'Quang cảnh buổi Seminar', 1)
INSERT [dbo].[TinBai] ([MaTinBai], [TieuDe], [NgayDang], [LuotXem], [NoiDung], [NoiDungTomTat], [Img], [imgtitle], [MaHV], [MaLoaiTinBai], [NguoiViet], [DonVi], [Img1], [imgtitle1], [PheDuyet]) VALUES (14, N'Học viện KTQS tổ chức Lễ tốt nghiệp Lớp Chỉ huy Tham mưu kỹ thuật Khóa 22', CAST(N'2023-08-28' AS Date), 14, N'Sáng 02/8/2023, Học viện KTQS đã tổ chức Lễ tốt nghiệp và Trao chứng chỉ đào tạo cán bộ Chỉ huy Tham mưu kỹ thuật (CHTMKT) Khóa 22. Thiếu tướng PGS. TS Lê Minh Thái - Giám đốc Học viện tới dự và chủ trì buổi Lễ. Tham dự buổi Lễ còn có Thiếu tướng Trần Văn Thưởng - Chính ủy Học viện; đại diện chỉ huy các cơ quan, đơn vị, khoa, viện, các bộ môn thuộc Khoa CHTMKT cùng 69 học viên của khóa học.
   Tiếp nối sự thành công trong chương trình đào tạo CHTMKT, Học viện KTQS tiếp tục đào tạo thành công 69 học viên, nâng tổng số cán bộ cấp trung, sư đoàn tốt nghiệp chương trình đào tạo CHTMKT lên gần 600 tính từ năm 2001 đến nay. Số cán bộ này là lực lượng nòng cốt, tham mưu có hiệu quả về công tác kỹ thuật cho lãnh đạo, chỉ huy các cấp; trực tiếp tổ chức triển khai thực hiện công tác kỹ thuật đáp ứng yêu cầu nhiệm vụ ngày càng cao của Quân đội. Trong số học viên tốt nghiệp có nhiều đồng chí đã và đang giữ cương vị chủ chốt ngành kỹ thuật và chỉ huy các cơ quan, đơn vị trong toàn quân, đóng góp đáng kể cho sự phát triển của Quân đội ta.Phát biểu tại buổi Lễ, Thiếu tướng PGS. TS Lê Minh Thái thay mặt Đảng ủy, Ban Giám đốc Học viện chúc mừng 69 học viên tốt nghiệp khóa học. Với kết quả 100% tốt nghiệp Khá, Giỏi (trong đó loại Giỏi có 9/69 đồng chí, đạt 13,04%), đồng chí Giám đốc đã ghi nhận sự nỗ lực học tập, phấn đấu, rèn luyện của các học viên trong suốt 2 năm dưới mái trường Học viện KTQS. Đồng chí Giám đốc nhấn mạnh, với kiến thức về công tác CHTMKT được truyền đạt một cách hệ thống và toàn diện, các đồng chí học viên hoàn toàn có thể tự tin khi thực hiện các nhiệm vụ mới.
    Đại diện học viên khóa học đã phát biểu cảm nghĩ, bày tỏ niềm vinh dự, tự hào khi được học tập, rèn luyện tại Học viện KTQS, một nhà trường chính quy, hiện đại, một môi trường học tập thân thiện với đội ngũ cán bộ, nhà giáo mẫu mực, có trình độ cao, vừa là thầy, vừa là đồng chí, đồng nghiệp, không những dạy học mà còn chia sẻ, truyền đạt nhiều kinh nghiệm quý báu cho các học viên.
    Buổi Lễ kết thúc trong không khí vui tươi, phấn khởi. Chúc các đồng chí học viên sẽ luôn cống hiến hết mình, gặt hái được nhiều thành công trên cương vị công tác Sáng 02/8/2023, Học viện KTQS đã tổ chức Lễ tốt nghiệp và Trao chứng chỉ đào tạo cán bộ Chỉ huy Tham mưu kỹ thuật (CHTMKT) Khóa 22. Thiếu tướng PGS. TS Lê Minh Thái - Giám đốc Học viện tới dự và chủ trì buổi Lễ. Tham dự buổi Lễ còn có Thiếu tướng Trần Văn Thưởng - Chính ủy Học viện; đại diện chỉ huy các cơ quan, đơn vị, khoa, viện, các bộ môn thuộc Khoa CHTMKT cùng 69 học viên của khóa học.
   Tiếp nối sự thành công trong chương trình đào tạo CHTMKT, Học viện KTQS tiếp tục đào tạo thành công 69 học viên, nâng tổng số cán bộ cấp trung, sư đoàn tốt nghiệp chương trình đào tạo CHTMKT lên gần 600 tính từ năm 2001 đến nay. Số cán bộ này là lực lượng nòng cốt, tham mưu có hiệu quả về công tác kỹ thuật cho lãnh đạo, chỉ huy các cấp; trực tiếp tổ chức triển khai thực hiện công tác kỹ thuật đáp ứng yêu cầu nhiệm vụ ngày càng cao của Quân đội. Trong số học viên tốt nghiệp có nhiều đồng chí đã và đang giữ cương vị chủ chốt ngành kỹ thuật và chỉ huy các cơ quan, đơn vị trong toàn quân, đóng góp đáng kể cho sự phát triển của Quân đội ta.Phát biểu tại buổi Lễ, Thiếu tướng PGS. TS Lê Minh Thái thay mặt Đảng ủy, Ban Giám đốc Học viện chúc mừng 69 học viên tốt nghiệp khóa học. Với kết quả 100% tốt nghiệp Khá, Giỏi (trong đó loại Giỏi có 9/69 đồng chí, đạt 13,04%), đồng chí Giám đốc đã ghi nhận sự nỗ lực học tập, phấn đấu, rèn luyện của các học viên trong suốt 2 năm dưới mái trường Học viện KTQS. Đồng chí Giám đốc nhấn mạnh, với kiến thức về công tác CHTMKT được truyền đạt một cách hệ thống và toàn diện, các đồng chí học viên hoàn toàn có thể tự tin khi thực hiện các nhiệm vụ mới.
    Đại diện học viên khóa học đã phát biểu cảm nghĩ, bày tỏ niềm vinh dự, tự hào khi được học tập, rèn luyện tại Học viện KTQS, một nhà trường chính quy, hiện đại, một môi trường học tập thân thiện với đội ngũ cán bộ, nhà giáo mẫu mực, có trình độ cao, vừa là thầy, vừa là đồng chí, đồng nghiệp, không những dạy học mà còn chia sẻ, truyền đạt nhiều kinh nghiệm quý báu cho các học viên.
    Buổi Lễ kết thúc trong không khí vui tươi, phấn khởi. Chúc các đồng chí học viên sẽ luôn cống hiến hết mình, gặt hái được nhiều thành công trên cương vị công tác mới.', N'Sáng 02/8/2023, Học viện KTQS đã tổ chức Lễ tốt nghiệp và Trao chứng chỉ đào tạo cán bộ Chỉ huy Tham mưu kỹ thuật (CHTMKT) Khóa 22. Thiếu tướng PGS. TS Lê Minh Thái - Giám đốc Học viện tới dự và chủ t...', N'P7_K22CHTMKT1.png', N'abc', N'1', 3, N'Đỗ Thành Long', N'Tiểu đoàn 1', N'P7_K22CHTMKT1.png', N'abc', 1)
INSERT [dbo].[TinBai] ([MaTinBai], [TieuDe], [NgayDang], [LuotXem], [NoiDung], [NoiDungTomTat], [Img], [imgtitle], [MaHV], [MaLoaiTinBai], [NguoiViet], [DonVi], [Img1], [imgtitle1], [PheDuyet]) VALUES (15, N'Đỗ Thành Long - Người có niềm đam mê với thuật toán', CAST(N'2023-08-28' AS Date), 20, N'Thượng sĩ Đỗ Thành Long - Học viên Lớp Công nghệ thông tin 1/Đại đội 154/Tiểu đoàn 1 là một minh chứng cho tài năng cũng như tinh thần ham học hỏi, cầu tiến của người con sinh ra và lớn lên tại mảnh đất Vĩnh Phúc anh hùng.
   Ngay từ những ngày còn trên ghế nhà trường, Long sớm đã tìm được niềm đam mê của mình với môn Tin học và quyết tâm theo đuổi. Chính niềm đam mê đó đã giúp Long gặt hái được nhiều thành tích và kết quả đáng ngưỡng mộ. Năm 2017, Long đạt giải Ba Học sinh Giỏi Quốc gia môn Tin học. Đó là những bước đệm vững chắc để đến năm 2018, Long được tuyển thẳng vào Học viện KTQS, theo học chuyên ngành Công nghệ thông tin.Từ những năm đầu vào Học viện, bằng nền tảng thuật toán vững chắc, Long đã gặt hái được một số thành tích rất đáng khích lệ. Năm 2019, sau khi trải qua 2 vòng thi Olympic Tin học cấp Học viện đầy kịch tính, với thành tích giải Nhất khối Siêu cúp, giải Nhì tập thể khối Chuyên tin, Long đã vinh dự được vào đội “VNArmy” - đội tuyển mang tính nhận diện thương hiệu của Học viện KTQS trên đấu trường Olympic Tin học sinh viên, Cuộc thi Lập trình quốc tế ICPC khu vực châu Á - Thái Bình Dương.
    Với sự cố gắng, nỗ lực không ngừng, Long cùng đồng đội đã mang về giải Ba, Kỳ thi Lập trình sinh viên quốc tế ICPC Asia Đà Nẵng 2019 xét riêng cho các đội Việt Nam. Năm 2020, Long tiếp tục đạt giải Nhì cá nhân khối Siêu cúp, giải Nhì tập thể khối Chuyên tin tại Cuộc thi Olympic Tin học cấp Học viện và giành Huy chương Đồng Kỳ thi Lập trình sinh viên quốc tế ICPC Asia Cần Thơ 2020. Chưa dừng lại ở đó, ngày 09/12/2022 vừa qua, Long cùng đội tuyển VNArmy đã vượt qua vòng thi khu vực miền Bắc, Kỳ thi Lập trình sinh viên quốc tế ICPC năm 2022 với giải Ba đồng đội để tham gia vòng thi Quốc gia tại TP Hồ Chí Minh.
 Hiện nay, khi mà nhiều bạn học lập trình theo ngành công nghệ thông tin lại không mấy đam mê với thuật toán, cho rằng nhiều thuật toán không thực tế, không cần thiết. Nhưng theo Long: “Việc học và nghiên cứu thuật toán là rất cần thiết. Thuật toán có khi khiến chương trình của bạn dài hơn rất nhiều. Nhưng hiệu quả là vấn đề không phải bàn cãi, thuật toán giúp chương trình của bạn chạy nhanh hơn, tối ưu hơn. Đó vừa là những kiến thức nền tảng nhất, cũng là những kiến thức cao siêu nhất”.
   Tôi thực sự khâm phục Long với mỗi lần tham gia kỳ thi đồng đội dài 5 tiếng liên tục, tập trung hết 100% tinh thần, sử dụng những thuật toán phức tạp nhất, đôi khi là những thuật toán đơn giản nhất nhưng yêu cầu tư duy cao, sử dụng hiệu quả các công thức toán học để giải quyết 13 bài toán mà ban tổ chức đưa ra. Đó là niềm đam mê mãnh liệt, Long đã theo đuổi được 8 năm rồi.
    Không chỉ giỏi thuật toán, kết quả học tập của Long cũng rất đáng ngưỡng mộ, điểm trung bình năm học 2020-2021, 2021-2022 của Long lần lượt là 8.28, 8.15. Bên cạnh đó, Long vinh dự được tặng danh hiệu Chiến sĩ tiên tiến 04 năm liên tiếp. Ngoài ra, Long còn tích cực tham gia các hoạt động Đoàn, các phong trào thể dục, thể thao, văn hóa, văn nghệ của đơn vị; luôn nhận và hoàn thành tốt các nhiệm vụ của đơn vị phân công với tinh thần trách nhiệm cao; vui vẻ, hòa đồng, sẵn sàng giúp đỡ đồng chí, đồng đội trong học tập cũng như trong sinh hoạt. Với những đức tính và phẩm chất tốt đẹp đó, Long luôn được thầy cô, chỉ huy đơn vị và đồng chí, đồng đội tin tưởng, yêu mến.
 Với tài năng và những nỗ lực của bản thân, Long sẽ còn gặt hái được nhiều thành tích hơn nữa và sẽ luôn là tấm gương sáng cho học viên trong đơn vị noi theo.', N'Thượng sĩ Đỗ Thành Long - Học viên Lớp Công nghệ thông tin 1/Đại đội 154/Tiểu đoàn 1 là một minh chứng cho tài năng cũng như tinh thần ham học hỏi, cầu tiến của người con sinh ra và lớn lên tại mảnh đ...', N'c154_ThanhLong.png', N'Đỗ Thành Long (đứng thứ nhất bên trái sang) cùng đồng đội tham gia Kỳ thi Lập trình sinh viên quốc tế ICPC năm  2022 vòng quốc gia', N'1', 1, N'Đỗ Thành Long', N'Tiểu đoàn 1', N'c154_ThanhLong.png', N'Đỗ Thành Long (đứng thứ nhất bên trái sang) cùng đồng đội tham gia Kỳ thi Lập trình sinh viên quốc tế ICPC năm  2022 vòng quốc gia', 1)
INSERT [dbo].[TinBai] ([MaTinBai], [TieuDe], [NgayDang], [LuotXem], [NoiDung], [NoiDungTomTat], [Img], [imgtitle], [MaHV], [MaLoaiTinBai], [NguoiViet], [DonVi], [Img1], [imgtitle1], [PheDuyet]) VALUES (16, N'Học viện KTQS tổ chức Lễ Tốt nghiệp và trao bằng Tiến sĩ, Thạc sĩ năm 2023', CAST(N'2023-08-28' AS Date), 88, N'Sáng 27/6/2023, Học viện KTQS đã tổ chức trọng thể Lễ Tốt nghiệp và trao bằng Tiến sĩ, Thạc sĩ năm 2023. Tới dự buổi Lễ, về phía khách mời có: Đại tá Nguyễn Tiến Định - đại diện Cục Nhà trường/BTTM, Thượng tá Triệu Quang Phi - đại diện Cục Đối ngoại, Trung tá Vông sạ Vẳn Bút tạ vông - Phó Tùy viên Quốc phòng Lào; về phía Học viện KTQS, tới dự và chỉ đạo buổi Lễ có Thiếu tướng PGS. TS, Nhà giáo Ưu tú Lê Minh Thái - Giám đốc Học viện, các đồng chí trong Ban Giám đốc Học viện; các Giáo sư, Nhà giáo Nhân dân, Nhà giáo Ưu tú, đại diện các cơ quan, đơn vị trong toàn Học viện và đông đủ các tân Tiến sĩ, tân Thạc sĩ.
   Phát huy truyền thống gần 60 năm xây dựng, trưởng thành và hơn 40 năm đào tạo sau đại học, Học viện KTQS luôn quan tâm phát triển về mọi mặt, chú trọng mở rộng ngành nghề, đối tượng, loại hình đào tạo, thường xuyên đổi mới nội dung, chương trình đào tạo theo hướng cập nhật kiến thức mới đáp ứng yêu cầu của sự phát triển khoa học công nghệ, VKTBKT mới; chú trọng nâng cao phẩm chất chính trị, năng lực tác phong chỉ huy của người cán bộ, sĩ quan trong quân đội. Tính đến nay, Học viện đã đào tạo được hơn 530 tiến sĩ, hơn một vạn thạc sĩ và hàng nghìn cán bộ chỉ huy tham mưu kỹ thuật cấp chiến thuật - chiến dịch, trong đó có các học viên đào tạo cho bạn Lào, Campuchia. Qua đó đã cung cấp nguồn nhân lực chất lượng cao cho quân đội và đất nước, góp phần xây dựng quân đội cách mạng, chính quy, tinh nhuệ đồng thời góp phần thắt chặt mối quan hệ đoàn kết với các nước bạn Lào, Campuchia.
    Tiếp nối truyền thống đó, Học viện KTQS tiếp tục đào tạo thành công 27 nghiên cứu sinh và 212 học viên cao học Khóa 33. Đây là kết quả của sự đoàn kết và những nỗ lực vượt bậc, cùng nhau vượt qua khó khăn trong bối cảnh dịch bệnh covid-19 để đạt được kết quả tốt đẹp như ngày hôm nay. Phát biểu tại buổi Lễ, Thiếu tướng PGS. TS, Nhà giáo Ưu tú Lê Minh Thái thay mặt Đảng ủy, Ban Giám đốc Học viện đã ghi nhận sự đóng góp tích cực, hiệu quả, tâm huyết và lòng yêu nghề của đội ngũ các giáo sư, nhà khoa học, thầy giáo, cô giáo của Học viện KTQS đã dành cho NCS, học viên cao học trong suốt quá trình giảng dạy, hướng dẫn, phản biện và đánh giá luận văn, luận án các cấp để có được kết quả vinh quang này. Nhân dịp này, đồng chí Giám đốc Học viện đã bày tỏ lòng biết ơn sâu sắc tới Quân ủy TW, BQP và các cơ quan của BQP, Bộ GD&ĐT đã quan tâm, chỉ đạo sâu sát công tác GD-ĐT nói chung của Học viện KTQS trong đó có đào tạo thạc sĩ, tiến sĩ; cảm ơn Tùy viên Quốc phòng Lào, các đơn vị trong và ngoài Quân đội đã luôn hợp tác và tạo điều kiện cho Học viện hoàn thành nhiệm vụ.
    Đồng chí Giám đốc cũng nhắn nhủ tới các tân Tiến sĩ và tân Thạc sĩ, tấm bằng mà các NCS, học viên nhận được ngày hôm nay là bằng chứng cho sự kiên trì và lòng say mê học tập, nghiên cứu khoa học. Điều đó đã giúp các đồng chí vượt qua một chặng đường gian nan vất vả để được tiếp cận gần và bước chân đứng vào hàng ngũ của các nhà khoa học.
 Đứng trước cơ hội và thách thức của cuộc cách mạng công nghiệp lần thứ 4, công cuộc chuyển đổi số, yêu cầu hiện đại hóa Quân đội đòi hỏi người cán bộ kỹ thuật cần có tư duy sáng tạo, năng lực tự đào tạo, tự nghiên cứu, khả năng giải quyết vấn đề, khả năng thích nghi với những thách thức và yêu cầu thay đổi liên tục của nhiệm vụ, đồng chí Thiếu tướng Lê Minh Thái đã bày tỏ niềm tin vào các tân Tiến sĩ, Thạc sĩ sẽ có đủ bản lĩnh, trí tuệ, kiến thức để hoàn thành tốt mọi nhiệm vụ được giao và mong mỏi các tân Tiến sĩ, Thạc sĩ sẽ có nhiều đóng góp cho lĩnh vực chuyên môn mình đang theo đuổi, cho sự nghiệp khoa học của ngành với những công trình nghiên cứu và những sản phẩm khoa học có giá trị.
   Nhân dịp buổi Lễ trọng thể này, Thiếu tướng Lê Minh Thái cũng trân trọng gửi lời cảm ơn tới thân nhân các NCS, học viên vừa được nhận bằng tốt nghiệp vì những đóng góp, hi sinh thầm lặng cho sự thành công của con em mình và khóa học.
    Kết thúc buổi Lễ, thay mặt toàn thể cán bộ, nhân viên Học viện KTQS, đồng chí Giám đốc Học viện đã biểu dương các kết quả nghiên cứu, học tập của NCS, học viên tốt nghiệp ngày hôm nay và chúc các tân Tiến sĩ, Thạc sĩ luôn mạnh khỏe, hạnh phúc, thành công trong sự nghiệp.', N'Sáng 27/6/2023, Học viện KTQS đã tổ chức trọng thể Lễ Tốt nghiệp và trao bằng Tiến sĩ, Thạc sĩ năm 2023. Tới dự buổi Lễ, về phía khách mời có: Đại tá Nguyễn Tiến Định - đại diện Cục Nhà trường/BTTM, T...', N'p7_2.jpg', N'Quang cảnh buổi tốt nghiệp', N'1', 3, N'Đỗ Thành Long', N'Tiểu đoàn 1', N'p7_2.jpg', N'Quang cảnh buổi tốt nghiệp', 1)
INSERT [dbo].[TinBai] ([MaTinBai], [TieuDe], [NgayDang], [LuotXem], [NoiDung], [NoiDungTomTat], [Img], [imgtitle], [MaHV], [MaLoaiTinBai], [NguoiViet], [DonVi], [Img1], [imgtitle1], [PheDuyet]) VALUES (18, N'Lễ tổng kết và trao giải Olympic Cơ học toàn quốc lần thứ 33, năm 2023 khu vực miền Bắc', CAST(N'2023-08-28' AS Date), 125, N'Ngày 10/6/2023, tại Hà Nội, Hội Cơ học Việt Nam cùng Liên hiệp các Hội khoa học Kỹ thuật Việt Nam phối hợp với Học viện KTQS đã long trọng tổ chức Lễ tổng kết và trao giải Olympic Cơ học toàn quốc lần thứ 33 năm 2023 khu vực miền Bắc.

     Tham dự Lễ tổng kết có GS. TSKH Nguyễn Tiến Khiêm - Chủ tịch Hội Cơ học Việt Nam; lãnh đạo Liên hiệp các Hội Khoa học và Kỹ thuật Việt Nam, Ban Chấp hành Hội Cơ học Việt Nam và các đại biểu đến từ 15 cơ sở giáo dục đại học phía Bắc cùng các học viên, sinh viên đạt giải trong kỳ thi. Về phía Học viện KTQS có Thiếu tướng Trần Văn Thưởng - Chính ủy Học viện, các đồng chí trong Ban Giám đốc và chỉ huy các cơ quan, đơn vị trực thuộc Học viện.

     Tại Lễ tổng kết, Thiếu tướng Trần Văn Thưởng nhấn mạnh, trong lần tổ chức này, Học viện KTQS đã chủ động liên hệ, phối hợp chặt chẽ với Hội Cơ học và các trường dự thi, đồng thời huy động tối đa lực lượng, cơ sở vật chất để kỳ thi diễn ra trong bầu không khí nghiêm túc nhưng cũng rất vui tươi, cởi mở, tạo điều kiện thuận lợi nhất cho các đoàn về dự thi và công tác chấm thi.

     Phát biểu tại Lễ tổng kết, GS. TSKH Nguyễn Tiến Khiêm đánh giá cao kết quả đạt được của thầy và trò các trường tham gia. Đặc biệt là sự chuẩn bị, phối hợp triển khai công tác bảo đảm, phục vụ cho kỳ thi của Học viện KTQS. Công tác tổ chức chu đáo, chủ động của Học viện đã góp phần đáng kể cho thành công của kỳ thi.Với kỳ thi Olympic Cơ học toàn quốc năm nay, Học viện KTQS đã đạt được kết quả rất ấn tượng. Đoàn dự thi của Học viện tham gia đầy đủ 12/12 môn thi, kết quả đạt được cụ thể: 95 giải cá nhân, trong đó có 07 giải Nhất, 25 giải Nhì, 63 giải Ba; 10 giải đồng đội, trong đó có 04 giải Nhất; 05 giải Nhì; 01 giải Ba.

     Lễ tổng kết và trao giải đã khép lại một kỳ thi Olympic Cơ học toàn quốc vô cùng thành công và ý nghĩa. Đó là sự khẳng định cho những cố gắng, nỗ lực học tập và ôn luyện của các học viên, sinh viên ngành kỹ thuật trên toàn quốc nói chung và của thầy trò Học viện KTQS nói riêng. Mong rằng thời gian tới, Học viện sẽ tiếp tục tham gia các cuộc thi khoa học, kỹ thuật trên toàn quốc và giành được kết quả cao hơn nữa; tích cực tạo ra sân chơi bổ ích và chất lượng, phát huy truyền thống hiếu học, lan tỏa và thúc đẩy tinh thần nghiên cứu khoa học của các tài năng trẻ trong toàn Học viện.', N'Ngày 10/6/2023, tại Hà Nội, Hội Cơ học Việt Nam cùng Liên hiệp các Hội khoa học Kỹ thuật Việt Nam phối hợp với Học viện KTQS đã long trọng tổ chức Lễ tổng kết và trao giải Olympic Cơ học toàn quốc lần...', N'P2_OlympicCoHoc1.png', N'Quang cảnh buổi trao giải', N'1', 3, N'Dương Phước Lộc', N'Tiểu đoàn 1', N'P2_OlympicCoHoc2.png', N'Thiếu tướng Trần Văn Thưởng - Chính ủy Học viện KTQS và GS. TSKH Nguyễn Tiến Khiêm - Chủ tịch Hội Cơ học Việt Nam
trao thưởng cho các học viên, sinh viên đạt giải cao tại kỳ thi', 1)
INSERT [dbo].[TinBai] ([MaTinBai], [TieuDe], [NgayDang], [LuotXem], [NoiDung], [NoiDungTomTat], [Img], [imgtitle], [MaHV], [MaLoaiTinBai], [NguoiViet], [DonVi], [Img1], [imgtitle1], [PheDuyet]) VALUES (19, N'Lễ tốt nghiệp sinh viên kỹ sư dân sự Khóa 17', CAST(N'2023-08-28' AS Date), 50, N'Chiều 30/6/2023, Học viện KTQS long trọng tổ chức Lễ tốt nghiệp cho sinh viên kỹ sư dân sự Khóa 17. Thiếu tướng PGS. TS Lê Minh Thái - Giám đốc Học viện chủ trì buổi Lễ. Tham dự buổi Lễ còn có các đồng chí trong Ban Giám đốc; đại diện chỉ huy các cơ quan, khoa, viện; các đồng chí cán bộ, giảng viên, quý phụ huynh cùng 85 tân kỹ sư niên khóa 2018-2023.

     Tại buổi Lễ, đại tá Nguyễn Trọng Lưu - Trưởng phòng Đào tạo đã trình bày báo cáo tổng kết khóa học. Theo đó, đây là khóa thứ 10 Học viện triển khai đào tạo theo học chế tín chỉ. Trong quá trình đào tạo, nhờ sự chỉ đạo chặt chẽ và thường xuyên của Đảng ủy, Ban Giám đốc Học viện, việc triển khai nhiệm vụ đào tạo và quản lý sinh viên đã được Phòng Đào tạo phối hợp cùng các khoa, viện và cơ quan chức năng tạo điều kiện tốt nhất để sinh viên hoàn thành nhiệm vụ học tập của mình.

     Với sự cố gắng, phấn đấu trong học tập, rèn luyện, 85 sinh viên Khóa 17 đã tốt nghiệp ra trường, trong đó có 09 sinh viên tốt nghiệp loại Giỏi (10,6%); 66 sinh viên tốt nghiệp loại Khá (77,6%); 08 sinh viên tốt nghiệp loại Trung bình khá (9,4%); 02 sinh viên tốt nghiệp loại Trung bình (2,4%); có 07 sinh viên ưu tú đã được kết nạp vào Đảng Cộng sản Việt Nam.
Thay mặt Đảng ủy, Ban Giám đốc Học viện, Thiếu tướng Lê Minh Thái gửi lời chúc mừng tới toàn thể các tân kỹ sư đã hoàn thành chương trình đào tạo và được nhận bằng tốt nghiệp. Đồng thời, đồng chí cũng ghi nhận đóng góp của toàn thể đội ngũ cán bộ, giảng viên, nhân viên đã làm việc hết mình để đào tạo các kỹ sư trẻ phục vụ sự nghiệp công nghiệp hóa, hiện đại hóa đất nước. Cũng tại Lễ tốt nghiệp, Thủ trưởng Học viện đã tặng bằng khen và giấy khen cho 17 sinh viên có thành tích học tập tiêu biểu trong toàn khóa.

     Trong không khí trang trọng và xúc động tình thầy trò, Lễ tốt nghiệp đã kết thúc tốt đẹp, đánh dấu cột mốc quan trọng trên chặng đường học tập và khẳng định giá trị bản thân của mỗi sinh viên. Tin tưởng rằng, với những hành trang tại Học viện KTQS, các tân kỹ sư sẽ vững vàng, tự tin phát huy bản lĩnh và kiến thức để viết tiếp giấc mơ của mình.', N'Chiều 30/6/2023, Học viện KTQS long trọng tổ chức Lễ tốt nghiệp cho sinh viên kỹ sư dân sự Khóa 17. Thiếu tướng PGS. TS Lê Minh Thái - Giám đốc Học viện chủ trì buổi Lễ. Tham dự buổi Lễ còn có các đồn...', N'P2_TNK171.png', N'Thiếu tướng PGS. TS Lê Minh Thái - Giám đốc Học viện phát biểu tại buổi lễ', N'1', 3, N'Trần Doãn Tuấn', N'Tiểu đoàn 1', N'P2_TNK172.png', N'Đại diện sinh viên phát biểu', 1)
INSERT [dbo].[TinBai] ([MaTinBai], [TieuDe], [NgayDang], [LuotXem], [NoiDung], [NoiDungTomTat], [Img], [imgtitle], [MaHV], [MaLoaiTinBai], [NguoiViet], [DonVi], [Img1], [imgtitle1], [PheDuyet]) VALUES (22, N'Xét duyệt các đề xuất tài trợ từ Quỹ hỗ trợ NCKH của Học viện năm 2023', CAST(N'2023-09-07' AS Date), 11, N'Ngày 29/8/2023, Hội đồng quản lý Quỹ Hỗ trợ NCKH của Học viện đã họp xét duyệt hình thức và mức tài trợ cho các đề tài xin tài trợ từ kinh phí Quỹ Hỗ trợ NCKH năm 2023. Thiếu tướng Lê Minh Thái - Giám đốc Học viện, Chủ tịch Hội đồng chủ trì buổi họp. Tham dự buổi họp có Thiếu tướng Trần Văn Thưởng - Chính ủy Học viện, Đại tá Mai Quang Huy - Phó Giám đốc Học viện và các đồng chí Ủy viên Hội đồng quản lý Quỹ Hỗ trợ NCKH của Học viện.ại buổi họp, sau khi nghe Phòng Khoa học Quân sự (KHQS) báo cáo tiến độ các đề tài đang thực hiện và kết quả đăng ký, xét duyệt các đề tài thực hiện từ năm 2023 sử dụng kinh phí Quỹ hỗ trợ NCKH của Học viện, Hội đồng đã bỏ phiếu thông qua 05 đề xuất, gồm các đề tài: (1) Nghiên cứu chế tạo pin natri-ion trên cơ sở hệ vật liệu cấu trúc lớp oxít kim loại kiềm - kim loại chuyển tiếp Nax(AyM1-yO2)/K11; (2) Nghiên cứu tổng hợp composite chứa than sinh học và nano ferrite nhằm ứng dụng trong hấp thụ sóng ra đa/K11; (3) Nghiên cứu làm chủ công nghệ chế tạo tấm auxetic bằng công nghệ in 3D/K21; (4) Nghiên cứu cải tiến hệ thống cung cấp nhiên liệu nhằm nâng cao hiệu suất cho động cơ; (5) Nghiên cứu phát triển hệ thống dẫn đường cho robot tự hành thông minh hoạt động ngoài trời sử dụng các kỹ thuật học máy tiên tiến/V6.
     Kết luận tại buổi họp, Thiếu tướng Lê Minh Thái - Giám đốc Học viện, Chủ tịch Hội đồng giao nhiệm vụ cho Phòng KHQS quản lý chặt chẽ các đề tài, định kỳ kiểm tra, báo cáo tiến độ thực hiện nhằm nâng cao chất lượng nghiệm thu đề tài; yêu cầu các chủ nhiệm đề xuất triển khai nhiệm vụ theo đúng các nội dung trong thuyết minh, cam kết tạo ra các sản phẩm chất lượng theo thuyết minh được phê duyệt; giao cho Phòng KHQS, Ban Tài chính và các cơ quan nghiên cứu điều chỉnh một số điều lệ, tiêu chí, thủ tục của Quỹ cho phù hợp với tình hình hiện tại, báo cáo Hội đồng nhằm tạo điều kiện thuận lợi nhất cho các nhà khoa học và nâng cao hiệu quả hoạt động của Quỹ hỗ trợ NCKH, tạo ra các kết quả nghiên cứu định hướng công nghệ nền, công nghệ lõi, góp phần nâng cao chất lượng hoạt động KHCN của Học viện, bám sát định hướng KHCN của Bộ Quốc phòng và Bộ KH&CN.', N'Ngày 29/8/2023, Hội đồng quản lý Quỹ Hỗ trợ NCKH của Học viện đã họp xét duyệt hình thức và mức tài trợ cho các đề tài xin tài trợ từ kinh phí Quỹ Hỗ ...', N'suaQuyKHCN1.jpg', N'Quang cảnh buổi họp', N'2019010041', 3, N'Nguyễn Thị Huyền Trang', N'd1', NULL, NULL, 1)
INSERT [dbo].[TinBai] ([MaTinBai], [TieuDe], [NgayDang], [LuotXem], [NoiDung], [NoiDungTomTat], [Img], [imgtitle], [MaHV], [MaLoaiTinBai], [NguoiViet], [DonVi], [Img1], [imgtitle1], [PheDuyet]) VALUES (24, N'Học viện KTQS tổ chức gặp mặt, nói chuyện chuyên đề nhân kỷ niệm 114 năm Ngày Quốc tế Phụ nữ', CAST(N'2023-08-03' AS Date), 2000, N'Chiều 6/3, tại Hà Nội, Học viện KTQS tổ chức gặp mặt, nói chuyện chuyên đề và giao lưu thể dục thể thao chào mừng kỷ niệm 114 năm Ngày Quốc tế Phụ nữ 8/3 (8/3/1910 - 8/3/2024).

     Buổi gặp mặt, nói chuyện chuyên đề và giao lưu thể dục thể thao nhằm tuyên truyền, giáo dục cán bộ, hội viên nhận thức sâu sắc về truyền thống, những thành tích, sự cống hiến to lớn của thế hệ cán bộ, hội viên phụ nữ qua các thời kỳ, qua đó khơi dậy niềm tự hào, xây dựng ý chí quyết tâm thực hiện tốt mọi nhiệm vụ được giao. Thông qua hoạt động nhằm giúp cán bộ, hội viên phụ nữ có thêm những kiến thức, kỹ năng cần thiết để xây dựng, gìn giữ hạnh phúc gia đình, lan tỏa tình yêu thương, vun đắp các giá trị của phụ nữ thời đại công nghệ 4.0; góp phần nâng cao chất lượng hoạt động công tác phụ nữ và phong trào phụ nữ Học viện, xây dựng tình đoàn kết, gắn bó giữa phụ nữ của Học viện KTQS với phụ nữ của Bộ Tư lệnh 86, phụ nữ phường Cổ Nhuế 1, quận Bắc Từ Liêm, TP Hà Nội. Tại buổi gặp mặt, Thiếu tướng Trần Văn Duy - Phó Chính ủy Học viện KTQS khẳng định, trải qua mấy nghìn năm lịch sử, phụ nữ Việt Nam đã tỏ rõ vai trò là lực lượng có nhiều đóng góp to lớn và quan trọng trong sự nghiệp dựng nước và giữ nước, cũng như trong công cuộc xây dựng và bảo vệ Tổ quốc Việt Nam xã hội chủ nghĩa. Kế thừa truyền thống vẻ vang đó, phụ nữ Quân đội, phụ nữ Học viện KTQS, phụ nữ Bộ Tư lệnh 86 đã và đang phát huy tốt vai trò trách nhiệm của người quân nhân, không ngừng phấn đấu, học tập, rèn luyện.

     Thời gian qua, công tác phụ nữ và phong trào phụ nữ Học viện, phụ nữ Bộ Tư lệnh 86 đã có bước phát triển mới, vững chắc, toàn diện. Từ phong trào phụ nữ đã tạo ra khí thế, động lực và môi trường tốt để phụ nữ Học viện, phụ nữ Bộ tư lệnh 86 phấn đấu hoàn thành tốt mọi nhiệm vụ được giao', N'Chiều 6/3, tại Hà Nội, Học viện KTQS tổ chức gặp mặt, nói chuyện chuyên đề và giao lưu thể dục thể thao chào mừng kỷ niệm 114 năm Ngày Quốc tế Phụ nữ 8/3 (8/3/1910 - 8/3/2024).

     Buổi gặp mặt, nói chuyện chuyên đề và giao lưu thể dục thể thao nhằm tuyên truyền, giáo dục cán bộ, hội viên nhận thức sâu sắc về truyền thống, những thành tích, sự cống hiến to lớn của thế hệ cán bộ, hội viên phụ nữ qua các thời kỳ, qua đó khơi dậy niềm tự hào, xây dựng ý chí quyết tâm thực hiện tốt mọi nhiệm vụ được giao.', N'MT1.jpg', N'Quang cảnh buổi Seminar', N'1', 3, N'Đỗ Thành Long', N'Học Viện Kỹ Thuật Quân sự', N'MT-1.jpg', N'Các đại biểu Học viện KTQS dâng hoa, viếng Lăng Chủ tịch Hồ Chí Minh', 1)
INSERT [dbo].[TinBai] ([MaTinBai], [TieuDe], [NgayDang], [LuotXem], [NoiDung], [NoiDungTomTat], [Img], [imgtitle], [MaHV], [MaLoaiTinBai], [NguoiViet], [DonVi], [Img1], [imgtitle1], [PheDuyet]) VALUES (1024, N'Học viện KTQS tổ chức hoạt động đền ơn đáp nghĩa tại Sơn La, Điện Biên', CAST(N'2024-03-25' AS Date), 4706, N'    Từ ngày 22 đến 24/3, đoàn công tác Học viện KTQS và Ngân hàng Đầu tư và Phát triển Việt Nam (BIDV) chi nhánh Đống Đa do Thiếu tướng Trần Văn Thưởng - Chính ủy Học viện làm Trưởng đoàn đã có chuyến tham quan, học tập truyền thống, tổ chức hoạt động đền ơn đáp nghĩa tại hai tỉnh Sơn La và Điện Biên.
     Hoạt động nhằm tuyên truyền, giáo dục cho cán bộ, giảng viên, nhân viên, học viên, chiến sĩ trong Học viện có nhận thức đúng đắn, sâu sắc vị trí, vai trò, ý nghĩa của Chiến thắng Điện Biên Phủ; giáo dục truyền thống “Uống nước nhớ nguồn”, “Đền ơn đáp nghĩa”, tinh thần đại đoàn kết của dân tộc Việt Nam… Tri ân sự hy sinh, cống hiến và những đóng góp to lớn của các anh hùng liệt sĩ, thương binh, bệnh binh, gia đình có công với cách mạng trong cuộc kháng chiến giải phóng dân tộc và bảo vệ Tổ quốc; bồi đắp tinh thần yêu nước, ý chí cách mạng cho mọi cán bộ, giảng viên, nhân viên, học viên, chiến sĩ trong Học viện.
     Trong chuyến công tác, các đại biểu đã tham quan Nhà tù Sơn La; tham quan Sở chỉ huy Chiến dịch Điện Biên Phủ; dâng hương tưởng niệm Đại tướng Võ Nguyên Giáp; thăm, tặng quà Ban Chỉ huy Quân sự thành phố Điện Biên Phủ; gặp mặt, tặng quà các đối tượng chính sách trên địa bàn thành phố Điện Biên Phủ và huyện Điện Biên; viếng các nghĩa trang liệt sĩ, tham quan Bảo tàng Chiến thắng lịch sử Điện Biên Phủ…
     Phát biểu tại buổi gặp mặt, tặng quà các đối tượng chính sách trên địa bàn thành phố Điện Biên Phủ và huyện Điện Biên, Thiếu tướng Trần Văn Thưởng chia sẻ, hưởng ứng Lời kêu gọi “Cả nước hướng về Điện Biên anh hùng” của Thủ tướng Chính phủ, nhằm bày tỏ lòng biết ơn, sự tri ân sâu sắc tới các thương - bệnh binh, cựu chiến binh, những người đã tham gia, hy sinh và cống hiến xương máu, công sức của mình cho sự nghiệp kháng chiến của dân tộc; đồng thời chia sẻ những khó khăn, mất mát bởi di chứng của chất độc hóa học da cam mà chiến tranh đã để lại.
     Nhân dịp này, Học viện KTQS và Ngân hàng BIDV chi nhánh Đống Đa (Hà Nội) dành tặng những món quà đến các đối tượng chính sách trên địa bàn thành phố Điện Biên Phủ và huyện Điện Biên. Những món quà tuy nhỏ về giá trị vật chất nhưng thể hiện tình cảm của cán bộ, giáo viên, nhân viên, hạ sĩ quan, chiến sĩ trong Học viện và cán bộ, nhân viên của Ngân hàng BIDV chi nhánh Đống Đa, đồng thời thể hiện đạo lý “Uống nước nhớ nguồn”, “Tương thân, tương ái” của dân tộc ta.', N'Từ ngày 22 đến 24/3, đoàn công tác Học viện KTQS và Ngân hàng Đầu tư và Phát triển Việt Nam (BIDV) chi nhánh Đống Đa do Thiếu tướng Trần Văn Thưởng - Chính ủy Học viện làm Trưởng đoàn đã có chuyến tham quan, học tập truyền thống, tổ chức hoạt động đền ơn đáp nghĩa tại hai tỉnh Sơn La và Điện Biên.', N'MT2.jpg', N'Quang cảnh tại Sơn La, Điệm biên ', N'1', 3, N'Thái Thị Minh Tú', N'Học Viện Kỹ Thuật Quân sự', N'MT-2.jpg', N'Ảnh tại khu di tích', 1)
INSERT [dbo].[TinBai] ([MaTinBai], [TieuDe], [NgayDang], [LuotXem], [NoiDung], [NoiDungTomTat], [Img], [imgtitle], [MaHV], [MaLoaiTinBai], [NguoiViet], [DonVi], [Img1], [imgtitle1], [PheDuyet]) VALUES (1030, N'Học viện KTQS tổ chức tập huấn 05 vũ điệu trong sinh hoạt tập thể', CAST(N'2024-03-06' AS Date), 5000, N'Ngày 03/3/2024, Học viện KTQS đã tổ chức tập huấn 05 vũ điệu trong sinh hoạt tập thể cho 292 đồng chí là hạt nhân văn hóa - văn nghệ của các cơ quan, khoa, viện, trung tâm và các hệ, tiểu đoàn. Tham gia hướng dẫn các vũ điệu có Trung tá Thái Thị Phương Hoa và Trung tá Lê Thị Quỳnh Phương - Giảng viên Khoa múa/Trường Đại học Văn hóa nghệ thuật Quân đội.. Phát biểu khai mạc buổi tập huấn, Đại tá Cao Trung Hà - Phó Chủ nhiệm Chính trị Học viện đã nêu bật vị trí, ý nghĩa của vũ điệu trong các sự kiện sinh hoạt văn hóa văn nghệ ở các đơn vị cơ sở. Các vũ điệu sẽ góp phần đáp ứng nhu cầu hưởng thụ nghệ thuật, tạo sân chơi lành mạnh, bổ ích, nâng cao thể chất, kỹ năng giao tiếp văn hóa, xây dựng hình ảnh “Bộ đội Cụ Hồ” thời kỳ mới; lan tỏa tinh thần đoàn kết đồng chí, đồng đội, quân - dân, tình yêu quê hương đất nước và niềm tự hào dân tộc, truyền thống Quân đội cho cán bộ, giảng viên, học viên, nhân viên, chiến sĩ trong Học viện.

     05 vũ điệu được nghiên cứu lấy chất liệu dựa trên các điệu múa dân gian Thái, Tây Nguyên, Khơ-me và các động tác nhịp điệu mô phỏng các hoạt động của bộ đội Việt Nam để sáng tác. Các động tác trong mỗi vũ điệu thể hiện tình cảm quân - dân gắn kết. Dù nhịp quân hành của người chiến sĩ còn gian nan, nhiều thử thách, nhưng tinh thần chung luôn thể hiện sự trẻ trung, lạc quan, phấn khởi của những người lính Cụ Hồ. Các vũ điệu tập thể trong Quân đội đảm bảo các tiêu chí mang tính đại chúng cao, dễ thuộc, nhưng cũng rất giàu tính nghệ thuật, thẩm mỹ, thể hiện được bản sắc riêng của Quân đội Nhân dân Việt Nam với tinh thần hào sảng, đoàn kết và thân thiện.

     Dưới sự hướng dẫn của 2 giáo viên Trường Đại học Văn hóa nghệ thuật Quân đội, lớp tập huấn đã tiến hành luyện tập các vũ điệu theo từng phân đoạn, từ tập chậm từng động tác, sau đó tiến hành ghép nhạc từng động tác và ghép toàn bộ bài nhảy. Với sự hăng hái và nhiệt huyết của các thành viên, buổi tập huấn diễn ra rất sôi nổi. Qua quá trình luyện tập, nhiều đồng chí đã nhanh chóng thuần thục động tác của 05 điệu vũ và thể hiện đều và đẹp trên nền nhạc.

     Tin tưởng rằng, 292 đồng chí tham gia tập huấn sẽ tự tin phát huy vai trò hạt nhân văn hóa - văn nghệ trong tổ chức hướng dẫn cho cán bộ, giảng viên, học viên, nhân viên, chiến sĩ trong đơn vị luyện tập 05 vũ điệu, góp phần làm phong phú hơn đời sống văn hóa, tinh thần cho bộ đội.', N'Ngày 03/3/2024, Học viện KTQS đã tổ chức tập huấn 05 vũ điệu trong sinh hoạt tập thể cho 292 đồng chí là hạt nhân văn hóa - văn nghệ của các cơ quan, khoa, viện, trung tâm và các hệ, tiểu đoàn. Tham gia hướng dẫn các vũ điệu có Trung tá Thái Thị Phương Hoa và Trung tá Lê Thị Quỳnh Phương - Giảng viên Khoa múa/Trường Đại học Văn hóa nghệ thuật Quân đội.', N'dv4.png', N'Đại tá Cao Trung Hà - Phó Chủ nhiệm Chính trị Học viện phát biểu kha mạc tập huấn', N'1', 3, N'Thái Thị Minh Tú', N'Tiểu Đoàn 1', N'dv2.png', N'Hình ảnh buổi tập huấn', 1)
INSERT [dbo].[TinBai] ([MaTinBai], [TieuDe], [NgayDang], [LuotXem], [NoiDung], [NoiDungTomTat], [Img], [imgtitle], [MaHV], [MaLoaiTinBai], [NguoiViet], [DonVi], [Img1], [imgtitle1], [PheDuyet]) VALUES (1031, N'Học viện KTQS phát động “Tết trồng cây đời đời nhớ ơn Bác Hồ”', CAST(N'2024-03-04' AS Date), 3000, N'Sáng 02/3/2024, Học viện KTQS phát động “Tết trồng cây đời đời nhớ ơn Bác Hồ”, ra quân Tháng Thanh niên - nhằm tiếp tục hưởng ứng phong trào và thực hiện Chương trình trồng một tỷ cây xanh với thông điệp “Vì một Việt Nam xanh” do Thủ tướng Chính phủ phát động. Phát biểu tại buổi phát động, Thiếu tướng Trần Văn Duy - Phó Chính ủy Học viện KTQS nhấn mạnh, ngày 28/11/1959, với tầm nhìn chiến lược, Chủ tịch Hồ Chí Minh đã viết bài đăng trên Báo Nhân Dân với chủ đề “Tết trồng cây”, Người căn dặn “Mùa xuân là Tết trồng cây, làm cho đất nước càng ngày càng xuân”. Từ đó đến nay, toàn Đảng, toàn dân, toàn quân có nhiều hoạt động triển khai trồng cây, trồng và chăm sóc, bảo vệ rừng đạt hiệu quả cao và đã trở thành truyền thống tốt đẹp được duy trì thường xuyên. Theo đồng chí Phó Chính ủy Học viện KTQS, quán triệt Chỉ thị số 45/CT-TTg ngày 31-12-2020 của Thủ tướng Chính phủ về tổ chức phong trào “Tết trồng cây”, hưởng ứng và thực hiện Chương trình trồng 1 tỷ cây xanh “Vì một Việt Nam xanh”, Học viện phát động “Tết trồng cây đời đời nhớ ơn Bác Hồ”, ra quân Tháng Thanh niên năm 2024 nhằm giáo dục, tuyên truyền cán bộ, giáo viên, nhân viên, học viên, chiến sĩ lòng yêu quý, tôn trọng, bảo vệ thiên nhiên, môi trường sinh thái nói chung và cây xanh nói riêng; tạo phong trào sâu rộng, thiết thực, tinh thần đoàn kết, sáng tạo, tình nguyện, xung kích thực hiện thắng lợi nhiệm vụ chính trị của Học viện, đơn vị.Để hưởng ứng “Tết trồng cây đời đời nhớ ơn Bác Hồ” Xuân Giáp Thìn và thực hiện tốt nội dung hoạt động Tháng Thanh niên năm 2024, Thiếu tướng Trần Văn Duy đề nghị các cơ quan, đơn vị, tổ chức Công đoàn, Hội Phụ nữ, Đoàn Thanh niên tập trung thực hiện tốt công tác tuyên truyền nâng cao nhận thức cho cán bộ, giáo viên, nhân viên, học viên, chiến sĩ về vai trò, ý nghĩa và giá trị nhân văn của việc trồng cây, trồng rừng; thực hiện đồng bộ các giải pháp trồng, chăm sóc và bảo vệ cây xanh, ưu tiên các loại cây bản địa; tổ chức tốt các hoạt động giáo dục về truyền thống đất nước, Quân đội và truyền thống Học viện; khơi dậy lòng nhiệt huyết, vai trò xung kích và trách nhiệm chính trị của cán bộ, giáo viên, nhân viên, học viên, chiến sĩ, đoàn viên công đoàn, hội viên phụ nữ và đoàn viên thanh niên, vươn lên trong trong học tập, rèn luyện, công tác, hoàn thành xuất sắc chức trách, nhiệm vụ được giao… ', N'Sáng 02/3/2024, Học viện KTQS phát động “Tết trồng cây đời đời nhớ ơn Bác Hồ”, ra quân Tháng Thanh niên - nhằm tiếp tục hưởng ứng phong trào và thực hiện Chương trình trồng một tỷ cây xanh với thông điệp “Vì một Việt Nam xanh” do Thủ tướng Chính phủ phát động', N'tc1.jpeg', N'Thiếu tướng Trần Văn Duy, Phó chính ủy Học viện KTQS phát biểu tại phát động', N'1', 3, N'Thái Thị Minh Tú', N'Tiểu đoàn 1', N'tc2.jepg', N'Cán bộ, học viên tham gia trồng cây', 1)
SET IDENTITY_INSERT [dbo].[TinBai] OFF
GO
SET IDENTITY_INSERT [dbo].[ToChucDoanThe] ON 

INSERT [dbo].[ToChucDoanThe] ([MaVTDT], [TenVTDT], [NamBatDau], [NamKetThuc]) VALUES (1, N'Phó bí thư đoàn', 2021, NULL)
SET IDENTITY_INSERT [dbo].[ToChucDoanThe] OFF
GO
SET IDENTITY_INSERT [dbo].[TrinhDo] ON 

INSERT [dbo].[TrinhDo] ([MaTD], [TenTD]) VALUES (1, N'Sơ cấp')
INSERT [dbo].[TrinhDo] ([MaTD], [TenTD]) VALUES (2, N'Trung cấp')
INSERT [dbo].[TrinhDo] ([MaTD], [TenTD]) VALUES (3, N'Cao đẳng')
INSERT [dbo].[TrinhDo] ([MaTD], [TenTD]) VALUES (4, N'Đại học')
INSERT [dbo].[TrinhDo] ([MaTD], [TenTD]) VALUES (5, N'Thạc sĩ')
INSERT [dbo].[TrinhDo] ([MaTD], [TenTD]) VALUES (6, N'Tiến sĩ')
INSERT [dbo].[TrinhDo] ([MaTD], [TenTD]) VALUES (7, N'Phó giáo sư')
INSERT [dbo].[TrinhDo] ([MaTD], [TenTD]) VALUES (8, N'Giáo sư')
SET IDENTITY_INSERT [dbo].[TrinhDo] OFF
GO
ALTER TABLE [dbo].[AnhTieuBieu]  WITH CHECK ADD FOREIGN KEY([MaHV])
REFERENCES [dbo].[HoiVien] ([MaHV])
GO
ALTER TABLE [dbo].[BCH_CD]  WITH CHECK ADD FOREIGN KEY([MaCD])
REFERENCES [dbo].[CongDoan] ([MaCD])
GO
ALTER TABLE [dbo].[BCH_CD]  WITH CHECK ADD FOREIGN KEY([MaHV])
REFERENCES [dbo].[HoiVien] ([MaHV])
GO
ALTER TABLE [dbo].[BCH_HPN]  WITH CHECK ADD FOREIGN KEY([MaHPN])
REFERENCES [dbo].[HoiPhuNu] ([MaHPN])
GO
ALTER TABLE [dbo].[BCH_HPN]  WITH CHECK ADD  CONSTRAINT [FK__BCH_HPN__MaHV__6754599E] FOREIGN KEY([MaHV])
REFERENCES [dbo].[HoiVien] ([MaHV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BCH_HPN] CHECK CONSTRAINT [FK__BCH_HPN__MaHV__6754599E]
GO
ALTER TABLE [dbo].[CapLaiMatKhau]  WITH CHECK ADD FOREIGN KEY([TenDN])
REFERENCES [dbo].[TaiKhoan] ([TenDN])
GO
ALTER TABLE [dbo].[CapLaiMatKhau]  WITH CHECK ADD FOREIGN KEY([MaHV])
REFERENCES [dbo].[HoiVien] ([MaHV])
GO
ALTER TABLE [dbo].[CongVanBaoCao]  WITH NOCHECK ADD FOREIGN KEY([NoiGui])
REFERENCES [dbo].[HoiPhuNu] ([MaHPN])
GO
ALTER TABLE [dbo].[DanhSachBieuDuongPTTD]  WITH CHECK ADD FOREIGN KEY([MaPTTD])
REFERENCES [dbo].[PhongTraoThiDua] ([Ma])
GO
ALTER TABLE [dbo].[DanhSachBieuDuongPTTD]  WITH CHECK ADD FOREIGN KEY([MaHV])
REFERENCES [dbo].[HoiVien] ([MaHV])
GO
ALTER TABLE [dbo].[HoanCanhGD]  WITH CHECK ADD  CONSTRAINT [FK__HoanCanhGD__MaHV__75A278F5] FOREIGN KEY([MaHV])
REFERENCES [dbo].[HoiVien] ([MaHV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoanCanhGD] CHECK CONSTRAINT [FK__HoanCanhGD__MaHV__75A278F5]
GO
ALTER TABLE [dbo].[HoatDong]  WITH CHECK ADD  CONSTRAINT [FK__HoatDong__MaLoai__25518C17] FOREIGN KEY([MaLoaiHoatDong])
REFERENCES [dbo].[LoaiHoatDong] ([MaLoaiHoatDong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoatDong] CHECK CONSTRAINT [FK__HoatDong__MaLoai__25518C17]
GO
ALTER TABLE [dbo].[HoatDong]  WITH NOCHECK ADD  CONSTRAINT [FK_HoatDong_HoiPhuNu] FOREIGN KEY([MaHPN])
REFERENCES [dbo].[HoiPhuNu] ([MaHPN])
GO
ALTER TABLE [dbo].[HoatDong] NOCHECK CONSTRAINT [FK_HoatDong_HoiPhuNu]
GO
ALTER TABLE [dbo].[HoatDong_HoiVien]  WITH CHECK ADD  CONSTRAINT [FK__HoatDong___MaHoa__282DF8C2] FOREIGN KEY([MaHoatDong])
REFERENCES [dbo].[HoatDong] ([MaHoatDong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoatDong_HoiVien] CHECK CONSTRAINT [FK__HoatDong___MaHoa__282DF8C2]
GO
ALTER TABLE [dbo].[HoatDong_HoiVien]  WITH CHECK ADD  CONSTRAINT [FK__HoatDong_H__MaHV__29221CFB] FOREIGN KEY([MaHV])
REFERENCES [dbo].[HoiVien] ([MaHV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoatDong_HoiVien] CHECK CONSTRAINT [FK__HoatDong_H__MaHV__29221CFB]
GO
ALTER TABLE [dbo].[HoiPhuNu]  WITH NOCHECK ADD  CONSTRAINT [FK_HoiPhuNu_HoiVien1] FOREIGN KEY([MaHV])
REFERENCES [dbo].[HoiVien] ([MaHV])
GO
ALTER TABLE [dbo].[HoiPhuNu] NOCHECK CONSTRAINT [FK_HoiPhuNu_HoiVien1]
GO
ALTER TABLE [dbo].[HoiVien]  WITH CHECK ADD FOREIGN KEY([MaCD])
REFERENCES [dbo].[CongDoan] ([MaCD])
GO
ALTER TABLE [dbo].[HoiVien]  WITH CHECK ADD FOREIGN KEY([MaDV])
REFERENCES [dbo].[DonVi] ([MaDV])
GO
ALTER TABLE [dbo].[HoiVien]  WITH CHECK ADD FOREIGN KEY([MaLDV])
REFERENCES [dbo].[LoaiDangVien] ([MaLDV])
GO
ALTER TABLE [dbo].[HoiVien]  WITH CHECK ADD  CONSTRAINT [FK__HoiVien__MaLHV__46E78A0C] FOREIGN KEY([MaLHV])
REFERENCES [dbo].[LoaiHoiVien] ([MaLHV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoiVien] CHECK CONSTRAINT [FK__HoiVien__MaLHV__46E78A0C]
GO
ALTER TABLE [dbo].[HoiVien]  WITH CHECK ADD FOREIGN KEY([MaVTCB])
REFERENCES [dbo].[HoiVien_ChiBo] ([MaVTCB])
GO
ALTER TABLE [dbo].[HoiVien]  WITH CHECK ADD FOREIGN KEY([MaVTDT])
REFERENCES [dbo].[ToChucDoanThe] ([MaVTDT])
GO
ALTER TABLE [dbo].[HoiVien]  WITH CHECK ADD FOREIGN KEY([MaVTDU])
REFERENCES [dbo].[HoiVien_DangUy] ([MaVTDU])
GO
ALTER TABLE [dbo].[HoiVien]  WITH CHECK ADD  CONSTRAINT [FK_HoiVien_HoiPhuNu] FOREIGN KEY([MaHPN])
REFERENCES [dbo].[HoiPhuNu] ([MaHPN])
GO
ALTER TABLE [dbo].[HoiVien] CHECK CONSTRAINT [FK_HoiVien_HoiPhuNu]
GO
ALTER TABLE [dbo].[HoiVien_ChiBo]  WITH CHECK ADD  CONSTRAINT [FK__HoiVien_C__MaChi__17036CC0] FOREIGN KEY([MaChiBo])
REFERENCES [dbo].[ChiBo] ([MaChiBo])
GO
ALTER TABLE [dbo].[HoiVien_ChiBo] CHECK CONSTRAINT [FK__HoiVien_C__MaChi__17036CC0]
GO
ALTER TABLE [dbo].[HoiVien_ChiBo]  WITH CHECK ADD FOREIGN KEY([MaHV])
REFERENCES [dbo].[HoiVien] ([MaHV])
GO
ALTER TABLE [dbo].[HoiVien_DangUy]  WITH CHECK ADD  CONSTRAINT [FK__HoiVien_D__MaDan__19DFD96B] FOREIGN KEY([MaDangUy])
REFERENCES [dbo].[DangUy] ([MaDangUy])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoiVien_DangUy] CHECK CONSTRAINT [FK__HoiVien_D__MaDan__19DFD96B]
GO
ALTER TABLE [dbo].[HoiVien_DangUy]  WITH CHECK ADD FOREIGN KEY([MaHV])
REFERENCES [dbo].[HoiVien] ([MaHV])
GO
ALTER TABLE [dbo].[KhenThuong]  WITH CHECK ADD  CONSTRAINT [FK__KhenThuong__MaHV__0880433F] FOREIGN KEY([MaHV])
REFERENCES [dbo].[HoiVien] ([MaHV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KhenThuong] CHECK CONSTRAINT [FK__KhenThuong__MaHV__0880433F]
GO
ALTER TABLE [dbo].[KyLuat]  WITH CHECK ADD  CONSTRAINT [FK__KyLuat__MaHV__0B5CAFEA] FOREIGN KEY([MaHV])
REFERENCES [dbo].[HoiVien] ([MaHV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KyLuat] CHECK CONSTRAINT [FK__KyLuat__MaHV__0B5CAFEA]
GO
ALTER TABLE [dbo].[LaoDongSangTao]  WITH CHECK ADD  CONSTRAINT [FK__LaoDongSa__MaLoa__6FE99F9F] FOREIGN KEY([MaLoaiLDST])
REFERENCES [dbo].[LoaiLDST] ([MaLoaiLDST])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LaoDongSangTao] CHECK CONSTRAINT [FK__LaoDongSa__MaLoa__6FE99F9F]
GO
ALTER TABLE [dbo].[LaoDongSangTao]  WITH CHECK ADD  CONSTRAINT [FK__LaoDongSan__MaHV__76619304] FOREIGN KEY([MaHV])
REFERENCES [dbo].[HoiVien] ([MaHV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LaoDongSangTao] CHECK CONSTRAINT [FK__LaoDongSan__MaHV__76619304]
GO
ALTER TABLE [dbo].[LichSuCapBac]  WITH CHECK ADD  CONSTRAINT [FK__LichSuCapB__MaCB__628FA481] FOREIGN KEY([MaCB])
REFERENCES [dbo].[CapBac] ([MaCB])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LichSuCapBac] CHECK CONSTRAINT [FK__LichSuCapB__MaCB__628FA481]
GO
ALTER TABLE [dbo].[LichSuCapBac]  WITH CHECK ADD  CONSTRAINT [FK__LichSuCapB__MaHV__6383C8BA] FOREIGN KEY([MaHV])
REFERENCES [dbo].[HoiVien] ([MaHV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LichSuCapBac] CHECK CONSTRAINT [FK__LichSuCapB__MaHV__6383C8BA]
GO
ALTER TABLE [dbo].[LichSuChucDanh]  WITH CHECK ADD  CONSTRAINT [FK__LichSuChuc__MaCD__5165187F] FOREIGN KEY([MaCD])
REFERENCES [dbo].[ChucDanh] ([MaCD])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LichSuChucDanh] CHECK CONSTRAINT [FK__LichSuChuc__MaCD__5165187F]
GO
ALTER TABLE [dbo].[LichSuChucDanh]  WITH CHECK ADD FOREIGN KEY([MaDV])
REFERENCES [dbo].[DonVi] ([MaDV])
GO
ALTER TABLE [dbo].[LichSuChucDanh]  WITH CHECK ADD  CONSTRAINT [FK__LichSuChuc__MaHV__52593CB8] FOREIGN KEY([MaHV])
REFERENCES [dbo].[HoiVien] ([MaHV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LichSuChucDanh] CHECK CONSTRAINT [FK__LichSuChuc__MaHV__52593CB8]
GO
ALTER TABLE [dbo].[LichSuDanhHieu]  WITH CHECK ADD  CONSTRAINT [FK__LichSuDanh__MaDH__571DF1D5] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DanhHieu] ([MaDH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LichSuDanhHieu] CHECK CONSTRAINT [FK__LichSuDanh__MaDH__571DF1D5]
GO
ALTER TABLE [dbo].[LichSuDanhHieu]  WITH CHECK ADD  CONSTRAINT [FK__LichSuDanh__MaHV__5812160E] FOREIGN KEY([MaHV])
REFERENCES [dbo].[HoiVien] ([MaHV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LichSuDanhHieu] CHECK CONSTRAINT [FK__LichSuDanh__MaHV__5812160E]
GO
ALTER TABLE [dbo].[LichSuTrinhDo]  WITH CHECK ADD  CONSTRAINT [FK__LichSuTrin__MaHV__5DCAEF64] FOREIGN KEY([MaHV])
REFERENCES [dbo].[HoiVien] ([MaHV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LichSuTrinhDo] CHECK CONSTRAINT [FK__LichSuTrin__MaHV__5DCAEF64]
GO
ALTER TABLE [dbo].[LichSuTrinhDo]  WITH CHECK ADD  CONSTRAINT [FK__LichSuTrin__MaTD__5CD6CB2B] FOREIGN KEY([MaTD])
REFERENCES [dbo].[TrinhDo] ([MaTD])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LichSuTrinhDo] CHECK CONSTRAINT [FK__LichSuTrin__MaTD__5CD6CB2B]
GO
ALTER TABLE [dbo].[NoiNhan]  WITH CHECK ADD FOREIGN KEY([MaCongVan])
REFERENCES [dbo].[CongVanBaoCao] ([Ma])
GO
ALTER TABLE [dbo].[NoiNhan]  WITH NOCHECK ADD  CONSTRAINT [FK_NoiNhan_HoiPhuNu] FOREIGN KEY([MaHPN])
REFERENCES [dbo].[HoiPhuNu] ([MaHPN])
GO
ALTER TABLE [dbo].[NoiNhan] NOCHECK CONSTRAINT [FK_NoiNhan_HoiPhuNu]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK__TaiKhoan__MaHV__787EE5A0] FOREIGN KEY([MaHV])
REFERENCES [dbo].[HoiVien] ([MaHV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK__TaiKhoan__MaHV__787EE5A0]
GO
ALTER TABLE [dbo].[ThamGia]  WITH NOCHECK ADD  CONSTRAINT [FK__ThamGia__MaHV__3FD07829] FOREIGN KEY([MaHV])
REFERENCES [dbo].[HoiVien] ([MaHV])
GO
ALTER TABLE [dbo].[ThamGia] NOCHECK CONSTRAINT [FK__ThamGia__MaHV__3FD07829]
GO
ALTER TABLE [dbo].[ThamGia]  WITH CHECK ADD  CONSTRAINT [FK__ThamGia__MaLDST__756D6ECB] FOREIGN KEY([MaLDST])
REFERENCES [dbo].[LaoDongSangTao] ([MaLDST])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThamGia] CHECK CONSTRAINT [FK__ThamGia__MaLDST__756D6ECB]
GO
ALTER TABLE [dbo].[TinBai]  WITH CHECK ADD  CONSTRAINT [FK__TinBai__MaHV__1F98B2C1] FOREIGN KEY([MaHV])
REFERENCES [dbo].[HoiVien] ([MaHV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TinBai] CHECK CONSTRAINT [FK__TinBai__MaHV__1F98B2C1]
GO
ALTER TABLE [dbo].[TinBai]  WITH CHECK ADD  CONSTRAINT [FK__TinBai__MaLoaiTi__208CD6FA] FOREIGN KEY([MaLoaiTinBai])
REFERENCES [dbo].[LoaiTinBai] ([MaLoaiTinbai])
GO
ALTER TABLE [dbo].[TinBai] CHECK CONSTRAINT [FK__TinBai__MaLoaiTi__208CD6FA]
GO

USE [master]
GO
/****** Object:  Database [Thuc_Tap_Co_So]    Script Date: 5/19/2023 12:16:30 PM ******/
CREATE DATABASE [Thuc_Tap_Co_So]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Thuc_Tap_Co_So', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.CSDLPT\MSSQL\DATA\Thuc_Tap_Co_So.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Thuc_Tap_Co_So_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.CSDLPT\MSSQL\DATA\Thuc_Tap_Co_So_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Thuc_Tap_Co_So].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET ARITHABORT OFF 
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET RECOVERY FULL 
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET  MULTI_USER 
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Thuc_Tap_Co_So', N'ON'
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET QUERY_STORE = ON
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Thuc_Tap_Co_So]
GO
/****** Object:  Table [dbo].[tblAdmins]    Script Date: 5/19/2023 12:16:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAdmins](
	[id] [int] NOT NULL,
	[fullName] [nvarchar](max) NOT NULL,
	[username] [nvarchar](max) NOT NULL,
	[password] [nvarchar](max) NOT NULL,
	[phoneNumber] [varchar](10) NULL,
	[role] [varchar](10) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBoughtProducts]    Script Date: 5/19/2023 12:16:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBoughtProducts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[productID] [int] NOT NULL,
	[orderID] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [float] NOT NULL,
 CONSTRAINT [PK_tblCarts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCategories]    Script Date: 5/19/2023 12:16:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblCategories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblClients]    Script Date: 5/19/2023 12:16:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblClients](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fullName] [nvarchar](max) NULL,
	[username] [varchar](20) NULL,
	[password] [varchar](20) NULL,
	[linkImg] [varchar](max) NULL,
	[address] [nvarchar](max) NULL,
	[phoneNumber] [varchar](10) NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblComments]    Script Date: 5/19/2023 12:16:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblComments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idProduct] [int] NOT NULL,
	[idClient] [int] NOT NULL,
	[createdDate] [datetime] NOT NULL,
	[title] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tblComment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEarlyEmailList]    Script Date: 5/19/2023 12:16:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEarlyEmailList](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[createdDate] [datetime] NOT NULL,
 CONSTRAINT [PK_tblEarlyEmailList] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrders]    Script Date: 5/19/2023 12:16:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idClient] [int] NOT NULL,
	[createdDate] [datetime] NOT NULL,
	[quantity] [int] NOT NULL,
	[totalCost] [float] NOT NULL,
 CONSTRAINT [PK_tblOrders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProducts]    Script Date: 5/19/2023 12:16:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProducts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[imgLink1] [varchar](max) NOT NULL,
	[imgLink2] [varchar](max) NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NOT NULL,
	[price] [float] NOT NULL,
	[address] [nvarchar](max) NOT NULL,
	[cateID] [int] NOT NULL,
	[quantity] [int] NULL,
	[createdTime] [datetime] NULL,
 CONSTRAINT [PK_tblProduct] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblBoughtProducts] ON 

INSERT [dbo].[tblBoughtProducts] ([id], [productID], [orderID], [quantity], [price]) VALUES (7, 1, 8, 1, 120000)
INSERT [dbo].[tblBoughtProducts] ([id], [productID], [orderID], [quantity], [price]) VALUES (8, 1, 9, 1, 120000)
INSERT [dbo].[tblBoughtProducts] ([id], [productID], [orderID], [quantity], [price]) VALUES (9, 1, 9, 3, 120000)
INSERT [dbo].[tblBoughtProducts] ([id], [productID], [orderID], [quantity], [price]) VALUES (10, 1029, 9, 4, 706000)
INSERT [dbo].[tblBoughtProducts] ([id], [productID], [orderID], [quantity], [price]) VALUES (11, 1024, 9, 1, 450000)
INSERT [dbo].[tblBoughtProducts] ([id], [productID], [orderID], [quantity], [price]) VALUES (12, 2, 10, 1, 249000)
INSERT [dbo].[tblBoughtProducts] ([id], [productID], [orderID], [quantity], [price]) VALUES (13, 2, 11, 1, 249000)
INSERT [dbo].[tblBoughtProducts] ([id], [productID], [orderID], [quantity], [price]) VALUES (14, 4, 12, 1, 35000)
INSERT [dbo].[tblBoughtProducts] ([id], [productID], [orderID], [quantity], [price]) VALUES (15, 6, 13, 1, 185000)
INSERT [dbo].[tblBoughtProducts] ([id], [productID], [orderID], [quantity], [price]) VALUES (16, 6, 14, 1, 185000)
INSERT [dbo].[tblBoughtProducts] ([id], [productID], [orderID], [quantity], [price]) VALUES (17, 1037, 15, 1, 4700000)
INSERT [dbo].[tblBoughtProducts] ([id], [productID], [orderID], [quantity], [price]) VALUES (18, 1037, 16, 1, 4700000)
INSERT [dbo].[tblBoughtProducts] ([id], [productID], [orderID], [quantity], [price]) VALUES (19, 1025, 17, 1, 420000)
INSERT [dbo].[tblBoughtProducts] ([id], [productID], [orderID], [quantity], [price]) VALUES (20, 3, 18, 1, 129500)
INSERT [dbo].[tblBoughtProducts] ([id], [productID], [orderID], [quantity], [price]) VALUES (21, 4, 19, 1, 35000)
INSERT [dbo].[tblBoughtProducts] ([id], [productID], [orderID], [quantity], [price]) VALUES (22, 1025, 20, 5, 420000)
INSERT [dbo].[tblBoughtProducts] ([id], [productID], [orderID], [quantity], [price]) VALUES (23, 1, 21, 1, 120000)
INSERT [dbo].[tblBoughtProducts] ([id], [productID], [orderID], [quantity], [price]) VALUES (24, 8, 22, 5, 10000)
INSERT [dbo].[tblBoughtProducts] ([id], [productID], [orderID], [quantity], [price]) VALUES (25, 1031, 23, 3, 1329000)
INSERT [dbo].[tblBoughtProducts] ([id], [productID], [orderID], [quantity], [price]) VALUES (26, 21, 23, 4, 199000)
INSERT [dbo].[tblBoughtProducts] ([id], [productID], [orderID], [quantity], [price]) VALUES (27, 6, 24, 3, 185000)
INSERT [dbo].[tblBoughtProducts] ([id], [productID], [orderID], [quantity], [price]) VALUES (28, 2, 25, 10, 249000)
SET IDENTITY_INSERT [dbo].[tblBoughtProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[tblCategories] ON 

INSERT [dbo].[tblCategories] ([id], [name], [title], [description]) VALUES (1, N'GIÀY ADIDAS', N'Giày Adidas là một thương hiệu nổi tiếng với chất lượng và phong cách đẳng cấp', N'Adidas là một thương hiệu giày nổi tiếng với chất lượng đáng tin cậy và phong cách đẳng cấp. Giày Adidas mang đến sự thoải mái và linh hoạt cho đôi chân, với kiểu dáng hiện đại và công nghệ tiên tiến. Thiết kế đẹp mắt và logo ba sọc nổi tiếng của Adidas là điểm nhấn thời trang đặc biệt. Từ giày thể thao đến giày hàng ngày, Adidas đáp ứng mọi nhu cầu và phong cách của người dùng.')
INSERT [dbo].[tblCategories] ([id], [name], [title], [description]) VALUES (2, N'GIÀY NIKE', N'Giày Nike là một thương hiệu nổi tiếng với chất lượng và phong cách đẳng cấp', N'Nike là một thương hiệu giày hàng đầu, mang đến chất lượng đáng tin cậy và thiết kế đẳng cấp. Công nghệ tiên tiến và tập trung vào hiệu suất làm cho Nike trở thành sự lựa chọn ưa thích của các vận động viên và người yêu thể thao. Từ giày thể thao chuyên nghiệp đến giày hàng ngày, Nike mang đến sự thoải mái và phong cách đa dạng cho mọi người. Logo "Swoosh" nổi tiếng của Nike là biểu tượng thể hiện sự năng động và chuyên nghiệp.')
INSERT [dbo].[tblCategories] ([id], [name], [title], [description]) VALUES (3, N'GIÀY BITI''S', N'Giày Biti''s mang đến sự thoải mái và phong cách độc đáo với thiết kế đậm chất Việt Nam', N'Biti''s là thương hiệu giày Việt Nam tự hào với sản phẩm chất lượng, thiết kế sáng tạo và giá trị văn hóa đặc trưng. Sự đa dạng về kiểu dáng và mẫu mã cho phép mọi người tìm thấy đôi giày phù hợp với phong cách cá nhân. Tận dụng nguồn cảm hứng từ đời sống và văn hóa Việt Nam, Biti''s gắn kết và tự hào quốc gia. Sự thoải mái và chất lượng đáng tin cậy là những yếu tố quan trọng trong sản xuất giày Biti''s.')
INSERT [dbo].[tblCategories] ([id], [name], [title], [description]) VALUES (4, N'GIÀY CONVERSE', N'Giày Converse với kiểu dáng đơn giản và trẻ trung đã trở thành biểu tượng thời trang không thể thiếu', N'Converse là thương hiệu mang đậm chất cổ điển và độc đáo, nổi tiếng với kiểu dáng hiện đại và trẻ trung. Đôi giày Chuck Taylor All Star của Converse đã trở thành biểu tượng thời trang và biểu tượng văn hóa. Với sự linh hoạt và đa năng, Converse phù hợp với nhiều phong cách và hoàn cảnh khác nhau. Được yêu thích bởi cả nam và nữ, Converse mang đến sự tự tin và cá tính trong mỗi bước đi.')
INSERT [dbo].[tblCategories] ([id], [name], [title], [description]) VALUES (5, N'GIÀY MLB', N'Giày MLB thể hiện sự đam mê và tình yêu đối với bóng chày, với chất liệu chất lượng và logo đặc trưng', N'MLB (Major League Baseball) là thương hiệu giày lấy cảm hứng từ bóng chày, với chất lượng đáng tin cậy và thiết kế đặc trưng. Giày MLB thể hiện sự đam mê và tình yêu đối với môn thể thao này, mang đến sự tự tin và phong cách đặc biệt. Thiết kế chất lượng và logo MLB đặc trưng là những yếu tố độc đáo, tạo nên sự thu hút và cá tính. Với sự đa dạng về kiểu dáng và phong cách, giày MLB phù hợp cho cả những người yêu thể thao và những người muốn thể hiện cái nhìn năng động và cá tính trong cuộc sống hàng ngày.')
INSERT [dbo].[tblCategories] ([id], [name], [title], [description]) VALUES (6, N'GIÀY VANS', N'Giày Vans mang đến cái nhìn cổ điển và cá tính, thích hợp cho những người yêu thích phong cách skate và streetwear', N'Vans là thương hiệu có cái nhìn cổ điển và cá tính, là sự lựa chọn yêu thích của những người yêu thích skate và streetwear. Thiết kế đơn giản nhưng sáng tạo và logo "Off the Wall" đặc trưng đã định hình nên danh tiếng của Vans. Được ưa chuộng bởi nam và nữ, Vans mang đến sự tự tin và cá tính trong từng bước đi.')
SET IDENTITY_INSERT [dbo].[tblCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[tblClients] ON 

INSERT [dbo].[tblClients] ([id], [fullName], [username], [password], [linkImg], [address], [phoneNumber]) VALUES (1, N'Nguyễn Hoàng Việt', N'viet123', N'123456', NULL, N'huyện Thanh Hà, tỉnh Hải Dương', N'0337176055')
INSERT [dbo].[tblClients] ([id], [fullName], [username], [password], [linkImg], [address], [phoneNumber]) VALUES (2, N'Trần Trung Huy', N'trunghuy', N'123456', NULL, N'quận Hà Đông, thành phố Hà Nội', N'0705144804')
INSERT [dbo].[tblClients] ([id], [fullName], [username], [password], [linkImg], [address], [phoneNumber]) VALUES (3, N'Đinh Huy Tùng', N'huytung', N'123456', NULL, N'huyện Lục Ngạn, tỉnh Bắc Giang', N'0868416189')
INSERT [dbo].[tblClients] ([id], [fullName], [username], [password], [linkImg], [address], [phoneNumber]) VALUES (4, N'Lê Thị Khánh Huyền', N'khanhhuyen', N'123456', NULL, N'huyện Mỹ Hào, tỉnh Hưng Yên', N'0568997788')
INSERT [dbo].[tblClients] ([id], [fullName], [username], [password], [linkImg], [address], [phoneNumber]) VALUES (5, N'Done', N'Done', N'Done', NULL, N'Done', N'Done')
INSERT [dbo].[tblClients] ([id], [fullName], [username], [password], [linkImg], [address], [phoneNumber]) VALUES (6, NULL, N'uyen123', N'123456', NULL, NULL, NULL)
INSERT [dbo].[tblClients] ([id], [fullName], [username], [password], [linkImg], [address], [phoneNumber]) VALUES (7, N'Johnny Cary', N'johnny123', N'123456', NULL, N'Thanh Hà, Hải Dương', N'0335145981')
INSERT [dbo].[tblClients] ([id], [fullName], [username], [password], [linkImg], [address], [phoneNumber]) VALUES (8, N'nam nguyen', N'nam', N'123', NULL, N'Thanh Hà, Hải Dương', N'0335145981')
SET IDENTITY_INSERT [dbo].[tblClients] OFF
GO
SET IDENTITY_INSERT [dbo].[tblComments] ON 

INSERT [dbo].[tblComments] ([id], [idProduct], [idClient], [createdDate], [title]) VALUES (2, 1, 1, CAST(N'2023-05-10T08:30:15.000' AS DateTime), N'Sản phẩm chất lượng cao hợp với túi tiền ạ!!!! Sẽ còn ửng hộ shop dài dài =))))')
INSERT [dbo].[tblComments] ([id], [idProduct], [idClient], [createdDate], [title]) VALUES (8, 1, 2, CAST(N'2023-10-05T10:49:00.000' AS DateTime), N'Tôi đã mua nhiều sản phẩm ở đây và cảm thấy yên tâm vì chất lượng cũng như giá cả phải chăng.')
INSERT [dbo].[tblComments] ([id], [idProduct], [idClient], [createdDate], [title]) VALUES (14, 1, 3, CAST(N'2023-10-05T11:49:00.000' AS DateTime), N'Tôi đã mua nhiều sản phẩm ở đây và cảm thấy yên tâm vì chất lượng cũng như giá cả phải chăng.')
INSERT [dbo].[tblComments] ([id], [idProduct], [idClient], [createdDate], [title]) VALUES (15, 1, 1, CAST(N'2023-05-15T14:57:15.873' AS DateTime), N'Best product')
INSERT [dbo].[tblComments] ([id], [idProduct], [idClient], [createdDate], [title]) VALUES (16, 1, 2, CAST(N'2023-05-15T21:32:58.093' AS DateTime), N'testing')
INSERT [dbo].[tblComments] ([id], [idProduct], [idClient], [createdDate], [title]) VALUES (17, 1, 2, CAST(N'2023-05-15T21:41:14.353' AS DateTime), N'tes')
INSERT [dbo].[tblComments] ([id], [idProduct], [idClient], [createdDate], [title]) VALUES (18, 1, 2, CAST(N'2023-05-15T21:41:20.003' AS DateTime), N'asdasd')
INSERT [dbo].[tblComments] ([id], [idProduct], [idClient], [createdDate], [title]) VALUES (19, 1, 2, CAST(N'2023-05-15T21:41:23.760' AS DateTime), N'asdfasdfasd')
INSERT [dbo].[tblComments] ([id], [idProduct], [idClient], [createdDate], [title]) VALUES (20, 1, 1, CAST(N'2023-05-15T22:00:03.237' AS DateTime), N'Hàng xịn ạ!!!!!!!!')
INSERT [dbo].[tblComments] ([id], [idProduct], [idClient], [createdDate], [title]) VALUES (21, 1, 1, CAST(N'2023-05-15T22:01:32.243' AS DateTime), N'hello')
INSERT [dbo].[tblComments] ([id], [idProduct], [idClient], [createdDate], [title]) VALUES (22, 1, 1, CAST(N'2023-05-15T22:01:37.253' AS DateTime), N'testing')
INSERT [dbo].[tblComments] ([id], [idProduct], [idClient], [createdDate], [title]) VALUES (23, 1, 1, CAST(N'2023-05-15T22:02:06.027' AS DateTime), N'Hàng chất lượng 😂😂')
INSERT [dbo].[tblComments] ([id], [idProduct], [idClient], [createdDate], [title]) VALUES (24, 1, 1, CAST(N'2023-05-15T22:07:43.500' AS DateTime), N'Hàng xịn nhé mọi người')
INSERT [dbo].[tblComments] ([id], [idProduct], [idClient], [createdDate], [title]) VALUES (25, 1, 1, CAST(N'2023-05-15T22:08:05.553' AS DateTime), N'Hàng chất lượng cáo!!!!!!!! :>>>>')
INSERT [dbo].[tblComments] ([id], [idProduct], [idClient], [createdDate], [title]) VALUES (26, 1, 1, CAST(N'2023-05-15T22:08:19.677' AS DateTime), N'MỆT QUÁ')
INSERT [dbo].[tblComments] ([id], [idProduct], [idClient], [createdDate], [title]) VALUES (27, 2, 1, CAST(N'2023-05-15T22:09:08.963' AS DateTime), N'Ok nhé')
INSERT [dbo].[tblComments] ([id], [idProduct], [idClient], [createdDate], [title]) VALUES (28, 2, 1, CAST(N'2023-05-15T22:09:13.980' AS DateTime), N'Hàng xịn nhé')
INSERT [dbo].[tblComments] ([id], [idProduct], [idClient], [createdDate], [title]) VALUES (29, 2, 1, CAST(N'2023-05-15T22:09:46.717' AS DateTime), N'Em mua ở shop nhiều rồi mỗi lần đều thấy chất lượng ạ')
INSERT [dbo].[tblComments] ([id], [idProduct], [idClient], [createdDate], [title]) VALUES (30, 3, 1, CAST(N'2023-05-15T22:11:42.390' AS DateTime), N'Mại dô mại dô')
INSERT [dbo].[tblComments] ([id], [idProduct], [idClient], [createdDate], [title]) VALUES (31, 1029, 1, CAST(N'2023-05-15T22:12:15.180' AS DateTime), N'Giày chính hãng nhé anh em, mua đi mua đi!!!!!!!!!!!!!!!!!!!!!!')
INSERT [dbo].[tblComments] ([id], [idProduct], [idClient], [createdDate], [title]) VALUES (32, 1, 1, CAST(N'2023-05-16T09:40:59.873' AS DateTime), N'')
INSERT [dbo].[tblComments] ([id], [idProduct], [idClient], [createdDate], [title]) VALUES (33, 1035, 1, CAST(N'2023-05-16T22:52:43.743' AS DateTime), N'test')
INSERT [dbo].[tblComments] ([id], [idProduct], [idClient], [createdDate], [title]) VALUES (34, 1035, 1, CAST(N'2023-05-16T22:52:57.940' AS DateTime), N'hello')
INSERT [dbo].[tblComments] ([id], [idProduct], [idClient], [createdDate], [title]) VALUES (35, 1033, 1, CAST(N'2023-05-16T22:53:11.080' AS DateTime), N'DONE')
INSERT [dbo].[tblComments] ([id], [idProduct], [idClient], [createdDate], [title]) VALUES (36, 28, 1, CAST(N'2023-05-17T08:02:36.413' AS DateTime), N'Done')
INSERT [dbo].[tblComments] ([id], [idProduct], [idClient], [createdDate], [title]) VALUES (37, 1024, 7, CAST(N'2023-05-17T08:43:18.890' AS DateTime), N'Hang Chat Luong Cao 😂😂😂😂❤️❤️❤️(❁´◡`❁)🥹🥹🥹')
INSERT [dbo].[tblComments] ([id], [idProduct], [idClient], [createdDate], [title]) VALUES (38, 1, 8, CAST(N'2023-05-18T08:47:13.153' AS DateTime), N'Done')
INSERT [dbo].[tblComments] ([id], [idProduct], [idClient], [createdDate], [title]) VALUES (39, 1035, 8, CAST(N'2023-05-18T08:54:43.480' AS DateTime), N'Tesing comment')
INSERT [dbo].[tblComments] ([id], [idProduct], [idClient], [createdDate], [title]) VALUES (40, 1035, 8, CAST(N'2023-05-18T08:54:49.967' AS DateTime), N'okee')
INSERT [dbo].[tblComments] ([id], [idProduct], [idClient], [createdDate], [title]) VALUES (41, 2, 8, CAST(N'2023-05-18T09:51:45.943' AS DateTime), N'Cảm ơn review của bạn')
INSERT [dbo].[tblComments] ([id], [idProduct], [idClient], [createdDate], [title]) VALUES (42, 6, 8, CAST(N'2023-05-18T11:22:56.860' AS DateTime), N'Good')
INSERT [dbo].[tblComments] ([id], [idProduct], [idClient], [createdDate], [title]) VALUES (43, 6, 1, CAST(N'2023-05-18T15:53:32.577' AS DateTime), N'Hello')
SET IDENTITY_INSERT [dbo].[tblComments] OFF
GO
SET IDENTITY_INSERT [dbo].[tblOrders] ON 

INSERT [dbo].[tblOrders] ([id], [idClient], [createdDate], [quantity], [totalCost]) VALUES (8, 1, CAST(N'2023-05-17T07:54:38.430' AS DateTime), 1, 120000)
INSERT [dbo].[tblOrders] ([id], [idClient], [createdDate], [quantity], [totalCost]) VALUES (9, 1, CAST(N'2023-05-17T08:03:14.490' AS DateTime), 9, 3754000)
INSERT [dbo].[tblOrders] ([id], [idClient], [createdDate], [quantity], [totalCost]) VALUES (10, 1, CAST(N'2023-05-17T08:05:19.210' AS DateTime), 1, 249000)
INSERT [dbo].[tblOrders] ([id], [idClient], [createdDate], [quantity], [totalCost]) VALUES (11, 1, CAST(N'2023-05-17T08:06:12.133' AS DateTime), 1, 249000)
INSERT [dbo].[tblOrders] ([id], [idClient], [createdDate], [quantity], [totalCost]) VALUES (12, 1, CAST(N'2023-05-17T08:07:20.443' AS DateTime), 1, 35000)
INSERT [dbo].[tblOrders] ([id], [idClient], [createdDate], [quantity], [totalCost]) VALUES (13, 1, CAST(N'2023-05-17T08:07:52.123' AS DateTime), 1, 185000)
INSERT [dbo].[tblOrders] ([id], [idClient], [createdDate], [quantity], [totalCost]) VALUES (14, 1, CAST(N'2023-05-17T08:10:31.850' AS DateTime), 1, 185000)
INSERT [dbo].[tblOrders] ([id], [idClient], [createdDate], [quantity], [totalCost]) VALUES (15, 1, CAST(N'2023-05-17T08:11:45.330' AS DateTime), 1, 4700000)
INSERT [dbo].[tblOrders] ([id], [idClient], [createdDate], [quantity], [totalCost]) VALUES (16, 1, CAST(N'2023-05-17T08:12:46.090' AS DateTime), 1, 4700000)
INSERT [dbo].[tblOrders] ([id], [idClient], [createdDate], [quantity], [totalCost]) VALUES (17, 7, CAST(N'2023-05-17T08:41:49.820' AS DateTime), 1, 420000)
INSERT [dbo].[tblOrders] ([id], [idClient], [createdDate], [quantity], [totalCost]) VALUES (18, 1, CAST(N'2023-05-17T15:05:40.267' AS DateTime), 1, 129500)
INSERT [dbo].[tblOrders] ([id], [idClient], [createdDate], [quantity], [totalCost]) VALUES (19, 1, CAST(N'2023-05-17T15:05:57.157' AS DateTime), 1, 35000)
INSERT [dbo].[tblOrders] ([id], [idClient], [createdDate], [quantity], [totalCost]) VALUES (20, 1, CAST(N'2023-05-17T15:06:33.953' AS DateTime), 5, 2100000)
INSERT [dbo].[tblOrders] ([id], [idClient], [createdDate], [quantity], [totalCost]) VALUES (21, 8, CAST(N'2023-05-18T09:04:31.623' AS DateTime), 1, 120000)
INSERT [dbo].[tblOrders] ([id], [idClient], [createdDate], [quantity], [totalCost]) VALUES (22, 8, CAST(N'2023-05-18T09:41:59.467' AS DateTime), 5, 50000)
INSERT [dbo].[tblOrders] ([id], [idClient], [createdDate], [quantity], [totalCost]) VALUES (23, 8, CAST(N'2023-05-18T11:23:48.877' AS DateTime), 7, 4783000)
INSERT [dbo].[tblOrders] ([id], [idClient], [createdDate], [quantity], [totalCost]) VALUES (24, 1, CAST(N'2023-05-18T15:54:36.207' AS DateTime), 3, 555000)
INSERT [dbo].[tblOrders] ([id], [idClient], [createdDate], [quantity], [totalCost]) VALUES (25, 1, CAST(N'2023-05-19T09:02:19.550' AS DateTime), 10, 2490000)
SET IDENTITY_INSERT [dbo].[tblOrders] OFF
GO
SET IDENTITY_INSERT [dbo].[tblProducts] ON 

INSERT [dbo].[tblProducts] ([id], [name], [imgLink1], [imgLink2], [title], [description], [price], [address], [cateID], [quantity], [createdTime]) VALUES (1, N'Adidas Ultra Boost Đen Trắng', N'https://giayxshop.vn/wp-content/uploads/2019/01/z3651678985400_f5c2a3afb17825c7244e3a4698bb798c-300x300.jpg', N'https://giayxshop.vn/wp-content/uploads/2019/01/z3651678985400_f5c2a3afb17825c7244e3a4698bb798c-300x300.jpg', N'Giày chất lượng cao chi có ở Shoes Store', N'Giày là phụ kiện thời trang quan trọng, thể hiện phong cách và cá nhân. Chúng mang lại thoải mái và tự tin trong mỗi bước đi. Dù là giày thể thao, giày cao gót hay giày công nghiệp, chúng đa dạng và phù hợp với mọi hoàn cảnh. Chất liệu và thiết kế của giày đảm bảo sự bền bỉ và hấp dẫn.', 120000, N'Hà Nội', 1, 93, CAST(N'2023-05-10T15:36:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([id], [name], [imgLink1], [imgLink2], [title], [description], [price], [address], [cateID], [quantity], [createdTime]) VALUES (2, N'Adidas Stan Smith Trắng Gót Lục', N'https://giayxshop.vn/wp-content/uploads/2019/01/z3647647545757_930f1e83c13c8ab8b0f1c04cc07427a1-600x600.jpg', N'https://giayxshop.vn/wp-content/uploads/2019/01/z3647647545757_930f1e83c13c8ab8b0f1c04cc07427a1-600x600.jpg', N'Giày chất lượng cao chi có ở Shoes Store', N'Giày là phụ kiện thời trang quan trọng, thể hiện phong cách và cá nhân. Chúng mang lại thoải mái và tự tin trong mỗi bước đi. Dù là giày thể thao, giày cao gót hay giày công nghiệp, chúng đa dạng và phù hợp với mọi hoàn cảnh. Chất liệu và thiết kế của giày đảm bảo sự bền bỉ và hấp dẫn.', 249000, N'Sài Gòn', 1, 88, CAST(N'2023-05-10T15:36:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([id], [name], [imgLink1], [imgLink2], [title], [description], [price], [address], [cateID], [quantity], [createdTime]) VALUES (3, N'Adidas Yeezy Boost 350 V2 ', N'https://giayxshop.vn/wp-content/uploads/2019/02/z3676159904214_00fd7c0d92d88ed2e11c55f174168c44-300x300.jpg', N'https://giayxshop.vn/wp-content/uploads/2019/02/z3676159904214_00fd7c0d92d88ed2e11c55f174168c44-300x300.jpg', N'Giày chất lượng cao chi có ở Shoes Store', N'Giày là phụ kiện thời trang quan trọng, thể hiện phong cách và cá nhân. Chúng mang lại thoải mái và tự tin trong mỗi bước đi. Dù là giày thể thao, giày cao gót hay giày công nghiệp, chúng đa dạng và phù hợp với mọi hoàn cảnh. Chất liệu và thiết kế của giày đảm bảo sự bền bỉ và hấp dẫn.', 129500, N'Bình Dương', 1, 98, CAST(N'2023-05-10T15:36:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([id], [name], [imgLink1], [imgLink2], [title], [description], [price], [address], [cateID], [quantity], [createdTime]) VALUES (4, N'Adidas EQ 21 Run Trắng Viền Xanh Dương', N'https://giayxshop.vn/wp-content/uploads/2022/09/z3729062463532_f9e62c89675127645d3cf03a50ef37fa-300x300.jpg', N'https://giayxshop.vn/wp-content/uploads/2022/09/z3729062463532_f9e62c89675127645d3cf03a50ef37fa-300x300.jpg', N'Giày chất lượng cao chi có ở Shoes Store', N'Giày là phụ kiện thời trang quan trọng, thể hiện phong cách và cá nhân. Chúng mang lại thoải mái và tự tin trong mỗi bước đi. Dù là giày thể thao, giày cao gót hay giày công nghiệp, chúng đa dạng và phù hợp với mọi hoàn cảnh. Chất liệu và thiết kế của giày đảm bảo sự bền bỉ và hấp dẫn.', 35000, N'Đà Nẵng', 1, 98, CAST(N'2023-05-10T15:36:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([id], [name], [imgLink1], [imgLink2], [title], [description], [price], [address], [cateID], [quantity], [createdTime]) VALUES (6, N'Nike Jordan 1 High Đen Trắng', N'https://giayxshop.vn/wp-content/uploads/2020/12/z3668195007518_a02cbad9f36b65e6d24bbcfe85f3f454-300x300.jpg', N'https://giayxshop.vn/wp-content/uploads/2020/12/z3668195007518_a02cbad9f36b65e6d24bbcfe85f3f454-300x300.jpg', N'Giày chất lượng cao chi có ở Shoes Store', N'Giày là phụ kiện thời trang quan trọng, thể hiện phong cách và cá nhân. Chúng mang lại thoải mái và tự tin trong mỗi bước đi. Dù là giày thể thao, giày cao gót hay giày công nghiệp, chúng đa dạng và phù hợp với mọi hoàn cảnh. Chất liệu và thiết kế của giày đảm bảo sự bền bỉ và hấp dẫn.', 185000, N'Hải Phòng', 2, 95, CAST(N'2023-05-10T15:36:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([id], [name], [imgLink1], [imgLink2], [title], [description], [price], [address], [cateID], [quantity], [createdTime]) VALUES (7, N'Nike Air Force 1 LV Trắng Nâu', N'https://giayxshop.vn/wp-content/uploads/2021/12/z3662918076841_331d2b7515ec2ceadb4c841864b2f632-600x600.jpg', N'https://giayxshop.vn/wp-content/uploads/2021/12/z3662918076841_331d2b7515ec2ceadb4c841864b2f632-600x600.jpg', N'Giày chất lượng cao chi có ở Shoes Store', N'Giày là phụ kiện thời trang quan trọng, thể hiện phong cách và cá nhân. Chúng mang lại thoải mái và tự tin trong mỗi bước đi. Dù là giày thể thao, giày cao gót hay giày công nghiệp, chúng đa dạng và phù hợp với mọi hoàn cảnh. Chất liệu và thiết kế của giày đảm bảo sự bền bỉ và hấp dẫn.', 450000, N'Hà Nội', 2, 100, CAST(N'2023-05-10T15:36:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([id], [name], [imgLink1], [imgLink2], [title], [description], [price], [address], [cateID], [quantity], [createdTime]) VALUES (8, N'Nike Air Max 97 Ghi Xám', N'https://giayxshop.vn/wp-content/uploads/2019/02/z3670472265573_1a4c3accfa372c407ae4ba0938f8c9e0-300x300.jpg', N'https://giayxshop.vn/wp-content/uploads/2019/02/z3670472265573_1a4c3accfa372c407ae4ba0938f8c9e0-300x300.jpg', N'Giày chất lượng cao chi có ở Shoes Store', N'Giày là phụ kiện thời trang quan trọng, thể hiện phong cách và cá nhân. Chúng mang lại thoải mái và tự tin trong mỗi bước đi. Dù là giày thể thao, giày cao gót hay giày công nghiệp, chúng đa dạng và phù hợp với mọi hoàn cảnh. Chất liệu và thiết kế của giày đảm bảo sự bền bỉ và hấp dẫn.', 10000, N'Hà Giang', 2, 95, CAST(N'2023-05-10T15:36:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([id], [name], [imgLink1], [imgLink2], [title], [description], [price], [address], [cateID], [quantity], [createdTime]) VALUES (9, N'Nike Zoom N979 Đen Ghi Đậm', N'https://giayxshop.vn/wp-content/uploads/2022/06/z3673708374698_5f46b2db8f9d70694c06f30783556542-300x300.jpg', N'https://giayxshop.vn/wp-content/uploads/2022/06/z3673708374698_5f46b2db8f9d70694c06f30783556542-300x300.jpg', N'Giày chất lượng cao chi có ở Shoes Store', N'Giày là phụ kiện thời trang quan trọng, thể hiện phong cách và cá nhân. Chúng mang lại thoải mái và tự tin trong mỗi bước đi. Dù là giày thể thao, giày cao gót hay giày công nghiệp, chúng đa dạng và phù hợp với mọi hoàn cảnh. Chất liệu và thiết kế của giày đảm bảo sự bền bỉ và hấp dẫn.', 79000, N'Bắc Ninh', 2, 100, CAST(N'2023-05-10T15:36:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([id], [name], [imgLink1], [imgLink2], [title], [description], [price], [address], [cateID], [quantity], [createdTime]) VALUES (16, N'Nike Zoom A150 Xám Xanh', N'https://giayxshop.vn/wp-content/uploads/2022/11/z3867066712483_7e824d886742bd4baa63bee6fc2c945c-300x300.jpg', N'https://giayxshop.vn/wp-content/uploads/2022/11/z3867066712483_7e824d886742bd4baa63bee6fc2c945c-300x300.jpg', N'Giày chất lượng cao chi có ở Shoes Store', N'Giày là phụ kiện thời trang quan trọng, thể hiện phong cách và cá nhân. Chúng mang lại thoải mái và tự tin trong mỗi bước đi. Dù là giày thể thao, giày cao gót hay giày công nghiệp, chúng đa dạng và phù hợp với mọi hoàn cảnh. Chất liệu và thiết kế của giày đảm bảo sự bền bỉ và hấp dẫn.', 299999, N'Hà Ninh', 2, 100, CAST(N'2023-05-10T15:36:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([id], [name], [imgLink1], [imgLink2], [title], [description], [price], [address], [cateID], [quantity], [createdTime]) VALUES (21, N'Giày Sneaker converse run star hike black ( full box)', N'https://down-vn.img.susercontent.com/file/b07ed961ced641904a3e30035f73e739_tn', N'https://down-vn.img.susercontent.com/file/b07ed961ced641904a3e30035f73e739_tn', N'Giày chất lượng cao chi có ở Shoes Store', N'Giày là phụ kiện thời trang quan trọng, thể hiện phong cách và cá nhân. Chúng mang lại thoải mái và tự tin trong mỗi bước đi. Dù là giày thể thao, giày cao gót hay giày công nghiệp, chúng đa dạng và phù hợp với mọi hoàn cảnh. Chất liệu và thiết kế của giày đảm bảo sự bền bỉ và hấp dẫn.', 199000, N'Thái Bình', 4, 96, CAST(N'2023-05-10T15:36:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([id], [name], [imgLink1], [imgLink2], [title], [description], [price], [address], [cateID], [quantity], [createdTime]) VALUES (28, N'Converse 1970s Đen Cao Cổ', N'https://giayxshop.vn/wp-content/uploads/2019/07/z3665722492975_ee72c46314366ddd49c5f02a8628ff3a-300x300.jpg', N'https://giayxshop.vn/wp-content/uploads/2019/07/z3665722492975_ee72c46314366ddd49c5f02a8628ff3a-300x300.jpg', N'Giày chất lượng cao chi có ở Shoes Store', N'Giày là phụ kiện thời trang quan trọng, thể hiện phong cách và cá nhân. Chúng mang lại thoải mái và tự tin trong mỗi bước đi. Dù là giày thể thao, giày cao gót hay giày công nghiệp, chúng đa dạng và phù hợp với mọi hoàn cảnh. Chất liệu và thiết kế của giày đảm bảo sự bền bỉ và hấp dẫn.', 450000, N'Hải Phòng', 4, 100, CAST(N'2023-05-10T15:36:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([id], [name], [imgLink1], [imgLink2], [title], [description], [price], [address], [cateID], [quantity], [createdTime]) VALUES (1024, N'Converse 1970s Kem Thấp Cổ', N'https://giayxshop.vn/wp-content/uploads/2022/12/z3922968422757_eeecf03ff8e5e2d855d853f6110f7233-300x300.jpg', N'https://giayxshop.vn/wp-content/uploads/2022/12/z3922968422757_eeecf03ff8e5e2d855d853f6110f7233-300x300.jpg', N'Giày chất lượng cao chi có ở Shoes Store', N'Giày là phụ kiện thời trang quan trọng, thể hiện phong cách và cá nhân. Chúng mang lại thoải mái và tự tin trong mỗi bước đi. Dù là giày thể thao, giày cao gót hay giày công nghiệp, chúng đa dạng và phù hợp với mọi hoàn cảnh. Chất liệu và thiết kế của giày đảm bảo sự bền bỉ và hấp dẫn.', 450000, N'Cần Thơ', 4, 99, CAST(N'2023-05-10T15:36:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([id], [name], [imgLink1], [imgLink2], [title], [description], [price], [address], [cateID], [quantity], [createdTime]) VALUES (1025, N'Converse 1970s Kem Cao Cổ', N'https://giayxshop.vn/wp-content/uploads/2022/12/z3922965338810_fd550495511c6c40556199297dc6004f-300x300.jpg', N'https://giayxshop.vn/wp-content/uploads/2022/12/z3922965338810_fd550495511c6c40556199297dc6004f-300x300.jpg', N'Giày chất lượng cao chi có ở Shoes Store', N'Giày là phụ kiện thời trang quan trọng, thể hiện phong cách và cá nhân. Chúng mang lại thoải mái và tự tin trong mỗi bước đi. Dù là giày thể thao, giày cao gót hay giày công nghiệp, chúng đa dạng và phù hợp với mọi hoàn cảnh. Chất liệu và thiết kế của giày đảm bảo sự bền bỉ và hấp dẫn.', 420000, N'Phú Thọ', 4, 94, CAST(N'2023-05-10T15:36:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([id], [name], [imgLink1], [imgLink2], [title], [description], [price], [address], [cateID], [quantity], [createdTime]) VALUES (1029, N'Giày Thể Thao Nam Hunter Core - Meteor Collection DSMH10800XAD (Xám Đậm)', N'//product.hstatic.net/1000230642/product/dsmh10800xad__2__71a3d3506f344f019ab82e058aa1254d_large.jpg', N'//product.hstatic.net/1000230642/product/dsmh10800xad__2__71a3d3506f344f019ab82e058aa1254d_large.jpg', N'Giày chất lượng cao chi có ở Shoes Store', N'Giày là phụ kiện thời trang quan trọng, thể hiện phong cách và cá nhân. Chúng mang lại thoải mái và tự tin trong mỗi bước đi. Dù là giày thể thao, giày cao gót hay giày công nghiệp, chúng đa dạng và phù hợp với mọi hoàn cảnh. Chất liệu và thiết kế của giày đảm bảo sự bền bỉ và hấp dẫn.', 706000, N'Dak Lak', 3, 96, CAST(N'2023-05-10T15:36:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([id], [name], [imgLink1], [imgLink2], [title], [description], [price], [address], [cateID], [quantity], [createdTime]) VALUES (1031, N'Giày Thể Thao Nam Hunter X - Dune OTP Real Black edition HSM001200DEN (Đen)', N'//product.hstatic.net/1000230642/product/hsm001200den__2__5b334f3afd484a40bec4abe17b476c8f_large.jpg', N'//product.hstatic.net/1000230642/product/hsm001200den__2__5b334f3afd484a40bec4abe17b476c8f_large.jpg', N'Giày chất lượng cao chi có ở Shoes Store', N'Giày là phụ kiện thời trang quan trọng, thể hiện phong cách và cá nhân. Chúng mang lại thoải mái và tự tin trong mỗi bước đi. Dù là giày thể thao, giày cao gót hay giày công nghiệp, chúng đa dạng và phù hợp với mọi hoàn cảnh. Chất liệu và thiết kế của giày đảm bảo sự bền bỉ và hấp dẫn.', 1329000, N'Cà Mau', 3, 97, CAST(N'2023-05-10T15:36:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([id], [name], [imgLink1], [imgLink2], [title], [description], [price], [address], [cateID], [quantity], [createdTime]) VALUES (1033, N' Giày Thể Thao Nam Hunter Core - Gravity Leap collection DSMH10900DEN (Đen) ', N'//product.hstatic.net/1000230642/product/dsmh10900den__2__9f60c11f99a04f6db03bc2b0bdb4316a_large.jpg', N'//product.hstatic.net/1000230642/product/dsmh10900den__2__9f60c11f99a04f6db03bc2b0bdb4316a_large.jpg', N'Giày chất lượng cao chi có ở Shoes Store', N'Giày là phụ kiện thời trang quan trọng, thể hiện phong cách và cá nhân. Chúng mang lại thoải mái và tự tin trong mỗi bước đi. Dù là giày thể thao, giày cao gót hay giày công nghiệp, chúng đa dạng và phù hợp với mọi hoàn cảnh. Chất liệu và thiết kế của giày đảm bảo sự bền bỉ và hấp dẫn.', 773100, N'Hà Nội', 3, 100, CAST(N'2023-05-10T15:36:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([id], [name], [imgLink1], [imgLink2], [title], [description], [price], [address], [cateID], [quantity], [createdTime]) VALUES (1034, N' Giày Thể Thao Nam Hunter Street x VietMax Vietnam Arising DSMH05502TRG (Trắng) ', N'//product.hstatic.net/1000230642/product/dsc_0322_f651c011422f49fe8604577217411fcf_large.jpg', N'//product.hstatic.net/1000230642/product/dsc_0322_f651c011422f49fe8604577217411fcf_large.jpg', N'Giày chất lượng cao chi có ở Shoes Store', N'Giày là phụ kiện thời trang quan trọng, thể hiện phong cách và cá nhân. Chúng mang lại thoải mái và tự tin trong mỗi bước đi. Dù là giày thể thao, giày cao gót hay giày công nghiệp, chúng đa dạng và phù hợp với mọi hoàn cảnh. Chất liệu và thiết kế của giày đảm bảo sự bền bỉ và hấp dẫn.', 1412000, N'Hà Nội', 3, 100, CAST(N'2023-05-10T15:36:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([id], [name], [imgLink1], [imgLink2], [title], [description], [price], [address], [cateID], [quantity], [createdTime]) VALUES (1035, N'Giày Thể Thao Nam Hunter Tennis DSMH10200DEN (Đen)', N'//product.hstatic.net/1000230642/product/dsmh10200den__2__bbe6991cfcc241a1858f54d2c81a2ced_large.jpg', N'//product.hstatic.net/1000230642/product/dsmh10200den__2__bbe6991cfcc241a1858f54d2c81a2ced_large.jpg', N'Giày chất lượng cao chi có ở Shoes Store', N'Giày là phụ kiện thời trang quan trọng, thể hiện phong cách và cá nhân. Chúng mang lại thoải mái và tự tin trong mỗi bước đi. Dù là giày thể thao, giày cao gót hay giày công nghiệp, chúng đa dạng và phù hợp với mọi hoàn cảnh. Chất liệu và thiết kế của giày đảm bảo sự bền bỉ và hấp dẫn.', 521000, N'Hà Nội', 3, 100, CAST(N'2023-05-10T15:36:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([id], [name], [imgLink1], [imgLink2], [title], [description], [price], [address], [cateID], [quantity], [createdTime]) VALUES (1037, N'Giày MLB Chunky Liner Mid Denim New York Yankees D.Navy', N'//bizweb.dktcdn.net/thumb/large/100/446/974/products/giay-mlb-chunky-liner-mid-denim-new-york-yankees-d-navy-3asxcdn3n-50nyd-2.jpg?v=1678034826000', N'//bizweb.dktcdn.net/thumb/large/100/446/974/products/giay-mlb-chunky-liner-mid-denim-new-york-yankees-d-navy-3asxcdn3n-50nyd-2.jpg?v=1678034826000', N'Giày chất lượng cao chi có ở Shoes Store', N'Giày là phụ kiện thời trang quan trọng, thể hiện phong cách và cá nhân. Chúng mang lại thoải mái và tự tin trong mỗi bước đi. Dù là giày thể thao, giày cao gót hay giày công nghiệp, chúng đa dạng và phù hợp với mọi hoàn cảnh. Chất liệu và thiết kế của giày đảm bảo sự bền bỉ và hấp dẫn.', 4700000, N'Ha Noi', 5, 98, CAST(N'2023-05-10T15:36:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([id], [name], [imgLink1], [imgLink2], [title], [description], [price], [address], [cateID], [quantity], [createdTime]) VALUES (1038, N'Giày MLB Chunky Liner Mid Denim New York Yankees D.Navy', N'//bizweb.dktcdn.net/thumb/large/100/446/974/products/giay-mlb-chunky-liner-mid-new-york-yankees-black-3asxlmb3n-50bks-3.jpg?v=1673700416000', N'//bizweb.dktcdn.net/thumb/large/100/446/974/products/giay-mlb-chunky-liner-mid-new-york-yankees-black-3asxlmb3n-50bks-3.jpg?v=1673700416000', N'Giày chất lượng cao chi có ở Shoes Store', N'Giày là phụ kiện thời trang quan trọng, thể hiện phong cách và cá nhân. Chúng mang lại thoải mái và tự tin trong mỗi bước đi. Dù là giày thể thao, giày cao gót hay giày công nghiệp, chúng đa dạng và phù hợp với mọi hoàn cảnh. Chất liệu và thiết kế của giày đảm bảo sự bền bỉ và hấp dẫn.', 4200000, N'HCM', 5, 100, CAST(N'2023-05-10T15:36:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([id], [name], [imgLink1], [imgLink2], [title], [description], [price], [address], [cateID], [quantity], [createdTime]) VALUES (1042, N'Vans Vault Da Lộn Trắng Viền Navy', N'https://giayxshop.vn/wp-content/uploads/2021/04/z3728988958742_e7164a685a12ea3157b3ce7f3dd58c47.jpg', N'https://giayxshop.vn/wp-content/uploads/2021/04/z3728988958742_e7164a685a12ea3157b3ce7f3dd58c47.jpg', N'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', N'Giày là phụ kiện thời trang quan trọng, thể hiện phong cách và cá nhân. Chúng mang lại thoải mái và tự tin trong mỗi bước đi. Dù là giày thể thao, giày cao gót hay giày công nghiệp, chúng đa dạng và phù hợp với mọi hoàn cảnh. Chất liệu và thiết kế của giày đảm bảo sự bền bỉ và hấp dẫn.', 350000, N'Ha Noi', 6, 30, CAST(N'2023-05-16T00:00:00.000' AS DateTime))
INSERT [dbo].[tblProducts] ([id], [name], [imgLink1], [imgLink2], [title], [description], [price], [address], [cateID], [quantity], [createdTime]) VALUES (1044, N'Vans Vault Da Lộn Trắng Viền Xanh Lá', N'https://giayxshop.vn/wp-content/uploads/2022/09/z3729008913812_17d5af36cbe90e8f81da7ebad18eb05d.jpg', N'https://giayxshop.vn/wp-content/uploads/2022/09/z3729008913812_17d5af36cbe90e8f81da7ebad18eb05d.jpg', N'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', N'Giày là phụ kiện thời trang quan trọng, thể hiện phong cách và cá nhân. Chúng mang lại thoải mái và tự tin trong mỗi bước đi. Dù là giày thể thao, giày cao gót hay giày công nghiệp, chúng đa dạng và phù hợp với mọi hoàn cảnh. Chất liệu và thiết kế của giày đảm bảo sự bền bỉ và hấp dẫn.', 250000, N'HCM', 6, 40, CAST(N'2023-05-18T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[tblProducts] OFF
GO
USE [master]
GO
ALTER DATABASE [Thuc_Tap_Co_So] SET  READ_WRITE 
GO

ALTER DATABASE [Cloth_Web] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Cloth_Web].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Cloth_Web] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Cloth_Web] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Cloth_Web] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Cloth_Web] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Cloth_Web] SET ARITHABORT OFF 
GO
ALTER DATABASE [Cloth_Web] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Cloth_Web] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Cloth_Web] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Cloth_Web] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Cloth_Web] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Cloth_Web] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Cloth_Web] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Cloth_Web] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Cloth_Web] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Cloth_Web] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Cloth_Web] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Cloth_Web] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Cloth_Web] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Cloth_Web] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Cloth_Web] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Cloth_Web] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Cloth_Web] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Cloth_Web] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Cloth_Web] SET  MULTI_USER 
GO
ALTER DATABASE [Cloth_Web] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Cloth_Web] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Cloth_Web] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Cloth_Web] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Cloth_Web] SET DELAYED_DURABILITY = DISABLED 
GO

USE [Cloth_Web]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 10/31/2021 14:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NULL,
	[totalMoney] [float] NULL,
	[customer_id] [int] NULL,
	[productsize_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 10/31/2021 14:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 10/31/2021 14:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](255) NULL,
	[isActive] [bit] NULL,
	[isAdmin] [bit] NULL,
	[name] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[phone] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 10/31/2021 14:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NULL,
	[totalMoney] [float] NULL,
	[order_id] [int] NULL,
	[productsize_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 10/31/2021 14:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[orderDate] [varchar](255) NULL,
	[totalMoney] [float] NULL,
	[customer_id] [int] NULL,
	[adddress] [varchar](255) NULL,
 CONSTRAINT [PK__Orders__3213E83FDB995F18] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 10/31/2021 14:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](255) NULL,
	[discount] [float] NULL,
	[image] [varchar](255) NULL,
	[name] [varchar](255) NULL,
	[quantity] [int] NULL,
	[salePrice] [float] NULL,
	[unitPrice] [float] NULL,
	[viewCount] [int] NULL,
	[category_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsSizes]    Script Date: 10/31/2021 14:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsSizes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[size_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 10/31/2021 14:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sizes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SmallPhotos]    Script Date: 10/31/2021 14:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmallPhotos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[photo] [varchar](255) NULL,
	[product_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Carts] ON 

INSERT [dbo].[Carts] ([id], [quantity], [totalMoney], [customer_id], [productsize_id]) VALUES (2022, 1, 135000, 4, 1007)
INSERT [dbo].[Carts] ([id], [quantity], [totalMoney], [customer_id], [productsize_id]) VALUES (2023, 1, 135000, 1, 1010)
INSERT [dbo].[Carts] ([id], [quantity], [totalMoney], [customer_id], [productsize_id]) VALUES (2024, 1, 135000, 1, 1009)
SET IDENTITY_INSERT [dbo].[Carts] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([id], [name]) VALUES (1, N'Shirt')
INSERT [dbo].[Categories] ([id], [name]) VALUES (2, N'Pant')
INSERT [dbo].[Categories] ([id], [name]) VALUES (1002, N'Shoes')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([id], [email], [isActive], [isAdmin], [name], [password], [phone]) VALUES (1, N'huynhngoccanh3010@gmail.com', 1, 1, N'canh', N'123', N'0564355691')
INSERT [dbo].[Customers] ([id], [email], [isActive], [isAdmin], [name], [password], [phone]) VALUES (3, N'nguyentrungpbc2000@gmail.com', 1, 0, N'nguyen', N'123', N'0383747578')
INSERT [dbo].[Customers] ([id], [email], [isActive], [isAdmin], [name], [password], [phone]) VALUES (4, N'n18dccn017@student.ptithcm.edu.vn', 1, 0, N'Huynh Canh', N'123', N'0564355691')
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([id], [quantity], [totalMoney], [order_id], [productsize_id]) VALUES (11, 1, 135000, 3, 1007)
INSERT [dbo].[OrderDetails] ([id], [quantity], [totalMoney], [order_id], [productsize_id]) VALUES (12, 1, 180000, 4, 1011)
INSERT [dbo].[OrderDetails] ([id], [quantity], [totalMoney], [order_id], [productsize_id]) VALUES (13, 1, 135000, 5, 1007)
INSERT [dbo].[OrderDetails] ([id], [quantity], [totalMoney], [order_id], [productsize_id]) VALUES (14, 1, 180000, 5, 1011)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [orderDate], [totalMoney], [customer_id], [adddress]) VALUES (3, N'Fri Oct 29 01:48:29 ICT 2021', 135000, 1, N'97 Man Thien Street - Hiep Phu Ward - Ho Chi Minh City')
INSERT [dbo].[Orders] ([id], [orderDate], [totalMoney], [customer_id], [adddress]) VALUES (4, N'Fri Oct 29 01:49:53 ICT 2021', 180000, 1, N'11 Nguy?n Ðình Chi?u, Ða Kao, Qu?n 1, Thành ph? H? Chí Minh')
INSERT [dbo].[Orders] ([id], [orderDate], [totalMoney], [customer_id], [adddress]) VALUES (5, N'Fri Oct 29 03:56:00 ICT 2021', 315000, 1, N'97 Man Thien Street - Hiep Phu Ward - Ho Chi Minh City')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([id], [description], [discount], [image], [name], [quantity], [salePrice], [unitPrice], [viewCount], [category_id]) VALUES (1, N'Sang Som Ma', 10, N'product-1.jpg', N'Red Shirt', 100, 150000, 100000, 1, 1)
INSERT [dbo].[Products] ([id], [description], [discount], [image], [name], [quantity], [salePrice], [unitPrice], [viewCount], [category_id]) VALUES (2, N'On Stage', 10, N'product-3.jpg', N'Long Pant', 50, 200000, 120000, 1, 2)
INSERT [dbo].[Products] ([id], [description], [discount], [image], [name], [quantity], [salePrice], [unitPrice], [viewCount], [category_id]) VALUES (3, N'INMYMIND', 20, N'product-6.jpg', N'Green Shirt', 70, 140000, 100000, 1, 1)
INSERT [dbo].[Products] ([id], [description], [discount], [image], [name], [quantity], [salePrice], [unitPrice], [viewCount], [category_id]) VALUES (1002, N'Ngam', 0, N'product-2.jpg', N'Black Shoes', 20, 120000, 70000, 1, 1002)
INSERT [dbo].[Products] ([id], [description], [discount], [image], [name], [quantity], [salePrice], [unitPrice], [viewCount], [category_id]) VALUES (1003, N'Dung Suy Nghi Vay Nha', 20, N'product-4.jpg', N'Purple Shirt', 50, 170000, 100000, 1, 1)
INSERT [dbo].[Products] ([id], [description], [discount], [image], [name], [quantity], [salePrice], [unitPrice], [viewCount], [category_id]) VALUES (1004, N'Mong', 25, N'product-5.jpg', N'White Shoes', 50, 200000, 100000, 1, 1002)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductsSizes] ON 

INSERT [dbo].[ProductsSizes] ([id], [product_id], [size_id]) VALUES (1007, 1, 1)
INSERT [dbo].[ProductsSizes] ([id], [product_id], [size_id]) VALUES (1011, 2, 1)
INSERT [dbo].[ProductsSizes] ([id], [product_id], [size_id]) VALUES (1, 1, 2)
INSERT [dbo].[ProductsSizes] ([id], [product_id], [size_id]) VALUES (1012, 2, 2)
INSERT [dbo].[ProductsSizes] ([id], [product_id], [size_id]) VALUES (1008, 1, 3)
INSERT [dbo].[ProductsSizes] ([id], [product_id], [size_id]) VALUES (2, 2, 3)
INSERT [dbo].[ProductsSizes] ([id], [product_id], [size_id]) VALUES (1009, 1, 4)
INSERT [dbo].[ProductsSizes] ([id], [product_id], [size_id]) VALUES (1013, 2, 4)
INSERT [dbo].[ProductsSizes] ([id], [product_id], [size_id]) VALUES (1010, 1, 5)
INSERT [dbo].[ProductsSizes] ([id], [product_id], [size_id]) VALUES (1014, 2, 5)
SET IDENTITY_INSERT [dbo].[ProductsSizes] OFF
GO
SET IDENTITY_INSERT [dbo].[Sizes] ON 

INSERT [dbo].[Sizes] ([id], [name]) VALUES (1, N'S')
INSERT [dbo].[Sizes] ([id], [name]) VALUES (2, N'M')
INSERT [dbo].[Sizes] ([id], [name]) VALUES (3, N'L')
INSERT [dbo].[Sizes] ([id], [name]) VALUES (4, N'XL')
INSERT [dbo].[Sizes] ([id], [name]) VALUES (5, N'XXL')
SET IDENTITY_INSERT [dbo].[Sizes] OFF
GO
SET IDENTITY_INSERT [dbo].[SmallPhotos] ON 

INSERT [dbo].[SmallPhotos] ([id], [photo], [product_id]) VALUES (1, N'product-1-1.jpg', 1)
INSERT [dbo].[SmallPhotos] ([id], [photo], [product_id]) VALUES (2, N'product-1-2.jpg', 1)
INSERT [dbo].[SmallPhotos] ([id], [photo], [product_id]) VALUES (3, N'product-1-3.jpg', 1)
INSERT [dbo].[SmallPhotos] ([id], [photo], [product_id]) VALUES (4, N'product-1-4.jpg', 1)
SET IDENTITY_INSERT [dbo].[SmallPhotos] OFF
GO
/****** Object:  Index [UK_gx7lon3lpvtu0w0ves0ikwp63]    Script Date: 10/31/2021 14:47:06 ******/
ALTER TABLE [dbo].[Carts] ADD  CONSTRAINT [UK_gx7lon3lpvtu0w0ves0ikwp63] UNIQUE NONCLUSTERED 
(
	[customer_id] ASC,
	[productsize_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_81beos46prgefk70wc9mgyp3f]    Script Date: 10/31/2021 14:47:06 ******/
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [UK_81beos46prgefk70wc9mgyp3f] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UK_aovjwrtly1n8heqqxdpvgrxfv]    Script Date: 10/31/2021 14:47:06 ******/
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [UK_aovjwrtly1n8heqqxdpvgrxfv] UNIQUE NONCLUSTERED 
(
	[order_id] ASC,
	[productsize_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UK_mws2lwuqv9yuaq4qfs2bwwwl1]    Script Date: 10/31/2021 14:47:06 ******/
ALTER TABLE [dbo].[ProductsSizes] ADD  CONSTRAINT [UK_mws2lwuqv9yuaq4qfs2bwwwl1] UNIQUE NONCLUSTERED 
(
	[size_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_2wf8itbafq1aj60yaes9nvbj1] FOREIGN KEY([productsize_id])
REFERENCES [dbo].[ProductsSizes] ([id])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_2wf8itbafq1aj60yaes9nvbj1]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_mhsc9rwrj7df4wd7wis2f6w9e] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customers] ([id])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_mhsc9rwrj7df4wd7wis2f6w9e]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_di5swskkf5c3hdnmln8noadc2] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_di5swskkf5c3hdnmln8noadc2]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_sx8ai3og6nyas6x0ej9ktdd74] FOREIGN KEY([productsize_id])
REFERENCES [dbo].[ProductsSizes] ([id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_sx8ai3og6nyas6x0ej9ktdd74]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_hi1sbt52iwcwwk2g3bck4hekx] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customers] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_hi1sbt52iwcwwk2g3bck4hekx]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_mwube1yf7h9h1jsulbgdo8u0x] FOREIGN KEY([category_id])
REFERENCES [dbo].[Categories] ([id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_mwube1yf7h9h1jsulbgdo8u0x]
GO
ALTER TABLE [dbo].[ProductsSizes]  WITH CHECK ADD  CONSTRAINT [FK_3ikk3hpwp26aa8fcvx36cgjxe] FOREIGN KEY([size_id])
REFERENCES [dbo].[Sizes] ([id])
GO
ALTER TABLE [dbo].[ProductsSizes] CHECK CONSTRAINT [FK_3ikk3hpwp26aa8fcvx36cgjxe]
GO
ALTER TABLE [dbo].[ProductsSizes]  WITH CHECK ADD  CONSTRAINT [FK_75gxpg4jw5afm0pyvauc9g3qr] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[ProductsSizes] CHECK CONSTRAINT [FK_75gxpg4jw5afm0pyvauc9g3qr]
GO
ALTER TABLE [dbo].[SmallPhotos]  WITH CHECK ADD  CONSTRAINT [FK_q6xkgwy5ko9e0rl45jvbijh3g] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[SmallPhotos] CHECK CONSTRAINT [FK_q6xkgwy5ko9e0rl45jvbijh3g]
GO
USE [master]
GO
ALTER DATABASE [Cloth_Web] SET  READ_WRITE 
GO

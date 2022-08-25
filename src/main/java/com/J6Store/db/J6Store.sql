USE [J6Store]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 8/25/2022 4:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authorities]    Script Date: 8/25/2022 4:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Role_id] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 8/25/2022 4:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_details]    Script Date: 8/25/2022 4:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_details](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Order_id] [int] NOT NULL,
	[Product_id] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 8/25/2022 4:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Create_date] [date] NOT NULL,
	[Address] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 8/25/2022 4:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[Create_date] [date] NULL,
	[Available] [bit] NULL,
	[Category_id] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 8/25/2022 4:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 8/25/2022 4:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[email] [nvarchar](50) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[marks] [float] NOT NULL,
	[gender] [bit] NOT NULL,
	[country] [nvarchar](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'beobp18', N'123', N'Nguyễn Trường Chinh', N'truongchinh.dev@gmail.com', N'4eeb346f.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'beobp181', N'123', N'123', N'123', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'beobp182', N'123', N'User2', N'user2@gmail.com', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'orderstest', N'123', N'Test Orders', N'order@gmail.com', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'phucle', N'123', N'Trần Lê Hồng Phúc', N'phuctlh@fpt.edu.vn', N'ef370304.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'taibeo', N'123', N'Nguyễn Trọng Tài', N'taintps15069@fpt.edu.vn', N'3ff81db4.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'tula', N'123', N'Lê Anh Tú', N'tula@fpt.edu.vn', N'df5d15c8.png')
GO
SET IDENTITY_INSERT [dbo].[Authorities] ON 
GO
INSERT [dbo].[Authorities] ([Id], [Username], [Role_id]) VALUES (1, N'beobp18', N'ADMIN')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [Role_id]) VALUES (2, N'beobp18', N'STAFF')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [Role_id]) VALUES (7, N'beobp18', N'GUEST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [Role_id]) VALUES (11, N'tula', N'STAFF')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [Role_id]) VALUES (12, N'taibeo', N'STAFF')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [Role_id]) VALUES (13, N'phucle', N'STAFF')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [Role_id]) VALUES (17, N'tula', N'GUEST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [Role_id]) VALUES (18, N'beobp18', N'ADMIN')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [Role_id]) VALUES (19, N'taibeo', N'GUEST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [Role_id]) VALUES (20, N'orderstest', N'GUEST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [Role_id]) VALUES (21, N'beobp181', N'GUEST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [Role_id]) VALUES (22, N'beobp182', N'GUEST')
GO
SET IDENTITY_INSERT [dbo].[Authorities] OFF
GO
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (N'AW', N'Apple Watch', N'd20ef79.png')
GO
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (N'BG', N'BABY-G', N'b012cd6c.png')
GO
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (N'CAS', N'Đồng hồ Casio', N'6a7f495f.png')
GO
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (N'CASP', N'CASIO PROTREK', N'7d6fd006.png')
GO
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (N'CTZ', N'CITIZEN', N'46479f06.png')
GO
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (N'FRR', N'FERRARI', N'frr.png')
GO
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (N'GS', N'G-SHOCK', N'gs.png')
GO
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (N'KL', N'KORLEX', N'kl.png')
GO
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (N'LCT', N'LACOSTE', N'lct.png')
GO
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (N'MOV', N'MOVADO', N'')
GO
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (N'MVW', N'MVW', N'mvw.png')
GO
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (N'ORI', N'ORIENT', N'ori.png')
GO
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (N'RL', N'ROLEX', N'57339dc0.png')
GO
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (N'SSGW', N'Samsung Galaxy Watch', N'ssgw.png')
GO
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (N'TM', N'TIMEX', N'tm.png')
GO
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (N'TT', N'TITAN', N'tt.png')
GO
SET IDENTITY_INSERT [dbo].[Order_details] ON 
GO
INSERT [dbo].[Order_details] ([Id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (9, 15, 1, 16490000, 2)
GO
INSERT [dbo].[Order_details] ([Id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (10, 15, 28, 21600000, 2)
GO
INSERT [dbo].[Order_details] ([Id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (11, 16, 2, 12880000, 1)
GO
INSERT [dbo].[Order_details] ([Id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (12, 16, 3, 7190000, 1)
GO
INSERT [dbo].[Order_details] ([Id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (13, 17, 1, 16490000, 1)
GO
INSERT [dbo].[Order_details] ([Id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (14, 17, 2, 12880000, 1)
GO
INSERT [dbo].[Order_details] ([Id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (15, 18, 1, 16490000, 1)
GO
INSERT [dbo].[Order_details] ([Id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (16, 18, 2, 12880000, 1)
GO
INSERT [dbo].[Order_details] ([Id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (17, 19, 2, 12880000, 4)
GO
INSERT [dbo].[Order_details] ([Id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (18, 19, 3, 7190000, 1)
GO
INSERT [dbo].[Order_details] ([Id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (19, 20, 23, 1111000, 1)
GO
INSERT [dbo].[Order_details] ([Id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (20, 21, 32, 23220000, 1)
GO
INSERT [dbo].[Order_details] ([Id], [Order_id], [Product_id], [Price], [Quantity]) VALUES (21, 21, 33, 1975000, 1)
GO
SET IDENTITY_INSERT [dbo].[Order_details] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([Id], [Username], [Create_date], [Address]) VALUES (15, N'orderstest', CAST(N'2022-08-10' AS Date), N'Tp. HCM')
GO
INSERT [dbo].[Orders] ([Id], [Username], [Create_date], [Address]) VALUES (16, N'beobp181', CAST(N'2022-08-22' AS Date), N'123')
GO
INSERT [dbo].[Orders] ([Id], [Username], [Create_date], [Address]) VALUES (17, N'beobp181', CAST(N'2022-08-23' AS Date), N'vvv')
GO
INSERT [dbo].[Orders] ([Id], [Username], [Create_date], [Address]) VALUES (18, N'beobp181', CAST(N'2022-08-23' AS Date), N'vvvvv')
GO
INSERT [dbo].[Orders] ([Id], [Username], [Create_date], [Address]) VALUES (19, N'beobp181', CAST(N'2022-08-23' AS Date), N'bbb')
GO
INSERT [dbo].[Orders] ([Id], [Username], [Create_date], [Address]) VALUES (20, N'orderstest', CAST(N'2022-08-24' AS Date), N'bbbb')
GO
INSERT [dbo].[Orders] ([Id], [Username], [Create_date], [Address]) VALUES (21, N'beobp182', CAST(N'2022-08-25' AS Date), N'bbbbb')
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (1, N'Apple Watch S6 LTE 40mm viền thép dây thép', N'b2104cd2.jpg', 16490000, CAST(N'2020-09-15' AS Date), 1, N'AW', N'Apple Watch S6 LTE 40mm viền thép dây thép sở hữu các chi tiết được thiết kế tinh xảo, dây đeo thép bền bỉ dưới hình dáng lưới đan mỏng. Màn hình 1.57 inch hiển thị hình ảnh sắc nét, mặt kính Sapphire giúp bảo vệ chiếc đồng hồ của bạn an toàn trước những va đập không mong muốn.')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (2, N'Apple Watch S6 LTE 40mm viền thép dây silicone', N'29380ff3.png', 12880000, CAST(N'2020-09-15' AS Date), 1, N'AW', N'Apple Watch S6 LTE 40mm viền thép dây silicone đen là một trong những dòng đồng hồ được ưa chuộng với thiết kế tinh tế trong từng chi tiết, khung viền được gia công chắc chắn, dây đeo silicone đàn hồi tốt, màn hình sắc nét 1.57 inch hiển thị đủ thông tin. Đây là chiếc đồng hồ hứa hẹn đem đến cho bạn sự hài lòng khi đeo trên tay.')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (3, N'Apple Watch SE 40mm viền nhôm dây silicone', N'14f09380.png', 7190000, CAST(N'2020-09-15' AS Date), 1, N'AW', N'Apple Watch SE 40mm viền nhôm dây silicone hồng có thiết kế bo tròn 4 góc giúp thao tác vuốt chạm thoải mái hơn. Mặt kính cường lực Ion-X strengthened glass với kích thước 1.57 inch, hiển thị rõ ràng. Khung viền nhôm chắc chắn cùng dây đeo silicone có độ đàn hồi cao, êm ái, tạo cảm giác thoải mái khi đeo.')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (10, N'Apple Watch Series 7 GPS 41mm', N'5dbfdc8f.png', 10490000, CAST(N'2021-09-14' AS Date), 1, N'AW', N'Thiết kế của Apple Watch S7 GPS 41 mm thừa hưởng nhiều nét tương đồng với "người anh" Apple Watch S6 nhưng các góc cạnh được vát tròn mềm mại hơn mang đến cho người đeo cảm giác thanh lịch nhưng không kém phần năng động. Chiếc smartwatch thế hệ thứ 7 được nhà Táo trang bị màn hình OLED 1.61 inch với viền màn hình mỏng hơn 40%, nâng diện tích màn hình lên 20% và nội dung hiển thị trên màn hình cũng nhiều hơn 50% so với thế hệ cũ.')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (11, N'Apple Watch Series 7 GPS 45mm', N'7a813189.png', 11790000, CAST(N'2021-09-14' AS Date), 1, N'AW', N'Apple vừa cho ra mắt hàng loạt siêu phẩm khiến người dùng không khỏi trầm trồ, trong đó có chiếc Apple Watch S7 GPS 45 mm. Mẫu đồng hồ này mang vẻ ngoài tinh tế hơn với màn hình tràn viền và các góc được bo tròn mềm mại. Diện tích màn hình của đồng hồ tăng lên 20%, màn hình hiển thị được nhiều nội dung hơn, cụ thể là hơn 50% so với dòng S6 giúp người dùng nắm bắt thông tin một cách nhanh chóng mà không cần sử dụng thao tác vuốt nhiều lần.')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (12, N'Apple Watch S6 LTE 40mm viền thép dây silicone', N'a7103a08.png', 15490000, CAST(N'2020-09-15' AS Date), 1, N'AW', N'Apple Watch S6 LTE 40mm viền thép dây silicone đen là một trong những dòng đồng hồ được ưa chuộng với thiết kế tinh tế trong từng chi tiết, khung viền được gia công chắc chắn, dây đeo silicone đàn hồi tốt, màn hình sắc nét 1.57 inch hiển thị đủ thông tin. Đây là chiếc đồng hồ hứa hẹn đem đến cho bạn sự hài lòng khi đeo trên tay.')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (13, N'Apple Watch S3 GPS 38mm viền nhôm dây silicone', N'68426473.png', 5090000, CAST(N'2017-09-22' AS Date), 1, N'AW', N'Apple Watch S3 GPS 38 mm viền nhôm dây silicone trắng sở hữu màn hình công nghệ OLED kích thước 1.5 inch, độ phân giải 340 x 272 pixels cho khả năng hiển thị rõ ràng, sắc nét. Trang bị khung viền nhôm cứng cáp và mặt kính Ion-X strengthened glass giúp bảo vệ đồng hồ an toàn. Dây đeo silicone có độ bền cao, chống thấm nước, êm nhẹ, mang đến cho bạn cảm giác thoải mái, dễ chịu.')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (14, N'Apple Watch Series 7 LTE 41mm viền thép', N'e9aa7f43.png', 20990000, CAST(N'2021-09-14' AS Date), 1, N'AW', N'Apple Watch S7 LTE 41 mm viền thép có thiết kế tươi trẻ, hiện đại. Khung viền thép bền bỉ, cứng cáp cùng mặt kính Sapphire giúp bảo vệ an toàn cho đồng hồ trước những va đập không mong muốn. Màn hình OLED 1.61 inch hiển thị hình ảnh sống động, sắc nét, dây đeo silicone êm nhẹ, không thấm nước, cho bạn cảm giác dễ chịu suốt ngày dài.')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (15, N'Samsung Galaxy Watch 4 Classic 42mm Đen', N'd3e45354.png', 7490000, CAST(N'2021-08-11' AS Date), 1, N'SSGW', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (16, N'Samsung Galaxy Watch 4 Classic 42mm Trắng', N'a5f98b91.png', 7490000, CAST(N'2021-08-11' AS Date), 1, N'SSGW', N'Đồng hồ Samsung Galaxy Watch 4 Classic 42mm sở hữu khung viền làm từ thép không gỉ bền chắc và được chứng nhận độ bền MIL-STD-810G, cho khả năng chống ăn mòn tốt hơn trong những điều kiện thời tiết khác nhau. Chiếc đồng hồ điều hướng linh hoạt với vòng xoay bezel độc đáo tạo nên vẻ đẹp sang trọng vượt thời gian. Samsung đã sử dụng phần dây đeo silicone mang lại cho bạn cảm giác êm ái, thỏa sức tham gia các hoạt động thể thao như chạy bộ, đạp xe,...')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (17, N'Samsung Galaxy Watch 4 LTE 44mm', N'8842b21d.png', 6990000, CAST(N'2021-08-11' AS Date), 1, N'SSGW', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (18, N'Samsung Galaxy Watch 4 Classic 46mm Bạc', N'58e2b806.png', 7990000, CAST(N'2021-08-11' AS Date), 1, N'SSGW', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (19, N'Samsung Galaxy Watch 4 LTE 40mm', N'203ff303.png', 6490000, CAST(N'2021-08-11' AS Date), 1, N'SSGW', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (20, N'Đồng hồ CASIO 39.7 mm Nam AE-1200WHD-1AVDF', N'667a6e19.png', 1111000, CAST(N'2019-06-04' AS Date), 1, N'CAS', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (21, N'Đồng hồ Casio 51 mm Nam AEQ-120W-2AVDF', N'1a67d8f0.png', 1342000, CAST(N'2020-06-16' AS Date), 1, N'CAS', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (22, N'Đồng hồ CASIO 43 mm Unisex W-218HC-4AVDF', N'18f2c7df.png', 612000, CAST(N'2020-01-15' AS Date), 1, N'CAS', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (23, N'Đồng hồ CASIO 34 mm Nữ LTP-VT01GL-9B2UDF', N'59dfccd.png', 947000, CAST(N'2020-02-11' AS Date), 1, N'CAS', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (24, N'Đồng hồ MOVADO 42.5 mm Nam 3600444', N'903e2a03.png', 17370000, CAST(N'2019-05-10' AS Date), 1, N'MOV', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (25, N'Đồng hồ MOVADO 40 mm Nam 3600520', N'3631a406.png', 12240000, CAST(N'2021-02-19' AS Date), 1, N'MOV', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (26, N'Đồng hồ MOVADO 42 mm Nam 3600230', N'41d77c2b.png', 12240000, CAST(N'2020-02-07' AS Date), 1, N'MOV', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (27, N'Đồng hồ MOVADO 40 mm Nam 3600205', N'e4d903f0.png', 19080000, CAST(N'2021-09-14' AS Date), 1, N'MOV', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (28, N'Đồng hồ MOVADO 40 mm Nam 2600003', N'658a0225.png', 21600000, CAST(N'2020-03-11' AS Date), 1, N'MOV', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (29, N'Đồng hồ MOVADO 39.5 mm Nam 0607464', N'56bfdf9f.png', 36360000, CAST(N'2021-08-18' AS Date), 1, N'MOV', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (30, N'Đồng hồ MOVADO 39.5 mm Nam 0607348', N'44a035e9.png', 23580000, CAST(N'2021-09-14' AS Date), 1, N'MOV', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (31, N'Đồng hồ MOVADO 40 mm Nam 0607201', N'8727597f.png', 29700000, CAST(N'2020-12-30' AS Date), 1, N'MOV', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (32, N'Đồng hồ MOVADO 40 mm Nam 0607212', N'c4543588.png', 23220000, CAST(N'2020-12-30' AS Date), 1, N'MOV', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (33, N'Đồng hồ CITIZEN 42 mm Nam BH5003-51L', N'd2123213.png', 1975000, CAST(N'2021-09-01' AS Date), 1, N'CTZ', NULL)
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'ADMIN', N'Administrators')
GO
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'GUEST', N'Guests')
GO
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'STAFF', N'Staffs')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'hoangdieu@gmail.com', N'Thái Hoa Hoàng Diệu', 6, 1, N'VN')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'maria@gmail.com', N'Maria', 4, 0, N'US')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'sonjohn@gmail.com', N'John Son', 5, 1, N'US')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'taintps15069@fpt.edu.vn', N'Nguyễn Trọng Tài', 8, 1, N'VN')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'teonv@gmail.com', N'Nguyễn Văn Tèo', 7, 1, N'VN')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'thanhthuytran@gmail.com', N'Trần Thị Thanh Thúy', 9, 0, N'VN')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'truongchinh.dev@gmail.com', N'Nguyễn Trường Chinh', 10, 1, N'VN')
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD FOREIGN KEY([Role_id])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[Order_details]  WITH CHECK ADD FOREIGN KEY([Product_id])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Order_details]  WITH CHECK ADD FOREIGN KEY([Order_id])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([Category_id])
REFERENCES [dbo].[Categories] ([Id])
GO

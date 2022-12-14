CREATE DATABASE [J6Store]
GO
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
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'beobp18', N'123', N'Nguy???n Tr?????ng Chinh', N'truongchinh.dev@gmail.com', N'4eeb346f.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'beobp181', N'123', N'123', N'123', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'beobp182', N'123', N'User2', N'user2@gmail.com', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'orderstest', N'123', N'Test Orders', N'order@gmail.com', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'phucle', N'123', N'Tr???n L?? H???ng Ph??c', N'phuctlh@fpt.edu.vn', N'ef370304.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'taibeo', N'123', N'Nguy???n Tr???ng T??i', N'taintps15069@fpt.edu.vn', N'3ff81db4.png')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'tula', N'123', N'L?? Anh T??', N'tula@fpt.edu.vn', N'df5d15c8.png')
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
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (N'CAS', N'?????ng h??? Casio', N'6a7f495f.png')
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
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (1, N'Apple Watch S6 LTE 40mm vi???n th??p d??y th??p', N'b2104cd2.jpg', 16490000, CAST(N'2020-09-15' AS Date), 1, N'AW', N'Apple Watch S6 LTE 40mm vi???n th??p d??y th??p s??? h???u c??c chi ti???t ???????c thi???t k??? tinh x???o, d??y ??eo th??p b???n b??? d?????i h??nh d??ng l?????i ??an m???ng. M??n h??nh 1.57 inch hi???n th??? h??nh ???nh s???c n??t, m???t k??nh Sapphire gi??p b???o v??? chi???c ?????ng h??? c???a b???n an to??n tr?????c nh???ng va ?????p kh??ng mong mu???n.')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (2, N'Apple Watch S6 LTE 40mm vi???n th??p d??y silicone', N'29380ff3.png', 12880000, CAST(N'2020-09-15' AS Date), 1, N'AW', N'Apple Watch S6 LTE 40mm vi???n th??p d??y silicone ??en l?? m???t trong nh???ng d??ng ?????ng h??? ???????c ??a chu???ng v???i thi???t k??? tinh t??? trong t???ng chi ti???t, khung vi???n ???????c gia c??ng ch???c ch???n, d??y ??eo silicone ????n h???i t???t, m??n h??nh s???c n??t 1.57 inch hi???n th??? ????? th??ng tin. ????y l?? chi???c ?????ng h??? h???a h???n ??em ?????n cho b???n s??? h??i l??ng khi ??eo tr??n tay.')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (3, N'Apple Watch SE 40mm vi???n nh??m d??y silicone', N'14f09380.png', 7190000, CAST(N'2020-09-15' AS Date), 1, N'AW', N'Apple Watch SE 40mm vi???n nh??m d??y silicone h???ng c?? thi???t k??? bo tr??n 4 g??c gi??p thao t??c vu???t ch???m tho???i m??i h??n. M???t k??nh c?????ng l???c Ion-X strengthened glass v???i k??ch th?????c 1.57 inch, hi???n th??? r?? r??ng. Khung vi???n nh??m ch???c ch???n c??ng d??y ??eo silicone c?? ????? ????n h???i cao, ??m ??i, t???o c???m gi??c tho???i m??i khi ??eo.')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (10, N'Apple Watch Series 7 GPS 41mm', N'5dbfdc8f.png', 10490000, CAST(N'2021-09-14' AS Date), 1, N'AW', N'Thi???t k??? c???a Apple Watch S7 GPS 41 mm th???a h?????ng nhi???u n??t t????ng ?????ng v???i "ng?????i anh" Apple Watch S6 nh??ng c??c g??c c???nh ???????c v??t tr??n m???m m???i h??n mang ?????n cho ng?????i ??eo c???m gi??c thanh l???ch nh??ng kh??ng k??m ph???n n??ng ?????ng. Chi???c smartwatch th??? h??? th??? 7 ???????c nh?? T??o trang b??? m??n h??nh OLED 1.61 inch v???i vi???n m??n h??nh m???ng h??n 40%, n??ng di???n t??ch m??n h??nh l??n 20% v?? n???i dung hi???n th??? tr??n m??n h??nh c??ng nhi???u h??n 50% so v???i th??? h??? c??.')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (11, N'Apple Watch Series 7 GPS 45mm', N'7a813189.png', 11790000, CAST(N'2021-09-14' AS Date), 1, N'AW', N'Apple v???a cho ra m???t h??ng lo???t si??u ph???m khi???n ng?????i d??ng kh??ng kh???i tr???m tr???, trong ???? c?? chi???c Apple Watch S7 GPS 45 mm. M???u ?????ng h??? n??y mang v??? ngo??i tinh t??? h??n v???i m??n h??nh tr??n vi???n v?? c??c g??c ???????c bo tr??n m???m m???i. Di???n t??ch m??n h??nh c???a ?????ng h??? t??ng l??n 20%, m??n h??nh hi???n th??? ???????c nhi???u n???i dung h??n, c??? th??? l?? h??n 50% so v???i d??ng S6 gi??p ng?????i d??ng n???m b???t th??ng tin m???t c??ch nhanh ch??ng m?? kh??ng c???n s??? d???ng thao t??c vu???t nhi???u l???n.')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (12, N'Apple Watch S6 LTE 40mm vi???n th??p d??y silicone', N'a7103a08.png', 15490000, CAST(N'2020-09-15' AS Date), 1, N'AW', N'Apple Watch S6 LTE 40mm vi???n th??p d??y silicone ??en l?? m???t trong nh???ng d??ng ?????ng h??? ???????c ??a chu???ng v???i thi???t k??? tinh t??? trong t???ng chi ti???t, khung vi???n ???????c gia c??ng ch???c ch???n, d??y ??eo silicone ????n h???i t???t, m??n h??nh s???c n??t 1.57 inch hi???n th??? ????? th??ng tin. ????y l?? chi???c ?????ng h??? h???a h???n ??em ?????n cho b???n s??? h??i l??ng khi ??eo tr??n tay.')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (13, N'Apple Watch S3 GPS 38mm vi???n nh??m d??y silicone', N'68426473.png', 5090000, CAST(N'2017-09-22' AS Date), 1, N'AW', N'Apple Watch S3 GPS 38 mm vi???n nh??m d??y silicone tr???ng s??? h???u m??n h??nh c??ng ngh??? OLED k??ch th?????c 1.5 inch, ????? ph??n gi???i 340 x 272 pixels cho kh??? n??ng hi???n th??? r?? r??ng, s???c n??t. Trang b??? khung vi???n nh??m c???ng c??p v?? m???t k??nh Ion-X strengthened glass gi??p b???o v??? ?????ng h??? an to??n. D??y ??eo silicone c?? ????? b???n cao, ch???ng th???m n?????c, ??m nh???, mang ?????n cho b???n c???m gi??c tho???i m??i, d??? ch???u.')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (14, N'Apple Watch Series 7 LTE 41mm vi???n th??p', N'e9aa7f43.png', 20990000, CAST(N'2021-09-14' AS Date), 1, N'AW', N'Apple Watch S7 LTE 41 mm vi???n th??p c?? thi???t k??? t????i tr???, hi???n ?????i. Khung vi???n th??p b???n b???, c???ng c??p c??ng m???t k??nh Sapphire gi??p b???o v??? an to??n cho ?????ng h??? tr?????c nh???ng va ?????p kh??ng mong mu???n. M??n h??nh OLED 1.61 inch hi???n th??? h??nh ???nh s???ng ?????ng, s???c n??t, d??y ??eo silicone ??m nh???, kh??ng th???m n?????c, cho b???n c???m gi??c d??? ch???u su???t ng??y d??i.')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (15, N'Samsung Galaxy Watch 4 Classic 42mm ??en', N'd3e45354.png', 7490000, CAST(N'2021-08-11' AS Date), 1, N'SSGW', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (16, N'Samsung Galaxy Watch 4 Classic 42mm Tr???ng', N'a5f98b91.png', 7490000, CAST(N'2021-08-11' AS Date), 1, N'SSGW', N'?????ng h??? Samsung Galaxy Watch 4 Classic 42mm s??? h???u khung vi???n l??m t??? th??p kh??ng g??? b???n ch???c v?? ???????c ch???ng nh???n ????? b???n MIL-STD-810G, cho kh??? n??ng ch???ng ??n m??n t???t h??n trong nh???ng ??i???u ki???n th???i ti???t kh??c nhau. Chi???c ?????ng h??? ??i???u h?????ng linh ho???t v???i v??ng xoay bezel ?????c ????o t???o n??n v??? ?????p sang tr???ng v?????t th???i gian. Samsung ???? s??? d???ng ph???n d??y ??eo silicone mang l???i cho b???n c???m gi??c ??m ??i, th???a s???c tham gia c??c ho???t ?????ng th??? thao nh?? ch???y b???, ?????p xe,...')
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (17, N'Samsung Galaxy Watch 4 LTE 44mm', N'8842b21d.png', 6990000, CAST(N'2021-08-11' AS Date), 1, N'SSGW', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (18, N'Samsung Galaxy Watch 4 Classic 46mm B???c', N'58e2b806.png', 7990000, CAST(N'2021-08-11' AS Date), 1, N'SSGW', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (19, N'Samsung Galaxy Watch 4 LTE 40mm', N'203ff303.png', 6490000, CAST(N'2021-08-11' AS Date), 1, N'SSGW', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (20, N'?????ng h??? CASIO 39.7 mm Nam AE-1200WHD-1AVDF', N'667a6e19.png', 1111000, CAST(N'2019-06-04' AS Date), 1, N'CAS', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (21, N'?????ng h??? Casio 51 mm Nam AEQ-120W-2AVDF', N'1a67d8f0.png', 1342000, CAST(N'2020-06-16' AS Date), 1, N'CAS', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (22, N'?????ng h??? CASIO 43 mm Unisex W-218HC-4AVDF', N'18f2c7df.png', 612000, CAST(N'2020-01-15' AS Date), 1, N'CAS', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (23, N'?????ng h??? CASIO 34 mm N??? LTP-VT01GL-9B2UDF', N'59dfccd.png', 947000, CAST(N'2020-02-11' AS Date), 1, N'CAS', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (24, N'?????ng h??? MOVADO 42.5 mm Nam 3600444', N'903e2a03.png', 17370000, CAST(N'2019-05-10' AS Date), 1, N'MOV', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (25, N'?????ng h??? MOVADO 40 mm Nam 3600520', N'3631a406.png', 12240000, CAST(N'2021-02-19' AS Date), 1, N'MOV', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (26, N'?????ng h??? MOVADO 42 mm Nam 3600230', N'41d77c2b.png', 12240000, CAST(N'2020-02-07' AS Date), 1, N'MOV', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (27, N'?????ng h??? MOVADO 40 mm Nam 3600205', N'e4d903f0.png', 19080000, CAST(N'2021-09-14' AS Date), 1, N'MOV', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (28, N'?????ng h??? MOVADO 40 mm Nam 2600003', N'658a0225.png', 21600000, CAST(N'2020-03-11' AS Date), 1, N'MOV', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (29, N'?????ng h??? MOVADO 39.5 mm Nam 0607464', N'56bfdf9f.png', 36360000, CAST(N'2021-08-18' AS Date), 1, N'MOV', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (30, N'?????ng h??? MOVADO 39.5 mm Nam 0607348', N'44a035e9.png', 23580000, CAST(N'2021-09-14' AS Date), 1, N'MOV', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (31, N'?????ng h??? MOVADO 40 mm Nam 0607201', N'8727597f.png', 29700000, CAST(N'2020-12-30' AS Date), 1, N'MOV', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (32, N'?????ng h??? MOVADO 40 mm Nam 0607212', N'c4543588.png', 23220000, CAST(N'2020-12-30' AS Date), 1, N'MOV', NULL)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Create_date], [Available], [Category_id], [Description]) VALUES (33, N'?????ng h??? CITIZEN 42 mm Nam BH5003-51L', N'd2123213.png', 1975000, CAST(N'2021-09-01' AS Date), 1, N'CTZ', NULL)
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'ADMIN', N'Administrators')
GO
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'GUEST', N'Guests')
GO
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'STAFF', N'Staffs')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'hoangdieu@gmail.com', N'Th??i Hoa Ho??ng Di???u', 6, 1, N'VN')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'maria@gmail.com', N'Maria', 4, 0, N'US')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'sonjohn@gmail.com', N'John Son', 5, 1, N'US')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'taintps15069@fpt.edu.vn', N'Nguy???n Tr???ng T??i', 8, 1, N'VN')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'teonv@gmail.com', N'Nguy???n V??n T??o', 7, 1, N'VN')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'thanhthuytran@gmail.com', N'Tr???n Th??? Thanh Th??y', 9, 0, N'VN')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'truongchinh.dev@gmail.com', N'Nguy???n Tr?????ng Chinh', 10, 1, N'VN')
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

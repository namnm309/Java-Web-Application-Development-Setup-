USE [mndb]
GO
/****** Object:  Table [dbo].[AccountTable]    Script Date: 7/26/2024 9:07:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountTable](
	[username] [varchar](20) NOT NULL,
	[password] [int] NOT NULL,
	[fullName] [varchar](50) NOT NULL,
	[role] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 7/26/2024 9:07:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product] [int] NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[orderId] [varchar](5) NULL,
	[total] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrder]    Script Date: 7/26/2024 9:07:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrder](
	[id] [varchar](5) NOT NULL,
	[date] [datetime] NULL,
	[customer] [varchar](50) NULL,
	[address] [nvarchar](100) NULL,
	[email] [varchar](50) NULL,
	[total] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProducts]    Script Date: 7/26/2024 9:07:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProducts](
	[sku] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](100) NULL,
	[quantity] [int] NOT NULL,
	[price] [float] NOT NULL,
	[status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sku] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users2]    Script Date: 7/26/2024 9:07:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users2](
	[username] [varchar](20) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[lastname] [varchar](50) NOT NULL,
	[isAdmin] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AccountTable] ([username], [password], [fullName], [role]) VALUES (N'mnam', 123456, N'mnam', NULL)
INSERT [dbo].[AccountTable] ([username], [password], [fullName], [role]) VALUES (N'nam', 123, N'Mnam', NULL)
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([id], [product], [price], [quantity], [orderId], [total]) VALUES (38374, 1, 30000, 1, N'Od005', 30000)
INSERT [dbo].[OrderDetail] ([id], [product], [price], [quantity], [orderId], [total]) VALUES (203158, 1, 30000, 1, N'Od006', 30000)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
INSERT [dbo].[tblOrder] ([id], [date], [customer], [address], [email], [total]) VALUES (N'Od001', NULL, N'adss', N'                            
        fhy        ', N'cascsd@gmail.com', 58000)
INSERT [dbo].[tblOrder] ([id], [date], [customer], [address], [email], [total]) VALUES (N'Od002', NULL, N'adss', N'                            
        fhy        ', N'cascsd@gmail.com', 58000)
INSERT [dbo].[tblOrder] ([id], [date], [customer], [address], [email], [total]) VALUES (N'Od003', NULL, N'adss', N'                            
         hj       ', N'cascsd@gmail.com', 30000)
INSERT [dbo].[tblOrder] ([id], [date], [customer], [address], [email], [total]) VALUES (N'Od004', NULL, N'adss', N'                            
                ', N'cascsd@gmail.com', 63000)
INSERT [dbo].[tblOrder] ([id], [date], [customer], [address], [email], [total]) VALUES (N'Od005', NULL, N'adss', N'                            
                ', N'cascsd@gmail.com', 30000)
INSERT [dbo].[tblOrder] ([id], [date], [customer], [address], [email], [total]) VALUES (N'Od006', NULL, N'adss', N'                            
                ', N'cascsd@gmail.com', 30000)
INSERT [dbo].[tblOrder] ([id], [date], [customer], [address], [email], [total]) VALUES (N'Od007', NULL, N'adss', N'                            
          ngffghrfgh      ', N'cascsd@gmail.com', 30000)
INSERT [dbo].[tblOrder] ([id], [date], [customer], [address], [email], [total]) VALUES (N'Od008', NULL, N'hfjdshffousd', N'                            
           gjhisfhgoshiouvous     ', N'cascsd@gmail.com', 30000)
INSERT [dbo].[tblOrder] ([id], [date], [customer], [address], [email], [total]) VALUES (N'Od009', NULL, N'adss', N'    rtdggg                        
                ', N'cascsd@gmail.com', 30000)
GO
INSERT [dbo].[tblProducts] ([sku], [name], [description], [quantity], [price], [status]) VALUES (1, N'Toyota Camry', N'Sedan, 4-door, comfortable interior', 4, 30000, 1)
INSERT [dbo].[tblProducts] ([sku], [name], [description], [quantity], [price], [status]) VALUES (2, N'Honda Accord', N'Sedan, 4-door, reliable and efficient', 14, 28000, 1)
INSERT [dbo].[tblProducts] ([sku], [name], [description], [quantity], [price], [status]) VALUES (3, N'Ford Mustang', N'Sports car, 2-door, powerful performance', 15, 35000, 1)
INSERT [dbo].[tblProducts] ([sku], [name], [description], [quantity], [price], [status]) VALUES (4, N'Chevrolet Malibu', N'Sedan, 4-door, modern design', 10, 27000, 1)
INSERT [dbo].[tblProducts] ([sku], [name], [description], [quantity], [price], [status]) VALUES (5, N'BMW 3 Series', N'Sedan, 4-door, luxury features', 10, 40000, 1)
INSERT [dbo].[tblProducts] ([sku], [name], [description], [quantity], [price], [status]) VALUES (6, N'Audi A4', N'Sedan, 4-door, premium quality', 5, 42000, 1)
INSERT [dbo].[tblProducts] ([sku], [name], [description], [quantity], [price], [status]) VALUES (7, N'Tesla Model 3', N'Sedan, 4-door, electric vehicle', 10, 45000, 1)
INSERT [dbo].[tblProducts] ([sku], [name], [description], [quantity], [price], [status]) VALUES (8, N'Mercedes-Benz C-Class', N'Sedan, 4-door, advanced technology', 30, 50000, 1)
INSERT [dbo].[tblProducts] ([sku], [name], [description], [quantity], [price], [status]) VALUES (9, N'Toyota Corolla', N'Sedan, 4-door, compact and efficient', 10, 20000, 1)
INSERT [dbo].[tblProducts] ([sku], [name], [description], [quantity], [price], [status]) VALUES (10, N'Ford F-150', N'Truck, 4-door, high towing capacity', 10, 35000, 1)
GO
INSERT [dbo].[Users2] ([username], [password], [lastname], [isAdmin]) VALUES (N'abcdef', N'1234567', N'minhnaam', 0)
INSERT [dbo].[Users2] ([username], [password], [lastname], [isAdmin]) VALUES (N'dsadasd', N'123', N'v', 1)
INSERT [dbo].[Users2] ([username], [password], [lastname], [isAdmin]) VALUES (N'dsadsada', N'123', N'ds', 1)
INSERT [dbo].[Users2] ([username], [password], [lastname], [isAdmin]) VALUES (N'giakhang', N'123', N'khang', 0)
INSERT [dbo].[Users2] ([username], [password], [lastname], [isAdmin]) VALUES (N'hoanghuy', N'123', N'huy', 1)
INSERT [dbo].[Users2] ([username], [password], [lastname], [isAdmin]) VALUES (N'hongphat', N'123', N'phat', 0)
INSERT [dbo].[Users2] ([username], [password], [lastname], [isAdmin]) VALUES (N'hongquy', N'123', N'quy', 1)
INSERT [dbo].[Users2] ([username], [password], [lastname], [isAdmin]) VALUES (N'khahan', N'123', N'han', 0)
INSERT [dbo].[Users2] ([username], [password], [lastname], [isAdmin]) VALUES (N'minhanh', N'123456', N'anh', 1)
INSERT [dbo].[Users2] ([username], [password], [lastname], [isAdmin]) VALUES (N'minhnam', N'123456', N'nam', 1)
INSERT [dbo].[Users2] ([username], [password], [lastname], [isAdmin]) VALUES (N'minhnamz', N'123456', N'nguyenminhnam', 1)
INSERT [dbo].[Users2] ([username], [password], [lastname], [isAdmin]) VALUES (N'minhthu', N'123', N'thu', 1)
INSERT [dbo].[Users2] ([username], [password], [lastname], [isAdmin]) VALUES (N'tankhang', N'123', N'khang', 1)
INSERT [dbo].[Users2] ([username], [password], [lastname], [isAdmin]) VALUES (N'thaovy', N'123', N'vy', 1)
INSERT [dbo].[Users2] ([username], [password], [lastname], [isAdmin]) VALUES (N'thienthanh', N'123', N'thanh', 1)
INSERT [dbo].[Users2] ([username], [password], [lastname], [isAdmin]) VALUES (N'thuytrang', N'123', N'trang', 1)
INSERT [dbo].[Users2] ([username], [password], [lastname], [isAdmin]) VALUES (N'trunghien', N'123', N'hien', 1)
INSERT [dbo].[Users2] ([username], [password], [lastname], [isAdmin]) VALUES (N'vanvu', N'123', N'vu', 1)
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([orderId])
REFERENCES [dbo].[tblOrder] ([id])
GO
ALTER TABLE [dbo].[AccountTable]  WITH CHECK ADD CHECK  (([role]=(2) OR [role]=(1) OR [role]=(0)))
GO
ALTER TABLE [dbo].[Users2]  WITH CHECK ADD CHECK  (([isAdmin]=(2) OR [isAdmin]=(1) OR [isAdmin]=(0)))
GO

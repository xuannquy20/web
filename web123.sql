use master

create database projectWeb

USE [projectWeb]
GO
/****** Object:  Table [dbo].[warehouse]    Script Date: 06/19/2021 22:16:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[warehouse](
	[Seri] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Seri] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[warehouse] ([Seri]) VALUES (N'48769')
INSERT [dbo].[warehouse] ([Seri]) VALUES (N'666777')
/****** Object:  Table [dbo].[Buyer]    Script Date: 06/19/2021 22:16:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buyer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[Address] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Buyer] ON
INSERT [dbo].[Buyer] ([id], [name], [Address]) VALUES (1, N'Cát Sơn', N'abc')
INSERT [dbo].[Buyer] ([id], [name], [Address]) VALUES (2, N'Vạn Xuân', N'dsj')
SET IDENTITY_INSERT [dbo].[Buyer] OFF
/****** Object:  Table [dbo].[Account]    Script Date: 06/19/2021 22:16:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[UserName] [varchar](100) NOT NULL,
	[Password] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Account] ([UserName], [Password]) VALUES (N'admin', N'1')
INSERT [dbo].[Account] ([UserName], [Password]) VALUES (N'staff', N'1')
INSERT [dbo].[Account] ([UserName], [Password]) VALUES (N'staff2', N'1')
INSERT [dbo].[Account] ([UserName], [Password]) VALUES (N'staff3', N'1')
/****** Object:  Table [dbo].[Provider]    Script Date: 06/19/2021 22:16:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provider](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Address] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Provider] ON
INSERT [dbo].[Provider] ([id], [Name], [Address]) VALUES (1, N'Vạn Xuân', N'168 Phan Trọng Tuệ, Tam Hiệp, Thanh Trì, Hà Nội')
INSERT [dbo].[Provider] ([id], [Name], [Address]) VALUES (2, N'Tân Việt', N'Số 294 Chiến Thắng, Khu đô thị Văn Quán, Hà Đông, Hà Nội')
INSERT [dbo].[Provider] ([id], [Name], [Address]) VALUES (3, N'Cát Sơn', N'101 - A1, Phường Mai Động, Quận Hoàng Mai, Mai Động, Hoàng Mai, Hà Nội')
SET IDENTITY_INSERT [dbo].[Provider] OFF
/****** Object:  Table [dbo].[Role]    Script Date: 06/19/2021 22:16:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON
INSERT [dbo].[Role] ([id], [name]) VALUES (1, N'ad')
INSERT [dbo].[Role] ([id], [name]) VALUES (2, N'staff')
SET IDENTITY_INSERT [dbo].[Role] OFF
/****** Object:  Table [dbo].[RoleAccount]    Script Date: 06/19/2021 22:16:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RoleAccount](
	[rid] [int] NOT NULL,
	[UserName] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[rid] ASC,
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[RoleAccount] ([rid], [UserName]) VALUES (1, N'admin')
INSERT [dbo].[RoleAccount] ([rid], [UserName]) VALUES (2, N'staff')
INSERT [dbo].[RoleAccount] ([rid], [UserName]) VALUES (2, N'staff2')
INSERT [dbo].[RoleAccount] ([rid], [UserName]) VALUES (2, N'staff3')
/****** Object:  Table [dbo].[request]    Script Date: 06/19/2021 22:16:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[request](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[leaderRequest] [varchar](100) NULL,
	[content] [nvarchar](1000) NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[request] ON
INSERT [dbo].[request] ([id], [leaderRequest], [content], [status]) VALUES (1, N'staff2', N'2 máy 1 kim', 1)
INSERT [dbo].[request] ([id], [leaderRequest], [content], [status]) VALUES (4, N'staff', N'abcxyz', 2)
INSERT [dbo].[request] ([id], [leaderRequest], [content], [status]) VALUES (5, N'staff2', N'mhnvmjbbjh', 1)
SET IDENTITY_INSERT [dbo].[request] OFF
/****** Object:  Table [dbo].[listBillSell]    Script Date: 06/19/2021 22:16:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[listBillSell](
	[id] [int] NOT NULL,
	[DateSell] [date] NULL,
	[AmountNotReceived] [int] NULL,
	[Buyer] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[listBillSell] ([id], [DateSell], [AmountNotReceived], [Buyer]) VALUES (1, CAST(0xA7400B00 AS Date), 1, 1)
INSERT [dbo].[listBillSell] ([id], [DateSell], [AmountNotReceived], [Buyer]) VALUES (2, CAST(0x50420B00 AS Date), 1000, 2)
INSERT [dbo].[listBillSell] ([id], [DateSell], [AmountNotReceived], [Buyer]) VALUES (3, CAST(0x07240B00 AS Date), 2000, 1)
INSERT [dbo].[listBillSell] ([id], [DateSell], [AmountNotReceived], [Buyer]) VALUES (4645, CAST(0x43420B00 AS Date), 787, 2)
/****** Object:  Table [dbo].[listSell]    Script Date: 06/19/2021 22:16:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[listSell](
	[IDBillSell] [int] NULL,
	[Seri] [varchar](50) NOT NULL,
	[Unit] [bit] NULL,
	[Price] [int] NULL,
	[Newness] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Seri] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[listSell] ([IDBillSell], [Seri], [Unit], [Price], [Newness]) VALUES (2, N'36697', 1, 1000, 80)
INSERT [dbo].[listSell] ([IDBillSell], [Seri], [Unit], [Price], [Newness]) VALUES (2, N'36698', 0, 1000, 90)
INSERT [dbo].[listSell] ([IDBillSell], [Seri], [Unit], [Price], [Newness]) VALUES (4645, N'44088', 1, 1000, 90)
/****** Object:  Table [dbo].[listBillBuy]    Script Date: 06/19/2021 22:16:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[listBillBuy](
	[id] [int] NOT NULL,
	[DateInput] [date] NULL,
	[AmountOwed] [int] NULL,
	[ProviderID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[listBillBuy] ([id], [DateInput], [AmountOwed], [ProviderID]) VALUES (1, CAST(0x60410B00 AS Date), 0, 2)
INSERT [dbo].[listBillBuy] ([id], [DateInput], [AmountOwed], [ProviderID]) VALUES (2, CAST(0x69410B00 AS Date), 0, 3)
INSERT [dbo].[listBillBuy] ([id], [DateInput], [AmountOwed], [ProviderID]) VALUES (123, CAST(0x50420B00 AS Date), 500, 2)
INSERT [dbo].[listBillBuy] ([id], [DateInput], [AmountOwed], [ProviderID]) VALUES (666, CAST(0x4F420B00 AS Date), 1000, 2)
INSERT [dbo].[listBillBuy] ([id], [DateInput], [AmountOwed], [ProviderID]) VALUES (12346, CAST(0x55420B00 AS Date), 20000, 1)
INSERT [dbo].[listBillBuy] ([id], [DateInput], [AmountOwed], [ProviderID]) VALUES (124345, CAST(0x4E420B00 AS Date), 1000, 3)
/****** Object:  Table [dbo].[listBuy]    Script Date: 06/19/2021 22:16:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[listBuy](
	[IDBillBuy] [int] NULL,
	[Seri] [varchar](50) NOT NULL,
	[nameMachine] [nvarchar](100) NULL,
	[model] [varchar](100) NULL,
	[Price] [int] NULL,
	[Newness] [int] NULL,
	[DepreciationPeriod] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Seri] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[listBuy] ([IDBillBuy], [Seri], [nameMachine], [model], [Price], [Newness], [DepreciationPeriod]) VALUES (1, N'36697', N'Máy lập trình khổ rộng', N'K8T-13080A', 1000000, 100, 1)
INSERT [dbo].[listBuy] ([IDBillBuy], [Seri], [nameMachine], [model], [Price], [Newness], [DepreciationPeriod]) VALUES (1, N'36698', N'Máy lập trình khổ rộng', N'K8T-13080A', 2000000, 100, 1)
INSERT [dbo].[listBuy] ([IDBillBuy], [Seri], [nameMachine], [model], [Price], [Newness], [DepreciationPeriod]) VALUES (2, N'44088', N'Máy 1 kim bơi', N'Jack A6F', 1000000, 100, 1)
INSERT [dbo].[listBuy] ([IDBillBuy], [Seri], [nameMachine], [model], [Price], [Newness], [DepreciationPeriod]) VALUES (2, N'48769', N'Máy 1 kim bơi', N'Jack A6F', 1000000, 100, 1)
INSERT [dbo].[listBuy] ([IDBillBuy], [Seri], [nameMachine], [model], [Price], [Newness], [DepreciationPeriod]) VALUES (123, N'654656', N'Máy siêu vip', N'123', 1000, 90, 6)
INSERT [dbo].[listBuy] ([IDBillBuy], [Seri], [nameMachine], [model], [Price], [Newness], [DepreciationPeriod]) VALUES (12346, N'666777', N'May Test', N'1.0', 10000, 100, 3)
INSERT [dbo].[listBuy] ([IDBillBuy], [Seri], [nameMachine], [model], [Price], [Newness], [DepreciationPeriod]) VALUES (2, N'g12', N'Máy siêu vip', N'123', 1000, 90, 2)
/****** Object:  Table [dbo].[group]    Script Date: 06/19/2021 22:16:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[group](
	[id] [int] NOT NULL,
	[leader] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[group] ([id], [leader]) VALUES (1, N'staff')
INSERT [dbo].[group] ([id], [leader]) VALUES (2, N'staff2')
INSERT [dbo].[group] ([id], [leader]) VALUES (3, N'staff3')
/****** Object:  Table [dbo].[machine_group]    Script Date: 06/19/2021 22:16:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[machine_group](
	[id] [int] NULL,
	[machineSeri] [varchar](50) NOT NULL,
	[dateStart] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[machineSeri] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[machine_group] ([id], [machineSeri], [dateStart]) VALUES (3, N'36697', CAST(0x90400B00 AS Date))
INSERT [dbo].[machine_group] ([id], [machineSeri], [dateStart]) VALUES (1, N'654656', CAST(0x51420B00 AS Date))
INSERT [dbo].[machine_group] ([id], [machineSeri], [dateStart]) VALUES (2, N'g12', CAST(0x51420B00 AS Date))
/****** Object:  Default [DF__request__confirm__11158940]    Script Date: 06/19/2021 22:16:25 ******/
ALTER TABLE [dbo].[request] ADD  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Check [CK__listBillB__DateI__08EA5793]    Script Date: 06/19/2021 22:16:25 ******/
ALTER TABLE [dbo].[listBillBuy]  WITH CHECK ADD CHECK  (([dateInput]<=getdate()))
GO
/****** Object:  Check [CK__listBillS__DateS__693CA210]    Script Date: 06/19/2021 22:16:25 ******/
ALTER TABLE [dbo].[listBillSell]  WITH CHECK ADD CHECK  (([DateSell]<=getdate()))
GO
/****** Object:  Check [CK__listBuy__Newness__489AC854]    Script Date: 06/19/2021 22:16:25 ******/
ALTER TABLE [dbo].[listBuy]  WITH CHECK ADD CHECK  (([Newness]>(0) AND [Newness]<=(100)))
GO
/****** Object:  Check [CK__listSell__Newnes__4E53A1AA]    Script Date: 06/19/2021 22:16:25 ******/
ALTER TABLE [dbo].[listSell]  WITH CHECK ADD CHECK  (([Newness]>(0) AND [Newness]<=(100)))
GO
/****** Object:  ForeignKey [FK__group__leader__7E02B4CC]    Script Date: 06/19/2021 22:16:25 ******/
ALTER TABLE [dbo].[group]  WITH CHECK ADD FOREIGN KEY([leader])
REFERENCES [dbo].[Account] ([UserName])
GO
/****** Object:  ForeignKey [FK__listBillB__Provi__09DE7BCC]    Script Date: 06/19/2021 22:16:25 ******/
ALTER TABLE [dbo].[listBillBuy]  WITH CHECK ADD FOREIGN KEY([ProviderID])
REFERENCES [dbo].[Provider] ([id])
GO
/****** Object:  ForeignKey [FK__listBillS__Buyer__6A30C649]    Script Date: 06/19/2021 22:16:25 ******/
ALTER TABLE [dbo].[listBillSell]  WITH CHECK ADD FOREIGN KEY([Buyer])
REFERENCES [dbo].[Buyer] ([id])
GO
/****** Object:  ForeignKey [FK__listBuy__IDBillB__47A6A41B]    Script Date: 06/19/2021 22:16:25 ******/
ALTER TABLE [dbo].[listBuy]  WITH CHECK ADD FOREIGN KEY([IDBillBuy])
REFERENCES [dbo].[listBillBuy] ([id])
GO
/****** Object:  ForeignKey [FK__listSell__IDBill__4D5F7D71]    Script Date: 06/19/2021 22:16:25 ******/
ALTER TABLE [dbo].[listSell]  WITH CHECK ADD FOREIGN KEY([IDBillSell])
REFERENCES [dbo].[listBillSell] ([id])
GO
/****** Object:  ForeignKey [FK__machine_g__machi__0697FACD]    Script Date: 06/19/2021 22:16:25 ******/
ALTER TABLE [dbo].[machine_group]  WITH CHECK ADD FOREIGN KEY([machineSeri])
REFERENCES [dbo].[listBuy] ([Seri])
GO
/****** Object:  ForeignKey [FK__machine_grou__id__05A3D694]    Script Date: 06/19/2021 22:16:25 ******/
ALTER TABLE [dbo].[machine_group]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[group] ([id])
GO
/****** Object:  ForeignKey [FK__request__leaderR__10216507]    Script Date: 06/19/2021 22:16:25 ******/
ALTER TABLE [dbo].[request]  WITH CHECK ADD FOREIGN KEY([leaderRequest])
REFERENCES [dbo].[Account] ([UserName])
GO
/****** Object:  ForeignKey [FK__RoleAccou__UserN__69FBBC1F]    Script Date: 06/19/2021 22:16:25 ******/
ALTER TABLE [dbo].[RoleAccount]  WITH CHECK ADD FOREIGN KEY([UserName])
REFERENCES [dbo].[Account] ([UserName])
GO
/****** Object:  ForeignKey [FK__RoleAccount__rid__690797E6]    Script Date: 06/19/2021 22:16:25 ******/
ALTER TABLE [dbo].[RoleAccount]  WITH CHECK ADD FOREIGN KEY([rid])
REFERENCES [dbo].[Role] ([id])
GO
/****** Object:  ForeignKey [FK__warehouse__Seri__531856C7]    Script Date: 06/19/2021 22:16:25 ******/
ALTER TABLE [dbo].[warehouse]  WITH CHECK ADD FOREIGN KEY([Seri])
REFERENCES [dbo].[listBuy] ([Seri])
GO

USE [HH_RMS]
GO
/****** Object:  Table [dbo].[person]    Script Date: 06/30/2016 13:41:46 ******/
SET IDENTITY_INSERT [dbo].[person] ON
INSERT [dbo].[person] ([id], [name], [nickName], [sex], [birthday], [country], [privonce], [city], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (1, N'henry', N'henry', 1, N'2000-01-01', 1, 1, 1, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[person] OFF
/****** Object:  Table [dbo].[Account]    Script Date: 06/30/2016 13:41:46 ******/
SET IDENTITY_INSERT [dbo].[Account] ON
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [score], [level], [status], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (2, N'admin', N'123456', 1, CAST(0.00 AS Decimal(18, 2)), 0, 0, 0, 0, CAST(0x0000A63200A6F45F AS DateTime), CAST(0x0000A63200A6F45F AS DateTime), NULL, 1)
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [score], [level], [status], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (3, N'admin', N'123456', 1, CAST(0.00 AS Decimal(18, 2)), 0, 0, 0, 0, CAST(0x0000A63200A7E8EE AS DateTime), CAST(0x0000A63200A7E8EE AS DateTime), NULL, 1)
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [score], [level], [status], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (4, N'admin', N'123456', 1, CAST(0.00 AS Decimal(18, 2)), 0, 0, 0, 0, CAST(0x0000A63200A930A2 AS DateTime), CAST(0x0000A63200A930A2 AS DateTime), NULL, 1)
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [score], [level], [status], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (5, N'admin', N'123456', 1, CAST(0.00 AS Decimal(18, 2)), 0, 0, 0, 0, CAST(0x0000A63200BE7D65 AS DateTime), CAST(0x0000A63200BE7D65 AS DateTime), NULL, 1)
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [score], [level], [status], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (6, N'admin', N'123456', 1, CAST(0.00 AS Decimal(18, 2)), 0, 0, 0, 0, CAST(0x0000A63200C1B7CB AS DateTime), CAST(0x0000A63200C1B7CB AS DateTime), NULL, 1)
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [score], [level], [status], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (7, N'admin', N'123456', 1, CAST(0.00 AS Decimal(18, 2)), 0, 0, 0, 0, CAST(0x0000A63200C1B976 AS DateTime), CAST(0x0000A63200C1B976 AS DateTime), NULL, 1)
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [score], [level], [status], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (8, N'admin', N'123456', 1, CAST(0.00 AS Decimal(18, 2)), 0, 0, 0, 0, CAST(0x0000A63200D5AC37 AS DateTime), CAST(0x0000A63200D5AC37 AS DateTime), NULL, 1)
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [score], [level], [status], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (9, N'admin', N'123456', 1, CAST(0.00 AS Decimal(18, 2)), 0, 0, 0, 0, CAST(0x0000A63200D70FF3 AS DateTime), CAST(0x0000A63200D70FF3 AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
/****** Object:  Table [dbo].[AccountRole]    Script Date: 06/30/2016 13:41:46 ******/
SET IDENTITY_INSERT [dbo].[AccountRole] ON
INSERT [dbo].[AccountRole] ([id], [accountId], [roleId], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (2, 2, 1, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
INSERT [dbo].[AccountRole] ([id], [accountId], [roleId], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (3, 2, 2, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[AccountRole] OFF

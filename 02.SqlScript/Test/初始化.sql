USE [HH_RMS]
GO
/****** Object:  Table [dbo].[SystemRole]    Script Date: 07/08/2016 17:36:23 ******/
SET IDENTITY_INSERT [dbo].[SystemRole] ON
INSERT [dbo].[SystemRole] ([id], [roleName], [roleType], [roleOrder], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (1, N'admin', 1, 1, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
INSERT [dbo].[SystemRole] ([id], [roleName], [roleType], [roleOrder], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (2, N'user', 2, 2, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[SystemRole] OFF
/****** Object:  Table [dbo].[SystemMenuRole]    Script Date: 07/08/2016 17:36:23 ******/
SET IDENTITY_INSERT [dbo].[SystemMenuRole] ON
INSERT [dbo].[SystemMenuRole] ([id], [menuId], [roleId], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (1, 2, 1, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenuRole] ([id], [menuId], [roleId], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (2, 3, 1, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenuRole] ([id], [menuId], [roleId], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (3, 4, 1, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenuRole] ([id], [menuId], [roleId], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (4, 5, 1, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenuRole] ([id], [menuId], [roleId], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (5, 6, 1, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenuRole] ([id], [menuId], [roleId], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (6, 2, 2, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenuRole] ([id], [menuId], [roleId], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (7, 3, 2, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenuRole] ([id], [menuId], [roleId], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (8, 4, 2, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[SystemMenuRole] OFF
/****** Object:  Table [dbo].[SystemMenu]    Script Date: 07/08/2016 17:36:23 ******/
SET IDENTITY_INSERT [dbo].[SystemMenu] ON
INSERT [dbo].[SystemMenu] ([id], [menuName], [description], [parentId], [menuOrder], [menuType], [url], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (2, N'账号管理', N'系统设置', 0, 100000000, 1, NULL, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenu] ([id], [menuName], [description], [parentId], [menuOrder], [menuType], [url], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (3, N'用户管理', N'用户管理', 2, 100100000, 1, NULL, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenu] ([id], [menuName], [description], [parentId], [menuOrder], [menuType], [url], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (4, N'角色管理', N'角色管理', 2, 100200000, 1, NULL, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenu] ([id], [menuName], [description], [parentId], [menuOrder], [menuType], [url], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (5, N'系统管理', N'系统设置', 0, 200000000, 1, NULL, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenu] ([id], [menuName], [description], [parentId], [menuOrder], [menuType], [url], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (6, N'菜单管理', N'菜单管理', 5, 200100000, 1, NULL, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[SystemMenu] OFF
/****** Object:  Table [dbo].[SystemLog]    Script Date: 07/08/2016 17:36:23 ******/
/****** Object:  Table [dbo].[SystemJob]    Script Date: 07/08/2016 17:36:23 ******/
/****** Object:  Table [dbo].[person]    Script Date: 07/08/2016 17:36:23 ******/
SET IDENTITY_INSERT [dbo].[person] ON
INSERT [dbo].[person] ([id], [name], [nickName], [sex], [birthday], [country], [privonce], [city], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (1, N'henry', N'henry', 1, N'2000-01-01', 1, 1, 1, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[person] OFF
/****** Object:  Table [dbo].[SystemSchedulerLog]    Script Date: 07/08/2016 17:36:23 ******/
/****** Object:  Table [dbo].[SystemScheduler]    Script Date: 07/08/2016 17:36:23 ******/
/****** Object:  Table [dbo].[Account]    Script Date: 07/08/2016 17:36:23 ******/
SET IDENTITY_INSERT [dbo].[Account] ON
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [score], [level], [status], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive], [RoleEntity_id]) VALUES (2, N'admin', N'123456', 1, CAST(0.00 AS Decimal(18, 2)), 0, 0, 0, 0, CAST(0x0000A63200A6F45F AS DateTime), CAST(0x0000A63200A6F45F AS DateTime), NULL, 1, NULL)
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [score], [level], [status], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive], [RoleEntity_id]) VALUES (3, N'admin', N'123456', 1, CAST(0.00 AS Decimal(18, 2)), 0, 0, 0, 0, CAST(0x0000A63200A7E8EE AS DateTime), CAST(0x0000A63200A7E8EE AS DateTime), NULL, 1, NULL)
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [score], [level], [status], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive], [RoleEntity_id]) VALUES (4, N'admin', N'123456', 1, CAST(0.00 AS Decimal(18, 2)), 0, 0, 0, 0, CAST(0x0000A63200A930A2 AS DateTime), CAST(0x0000A63200A930A2 AS DateTime), NULL, 1, NULL)
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [score], [level], [status], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive], [RoleEntity_id]) VALUES (5, N'admin', N'123456', 1, CAST(0.00 AS Decimal(18, 2)), 0, 0, 0, 0, CAST(0x0000A63200BE7D65 AS DateTime), CAST(0x0000A63200BE7D65 AS DateTime), NULL, 1, NULL)
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [score], [level], [status], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive], [RoleEntity_id]) VALUES (6, N'admin', N'123456', 1, CAST(0.00 AS Decimal(18, 2)), 0, 0, 0, 0, CAST(0x0000A63200C1B7CB AS DateTime), CAST(0x0000A63200C1B7CB AS DateTime), NULL, 1, NULL)
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [score], [level], [status], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive], [RoleEntity_id]) VALUES (7, N'admin', N'123456', 1, CAST(0.00 AS Decimal(18, 2)), 0, 0, 0, 0, CAST(0x0000A63200C1B976 AS DateTime), CAST(0x0000A63200C1B976 AS DateTime), NULL, 1, NULL)
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [score], [level], [status], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive], [RoleEntity_id]) VALUES (8, N'admin', N'123456', 1, CAST(0.00 AS Decimal(18, 2)), 0, 0, 0, 0, CAST(0x0000A63200D5AC37 AS DateTime), CAST(0x0000A63200D5AC37 AS DateTime), NULL, 1, NULL)
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [score], [level], [status], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive], [RoleEntity_id]) VALUES (9, N'admin', N'123456', 1, CAST(0.00 AS Decimal(18, 2)), 0, 0, 0, 0, CAST(0x0000A63200D70FF3 AS DateTime), CAST(0x0000A63200D70FF3 AS DateTime), NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[Account] OFF
/****** Object:  Table [dbo].[SystemAccountRole]    Script Date: 07/08/2016 17:36:23 ******/
SET IDENTITY_INSERT [dbo].[SystemAccountRole] ON
INSERT [dbo].[SystemAccountRole] ([id], [accountId], [roleId], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (2, 2, 1, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
INSERT [dbo].[SystemAccountRole] ([id], [accountId], [roleId], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (3, 2, 2, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[SystemAccountRole] OFF

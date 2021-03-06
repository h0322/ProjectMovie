USE [HH_RMS]
GO
/****** Object:  Table [dbo].[person]    Script Date: 11/21/2016 18:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[person](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](10) NULL,
	[nickName] [nvarchar](20) NULL,
	[mobile] [nvarchar](11) NULL,
	[sex] [int] NOT NULL,
	[birthday] [nvarchar](10) NULL,
	[countryId] [bigint] NOT NULL,
	[provinceId] [bigint] NOT NULL,
	[cityId] [bigint] NOT NULL,
	[address] [nvarchar](100) NULL,
	[createBy] [bigint] NOT NULL,
	[updateBy] [bigint] NULL,
	[createTime] [datetime] NOT NULL,
	[updateTime] [datetime] NOT NULL,
	[remark] [nvarchar](max) NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.person] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[person] ON
INSERT [dbo].[person] ([id], [name], [nickName], [mobile], [sex], [birthday], [countryId], [provinceId], [cityId], [address], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (1, N'henry', N'henry', N'13333333333', 1, N'2000-01-01', 1, 1, 8, NULL, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
INSERT [dbo].[person] ([id], [name], [nickName], [mobile], [sex], [birthday], [countryId], [provinceId], [cityId], [address], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (2, N'23weqwe', N'切2', N'13333333333', 1, N'08/09/2016', 1, 2, 12, N'12312312312', 0, 0, CAST(0x0000A66400958D3D AS DateTime), CAST(0x0000A66400958D3D AS DateTime), N'3eqweqwe', 1)
INSERT [dbo].[person] ([id], [name], [nickName], [mobile], [sex], [birthday], [countryId], [provinceId], [cityId], [address], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (4, N'1313', N'weqwe', N'11111111111', 1, N'08/08/2016', 1, 1, 8, N'1231', 0, 0, CAST(0x0000A66400997101 AS DateTime), CAST(0x0000A66400997101 AS DateTime), N'23131', 1)
INSERT [dbo].[person] ([id], [name], [nickName], [mobile], [sex], [birthday], [countryId], [provinceId], [cityId], [address], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (7, N'1212', N'fffffff', N'12', 0, N'09/15/2016', 1, 2, 0, N'的身份无法', 0, 2, CAST(0x0000A6870106B944 AS DateTime), CAST(0x0000A68A0105EBF2 AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[person] OFF
/****** Object:  Table [dbo].[country]    Script Date: 11/21/2016 18:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[country](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](20) NULL,
	[name] [nvarchar](50) NULL,
	[order] [int] NOT NULL,
	[createBy] [bigint] NOT NULL,
	[updateBy] [bigint] NULL,
	[createTime] [datetime] NOT NULL,
	[updateTime] [datetime] NOT NULL,
	[remark] [nvarchar](max) NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.country] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[country] ON
INSERT [dbo].[country] ([id], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (1, N'CN', N'中国', 1, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[country] OFF
/****** Object:  Table [dbo].[AccountLevel]    Script Date: 11/21/2016 18:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountLevel](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[levelName] [nvarchar](max) NULL,
	[levelOrder] [int] NOT NULL,
	[createBy] [bigint] NOT NULL,
	[updateBy] [bigint] NULL,
	[createTime] [datetime] NOT NULL,
	[updateTime] [datetime] NOT NULL,
	[remark] [nvarchar](max) NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.AccountLevel] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AccountLevel] ON
INSERT [dbo].[AccountLevel] ([id], [levelName], [levelOrder], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (1, N'Level1', 1, 1, 1, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[AccountLevel] OFF
/****** Object:  Table [dbo].[WechatConfig]    Script Date: 11/21/2016 18:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WechatConfig](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](100) NULL,
	[openId] [nvarchar](20) NULL,
	[appId] [nvarchar](50) NULL,
	[appName] [nvarchar](50) NULL,
	[appSecret] [nvarchar](50) NULL,
	[accessToken] [nvarchar](100) NULL,
	[token] [nvarchar](50) NULL,
	[security] [nvarchar](50) NULL,
	[ticket] [nvarchar](50) NULL,
	[componentName] [nvarchar](50) NULL,
	[componentAppId] [nvarchar](50) NULL,
	[componentAppSecret] [nvarchar](50) NULL,
	[componentAccessToken] [nvarchar](100) NULL,
	[url] [nvarchar](100) NULL,
	[imageUrl] [nvarchar](100) NULL,
	[createBy] [bigint] NOT NULL,
	[updateBy] [bigint] NULL,
	[createTime] [datetime] NOT NULL,
	[updateTime] [datetime] NOT NULL,
	[remark] [nvarchar](max) NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.WechatConfig] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemScheduler]    Script Date: 11/21/2016 18:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemScheduler](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[jobId] [bigint] NOT NULL,
	[scheduleName] [nvarchar](50) NULL,
	[scheduleDescription] [nvarchar](100) NULL,
	[scheduleGroup] [nvarchar](100) NULL,
	[intervalType] [int] NOT NULL,
	[cronExpression] [nvarchar](100) NULL,
	[year] [int] NOT NULL,
	[month] [int] NOT NULL,
	[day] [int] NOT NULL,
	[weekday] [int] NOT NULL,
	[hour] [int] NOT NULL,
	[minute] [int] NOT NULL,
	[second] [int] NOT NULL,
	[sqlScriptType] [int] NOT NULL,
	[sqlScript] [nvarchar](1000) NULL,
	[serverName] [nvarchar](100) NULL,
	[siteName] [nvarchar](100) NULL,
	[runTime] [datetime] NOT NULL,
	[stopTime] [datetime] NOT NULL,
	[createBy] [bigint] NOT NULL,
	[updateBy] [bigint] NULL,
	[createTime] [datetime] NOT NULL,
	[updateTime] [datetime] NOT NULL,
	[remark] [nvarchar](max) NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.SystemScheduler] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SystemScheduler] ON
INSERT [dbo].[SystemScheduler] ([id], [jobId], [scheduleName], [scheduleDescription], [scheduleGroup], [intervalType], [cronExpression], [year], [month], [day], [weekday], [hour], [minute], [second], [sqlScriptType], [sqlScript], [serverName], [siteName], [runTime], [stopTime], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (5, 1, N'每分钟执行任务', N'每分钟执行任务', N'每分执行组', 1, N'0 0/1 * 1/1 * ? *', 0, 0, 3, 0, 0, 0, 1, 1, NULL, NULL, NULL, CAST(0x0000A58000000000 AS DateTime), CAST(0x00011BEC00000000 AS DateTime), 0, 1, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A6B000C4488A AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[SystemScheduler] OFF
/****** Object:  Table [dbo].[SystemRole]    Script Date: 11/21/2016 18:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemRole](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[roleName] [nvarchar](32) NULL,
	[roleOrder] [int] NOT NULL,
	[bitMap] [bigint] NULL,
	[createBy] [bigint] NOT NULL,
	[updateBy] [bigint] NULL,
	[createTime] [datetime] NOT NULL,
	[updateTime] [datetime] NOT NULL,
	[remark] [nvarchar](max) NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.SystemRole] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SystemRole] ON
INSERT [dbo].[SystemRole] ([id], [roleName], [roleOrder], [bitMap], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (1, N'admin', 1, 1, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
INSERT [dbo].[SystemRole] ([id], [roleName], [roleOrder], [bitMap], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (2, N'SuperUser', 2, 2, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
INSERT [dbo].[SystemRole] ([id], [roleName], [roleOrder], [bitMap], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (3, N'user', 3, 4, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
INSERT [dbo].[SystemRole] ([id], [roleName], [roleOrder], [bitMap], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (4, N'测试用户', 0, 8, 0, 2, CAST(0x0000A68F00BB0274 AS DateTime), CAST(0x0000A68F00C42555 AS DateTime), NULL, 0)
INSERT [dbo].[SystemRole] ([id], [roleName], [roleOrder], [bitMap], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (5, N'测试管理员', 0, 16, 0, 2, CAST(0x0000A68F00BB42C5 AS DateTime), CAST(0x0000A68F00C42555 AS DateTime), NULL, 0)
INSERT [dbo].[SystemRole] ([id], [roleName], [roleOrder], [bitMap], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (6, N'大幅度发', 0, 32, 0, 2, CAST(0x0000A68F00BBF0F0 AS DateTime), CAST(0x0000A68F00C42555 AS DateTime), NULL, 0)
INSERT [dbo].[SystemRole] ([id], [roleName], [roleOrder], [bitMap], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (7, N'wewe', 0, 64, 0, 2, CAST(0x0000A68F00BE7C88 AS DateTime), CAST(0x0000A68F00C42555 AS DateTime), NULL, 0)
INSERT [dbo].[SystemRole] ([id], [roleName], [roleOrder], [bitMap], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (8, N'请问企鹅', 0, 128, 0, 2, CAST(0x0000A68F00BF32EF AS DateTime), CAST(0x0000A68F00C42555 AS DateTime), NULL, 0)
INSERT [dbo].[SystemRole] ([id], [roleName], [roleOrder], [bitMap], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (9, N'test', 99, 8, 0, 0, CAST(0x0000A6C20110C858 AS DateTime), CAST(0x0000A6C20110C858 AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[SystemRole] OFF
/****** Object:  Table [dbo].[SystemMenuRole]    Script Date: 11/21/2016 18:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemMenuRole](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[menuId] [bigint] NOT NULL,
	[roleId] [bigint] NOT NULL,
	[excuteType] [int] NULL,
	[createBy] [bigint] NOT NULL,
	[updateBy] [bigint] NULL,
	[createTime] [datetime] NOT NULL,
	[updateTime] [datetime] NOT NULL,
	[remark] [nvarchar](max) NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.SystemMenuRole] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SystemMenuRole] ON
INSERT [dbo].[SystemMenuRole] ([id], [menuId], [roleId], [excuteType], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (1, 2, 1, 1, 0, 0, CAST(0x0000A699010183CE AS DateTime), CAST(0x0000A699010183CE AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenuRole] ([id], [menuId], [roleId], [excuteType], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (2, 8, 1, 1, 0, 0, CAST(0x0000A6990101844B AS DateTime), CAST(0x0000A6990101844B AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenuRole] ([id], [menuId], [roleId], [excuteType], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (3, 3, 1, 1, 0, 0, CAST(0x0000A6990101844E AS DateTime), CAST(0x0000A6990101844E AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenuRole] ([id], [menuId], [roleId], [excuteType], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (4, 4, 1, 1, 0, 0, CAST(0x0000A69901018454 AS DateTime), CAST(0x0000A69901018454 AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenuRole] ([id], [menuId], [roleId], [excuteType], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (5, 10, 1, 1, 0, 0, CAST(0x0000A69901018457 AS DateTime), CAST(0x0000A69901018457 AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenuRole] ([id], [menuId], [roleId], [excuteType], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (6, 5, 1, 1, 0, 0, CAST(0x0000A6990101845D AS DateTime), CAST(0x0000A6990101845D AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenuRole] ([id], [menuId], [roleId], [excuteType], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (7, 6, 1, 1, 0, 0, CAST(0x0000A69901018460 AS DateTime), CAST(0x0000A69901018460 AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenuRole] ([id], [menuId], [roleId], [excuteType], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (8, 2, 2, 1, 0, 0, CAST(0x0000A6990101C4CC AS DateTime), CAST(0x0000A6990101C5EC AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenuRole] ([id], [menuId], [roleId], [excuteType], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (9, 8, 2, 1, 0, 0, CAST(0x0000A6990101C862 AS DateTime), CAST(0x0000A6990101C862 AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenuRole] ([id], [menuId], [roleId], [excuteType], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (10, 3, 2, 1, 0, 0, CAST(0x0000A6990101C86E AS DateTime), CAST(0x0000A6990101C86E AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenuRole] ([id], [menuId], [roleId], [excuteType], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (11, 4, 2, 1, 0, 0, CAST(0x0000A6990101C871 AS DateTime), CAST(0x0000A6990101C871 AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenuRole] ([id], [menuId], [roleId], [excuteType], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (12, 10, 2, 1, 0, 0, CAST(0x0000A6990101C877 AS DateTime), CAST(0x0000A6990101C877 AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenuRole] ([id], [menuId], [roleId], [excuteType], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (13, 5, 2, 1, 0, 0, CAST(0x0000A6990101C87A AS DateTime), CAST(0x0000A6990101C87A AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenuRole] ([id], [menuId], [roleId], [excuteType], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (14, 6, 2, 1, 0, 0, CAST(0x0000A6990101C87D AS DateTime), CAST(0x0000A6990101C87D AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenuRole] ([id], [menuId], [roleId], [excuteType], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (15, 2, 3, 1, 0, 0, CAST(0x0000A6990123417E AS DateTime), CAST(0x0000A6990123417E AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenuRole] ([id], [menuId], [roleId], [excuteType], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (16, 8, 3, 1, 0, 0, CAST(0x0000A69901234241 AS DateTime), CAST(0x0000A69901234241 AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenuRole] ([id], [menuId], [roleId], [excuteType], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (17, 3, 3, 1, 0, 0, CAST(0x0000A69901234246 AS DateTime), CAST(0x0000A69901234246 AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenuRole] ([id], [menuId], [roleId], [excuteType], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (18, 4, 3, 1, 0, 0, CAST(0x0000A6990123424B AS DateTime), CAST(0x0000A6990123424B AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenuRole] ([id], [menuId], [roleId], [excuteType], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (19, 10, 3, 1, 0, 0, CAST(0x0000A69901234250 AS DateTime), CAST(0x0000A69901234250 AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenuRole] ([id], [menuId], [roleId], [excuteType], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (20, 5, 3, 1, 0, 0, CAST(0x0000A69901234254 AS DateTime), CAST(0x0000A69901234254 AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenuRole] ([id], [menuId], [roleId], [excuteType], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (21, 6, 3, 1, 0, 0, CAST(0x0000A6990123425D AS DateTime), CAST(0x0000A6990123425D AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[SystemMenuRole] OFF
/****** Object:  Table [dbo].[SystemMenu]    Script Date: 11/21/2016 18:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemMenu](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](50) NULL,
	[menuName] [nvarchar](50) NULL,
	[description] [nvarchar](100) NULL,
	[parentId] [bigint] NOT NULL,
	[menuOrder] [int] NOT NULL,
	[menuType] [int] NOT NULL,
	[url] [nvarchar](100) NULL,
	[treeLevel] [int] NOT NULL,
	[updateBitMap] [bigint] NOT NULL,
	[insertBitMap] [bigint] NOT NULL,
	[deleteBitMap] [bigint] NOT NULL,
	[selectBitMap] [bigint] NOT NULL,
	[createBy] [bigint] NOT NULL,
	[updateBy] [bigint] NULL,
	[createTime] [datetime] NOT NULL,
	[updateTime] [datetime] NOT NULL,
	[remark] [nvarchar](max) NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.SystemMenu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SystemMenu] ON
INSERT [dbo].[SystemMenu] ([id], [code], [menuName], [description], [parentId], [menuOrder], [menuType], [url], [treeLevel], [updateBitMap], [insertBitMap], [deleteBitMap], [selectBitMap], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (2, NULL, N'账号管理', N'系统设置', 0, 100000000, 2, NULL, 0, 3, 3, 3, 7, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenu] ([id], [code], [menuName], [description], [parentId], [menuOrder], [menuType], [url], [treeLevel], [updateBitMap], [insertBitMap], [deleteBitMap], [selectBitMap], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (3, N'Account', N'系统账号', N'系统账号', 2, 100200000, 1, N'/Account/Index', 1, 3, 3, 3, 7, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenu] ([id], [code], [menuName], [description], [parentId], [menuOrder], [menuType], [url], [treeLevel], [updateBitMap], [insertBitMap], [deleteBitMap], [selectBitMap], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (4, N'Role', N'角色管理', N'角色管理', 2, 100300000, 1, N'/Role/Index', 1, 3, 3, 3, 7, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenu] ([id], [code], [menuName], [description], [parentId], [menuOrder], [menuType], [url], [treeLevel], [updateBitMap], [insertBitMap], [deleteBitMap], [selectBitMap], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (5, NULL, N'系统管理', N'系统设置', 0, 200000000, 2, NULL, 0, 3, 3, 3, 3, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenu] ([id], [code], [menuName], [description], [parentId], [menuOrder], [menuType], [url], [treeLevel], [updateBitMap], [insertBitMap], [deleteBitMap], [selectBitMap], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (6, N'Menu', N'菜单管理', N'菜单管理', 5, 200100000, 1, NULL, 1, 3, 3, 3, 3, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenu] ([id], [code], [menuName], [description], [parentId], [menuOrder], [menuType], [url], [treeLevel], [updateBitMap], [insertBitMap], [deleteBitMap], [selectBitMap], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (8, N'Person', N'系统用户', N'系统用户', 2, 100100000, 1, N'/Person/Index', 1, 3, 3, 3, 7, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
INSERT [dbo].[SystemMenu] ([id], [code], [menuName], [description], [parentId], [menuOrder], [menuType], [url], [treeLevel], [updateBitMap], [insertBitMap], [deleteBitMap], [selectBitMap], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (10, N'Level', N'等级管理', N'等级管理', 2, 100400000, 1, N'/Level/Index', 1, 3, 3, 3, 7, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[SystemMenu] OFF
/****** Object:  Table [dbo].[SystemLog]    Script Date: 11/21/2016 18:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemLog](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[date] [datetime] NOT NULL,
	[thread] [nvarchar](max) NULL,
	[level] [nvarchar](max) NULL,
	[logger] [nvarchar](max) NULL,
	[source] [nvarchar](max) NULL,
	[exception] [nvarchar](max) NULL,
	[message] [nvarchar](max) NULL,
	[createBy] [bigint] NOT NULL,
	[updateBy] [bigint] NULL,
	[createTime] [datetime] NOT NULL,
	[updateTime] [datetime] NOT NULL,
	[remark] [nvarchar](max) NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.SystemLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemJobParameter]    Script Date: 11/21/2016 18:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemJobParameter](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[jobId] [bigint] NOT NULL,
	[parameterName] [nvarchar](50) NULL,
	[parameterValue] [nvarchar](100) NULL,
	[parameterType] [int] NULL,
	[createBy] [bigint] NOT NULL,
	[updateBy] [bigint] NULL,
	[createTime] [datetime] NOT NULL,
	[updateTime] [datetime] NULL,
	[remark] [nvarchar](max) NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.SystemJobParameter] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SystemJobParameter] ON
INSERT [dbo].[SystemJobParameter] ([id], [jobId], [parameterName], [parameterValue], [parameterType], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (1, 2, N'a', N'abc', 1, 0, 0, CAST(0x0000A58000000000 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[SystemJobParameter] ([id], [jobId], [parameterName], [parameterValue], [parameterType], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (2, 2, N'b', N'1', 2, 0, 0, CAST(0x0000A58000000000 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[SystemJobParameter] ([id], [jobId], [parameterName], [parameterValue], [parameterType], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (7, 2, N'date', N'2016-01-01 00:20:22', 4, 0, 0, CAST(0x0000A58000000000 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[SystemJobParameter] ([id], [jobId], [parameterName], [parameterValue], [parameterType], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (9, 6, N'str', N'abc', 1, 0, 0, CAST(0x0000A58000000000 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[SystemJobParameter] ([id], [jobId], [parameterName], [parameterValue], [parameterType], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (10, 6, N'Int', N'123', 2, 0, 0, CAST(0x0000A58000000000 AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[SystemJobParameter] OFF
/****** Object:  Table [dbo].[SystemJobLog]    Script Date: 11/21/2016 18:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemJobLog](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[jobId] [bigint] NOT NULL,
	[schedulerId] [bigint] NOT NULL,
	[jobName] [nvarchar](100) NULL,
	[jobGroup] [nvarchar](100) NULL,
	[jobType] [int] NOT NULL,
	[scheduleName] [nvarchar](100) NULL,
	[scheduleGroup] [nvarchar](100) NULL,
	[executeSecond] [bigint] NOT NULL,
	[startTime] [datetime] NOT NULL,
	[endTime] [datetime] NOT NULL,
	[resultType] [int] NOT NULL,
	[resultMessage] [nvarchar](max) NULL,
	[createBy] [bigint] NOT NULL,
	[updateBy] [bigint] NULL,
	[createTime] [datetime] NOT NULL,
	[updateTime] [datetime] NOT NULL,
	[remark] [nvarchar](max) NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.SystemSchedulerLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SystemJobLog] ON
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (1, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 20309, CAST(0x0000A6A900E78F06 AS DateTime), CAST(0x0000A6A900E7BAD8 AS DateTime), 500, N'Could not load file or assembly ''file:///D:\My Program\HH.RMS\01.HH.RMS\HH.RMS.Job\bin\Debug\HH.RMS.Service.Wechat.WechatService'' or one of its dependencies. The system cannot find the file specified.', 0, 0, CAST(0x0000A6A900E7BB95 AS DateTime), CAST(0x0000A6A900E7BB95 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (2, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 27729, CAST(0x0000A6A900EF3A38 AS DateTime), CAST(0x0000A6A900EF5AB7 AS DateTime), 500, N'Object of type ''System.String'' cannot be converted to type ''System.Int32''.', 0, 0, CAST(0x0000A6A900EF5ABB AS DateTime), CAST(0x0000A6A900EF5ABB AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (3, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 21506, CAST(0x0000A6A900F1266C AS DateTime), CAST(0x0000A6A900F13FA1 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6A900F13FA2 AS DateTime), CAST(0x0000A6A900F13FA2 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (4, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 34380, CAST(0x0000A6A9012AD409 AS DateTime), CAST(0x0000A6A9012AFC53 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6A9012AFC54 AS DateTime), CAST(0x0000A6A9012AFC54 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (5, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 67046, CAST(0x0000A6AA00F6A4AD AS DateTime), CAST(0x0000A6AA00F6F33D AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AA00F6F343 AS DateTime), CAST(0x0000A6AA00F6F343 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (6, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 16868, CAST(0x0000A6AA00F6EAF7 AS DateTime), CAST(0x0000A6AA00F6FEB9 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AA00F6FEB9 AS DateTime), CAST(0x0000A6AA00F6FEB9 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (7, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10124, CAST(0x0000A6AA00F73141 AS DateTime), CAST(0x0000A6AA00F73D1D AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AA00F73D1D AS DateTime), CAST(0x0000A6AA00F73D1D AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (8, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10267, CAST(0x0000A6AA011E7809 AS DateTime), CAST(0x0000A6AA011E8412 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AA011E8415 AS DateTime), CAST(0x0000A6AA011E8416 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (9, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10026, CAST(0x0000A6AA011EBE41 AS DateTime), CAST(0x0000A6AA011ECA01 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AA011ECA01 AS DateTime), CAST(0x0000A6AA011ECA01 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (10, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10007, CAST(0x0000A6AA011F0492 AS DateTime), CAST(0x0000A6AA011F104A AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AA011F104A AS DateTime), CAST(0x0000A6AA011F104A AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (11, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10002, CAST(0x0000A6AA011F4AE2 AS DateTime), CAST(0x0000A6AA011F569A AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AA011F569A AS DateTime), CAST(0x0000A6AA011F569A AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (12, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10009, CAST(0x0000A6AA011F9131 AS DateTime), CAST(0x0000A6AA011F9CEB AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AA011F9CEB AS DateTime), CAST(0x0000A6AA011F9CEB AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (13, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10011, CAST(0x0000A6AA011FD782 AS DateTime), CAST(0x0000A6AA011FE33D AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AA011FE33D AS DateTime), CAST(0x0000A6AA011FE33D AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (14, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10000, CAST(0x0000A6AA01201DD2 AS DateTime), CAST(0x0000A6AA0120298A AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AA0120298A AS DateTime), CAST(0x0000A6AA0120298A AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (15, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10702, CAST(0x0000A6AB00D568E2 AS DateTime), CAST(0x0000A6AB00D5772A AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00D5772C AS DateTime), CAST(0x0000A6AB00D5772C AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (16, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10060, CAST(0x0000A6AB00D8B49B AS DateTime), CAST(0x0000A6AB00D8C065 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00D8C066 AS DateTime), CAST(0x0000A6AB00D8C066 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (17, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10148, CAST(0x0000A6AB00D8FAE0 AS DateTime), CAST(0x0000A6AB00D906C5 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00D906C5 AS DateTime), CAST(0x0000A6AB00D906C5 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (18, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10031, CAST(0x0000A6AB00D94130 AS DateTime), CAST(0x0000A6AB00D94CF2 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00D94CF2 AS DateTime), CAST(0x0000A6AB00D94CF2 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (19, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10167, CAST(0x0000A6AB00DAA0C9 AS DateTime), CAST(0x0000A6AB00DAACB3 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00DAACB4 AS DateTime), CAST(0x0000A6AB00DAACB4 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (20, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10011, CAST(0x0000A6AB00DAE711 AS DateTime), CAST(0x0000A6AB00DAF2CC AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00DAF2CC AS DateTime), CAST(0x0000A6AB00DAF2CC AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (21, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10003, CAST(0x0000A6AB00DB2D60 AS DateTime), CAST(0x0000A6AB00DB3919 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00DB3919 AS DateTime), CAST(0x0000A6AB00DB3919 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (22, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10015, CAST(0x0000A6AB00DB73B0 AS DateTime), CAST(0x0000A6AB00DB7F6D AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00DB7F6D AS DateTime), CAST(0x0000A6AB00DB7F6D AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (23, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10005, CAST(0x0000A6AB00DBBA00 AS DateTime), CAST(0x0000A6AB00DBC5BA AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00DBC5BA AS DateTime), CAST(0x0000A6AB00DBC5BA AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (24, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10005, CAST(0x0000A6AB00DC0050 AS DateTime), CAST(0x0000A6AB00DC0C0A AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00DC0C0A AS DateTime), CAST(0x0000A6AB00DC0C0A AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (25, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10007, CAST(0x0000A6AB00DC46A0 AS DateTime), CAST(0x0000A6AB00DC525B AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00DC525B AS DateTime), CAST(0x0000A6AB00DC525B AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (26, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10017, CAST(0x0000A6AB00DC8CF0 AS DateTime), CAST(0x0000A6AB00DC98AD AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00DC98AE AS DateTime), CAST(0x0000A6AB00DC98AE AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (27, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10004, CAST(0x0000A6AB00DCD340 AS DateTime), CAST(0x0000A6AB00DCDEFA AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00DCDEFA AS DateTime), CAST(0x0000A6AB00DCDEFA AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (28, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10004, CAST(0x0000A6AB00DD1990 AS DateTime), CAST(0x0000A6AB00DD254A AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00DD254A AS DateTime), CAST(0x0000A6AB00DD254A AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (29, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10020, CAST(0x0000A6AB00DD5FE0 AS DateTime), CAST(0x0000A6AB00DD6B9E AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00DD6B9E AS DateTime), CAST(0x0000A6AB00DD6B9E AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (30, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10019, CAST(0x0000A6AB00DDA632 AS DateTime), CAST(0x0000A6AB00DDB1F0 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00DDB1F0 AS DateTime), CAST(0x0000A6AB00DDB1F0 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (31, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10009, CAST(0x0000A6AB00DDEC80 AS DateTime), CAST(0x0000A6AB00DDF83C AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00DDF83C AS DateTime), CAST(0x0000A6AB00DDF83C AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (32, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10005, CAST(0x0000A6AB00DE32D0 AS DateTime), CAST(0x0000A6AB00DE3E8A AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00DE3E8A AS DateTime), CAST(0x0000A6AB00DE3E8A AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (33, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10003, CAST(0x0000A6AB00DE7920 AS DateTime), CAST(0x0000A6AB00DE84DA AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00DE84DA AS DateTime), CAST(0x0000A6AB00DE84DA AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (34, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10156, CAST(0x0000A6AB00E510AB AS DateTime), CAST(0x0000A6AB00E51C92 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00E51C93 AS DateTime), CAST(0x0000A6AB00E51C93 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (35, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10029, CAST(0x0000A6AB00E556F0 AS DateTime), CAST(0x0000A6AB00E562B1 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00E562B1 AS DateTime), CAST(0x0000A6AB00E562B1 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (36, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10009, CAST(0x0000A6AB00E59D40 AS DateTime), CAST(0x0000A6AB00E5A8FB AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00E5A8FB AS DateTime), CAST(0x0000A6AB00E5A8FB AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (37, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10044, CAST(0x0000A6AB00E59D46 AS DateTime), CAST(0x0000A6AB00E5A90C AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00E5A90D AS DateTime), CAST(0x0000A6AB00E5A90D AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (38, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10005, CAST(0x0000A6AB00E5E390 AS DateTime), CAST(0x0000A6AB00E5EF4A AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00E5EF4A AS DateTime), CAST(0x0000A6AB00E5EF4A AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (39, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10006, CAST(0x0000A6AB00E5E390 AS DateTime), CAST(0x0000A6AB00E5EF4A AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00E5EF4B AS DateTime), CAST(0x0000A6AB00E5EF4B AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (40, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10006, CAST(0x0000A6AB00E629E0 AS DateTime), CAST(0x0000A6AB00E6359A AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00E6359A AS DateTime), CAST(0x0000A6AB00E6359A AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (41, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10005, CAST(0x0000A6AB00E629E0 AS DateTime), CAST(0x0000A6AB00E6359A AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00E6359A AS DateTime), CAST(0x0000A6AB00E6359A AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (42, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10006, CAST(0x0000A6AB00E67030 AS DateTime), CAST(0x0000A6AB00E67BEA AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00E67BEA AS DateTime), CAST(0x0000A6AB00E67BEA AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (43, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10006, CAST(0x0000A6AB00E67030 AS DateTime), CAST(0x0000A6AB00E67BEA AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00E67BEA AS DateTime), CAST(0x0000A6AB00E67BEA AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (44, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10021, CAST(0x0000A6AB00E6B680 AS DateTime), CAST(0x0000A6AB00E6C23F AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00E6C23F AS DateTime), CAST(0x0000A6AB00E6C23F AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (45, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10023, CAST(0x0000A6AB00E6B680 AS DateTime), CAST(0x0000A6AB00E6C23F AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00E6C240 AS DateTime), CAST(0x0000A6AB00E6C240 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (46, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10007, CAST(0x0000A6AB00E6FCD0 AS DateTime), CAST(0x0000A6AB00E7088A AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00E7088A AS DateTime), CAST(0x0000A6AB00E7088A AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (47, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10006, CAST(0x0000A6AB00E6FCD0 AS DateTime), CAST(0x0000A6AB00E7088A AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00E7088A AS DateTime), CAST(0x0000A6AB00E7088A AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (48, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10007, CAST(0x0000A6AB00E74320 AS DateTime), CAST(0x0000A6AB00E74EDA AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00E74EDA AS DateTime), CAST(0x0000A6AB00E74EDA AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (49, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10007, CAST(0x0000A6AB00E74320 AS DateTime), CAST(0x0000A6AB00E74EDB AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00E74EDB AS DateTime), CAST(0x0000A6AB00E74EDB AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (50, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10005, CAST(0x0000A6AB00E78970 AS DateTime), CAST(0x0000A6AB00E7952A AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00E7952A AS DateTime), CAST(0x0000A6AB00E7952A AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (51, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10012, CAST(0x0000A6AB00E78970 AS DateTime), CAST(0x0000A6AB00E7952C AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00E7952C AS DateTime), CAST(0x0000A6AB00E7952C AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (52, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10005, CAST(0x0000A6AB00E7CFC0 AS DateTime), CAST(0x0000A6AB00E7DB7A AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00E7DB7A AS DateTime), CAST(0x0000A6AB00E7DB7A AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (53, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10025, CAST(0x0000A6AB00E7CFC0 AS DateTime), CAST(0x0000A6AB00E7DB80 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00E7DB80 AS DateTime), CAST(0x0000A6AB00E7DB80 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (54, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10012, CAST(0x0000A6AB00E81610 AS DateTime), CAST(0x0000A6AB00E821CC AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00E821CC AS DateTime), CAST(0x0000A6AB00E821CC AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (55, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10005, CAST(0x0000A6AB00E85C60 AS DateTime), CAST(0x0000A6AB00E8681A AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00E8681A AS DateTime), CAST(0x0000A6AB00E8681A AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (56, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10006, CAST(0x0000A6AB00E8A2B0 AS DateTime), CAST(0x0000A6AB00E8AE6A AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00E8AE6A AS DateTime), CAST(0x0000A6AB00E8AE6A AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (57, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10166, CAST(0x0000A6AB00EB61E4 AS DateTime), CAST(0x0000A6AB00EB6DCE AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00EB6DCF AS DateTime), CAST(0x0000A6AB00EB6DCF AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (58, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10005, CAST(0x0000A6AB00EBA820 AS DateTime), CAST(0x0000A6AB00EBB3DA AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00EBB3DA AS DateTime), CAST(0x0000A6AB00EBB3DA AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (59, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10005, CAST(0x0000A6AB00EBEE70 AS DateTime), CAST(0x0000A6AB00EBFA29 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00EBFA29 AS DateTime), CAST(0x0000A6AB00EBFA29 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (60, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10006, CAST(0x0000A6AB00EC34C0 AS DateTime), CAST(0x0000A6AB00EC407A AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00EC407A AS DateTime), CAST(0x0000A6AB00EC407A AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (61, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10020, CAST(0x0000A6AB00EC7B10 AS DateTime), CAST(0x0000A6AB00EC86CE AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00EC86CE AS DateTime), CAST(0x0000A6AB00EC86CE AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (62, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10004, CAST(0x0000A6AB00ECC160 AS DateTime), CAST(0x0000A6AB00ECCD19 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00ECCD19 AS DateTime), CAST(0x0000A6AB00ECCD19 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (63, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10008, CAST(0x0000A6AB00ED07B0 AS DateTime), CAST(0x0000A6AB00ED136A AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00ED136A AS DateTime), CAST(0x0000A6AB00ED136A AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (64, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10004, CAST(0x0000A6AB00ED4E00 AS DateTime), CAST(0x0000A6AB00ED59B9 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00ED59B9 AS DateTime), CAST(0x0000A6AB00ED59B9 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (65, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10003, CAST(0x0000A6AB00ED9450 AS DateTime), CAST(0x0000A6AB00EDA009 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00EDA009 AS DateTime), CAST(0x0000A6AB00EDA009 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (66, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10014, CAST(0x0000A6AB00EDDAA0 AS DateTime), CAST(0x0000A6AB00EDE65C AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00EDE65C AS DateTime), CAST(0x0000A6AB00EDE65C AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (67, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10005, CAST(0x0000A6AB00EE20F0 AS DateTime), CAST(0x0000A6AB00EE2CAA AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00EE2CAA AS DateTime), CAST(0x0000A6AB00EE2CAA AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (68, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10003, CAST(0x0000A6AB00EE6740 AS DateTime), CAST(0x0000A6AB00EE72F9 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00EE72F9 AS DateTime), CAST(0x0000A6AB00EE72F9 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (69, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10006, CAST(0x0000A6AB00EEAD90 AS DateTime), CAST(0x0000A6AB00EEB94A AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00EEB94A AS DateTime), CAST(0x0000A6AB00EEB94A AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (70, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10024, CAST(0x0000A6AB00EEF3E1 AS DateTime), CAST(0x0000A6AB00EEFFA0 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00EEFFA0 AS DateTime), CAST(0x0000A6AB00EEFFA0 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (71, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10005, CAST(0x0000A6AB00EF3A30 AS DateTime), CAST(0x0000A6AB00EF45EA AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00EF45EA AS DateTime), CAST(0x0000A6AB00EF45EA AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (72, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10006, CAST(0x0000A6AB00EF8080 AS DateTime), CAST(0x0000A6AB00EF8C3A AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00EF8C3A AS DateTime), CAST(0x0000A6AB00EF8C3A AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (73, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10009, CAST(0x0000A6AB00EFC6D0 AS DateTime), CAST(0x0000A6AB00EFD28B AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00EFD28B AS DateTime), CAST(0x0000A6AB00EFD28B AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (74, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10007, CAST(0x0000A6AB00F00D20 AS DateTime), CAST(0x0000A6AB00F018DA AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00F018DA AS DateTime), CAST(0x0000A6AB00F018DA AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (75, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10002, CAST(0x0000A6AB00F05370 AS DateTime), CAST(0x0000A6AB00F05F29 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00F05F29 AS DateTime), CAST(0x0000A6AB00F05F29 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (76, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10003, CAST(0x0000A6AB00F099C0 AS DateTime), CAST(0x0000A6AB00F0A579 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00F0A579 AS DateTime), CAST(0x0000A6AB00F0A579 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (77, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10003, CAST(0x0000A6AB00F0E010 AS DateTime), CAST(0x0000A6AB00F0EBC9 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00F0EBC9 AS DateTime), CAST(0x0000A6AB00F0EBC9 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (78, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10024, CAST(0x0000A6AB00F12660 AS DateTime), CAST(0x0000A6AB00F1321F AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00F1321F AS DateTime), CAST(0x0000A6AB00F1321F AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (79, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10004, CAST(0x0000A6AB00F16CB0 AS DateTime), CAST(0x0000A6AB00F1786A AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00F1786A AS DateTime), CAST(0x0000A6AB00F1786A AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (80, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10018, CAST(0x0000A6AB00F1B300 AS DateTime), CAST(0x0000A6AB00F1BEBE AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00F1BEBE AS DateTime), CAST(0x0000A6AB00F1BEBE AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (81, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10002, CAST(0x0000A6AB00F1F950 AS DateTime), CAST(0x0000A6AB00F20509 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00F20509 AS DateTime), CAST(0x0000A6AB00F20509 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (82, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 20557, CAST(0x0000A6AB00F2181D AS DateTime), CAST(0x0000A6AB00F23036 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00F23037 AS DateTime), CAST(0x0000A6AB00F23037 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (83, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10004, CAST(0x0000A6AB00F23FA0 AS DateTime), CAST(0x0000A6AB00F24B5A AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00F24B5A AS DateTime), CAST(0x0000A6AB00F24B5A AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (84, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 21315, CAST(0x0000A6AB00F23FA1 AS DateTime), CAST(0x0000A6AB00F2589C AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00F2589C AS DateTime), CAST(0x0000A6AB00F2589C AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (85, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10002, CAST(0x0000A6AB00F285F0 AS DateTime), CAST(0x0000A6AB00F291A9 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00F291A9 AS DateTime), CAST(0x0000A6AB00F291A9 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (86, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10002, CAST(0x0000A6AB00F2CC40 AS DateTime), CAST(0x0000A6AB00F2D7F9 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00F2D7F9 AS DateTime), CAST(0x0000A6AB00F2D7F9 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (87, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10002, CAST(0x0000A6AB00F31290 AS DateTime), CAST(0x0000A6AB00F31E49 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00F31E49 AS DateTime), CAST(0x0000A6AB00F31E49 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (88, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 12445, CAST(0x0000A6AB00F3101A AS DateTime), CAST(0x0000A6AB00F31EB0 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00F31EB0 AS DateTime), CAST(0x0000A6AB00F31EB0 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (89, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 12170, CAST(0x0000A6AB00F31413 AS DateTime), CAST(0x0000A6AB00F32256 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00F32256 AS DateTime), CAST(0x0000A6AB00F32256 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (90, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10002, CAST(0x0000A6AB00F358E0 AS DateTime), CAST(0x0000A6AB00F36499 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00F36499 AS DateTime), CAST(0x0000A6AB00F36499 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (91, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', N'每分执行组', 10003, CAST(0x0000A6AB00F39F30 AS DateTime), CAST(0x0000A6AB00F3AAE9 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00F3AAEA AS DateTime), CAST(0x0000A6AB00F3AAEA AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (92, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', NULL, 31298, CAST(0x0000A6AB00F84A84 AS DateTime), CAST(0x0000A6AB00F86F32 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00F86F33 AS DateTime), CAST(0x0000A6AB00F86F33 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (93, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', NULL, 10122, CAST(0x0000A6AB00F8D724 AS DateTime), CAST(0x0000A6AB00F8E301 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00F8E302 AS DateTime), CAST(0x0000A6AB00F8E302 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (94, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', NULL, 10109, CAST(0x0000A6AB00F963C4 AS DateTime), CAST(0x0000A6AB00F96F9D AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00F96F9E AS DateTime), CAST(0x0000A6AB00F96F9E AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (95, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', NULL, 10126, CAST(0x0000A6AB00F9AA10 AS DateTime), CAST(0x0000A6AB00F9B5EE AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00F9B5EE AS DateTime), CAST(0x0000A6AB00F9B5EE AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (96, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', NULL, 10098, CAST(0x0000A6AB00F9F061 AS DateTime), CAST(0x0000A6AB00F9FC37 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00F9FC37 AS DateTime), CAST(0x0000A6AB00F9FC37 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (97, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', NULL, 10094, CAST(0x0000A6AB00FA36B1 AS DateTime), CAST(0x0000A6AB00FA4285 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00FA4285 AS DateTime), CAST(0x0000A6AB00FA4285 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (98, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', NULL, 10112, CAST(0x0000A6AB00FA7D01 AS DateTime), CAST(0x0000A6AB00FA88DB AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00FA88DB AS DateTime), CAST(0x0000A6AB00FA88DB AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (99, 6, 5, N'JobProcedure', N'HH.RMS.Scheduler.Job.SqlJob', 0, N'每分钟执行任务', NULL, 300089, CAST(0x0000A6AB00F963C4 AS DateTime), CAST(0x0000A6AB00FAC375 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00FAC375 AS DateTime), CAST(0x0000A6AB00FAC375 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (100, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', NULL, 10098, CAST(0x0000A6AB00FAC353 AS DateTime), CAST(0x0000A6AB00FACF29 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00FACF29 AS DateTime), CAST(0x0000A6AB00FACF29 AS DateTime), NULL, 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (101, 6, 5, N'JobProcedure', N'HH.RMS.Scheduler.Job.SqlJob', 0, N'每分钟执行任务', NULL, 300065, CAST(0x0000A6AB00F9AA10 AS DateTime), CAST(0x0000A6AB00FB09BA AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00FB09BA AS DateTime), CAST(0x0000A6AB00FB09BA AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (102, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', NULL, 10098, CAST(0x0000A6AB00FB09A1 AS DateTime), CAST(0x0000A6AB00FB1577 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00FB1577 AS DateTime), CAST(0x0000A6AB00FB1577 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (103, 6, 5, N'JobProcedure', N'HH.RMS.Scheduler.Job.SqlJob', 0, N'每分钟执行任务', NULL, 300073, CAST(0x0000A6AB00F9F061 AS DateTime), CAST(0x0000A6AB00FB500D AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00FB500D AS DateTime), CAST(0x0000A6AB00FB500D AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (104, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', NULL, 10069, CAST(0x0000A6AB00FB4FF0 AS DateTime), CAST(0x0000A6AB00FB5BBD AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AB00FB5BBD AS DateTime), CAST(0x0000A6AB00FB5BBD AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (105, 2, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', NULL, 19039, CAST(0x0000A6AC0121C8A0 AS DateTime), CAST(0x0000A6AC0121DEF3 AS DateTime), 0, N'', 0, 0, CAST(0x0000A6AC0121DEF9 AS DateTime), CAST(0x0000A6AC0121DEF9 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJobLog] ([id], [jobId], [schedulerId], [jobName], [jobGroup], [jobType], [scheduleName], [scheduleGroup], [executeSecond], [startTime], [endTime], [resultType], [resultMessage], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (106, 0, 5, N'JobTest', N'HH.RMS.Scheduler.Job.AssemblyJob', 0, N'每分钟执行任务', NULL, 63, CAST(0x0000A6AC012252B6 AS DateTime), CAST(0x0000A6AC012252CB AS DateTime), 500, N'Parameter count mismatch.', 0, 0, CAST(0x0000A6AC012252CB AS DateTime), CAST(0x0000A6AC012252CB AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[SystemJobLog] OFF
/****** Object:  Table [dbo].[SystemJob]    Script Date: 11/21/2016 18:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemJob](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[schedulerId] [bigint] NOT NULL,
	[jobName] [nvarchar](50) NOT NULL,
	[jobDescription] [nvarchar](100) NULL,
	[jobType] [int] NOT NULL,
	[jobGroup] [nvarchar](100) NOT NULL,
	[jobAssemblyFullName] [nvarchar](500) NULL,
	[jobAssembly] [nvarchar](100) NULL,
	[jobAssemblyPath] [nvarchar](100) NULL,
	[jobAssemblyMethod] [nvarchar](100) NULL,
	[jobUrl] [nvarchar](500) NULL,
	[jobCommandType] [int] NULL,
	[jobCommandText] [nvarchar](max) NULL,
	[fromDate] [datetime] NOT NULL,
	[toDate] [datetime] NOT NULL,
	[isSequence] [bit] NULL,
	[createBy] [bigint] NOT NULL,
	[updateBy] [bigint] NULL,
	[createTime] [datetime] NOT NULL,
	[updateTime] [datetime] NOT NULL,
	[remark] [nvarchar](max) NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.SystemJob] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SystemJob] ON
INSERT [dbo].[SystemJob] ([id], [schedulerId], [jobName], [jobDescription], [jobType], [jobGroup], [jobAssemblyFullName], [jobAssembly], [jobAssemblyPath], [jobAssemblyMethod], [jobUrl], [jobCommandType], [jobCommandText], [fromDate], [toDate], [isSequence], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (2, 5, N'JobTest', N'邮件发送', 1, N'HH.RMS.Scheduler.Job.AssemblyJob', N'HH.RMS.Service, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null', N'HH.RMS.Service.dll', N'HH.RMS.Service.Wechat.WechatService', N'GetOpenIdTest', NULL, NULL, NULL, CAST(0x0000A58000000000 AS DateTime), CAST(0x00011BEC00000000 AS DateTime), 1, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
INSERT [dbo].[SystemJob] ([id], [schedulerId], [jobName], [jobDescription], [jobType], [jobGroup], [jobAssemblyFullName], [jobAssembly], [jobAssemblyPath], [jobAssemblyMethod], [jobUrl], [jobCommandType], [jobCommandText], [fromDate], [toDate], [isSequence], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (6, 5, N'JobProcedure', N'存储过程测试', 2, N'HH.RMS.Scheduler.Job.SqlJob', NULL, NULL, NULL, NULL, NULL, 2, N'JobTest', CAST(0x0000A58000000000 AS DateTime), CAST(0x00011BEC00000000 AS DateTime), 1, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[SystemJob] OFF
/****** Object:  Table [dbo].[SystemAccountRole]    Script Date: 11/21/2016 18:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemAccountRole](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[accountId] [bigint] NOT NULL,
	[roleId] [bigint] NOT NULL,
	[createBy] [bigint] NOT NULL,
	[updateBy] [bigint] NULL,
	[createTime] [datetime] NOT NULL,
	[updateTime] [datetime] NOT NULL,
	[remark] [nvarchar](max) NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.SystemAccountRole] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SystemAccountRole] ON
INSERT [dbo].[SystemAccountRole] ([id], [accountId], [roleId], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (1, 2, 1, 0, 2, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A6B101119531 AS DateTime), NULL, 1)
INSERT [dbo].[SystemAccountRole] ([id], [accountId], [roleId], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (4, 25, 1, 2, 2, CAST(0x0000A6B10111DAB4 AS DateTime), CAST(0x0000A6B101141671 AS DateTime), NULL, 1)
INSERT [dbo].[SystemAccountRole] ([id], [accountId], [roleId], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (5, 24, 1, 2, 2, CAST(0x0000A6B101199162 AS DateTime), CAST(0x0000A6B101199162 AS DateTime), NULL, 1)
INSERT [dbo].[SystemAccountRole] ([id], [accountId], [roleId], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (7, 23, 2, 2, 2, CAST(0x0000A6B10119A136 AS DateTime), CAST(0x0000A6B10119A136 AS DateTime), NULL, 1)
INSERT [dbo].[SystemAccountRole] ([id], [accountId], [roleId], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (8, 20, 2, 2, 2, CAST(0x0000A6B10119AD13 AS DateTime), CAST(0x0000A6B10119AD13 AS DateTime), NULL, 1)
INSERT [dbo].[SystemAccountRole] ([id], [accountId], [roleId], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (9, 18, 1, 2, 2, CAST(0x0000A6B10119C5CC AS DateTime), CAST(0x0000A6B10119C5CC AS DateTime), NULL, 1)
INSERT [dbo].[SystemAccountRole] ([id], [accountId], [roleId], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (12, 28, 2, 2, 2, CAST(0x0000A6B1011BE006 AS DateTime), CAST(0x0000A6B1011BE006 AS DateTime), NULL, 1)
INSERT [dbo].[SystemAccountRole] ([id], [accountId], [roleId], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (13, 26, 1, 2, 2, CAST(0x0000A6B1011C3DE1 AS DateTime), CAST(0x0000A6B1011C3DE1 AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[SystemAccountRole] OFF
/****** Object:  Table [dbo].[province]    Script Date: 11/21/2016 18:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[province](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[countryId] [bigint] NOT NULL,
	[code] [nvarchar](20) NULL,
	[name] [nvarchar](50) NULL,
	[order] [int] NOT NULL,
	[createBy] [bigint] NOT NULL,
	[updateBy] [bigint] NULL,
	[createTime] [datetime] NOT NULL,
	[updateTime] [datetime] NOT NULL,
	[remark] [nvarchar](max) NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.province] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[province] ON
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (1, 1, N'安徽', N'安徽', 13, 0, 0, CAST(0x0000A65F00C55C8E AS DateTime), CAST(0x0000A65F00C55C8E AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (2, 1, N'澳门', N'澳门', 9, 0, 0, CAST(0x0000A65F00C55C8E AS DateTime), CAST(0x0000A65F00C55C8E AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (3, 1, N'北京', N'北京', 2, 0, 0, CAST(0x0000A65F00C55C8E AS DateTime), CAST(0x0000A65F00C55C8E AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (4, 1, N'福建', N'福建', 11, 0, 0, CAST(0x0000A65F00C55C8F AS DateTime), CAST(0x0000A65F00C55C8F AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (5, 1, N'甘肃', N'甘肃', 14, 0, 0, CAST(0x0000A65F00C55C8F AS DateTime), CAST(0x0000A65F00C55C8F AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (6, 1, N'广东', N'广东', 3, 0, 0, CAST(0x0000A65F00C55C8F AS DateTime), CAST(0x0000A65F00C55C8F AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (7, 1, N'广西', N'广西', 15, 0, 0, CAST(0x0000A65F00C55C8F AS DateTime), CAST(0x0000A65F00C55C8F AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (8, 1, N'贵州', N'贵州', 16, 0, 0, CAST(0x0000A65F00C55C8F AS DateTime), CAST(0x0000A65F00C55C8F AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (9, 1, N'海南', N'海南', 17, 0, 0, CAST(0x0000A65F00C55C8F AS DateTime), CAST(0x0000A65F00C55C8F AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (10, 1, N'河北', N'河北', 18, 0, 0, CAST(0x0000A65F00C55C8F AS DateTime), CAST(0x0000A65F00C55C8F AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (11, 1, N'河南', N'河南', 19, 0, 0, CAST(0x0000A65F00C55C8F AS DateTime), CAST(0x0000A65F00C55C8F AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (12, 1, N'黑龙江', N'黑龙江', 12, 0, 0, CAST(0x0000A65F00C55C8F AS DateTime), CAST(0x0000A65F00C55C8F AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (13, 1, N'湖北', N'湖北', 20, 0, 0, CAST(0x0000A65F00C55C8F AS DateTime), CAST(0x0000A65F00C55C8F AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (14, 1, N'湖南', N'湖南', 21, 0, 0, CAST(0x0000A65F00C55C8F AS DateTime), CAST(0x0000A65F00C55C8F AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (15, 1, N'吉林', N'吉林', 22, 0, 0, CAST(0x0000A65F00C55C8F AS DateTime), CAST(0x0000A65F00C55C8F AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (16, 1, N'江苏', N'江苏', 4, 0, 0, CAST(0x0000A65F00C55C8F AS DateTime), CAST(0x0000A65F00C55C8F AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (17, 1, N'江西', N'江西', 23, 0, 0, CAST(0x0000A65F00C55C8F AS DateTime), CAST(0x0000A65F00C55C8F AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (18, 1, N'辽宁', N'辽宁', 24, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (19, 1, N'内蒙古', N'内蒙古', 25, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (20, 1, N'宁夏', N'宁夏', 26, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (21, 1, N'其他', N'其他', 27, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (22, 1, N'青海', N'青海', 28, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (23, 1, N'山东', N'山东', 29, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (24, 1, N'山西', N'山西', 30, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (25, 1, N'陕西 ', N'陕西 ', 31, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (26, 1, N'上海', N'上海', 1, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (27, 1, N'四川', N'四川', 32, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (28, 1, N'台湾', N'台湾', 10, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (29, 1, N'天津', N'天津', 6, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (30, 1, N'西藏', N'西藏', 33, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (31, 1, N'香港', N'香港', 8, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (32, 1, N'新疆', N'新疆', 34, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (33, 1, N'云南', N'云南', 35, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (34, 1, N'浙江', N'浙江', 5, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
INSERT [dbo].[province] ([id], [countryId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (35, 1, N'重庆', N'重庆', 7, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[province] OFF
/****** Object:  Table [dbo].[Account]    Script Date: 11/21/2016 18:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[accountName] [nvarchar](32) NULL,
	[password] [nvarchar](32) NULL,
	[personId] [bigint] NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[amount] [decimal](18, 2) NOT NULL,
	[score] [decimal](18, 2) NOT NULL,
	[LevelId] [bigint] NOT NULL,
	[status] [int] NOT NULL,
	[remark] [nvarchar](max) NULL,
	[isActive] [bit] NOT NULL,
	[accountType] [int] NOT NULL,
	[roleBitMap] [bigint] NOT NULL,
	[updateBy] [bigint] NULL,
	[updateTime] [datetime] NOT NULL,
	[createBy] [bigint] NOT NULL,
	[createTime] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_AccountName] UNIQUE NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [email], [amount], [score], [LevelId], [status], [remark], [isActive], [accountType], [roleBitMap], [updateBy], [updateTime], [createBy], [createTime]) VALUES (2, N'admin', N'123456', 1, N'aaa@email.com', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, 1, NULL, 1, 1, 1, 2, CAST(0x0000A6C501135F2F AS DateTime), 0, CAST(0x0000A63200A6F45F AS DateTime))
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [email], [amount], [score], [LevelId], [status], [remark], [isActive], [accountType], [roleBitMap], [updateBy], [updateTime], [createBy], [createTime]) VALUES (3, N'user1', N'123456', 1, N'bbb@email.com', CAST(0.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), 1, 1, NULL, 1, 1, 1, 2, CAST(0x0000A65D012CAE2C AS DateTime), 0, CAST(0x0000A63200A7E8EE AS DateTime))
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [email], [amount], [score], [LevelId], [status], [remark], [isActive], [accountType], [roleBitMap], [updateBy], [updateTime], [createBy], [createTime]) VALUES (4, N'user2', N'123456', 1, N'ccc@email.com', CAST(0.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 1, 1, NULL, 1, 1, 1, 2, CAST(0x0000A65D012CAE2C AS DateTime), 0, CAST(0x0000A63200A930A2 AS DateTime))
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [email], [amount], [score], [LevelId], [status], [remark], [isActive], [accountType], [roleBitMap], [updateBy], [updateTime], [createBy], [createTime]) VALUES (5, N'user3', N'123456', 1, N'ddd@email.com', CAST(0.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 1, 1, NULL, 1, 1, 1, 2, CAST(0x0000A65D012CAE2C AS DateTime), 0, CAST(0x0000A63200BE7D65 AS DateTime))
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [email], [amount], [score], [LevelId], [status], [remark], [isActive], [accountType], [roleBitMap], [updateBy], [updateTime], [createBy], [createTime]) VALUES (6, N'were', N'123456', 1, N'eee@email.com', CAST(0.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), 1, 1, NULL, 1, 1, 1, 2, CAST(0x0000A6640123CF64 AS DateTime), 0, CAST(0x0000A63200C1B7CB AS DateTime))
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [email], [amount], [score], [LevelId], [status], [remark], [isActive], [accountType], [roleBitMap], [updateBy], [updateTime], [createBy], [createTime]) VALUES (7, N'user5', N'123456', 1, N'aaaaa@email.com', CAST(0.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 1, 1, NULL, 1, 1, 1, 2, CAST(0x0000A65D012CAE2C AS DateTime), 0, CAST(0x0000A63200C1B976 AS DateTime))
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [email], [amount], [score], [LevelId], [status], [remark], [isActive], [accountType], [roleBitMap], [updateBy], [updateTime], [createBy], [createTime]) VALUES (8, N'user6', N'123456', 1, N'aaaaaa@email.com', CAST(330.00 AS Decimal(18, 2)), CAST(3360.00 AS Decimal(18, 2)), 2, 2, NULL, 1, 1, 1, 2, CAST(0x0000A65E00A7A890 AS DateTime), 0, CAST(0x0000A63200D5AC37 AS DateTime))
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [email], [amount], [score], [LevelId], [status], [remark], [isActive], [accountType], [roleBitMap], [updateBy], [updateTime], [createBy], [createTime]) VALUES (9, N'user7', N'123456', 1, N'aaaaaaaaa@email.com', CAST(0.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), 1, 1, NULL, 1, 1, 1, 2, CAST(0x0000A687011506DE AS DateTime), 0, CAST(0x0000A63200D70FF3 AS DateTime))
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [email], [amount], [score], [LevelId], [status], [remark], [isActive], [accountType], [roleBitMap], [updateBy], [updateTime], [createBy], [createTime]) VALUES (12, N'user8', N'123456', 1, N'aaaaaaaaaaaaaaaa@email.com', CAST(0.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), 1, 1, NULL, 1, 1, 1, 2, CAST(0x0000A65D012CAE2C AS DateTime), 0, CAST(0x0000A63200D70FF3 AS DateTime))
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [email], [amount], [score], [LevelId], [status], [remark], [isActive], [accountType], [roleBitMap], [updateBy], [updateTime], [createBy], [createTime]) VALUES (13, N'qwqwe', N'123456', 1, N'asssaa@email.com', CAST(0.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), 1, 1, NULL, 1, 1, 1, 2, CAST(0x0000A664012659C4 AS DateTime), 0, CAST(0x0000A63200D70FF3 AS DateTime))
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [email], [amount], [score], [LevelId], [status], [remark], [isActive], [accountType], [roleBitMap], [updateBy], [updateTime], [createBy], [createTime]) VALUES (14, N'user10', N'123456', 1, N'aadda@email.com', CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, 1, NULL, 1, 1, 1, 2, CAST(0x0000A6B100E10B35 AS DateTime), 0, CAST(0x0000A63200D70FF3 AS DateTime))
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [email], [amount], [score], [LevelId], [status], [remark], [isActive], [accountType], [roleBitMap], [updateBy], [updateTime], [createBy], [createTime]) VALUES (15, N'qweq', N'123456', 1, N'aeaa@email.com', CAST(0.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), 1, 1, NULL, 1, 1, 1, 2, CAST(0x0000A664011F4662 AS DateTime), 0, CAST(0x0000A63200D70FF3 AS DateTime))
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [email], [amount], [score], [LevelId], [status], [remark], [isActive], [accountType], [roleBitMap], [updateBy], [updateTime], [createBy], [createTime]) VALUES (16, N'qwewe', N'123456', 1, N'aaffa@email.com', CAST(1.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), 1, 1, NULL, 1, 1, 1, 2, CAST(0x0000A687011466FA AS DateTime), 0, CAST(0x0000A63200D70FF3 AS DateTime))
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [email], [amount], [score], [LevelId], [status], [remark], [isActive], [accountType], [roleBitMap], [updateBy], [updateTime], [createBy], [createTime]) VALUES (17, N'user13', N'123456', 1, N'aadsa@email.com', CAST(0.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), 1, 1, NULL, 1, 1, 1, 2, CAST(0x0000A65D012CAE2C AS DateTime), 0, CAST(0x0000A63200D70FF3 AS DateTime))
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [email], [amount], [score], [LevelId], [status], [remark], [isActive], [accountType], [roleBitMap], [updateBy], [updateTime], [createBy], [createTime]) VALUES (18, N'qq', N'123456', 2, N'aawea@email.com', CAST(21.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), 1, 1, NULL, 1, 1, 1, 2, CAST(0x0000A6B10119C5B9 AS DateTime), 0, CAST(0x0000A66400959754 AS DateTime))
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [email], [amount], [score], [LevelId], [status], [remark], [isActive], [accountType], [roleBitMap], [updateBy], [updateTime], [createBy], [createTime]) VALUES (20, N'weqw', N'123456', 4, N'aadca@email.com', CAST(12.00 AS Decimal(18, 2)), CAST(1313.00 AS Decimal(18, 2)), 1, 1, NULL, 1, 1, 1, 2, CAST(0x0000A6B10119ACFE AS DateTime), 0, CAST(0x0000A6640099725E AS DateTime))
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [email], [amount], [score], [LevelId], [status], [remark], [isActive], [accountType], [roleBitMap], [updateBy], [updateTime], [createBy], [createTime]) VALUES (23, N'国家', NULL, 7, N'asaa@email.com', CAST(12.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), 1, 1, NULL, 1, 1, 1, 2, CAST(0x0000A6B10119A127 AS DateTime), 0, CAST(0x0000A6870106BDB6 AS DateTime))
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [email], [amount], [score], [LevelId], [status], [remark], [isActive], [accountType], [roleBitMap], [updateBy], [updateTime], [createBy], [createTime]) VALUES (24, N'123', NULL, 2, N'123', CAST(12.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), 1, 1, NULL, 1, 1, 1, 2, CAST(0x0000A6B101198C9F AS DateTime), 2, CAST(0x0000A6B100FC43AC AS DateTime))
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [email], [amount], [score], [LevelId], [status], [remark], [isActive], [accountType], [roleBitMap], [updateBy], [updateTime], [createBy], [createTime]) VALUES (25, N'1233', NULL, 2, N'12312', CAST(1233.00 AS Decimal(18, 2)), CAST(1231.00 AS Decimal(18, 2)), 1, 0, NULL, 1, 1, 1, 2, CAST(0x0000A6B101141671 AS DateTime), 2, CAST(0x0000A6B100FCA6D1 AS DateTime))
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [email], [amount], [score], [LevelId], [status], [remark], [isActive], [accountType], [roleBitMap], [updateBy], [updateTime], [createBy], [createTime]) VALUES (26, N'qew', NULL, 2, N'weqwe', CAST(123.00 AS Decimal(18, 2)), CAST(312.00 AS Decimal(18, 2)), 1, 1, NULL, 1, 1, 1, 2, CAST(0x0000A6B1011C3D69 AS DateTime), 2, CAST(0x0000A6B1011A648D AS DateTime))
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [email], [amount], [score], [LevelId], [status], [remark], [isActive], [accountType], [roleBitMap], [updateBy], [updateTime], [createBy], [createTime]) VALUES (27, N'5325', NULL, 7, N'324@111.com', CAST(53.00 AS Decimal(18, 2)), CAST(453.00 AS Decimal(18, 2)), 1, 1, NULL, 1, 1, 1, 2, CAST(0x0000A6B1011B9B38 AS DateTime), 2, CAST(0x0000A6B1011B9B38 AS DateTime))
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [email], [amount], [score], [LevelId], [status], [remark], [isActive], [accountType], [roleBitMap], [updateBy], [updateTime], [createBy], [createTime]) VALUES (28, N'5325', NULL, 7, N'324@111.com', CAST(53.00 AS Decimal(18, 2)), CAST(453.00 AS Decimal(18, 2)), 1, 1, NULL, 1, 1, 1, 2, CAST(0x0000A6B1011BDD3B AS DateTime), 2, CAST(0x0000A6B1011BDD3B AS DateTime))
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [email], [amount], [score], [LevelId], [status], [remark], [isActive], [accountType], [roleBitMap], [updateBy], [updateTime], [createBy], [createTime]) VALUES (29, N'636149945668908757_test', N'123456', 1, N'test@test.com', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, 1, NULL, 1, 1, 1, 0, CAST(0x0000A6C10104C8E6 AS DateTime), 0, CAST(0x0000A6C10104C8E6 AS DateTime))
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [email], [amount], [score], [LevelId], [status], [remark], [isActive], [accountType], [roleBitMap], [updateBy], [updateTime], [createBy], [createTime]) VALUES (30, N'636149945789512065_test', N'123456', 1, N'test@test.com', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, 2, NULL, 1, 1, 7, 2, CAST(0x0000A6C50116E16E AS DateTime), 0, CAST(0x0000A6C101058570 AS DateTime))
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [email], [amount], [score], [LevelId], [status], [remark], [isActive], [accountType], [roleBitMap], [updateBy], [updateTime], [createBy], [createTime]) VALUES (31, N'636150003456940544_test', N'123456', 1, N'test@test.com', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, 1, NULL, 1, 0, 1, 0, CAST(0x0000A6C1011F454F AS DateTime), 0, CAST(0x0000A6C1011F454F AS DateTime))
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [email], [amount], [score], [LevelId], [status], [remark], [isActive], [accountType], [roleBitMap], [updateBy], [updateTime], [createBy], [createTime]) VALUES (32, N'636150004043096837_test', N'123456', 1, N'test@test.com', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, 1, NULL, 1, 0, 1, 0, CAST(0x0000A6C1011F80A0 AS DateTime), 0, CAST(0x0000A6C1011F80A0 AS DateTime))
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [email], [amount], [score], [LevelId], [status], [remark], [isActive], [accountType], [roleBitMap], [updateBy], [updateTime], [createBy], [createTime]) VALUES (33, N'636150004153172228_test', N'123456', 1, N'test@test.com', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, 1, NULL, 1, 0, 1, 0, CAST(0x0000A6C1011F8D64 AS DateTime), 0, CAST(0x0000A6C1011F8D64 AS DateTime))
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [email], [amount], [score], [LevelId], [status], [remark], [isActive], [accountType], [roleBitMap], [updateBy], [updateTime], [createBy], [createTime]) VALUES (34, N'636150004219715658_test', N'123456', 1, N'test@test.com', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, 1, NULL, 1, 0, 1, 0, CAST(0x0000A6C1011F952D AS DateTime), 0, CAST(0x0000A6C1011F952D AS DateTime))
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [email], [amount], [score], [LevelId], [status], [remark], [isActive], [accountType], [roleBitMap], [updateBy], [updateTime], [createBy], [createTime]) VALUES (35, N'636150627047588712_test', N'123456', 1, N'test@test.com', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, 1, NULL, 1, 0, 1, 0, CAST(0x0000A6C200B12D2D AS DateTime), 0, CAST(0x0000A6C200B12D2D AS DateTime))
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [email], [amount], [score], [LevelId], [status], [remark], [isActive], [accountType], [roleBitMap], [updateBy], [updateTime], [createBy], [createTime]) VALUES (36, N'636150629075931526_test', N'123456', 1, N'test@test.com', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, 1, NULL, 1, 0, 1, 0, CAST(0x0000A6C200B21ADF AS DateTime), 0, CAST(0x0000A6C200B21ADF AS DateTime))
INSERT [dbo].[Account] ([id], [accountName], [password], [personId], [email], [amount], [score], [LevelId], [status], [remark], [isActive], [accountType], [roleBitMap], [updateBy], [updateTime], [createBy], [createTime]) VALUES (37, N'636150743484517785_test', N'123456', 1, N'test@test.com', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, 1, NULL, 1, 0, 1, 0, CAST(0x0000A6C200E67A25 AS DateTime), 0, CAST(0x0000A6C200E67A25 AS DateTime))
SET IDENTITY_INSERT [dbo].[Account] OFF
/****** Object:  Table [dbo].[city]    Script Date: 11/21/2016 18:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[city](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[provinceId] [bigint] NOT NULL,
	[code] [nvarchar](20) NULL,
	[name] [nvarchar](50) NULL,
	[order] [int] NOT NULL,
	[createBy] [bigint] NOT NULL,
	[updateBy] [bigint] NULL,
	[createTime] [datetime] NOT NULL,
	[updateTime] [datetime] NOT NULL,
	[remark] [nvarchar](max) NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.city] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[city] ON
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (2, 27, N'阿坝州', N'阿坝州', 2, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (3, 32, N'阿克苏地区', N'阿克苏地区', 3, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (4, 19, N'阿拉善盟', N'阿拉善盟', 4, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (5, 32, N'阿勒泰地区', N'阿勒泰地区', 5, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (6, 30, N'阿里地区', N'阿里地区', 6, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (7, 25, N'安康市', N'安康市', 7, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (8, 1, N'安庆市', N'安庆市', 8, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (9, 8, N'安顺市', N'安顺市', 9, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (10, 11, N'安阳市', N'安阳市', 10, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (11, 18, N'鞍山市', N'鞍山市', 11, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (12, 2, N'澳门特区', N'澳门特区', 12, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (13, 19, N'巴彦淖尔市', N'巴彦淖尔市', 13, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (14, 32, N'巴音郭楞蒙古自治州', N'巴音郭楞蒙古自治州', 14, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (15, 27, N'巴中市', N'巴中市', 15, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (16, 15, N'白城市', N'白城市', 16, 0, 0, CAST(0x0000A65F00C55C90 AS DateTime), CAST(0x0000A65F00C55C90 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (17, 9, N'白沙县', N'白沙县', 17, 0, 0, CAST(0x0000A65F00C55C91 AS DateTime), CAST(0x0000A65F00C55C91 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (18, 15, N'白山市', N'白山市', 18, 0, 0, CAST(0x0000A65F00C55C91 AS DateTime), CAST(0x0000A65F00C55C91 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (19, 5, N'白银市', N'白银市', 19, 0, 0, CAST(0x0000A65F00C55C91 AS DateTime), CAST(0x0000A65F00C55C91 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (20, 7, N'百色市', N'百色市', 20, 0, 0, CAST(0x0000A65F00C55C91 AS DateTime), CAST(0x0000A65F00C55C91 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (21, 1, N'蚌埠市', N'蚌埠市', 21, 0, 0, CAST(0x0000A65F00C55C91 AS DateTime), CAST(0x0000A65F00C55C91 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (22, 19, N'包头市', N'包头市', 22, 0, 0, CAST(0x0000A65F00C55C91 AS DateTime), CAST(0x0000A65F00C55C91 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (23, 25, N'宝鸡市', N'宝鸡市', 23, 0, 0, CAST(0x0000A65F00C55C91 AS DateTime), CAST(0x0000A65F00C55C91 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (24, 10, N'保定市', N'保定市', 24, 0, 0, CAST(0x0000A65F00C55C91 AS DateTime), CAST(0x0000A65F00C55C91 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (25, 33, N'保山市', N'保山市', 25, 0, 0, CAST(0x0000A65F00C55C91 AS DateTime), CAST(0x0000A65F00C55C91 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (26, 9, N'保亭县', N'保亭县', 26, 0, 0, CAST(0x0000A65F00C55C91 AS DateTime), CAST(0x0000A65F00C55C91 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (27, 7, N'北海市', N'北海市', 27, 0, 0, CAST(0x0000A65F00C55C91 AS DateTime), CAST(0x0000A65F00C55C91 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (28, 3, N'北京市', N'北京市', 28, 0, 0, CAST(0x0000A65F00C55C91 AS DateTime), CAST(0x0000A65F00C55C91 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (29, 18, N'本溪市', N'本溪市', 29, 0, 0, CAST(0x0000A65F00C55C91 AS DateTime), CAST(0x0000A65F00C55C91 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (30, 8, N'毕节地区', N'毕节地区', 30, 0, 0, CAST(0x0000A65F00C55C91 AS DateTime), CAST(0x0000A65F00C55C91 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (31, 23, N'滨州市', N'滨州市', 31, 0, 0, CAST(0x0000A65F00C55C92 AS DateTime), CAST(0x0000A65F00C55C92 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (32, 1, N'亳州市', N'亳州市', 32, 0, 0, CAST(0x0000A65F00C55C92 AS DateTime), CAST(0x0000A65F00C55C92 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (33, 32, N'博尔塔拉州', N'博尔塔拉州', 33, 0, 0, CAST(0x0000A65F00C55C92 AS DateTime), CAST(0x0000A65F00C55C92 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (34, 10, N'沧州市', N'沧州市', 34, 0, 0, CAST(0x0000A65F00C55C94 AS DateTime), CAST(0x0000A65F00C55C94 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (35, 30, N'昌都地区', N'昌都地区', 35, 0, 0, CAST(0x0000A65F00C55C95 AS DateTime), CAST(0x0000A65F00C55C95 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (36, 32, N'昌吉州', N'昌吉州', 36, 0, 0, CAST(0x0000A65F00C55C95 AS DateTime), CAST(0x0000A65F00C55C95 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (37, 9, N'昌江县', N'昌江县', 37, 0, 0, CAST(0x0000A65F00C55C95 AS DateTime), CAST(0x0000A65F00C55C95 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (38, 15, N'长春市', N'长春市', 38, 0, 0, CAST(0x0000A65F00C55C95 AS DateTime), CAST(0x0000A65F00C55C95 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (39, 14, N'长沙市', N'长沙市', 39, 0, 0, CAST(0x0000A65F00C55C95 AS DateTime), CAST(0x0000A65F00C55C95 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (40, 24, N'长治市', N'长治市', 40, 0, 0, CAST(0x0000A65F00C55C95 AS DateTime), CAST(0x0000A65F00C55C95 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (41, 14, N'常德市', N'常德市', 41, 0, 0, CAST(0x0000A65F00C55C95 AS DateTime), CAST(0x0000A65F00C55C95 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (42, 16, N'常熟市', N'常熟市', 42, 0, 0, CAST(0x0000A65F00C55C95 AS DateTime), CAST(0x0000A65F00C55C95 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (43, 16, N'常州市', N'常州市', 43, 0, 0, CAST(0x0000A65F00C55C95 AS DateTime), CAST(0x0000A65F00C55C95 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (44, 1, N'巢湖市', N'巢湖市', 44, 0, 0, CAST(0x0000A65F00C55C95 AS DateTime), CAST(0x0000A65F00C55C95 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (45, 18, N'朝阳市', N'朝阳市', 45, 0, 0, CAST(0x0000A65F00C55C9A AS DateTime), CAST(0x0000A65F00C55C9A AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (46, 6, N'潮阳市', N'潮阳市', 46, 0, 0, CAST(0x0000A65F00C55C9A AS DateTime), CAST(0x0000A65F00C55C9A AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (47, 6, N'潮州市', N'潮州市', 47, 0, 0, CAST(0x0000A65F00C55C9A AS DateTime), CAST(0x0000A65F00C55C9A AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (48, 14, N'郴州市', N'郴州市', 48, 0, 0, CAST(0x0000A65F00C55C9B AS DateTime), CAST(0x0000A65F00C55C9B AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (49, 27, N'成都市', N'成都市', 49, 0, 0, CAST(0x0000A65F00C55C9B AS DateTime), CAST(0x0000A65F00C55C9B AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (50, 10, N'承德市', N'承德市', 50, 0, 0, CAST(0x0000A65F00C55C9B AS DateTime), CAST(0x0000A65F00C55C9B AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (51, 9, N'澄迈县', N'澄迈县', 51, 0, 0, CAST(0x0000A65F00C55C9B AS DateTime), CAST(0x0000A65F00C55C9B AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (52, 1, N'池州市', N'池州市', 52, 0, 0, CAST(0x0000A65F00C55C9B AS DateTime), CAST(0x0000A65F00C55C9B AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (53, 19, N'赤峰市', N'赤峰市', 53, 0, 0, CAST(0x0000A65F00C55C9D AS DateTime), CAST(0x0000A65F00C55C9D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (54, 7, N'崇左市', N'崇左市', 54, 0, 0, CAST(0x0000A65F00C55C9E AS DateTime), CAST(0x0000A65F00C55C9E AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (55, 1, N'滁州市', N'滁州市', 55, 0, 0, CAST(0x0000A65F00C55C9E AS DateTime), CAST(0x0000A65F00C55C9E AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (56, 33, N'楚雄州', N'楚雄州', 56, 0, 0, CAST(0x0000A65F00C55C9E AS DateTime), CAST(0x0000A65F00C55C9E AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (57, 27, N'达州市', N'达州市', 57, 0, 0, CAST(0x0000A65F00C55C9E AS DateTime), CAST(0x0000A65F00C55C9E AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (58, 33, N'大理州', N'大理州', 58, 0, 0, CAST(0x0000A65F00C55C9E AS DateTime), CAST(0x0000A65F00C55C9E AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (59, 18, N'大连市', N'大连市', 59, 0, 0, CAST(0x0000A65F00C55C9E AS DateTime), CAST(0x0000A65F00C55C9E AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (60, 12, N'大庆市', N'大庆市', 60, 0, 0, CAST(0x0000A65F00C55C9E AS DateTime), CAST(0x0000A65F00C55C9E AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (61, 24, N'大同市', N'大同市', 61, 0, 0, CAST(0x0000A65F00C55C9E AS DateTime), CAST(0x0000A65F00C55C9E AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (62, 12, N'大兴安岭地区', N'大兴安岭地区', 62, 0, 0, CAST(0x0000A65F00C55C9E AS DateTime), CAST(0x0000A65F00C55C9E AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (63, 18, N'丹东市', N'丹东市', 63, 0, 0, CAST(0x0000A65F00C55CA0 AS DateTime), CAST(0x0000A65F00C55CA0 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (64, 16, N'丹阳市', N'丹阳市', 64, 0, 0, CAST(0x0000A65F00C55CA1 AS DateTime), CAST(0x0000A65F00C55CA1 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (65, 9, N'儋州市', N'儋州市', 65, 0, 0, CAST(0x0000A65F00C55CA1 AS DateTime), CAST(0x0000A65F00C55CA1 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (66, 33, N'德宏州', N'德宏州', 66, 0, 0, CAST(0x0000A65F00C55CA1 AS DateTime), CAST(0x0000A65F00C55CA1 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (67, 27, N'德阳市', N'德阳市', 67, 0, 0, CAST(0x0000A65F00C55CA1 AS DateTime), CAST(0x0000A65F00C55CA1 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (68, 23, N'德州市', N'德州市', 68, 0, 0, CAST(0x0000A65F00C55CA1 AS DateTime), CAST(0x0000A65F00C55CA1 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (69, 33, N'迪庆州', N'迪庆州', 69, 0, 0, CAST(0x0000A65F00C55CA1 AS DateTime), CAST(0x0000A65F00C55CA1 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (70, 9, N'定安县', N'定安县', 70, 0, 0, CAST(0x0000A65F00C55CA1 AS DateTime), CAST(0x0000A65F00C55CA1 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (71, 5, N'定西市', N'定西市', 71, 0, 0, CAST(0x0000A65F00C55CA1 AS DateTime), CAST(0x0000A65F00C55CA1 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (72, 9, N'东方市', N'东方市', 72, 0, 0, CAST(0x0000A65F00C55CA1 AS DateTime), CAST(0x0000A65F00C55CA1 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (73, 6, N'东莞市', N'东莞市', 73, 0, 0, CAST(0x0000A65F00C55CA1 AS DateTime), CAST(0x0000A65F00C55CA1 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (74, 23, N'东营市', N'东营市', 74, 0, 0, CAST(0x0000A65F00C55CA1 AS DateTime), CAST(0x0000A65F00C55CA1 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (75, 19, N'鄂尔多斯市', N'鄂尔多斯市', 75, 0, 0, CAST(0x0000A65F00C55CA1 AS DateTime), CAST(0x0000A65F00C55CA1 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (76, 13, N'鄂州市', N'鄂州市', 76, 0, 0, CAST(0x0000A65F00C55CA1 AS DateTime), CAST(0x0000A65F00C55CA1 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (77, 13, N'恩施州', N'恩施州', 77, 0, 0, CAST(0x0000A65F00C55CA1 AS DateTime), CAST(0x0000A65F00C55CA1 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (78, 7, N'防城港市', N'防城港市', 78, 0, 0, CAST(0x0000A65F00C55CA1 AS DateTime), CAST(0x0000A65F00C55CA1 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (79, 6, N'佛山市', N'佛山市', 79, 0, 0, CAST(0x0000A65F00C55CA1 AS DateTime), CAST(0x0000A65F00C55CA1 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (80, 4, N'福鼎市', N'福鼎市', 80, 0, 0, CAST(0x0000A65F00C55CA2 AS DateTime), CAST(0x0000A65F00C55CA2 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (81, 4, N'福州市', N'福州市', 81, 0, 0, CAST(0x0000A65F00C55CA2 AS DateTime), CAST(0x0000A65F00C55CA2 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (82, 18, N'抚顺市', N'抚顺市', 82, 0, 0, CAST(0x0000A65F00C55CA2 AS DateTime), CAST(0x0000A65F00C55CA2 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (83, 17, N'抚州市', N'抚州市', 83, 0, 0, CAST(0x0000A65F00C55CA2 AS DateTime), CAST(0x0000A65F00C55CA2 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (84, 18, N'阜新市', N'阜新市', 84, 0, 0, CAST(0x0000A65F00C55CA2 AS DateTime), CAST(0x0000A65F00C55CA2 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (85, 1, N'阜阳市', N'阜阳市', 85, 0, 0, CAST(0x0000A65F00C55CA2 AS DateTime), CAST(0x0000A65F00C55CA2 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (86, 5, N'甘南州', N'甘南州', 86, 0, 0, CAST(0x0000A65F00C55CA2 AS DateTime), CAST(0x0000A65F00C55CA2 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (87, 27, N'甘孜州', N'甘孜州', 87, 0, 0, CAST(0x0000A65F00C55CA2 AS DateTime), CAST(0x0000A65F00C55CA2 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (88, 17, N'赣州市', N'赣州市', 88, 0, 0, CAST(0x0000A65F00C55CA2 AS DateTime), CAST(0x0000A65F00C55CA2 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (89, 28, N'高雄市', N'高雄市', 89, 0, 0, CAST(0x0000A65F00C55CA2 AS DateTime), CAST(0x0000A65F00C55CA2 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (90, 28, N'高雄县', N'高雄县', 90, 0, 0, CAST(0x0000A65F00C55CA3 AS DateTime), CAST(0x0000A65F00C55CA3 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (91, 20, N'固原市', N'固原市', 91, 0, 0, CAST(0x0000A65F00C55CA3 AS DateTime), CAST(0x0000A65F00C55CA3 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (92, 27, N'广安市', N'广安市', 92, 0, 0, CAST(0x0000A65F00C55CA3 AS DateTime), CAST(0x0000A65F00C55CA3 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (93, 27, N'广元市', N'广元市', 93, 0, 0, CAST(0x0000A65F00C55CA3 AS DateTime), CAST(0x0000A65F00C55CA3 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (94, 6, N'广州市', N'广州市', 94, 0, 0, CAST(0x0000A65F00C55CA3 AS DateTime), CAST(0x0000A65F00C55CA3 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (95, 7, N'贵港市', N'贵港市', 95, 0, 0, CAST(0x0000A65F00C55CA3 AS DateTime), CAST(0x0000A65F00C55CA3 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (96, 8, N'贵阳市', N'贵阳市', 96, 0, 0, CAST(0x0000A65F00C55CA3 AS DateTime), CAST(0x0000A65F00C55CA3 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (97, 7, N'桂林市', N'桂林市', 97, 0, 0, CAST(0x0000A65F00C55CA3 AS DateTime), CAST(0x0000A65F00C55CA3 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (98, 22, N'果洛州', N'果洛州', 98, 0, 0, CAST(0x0000A65F00C55CA3 AS DateTime), CAST(0x0000A65F00C55CA3 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (99, 12, N'哈尔滨市', N'哈尔滨市', 99, 0, 0, CAST(0x0000A65F00C55CA3 AS DateTime), CAST(0x0000A65F00C55CA3 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (100, 32, N'哈密地区', N'哈密地区', 100, 0, 0, CAST(0x0000A65F00C55CA4 AS DateTime), CAST(0x0000A65F00C55CA4 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (101, 22, N'海北州', N'海北州', 101, 0, 0, CAST(0x0000A65F00C55CAE AS DateTime), CAST(0x0000A65F00C55CAE AS DateTime), NULL, 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (102, 22, N'海东地区', N'海东地区', 102, 0, 0, CAST(0x0000A65F00C55CAF AS DateTime), CAST(0x0000A65F00C55CAF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (103, 9, N'海口市', N'海口市', 103, 0, 0, CAST(0x0000A65F00C55CAF AS DateTime), CAST(0x0000A65F00C55CAF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (104, 22, N'海南州', N'海南州', 104, 0, 0, CAST(0x0000A65F00C55CAF AS DateTime), CAST(0x0000A65F00C55CAF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (105, 34, N'海宁市', N'海宁市', 105, 0, 0, CAST(0x0000A65F00C55CAF AS DateTime), CAST(0x0000A65F00C55CAF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (106, 22, N'海西州', N'海西州', 106, 0, 0, CAST(0x0000A65F00C55CAF AS DateTime), CAST(0x0000A65F00C55CAF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (107, 10, N'邯郸市', N'邯郸市', 107, 0, 0, CAST(0x0000A65F00C55CAF AS DateTime), CAST(0x0000A65F00C55CAF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (108, 25, N'汉中市', N'汉中市', 108, 0, 0, CAST(0x0000A65F00C55CAF AS DateTime), CAST(0x0000A65F00C55CAF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (109, 34, N'杭州市', N'杭州市', 109, 0, 0, CAST(0x0000A65F00C55CAF AS DateTime), CAST(0x0000A65F00C55CAF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (110, 1, N'合肥市', N'合肥市', 110, 0, 0, CAST(0x0000A65F00C55CAF AS DateTime), CAST(0x0000A65F00C55CAF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (111, 32, N'和田地区', N'和田地区', 111, 0, 0, CAST(0x0000A65F00C55CAF AS DateTime), CAST(0x0000A65F00C55CAF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (112, 7, N'河池市', N'河池市', 112, 0, 0, CAST(0x0000A65F00C55CAF AS DateTime), CAST(0x0000A65F00C55CAF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (113, 6, N'河源市', N'河源市', 113, 0, 0, CAST(0x0000A65F00C55CAF AS DateTime), CAST(0x0000A65F00C55CAF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (114, 23, N'荷泽市', N'荷泽市', 114, 0, 0, CAST(0x0000A65F00C55CAF AS DateTime), CAST(0x0000A65F00C55CAF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (115, 23, N'菏泽市', N'菏泽市', 115, 0, 0, CAST(0x0000A65F00C55CAF AS DateTime), CAST(0x0000A65F00C55CAF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (116, 7, N'贺州市', N'贺州市', 116, 0, 0, CAST(0x0000A65F00C55CAF AS DateTime), CAST(0x0000A65F00C55CAF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (117, 11, N'鹤壁市', N'鹤壁市', 117, 0, 0, CAST(0x0000A65F00C55CAF AS DateTime), CAST(0x0000A65F00C55CAF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (118, 12, N'鹤岗市', N'鹤岗市', 118, 0, 0, CAST(0x0000A65F00C55CAF AS DateTime), CAST(0x0000A65F00C55CAF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (119, 12, N'黑河市', N'黑河市', 119, 0, 0, CAST(0x0000A65F00C55CAF AS DateTime), CAST(0x0000A65F00C55CAF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (120, 10, N'衡水市', N'衡水市', 120, 0, 0, CAST(0x0000A65F00C55CAF AS DateTime), CAST(0x0000A65F00C55CAF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (121, 14, N'衡阳市', N'衡阳市', 121, 0, 0, CAST(0x0000A65F00C55CAF AS DateTime), CAST(0x0000A65F00C55CAF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (122, 33, N'红河州', N'红河州', 122, 0, 0, CAST(0x0000A65F00C55CAF AS DateTime), CAST(0x0000A65F00C55CAF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (123, 19, N'呼和浩特市', N'呼和浩特市', 123, 0, 0, CAST(0x0000A65F00C55CAF AS DateTime), CAST(0x0000A65F00C55CAF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (124, 19, N'呼伦贝尔市', N'呼伦贝尔市', 124, 0, 0, CAST(0x0000A65F00C55CAF AS DateTime), CAST(0x0000A65F00C55CAF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (125, 34, N'湖州市', N'湖州市', 125, 0, 0, CAST(0x0000A65F00C55CAF AS DateTime), CAST(0x0000A65F00C55CAF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (126, 18, N'葫芦岛市', N'葫芦岛市', 126, 0, 0, CAST(0x0000A65F00C55CAF AS DateTime), CAST(0x0000A65F00C55CAF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (127, 28, N'花莲县', N'花莲县', 127, 0, 0, CAST(0x0000A65F00C55CAF AS DateTime), CAST(0x0000A65F00C55CAF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (128, 14, N'怀化市', N'怀化市', 128, 0, 0, CAST(0x0000A65F00C55CAF AS DateTime), CAST(0x0000A65F00C55CAF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (129, 16, N'淮安市', N'淮安市', 129, 0, 0, CAST(0x0000A65F00C55CAF AS DateTime), CAST(0x0000A65F00C55CAF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (130, 1, N'淮北市', N'淮北市', 130, 0, 0, CAST(0x0000A65F00C55CAF AS DateTime), CAST(0x0000A65F00C55CAF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (131, 23, N'淮坊市', N'淮坊市', 131, 0, 0, CAST(0x0000A65F00C55CAF AS DateTime), CAST(0x0000A65F00C55CAF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (132, 1, N'淮南市', N'淮南市', 132, 0, 0, CAST(0x0000A65F00C55CB0 AS DateTime), CAST(0x0000A65F00C55CB0 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (133, 13, N'黄冈市', N'黄冈市', 133, 0, 0, CAST(0x0000A65F00C55CB0 AS DateTime), CAST(0x0000A65F00C55CB0 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (134, 22, N'黄南州', N'黄南州', 134, 0, 0, CAST(0x0000A65F00C55CB0 AS DateTime), CAST(0x0000A65F00C55CB0 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (135, 1, N'黄山市', N'黄山市', 135, 0, 0, CAST(0x0000A65F00C55CB0 AS DateTime), CAST(0x0000A65F00C55CB0 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (136, 13, N'黄石市', N'黄石市', 136, 0, 0, CAST(0x0000A65F00C55CB0 AS DateTime), CAST(0x0000A65F00C55CB0 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (137, 6, N'惠州市', N'惠州市', 137, 0, 0, CAST(0x0000A65F00C55CB1 AS DateTime), CAST(0x0000A65F00C55CB1 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (138, 12, N'鸡西市', N'鸡西市', 138, 0, 0, CAST(0x0000A65F00C55CB1 AS DateTime), CAST(0x0000A65F00C55CB1 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (139, 28, N'基隆市', N'基隆市', 139, 0, 0, CAST(0x0000A65F00C55CB1 AS DateTime), CAST(0x0000A65F00C55CB1 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (140, 17, N'吉安市', N'吉安市', 140, 0, 0, CAST(0x0000A65F00C55CB2 AS DateTime), CAST(0x0000A65F00C55CB2 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (141, 15, N'吉林市', N'吉林市', 141, 0, 0, CAST(0x0000A65F00C55CB2 AS DateTime), CAST(0x0000A65F00C55CB2 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (142, 23, N'济南市', N'济南市', 142, 0, 0, CAST(0x0000A65F00C55CB3 AS DateTime), CAST(0x0000A65F00C55CB3 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (143, 23, N'济宁市', N'济宁市', 143, 0, 0, CAST(0x0000A65F00C55CB3 AS DateTime), CAST(0x0000A65F00C55CB3 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (144, 12, N'佳木斯市', N'佳木斯市', 144, 0, 0, CAST(0x0000A65F00C55CB3 AS DateTime), CAST(0x0000A65F00C55CB3 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (145, 34, N'嘉兴市', N'嘉兴市', 145, 0, 0, CAST(0x0000A65F00C55CB3 AS DateTime), CAST(0x0000A65F00C55CB3 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (146, 28, N'嘉义市', N'嘉义市', 146, 0, 0, CAST(0x0000A65F00C55CB3 AS DateTime), CAST(0x0000A65F00C55CB3 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (147, 28, N'嘉义县', N'嘉义县', 147, 0, 0, CAST(0x0000A65F00C55CB3 AS DateTime), CAST(0x0000A65F00C55CB3 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (148, 5, N'嘉峪关市', N'嘉峪关市', 148, 0, 0, CAST(0x0000A65F00C55CB3 AS DateTime), CAST(0x0000A65F00C55CB3 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (149, 6, N'江门市', N'江门市', 149, 0, 0, CAST(0x0000A65F00C55CB3 AS DateTime), CAST(0x0000A65F00C55CB3 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (150, 16, N'江阴市', N'江阴市', 150, 0, 0, CAST(0x0000A65F00C55CB3 AS DateTime), CAST(0x0000A65F00C55CB3 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (151, 11, N'焦作市', N'焦作市', 151, 0, 0, CAST(0x0000A65F00C55CB4 AS DateTime), CAST(0x0000A65F00C55CB4 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (152, 6, N'揭西市', N'揭西市', 152, 0, 0, CAST(0x0000A65F00C55CB4 AS DateTime), CAST(0x0000A65F00C55CB4 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (153, 6, N'揭阳市', N'揭阳市', 153, 0, 0, CAST(0x0000A65F00C55CB4 AS DateTime), CAST(0x0000A65F00C55CB4 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (154, 5, N'金昌市', N'金昌市', 154, 0, 0, CAST(0x0000A65F00C55CB4 AS DateTime), CAST(0x0000A65F00C55CB4 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (155, 34, N'金华市', N'金华市', 155, 0, 0, CAST(0x0000A65F00C55CB4 AS DateTime), CAST(0x0000A65F00C55CB4 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (156, 4, N'金门县', N'金门县', 156, 0, 0, CAST(0x0000A65F00C55CBA AS DateTime), CAST(0x0000A65F00C55CBA AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (157, 18, N'锦州市', N'锦州市', 157, 0, 0, CAST(0x0000A65F00C55CBA AS DateTime), CAST(0x0000A65F00C55CBA AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (158, 24, N'晋城市', N'晋城市', 158, 0, 0, CAST(0x0000A65F00C55CBA AS DateTime), CAST(0x0000A65F00C55CBA AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (159, 24, N'晋中市', N'晋中市', 159, 0, 0, CAST(0x0000A65F00C55CBA AS DateTime), CAST(0x0000A65F00C55CBA AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (160, 13, N'荆门市', N'荆门市', 160, 0, 0, CAST(0x0000A65F00C55CBA AS DateTime), CAST(0x0000A65F00C55CBA AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (161, 13, N'荆州市', N'荆州市', 161, 0, 0, CAST(0x0000A65F00C55CBB AS DateTime), CAST(0x0000A65F00C55CBB AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (162, 17, N'景德镇市', N'景德镇市', 162, 0, 0, CAST(0x0000A65F00C55CBB AS DateTime), CAST(0x0000A65F00C55CBB AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (163, 17, N'九江市', N'九江市', 163, 0, 0, CAST(0x0000A65F00C55CBB AS DateTime), CAST(0x0000A65F00C55CBB AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (164, 5, N'酒泉市', N'酒泉市', 164, 0, 0, CAST(0x0000A65F00C55CBB AS DateTime), CAST(0x0000A65F00C55CBB AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (165, 32, N'喀什地区', N'喀什地区', 165, 0, 0, CAST(0x0000A65F00C55CBB AS DateTime), CAST(0x0000A65F00C55CBB AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (166, 11, N'开封市', N'开封市', 166, 0, 0, CAST(0x0000A65F00C55CBB AS DateTime), CAST(0x0000A65F00C55CBB AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (167, 32, N'克拉玛依市', N'克拉玛依市', 167, 0, 0, CAST(0x0000A65F00C55CBB AS DateTime), CAST(0x0000A65F00C55CBB AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (168, 32, N'克孜勒苏州', N'克孜勒苏州', 168, 0, 0, CAST(0x0000A65F00C55CBC AS DateTime), CAST(0x0000A65F00C55CBC AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (169, 33, N'昆明市', N'昆明市', 169, 0, 0, CAST(0x0000A65F00C55CBC AS DateTime), CAST(0x0000A65F00C55CBC AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (170, 16, N'昆山市', N'昆山市', 170, 0, 0, CAST(0x0000A65F00C55CBC AS DateTime), CAST(0x0000A65F00C55CBC AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (171, 30, N'拉萨市', N'拉萨市', 171, 0, 0, CAST(0x0000A65F00C55CBC AS DateTime), CAST(0x0000A65F00C55CBC AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (172, 7, N'来宾市', N'来宾市', 172, 0, 0, CAST(0x0000A65F00C55CBC AS DateTime), CAST(0x0000A65F00C55CBC AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (173, 23, N'莱芜市', N'莱芜市', 173, 0, 0, CAST(0x0000A65F00C55CBC AS DateTime), CAST(0x0000A65F00C55CBC AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (174, 5, N'兰州市', N'兰州市', 174, 0, 0, CAST(0x0000A65F00C55CBC AS DateTime), CAST(0x0000A65F00C55CBC AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (175, 10, N'廊坊市', N'廊坊市', 175, 0, 0, CAST(0x0000A65F00C55CBC AS DateTime), CAST(0x0000A65F00C55CBC AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (176, 9, N'乐东市', N'乐东市', 176, 0, 0, CAST(0x0000A65F00C55CBC AS DateTime), CAST(0x0000A65F00C55CBC AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (177, 34, N'乐清市', N'乐清市', 177, 0, 0, CAST(0x0000A65F00C55CBC AS DateTime), CAST(0x0000A65F00C55CBC AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (178, 27, N'乐山市', N'乐山市', 178, 0, 0, CAST(0x0000A65F00C55CBD AS DateTime), CAST(0x0000A65F00C55CBD AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (179, 24, N'离石市', N'离石市', 179, 0, 0, CAST(0x0000A65F00C55CBD AS DateTime), CAST(0x0000A65F00C55CBD AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (180, 33, N'丽江市', N'丽江市', 180, 0, 0, CAST(0x0000A65F00C55CBD AS DateTime), CAST(0x0000A65F00C55CBD AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (181, 34, N'丽水市', N'丽水市', 181, 0, 0, CAST(0x0000A65F00C55CBD AS DateTime), CAST(0x0000A65F00C55CBD AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (182, 16, N'溧阳市', N'溧阳市', 182, 0, 0, CAST(0x0000A65F00C55CBD AS DateTime), CAST(0x0000A65F00C55CBD AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (183, 4, N'连江县', N'连江县', 183, 0, 0, CAST(0x0000A65F00C55CBD AS DateTime), CAST(0x0000A65F00C55CBD AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (184, 16, N'连云港市', N'连云港市', 184, 0, 0, CAST(0x0000A65F00C55CBE AS DateTime), CAST(0x0000A65F00C55CBE AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (185, 27, N'凉山州', N'凉山州', 185, 0, 0, CAST(0x0000A65F00C55CBE AS DateTime), CAST(0x0000A65F00C55CBE AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (186, 18, N'辽阳市', N'辽阳市', 186, 0, 0, CAST(0x0000A65F00C55CBE AS DateTime), CAST(0x0000A65F00C55CBE AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (187, 15, N'辽源市', N'辽源市', 187, 0, 0, CAST(0x0000A65F00C55CBE AS DateTime), CAST(0x0000A65F00C55CBE AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (188, 23, N'聊城市', N'聊城市', 188, 0, 0, CAST(0x0000A65F00C55CBE AS DateTime), CAST(0x0000A65F00C55CBE AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (189, 30, N'林芝地区', N'林芝地区', 189, 0, 0, CAST(0x0000A65F00C55CBE AS DateTime), CAST(0x0000A65F00C55CBE AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (190, 33, N'临沧市', N'临沧市', 190, 0, 0, CAST(0x0000A65F00C55CBF AS DateTime), CAST(0x0000A65F00C55CBF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (191, 24, N'临汾市', N'临汾市', 191, 0, 0, CAST(0x0000A65F00C55CBF AS DateTime), CAST(0x0000A65F00C55CBF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (192, 9, N'临高县', N'临高县', 192, 0, 0, CAST(0x0000A65F00C55CBF AS DateTime), CAST(0x0000A65F00C55CBF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (193, 5, N'临夏州', N'临夏州', 193, 0, 0, CAST(0x0000A65F00C55CBF AS DateTime), CAST(0x0000A65F00C55CBF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (194, 23, N'临沂市', N'临沂市', 194, 0, 0, CAST(0x0000A65F00C55CBF AS DateTime), CAST(0x0000A65F00C55CBF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (195, 9, N'陵水县', N'陵水县', 195, 0, 0, CAST(0x0000A65F00C55CBF AS DateTime), CAST(0x0000A65F00C55CBF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (196, 7, N'柳州市', N'柳州市', 196, 0, 0, CAST(0x0000A65F00C55CBF AS DateTime), CAST(0x0000A65F00C55CBF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (197, 1, N'六安市', N'六安市', 197, 0, 0, CAST(0x0000A65F00C55CBF AS DateTime), CAST(0x0000A65F00C55CBF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (198, 8, N'六盘水市', N'六盘水市', 198, 0, 0, CAST(0x0000A65F00C55CBF AS DateTime), CAST(0x0000A65F00C55CBF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (199, 4, N'龙岩市', N'龙岩市', 199, 0, 0, CAST(0x0000A65F00C55CBF AS DateTime), CAST(0x0000A65F00C55CBF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (200, 5, N'陇南市', N'陇南市', 200, 0, 0, CAST(0x0000A65F00C55CBF AS DateTime), CAST(0x0000A65F00C55CBF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (201, 14, N'娄底市', N'娄底市', 201, 0, 0, CAST(0x0000A65F00C55CC0 AS DateTime), CAST(0x0000A65F00C55CC0 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (202, 27, N'泸州市', N'泸州市', 202, 0, 0, CAST(0x0000A65F00C55CCF AS DateTime), CAST(0x0000A65F00C55CCF AS DateTime), NULL, 1)
GO
print 'Processed 200 total records'
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (203, 24, N'吕梁市', N'吕梁市', 203, 0, 0, CAST(0x0000A65F00C55CCF AS DateTime), CAST(0x0000A65F00C55CCF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (204, 11, N'洛阳市', N'洛阳市', 204, 0, 0, CAST(0x0000A65F00C55CCF AS DateTime), CAST(0x0000A65F00C55CCF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (205, 11, N'漯河市', N'漯河市', 205, 0, 0, CAST(0x0000A65F00C55CCF AS DateTime), CAST(0x0000A65F00C55CCF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (206, 1, N'马鞍山市', N'马鞍山市', 206, 0, 0, CAST(0x0000A65F00C55CCF AS DateTime), CAST(0x0000A65F00C55CCF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (207, 6, N'茂名市', N'茂名市', 207, 0, 0, CAST(0x0000A65F00C55CCF AS DateTime), CAST(0x0000A65F00C55CCF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (208, 27, N'眉山市', N'眉山市', 208, 0, 0, CAST(0x0000A65F00C55CCF AS DateTime), CAST(0x0000A65F00C55CCF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (209, 6, N'梅州市', N'梅州市', 209, 0, 0, CAST(0x0000A65F00C55CCF AS DateTime), CAST(0x0000A65F00C55CCF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (210, 27, N'绵阳市', N'绵阳市', 210, 0, 0, CAST(0x0000A65F00C55CCF AS DateTime), CAST(0x0000A65F00C55CCF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (211, 28, N'苗栗县', N'苗栗县', 211, 0, 0, CAST(0x0000A65F00C55CCF AS DateTime), CAST(0x0000A65F00C55CCF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (212, 12, N'牡丹江市', N'牡丹江市', 212, 0, 0, CAST(0x0000A65F00C55CCF AS DateTime), CAST(0x0000A65F00C55CCF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (213, 27, N'内江市', N'内江市', 213, 0, 0, CAST(0x0000A65F00C55CCF AS DateTime), CAST(0x0000A65F00C55CCF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (214, 30, N'那曲地区', N'那曲地区', 214, 0, 0, CAST(0x0000A65F00C55CCF AS DateTime), CAST(0x0000A65F00C55CCF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (215, 17, N'南昌市', N'南昌市', 215, 0, 0, CAST(0x0000A65F00C55CCF AS DateTime), CAST(0x0000A65F00C55CCF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (216, 27, N'南充市', N'南充市', 216, 0, 0, CAST(0x0000A65F00C55CCF AS DateTime), CAST(0x0000A65F00C55CCF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (217, 16, N'南京市', N'南京市', 217, 0, 0, CAST(0x0000A65F00C55CCF AS DateTime), CAST(0x0000A65F00C55CCF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (218, 7, N'南宁市', N'南宁市', 218, 0, 0, CAST(0x0000A65F00C55CCF AS DateTime), CAST(0x0000A65F00C55CCF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (219, 4, N'南平市', N'南平市', 219, 0, 0, CAST(0x0000A65F00C55CCF AS DateTime), CAST(0x0000A65F00C55CCF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (220, 16, N'南通市', N'南通市', 220, 0, 0, CAST(0x0000A65F00C55CCF AS DateTime), CAST(0x0000A65F00C55CCF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (221, 28, N'南投县', N'南投县', 221, 0, 0, CAST(0x0000A65F00C55CCF AS DateTime), CAST(0x0000A65F00C55CCF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (222, 11, N'南阳市', N'南阳市', 222, 0, 0, CAST(0x0000A65F00C55CCF AS DateTime), CAST(0x0000A65F00C55CCF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (223, 34, N'宁波市', N'宁波市', 223, 0, 0, CAST(0x0000A65F00C55CCF AS DateTime), CAST(0x0000A65F00C55CCF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (224, 4, N'宁德市', N'宁德市', 224, 0, 0, CAST(0x0000A65F00C55CCF AS DateTime), CAST(0x0000A65F00C55CCF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (225, 33, N'怒江州', N'怒江州', 225, 0, 0, CAST(0x0000A65F00C55CCF AS DateTime), CAST(0x0000A65F00C55CCF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (226, 27, N'攀枝花市', N'攀枝花市', 226, 0, 0, CAST(0x0000A65F00C55CCF AS DateTime), CAST(0x0000A65F00C55CCF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (227, 18, N'盘锦市', N'盘锦市', 227, 0, 0, CAST(0x0000A65F00C55CCF AS DateTime), CAST(0x0000A65F00C55CCF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (228, 28, N'澎湖县', N'澎湖县', 228, 0, 0, CAST(0x0000A65F00C55CCF AS DateTime), CAST(0x0000A65F00C55CCF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (229, 11, N'平顶山市', N'平顶山市', 229, 0, 0, CAST(0x0000A65F00C55CCF AS DateTime), CAST(0x0000A65F00C55CCF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (230, 5, N'平凉市', N'平凉市', 230, 0, 0, CAST(0x0000A65F00C55CCF AS DateTime), CAST(0x0000A65F00C55CCF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (231, 28, N'屏东县', N'屏东县', 231, 0, 0, CAST(0x0000A65F00C55CCF AS DateTime), CAST(0x0000A65F00C55CCF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (232, 17, N'萍乡市', N'萍乡市', 232, 0, 0, CAST(0x0000A65F00C55CCF AS DateTime), CAST(0x0000A65F00C55CCF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (233, 4, N'莆田市', N'莆田市', 233, 0, 0, CAST(0x0000A65F00C55CD0 AS DateTime), CAST(0x0000A65F00C55CD0 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (234, 11, N'濮阳市', N'濮阳市', 234, 0, 0, CAST(0x0000A65F00C55CD0 AS DateTime), CAST(0x0000A65F00C55CD0 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (235, 12, N'七台河市', N'七台河市', 235, 0, 0, CAST(0x0000A65F00C55CD0 AS DateTime), CAST(0x0000A65F00C55CD0 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (236, 12, N'齐齐哈尔市', N'齐齐哈尔市', 236, 0, 0, CAST(0x0000A65F00C55CD0 AS DateTime), CAST(0x0000A65F00C55CD0 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (237, 1, N'其他', N'其他', 237, 0, 0, CAST(0x0000A65F00C55CD0 AS DateTime), CAST(0x0000A65F00C55CD0 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (238, 2, N'其他', N'其他', 238, 0, 0, CAST(0x0000A65F00C55CDB AS DateTime), CAST(0x0000A65F00C55CDB AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (239, 3, N'其他', N'其他', 239, 0, 0, CAST(0x0000A65F00C55CDB AS DateTime), CAST(0x0000A65F00C55CDB AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (240, 4, N'其他', N'其他', 240, 0, 0, CAST(0x0000A65F00C55CDB AS DateTime), CAST(0x0000A65F00C55CDB AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (241, 5, N'其他', N'其他', 241, 0, 0, CAST(0x0000A65F00C55CDB AS DateTime), CAST(0x0000A65F00C55CDB AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (242, 6, N'其他', N'其他', 242, 0, 0, CAST(0x0000A65F00C55CDC AS DateTime), CAST(0x0000A65F00C55CDC AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (243, 7, N'其他', N'其他', 243, 0, 0, CAST(0x0000A65F00C55CDC AS DateTime), CAST(0x0000A65F00C55CDC AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (244, 8, N'其他', N'其他', 244, 0, 0, CAST(0x0000A65F00C55CDC AS DateTime), CAST(0x0000A65F00C55CDC AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (245, 9, N'其他', N'其他', 245, 0, 0, CAST(0x0000A65F00C55CDC AS DateTime), CAST(0x0000A65F00C55CDC AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (246, 10, N'其他', N'其他', 246, 0, 0, CAST(0x0000A65F00C55CDD AS DateTime), CAST(0x0000A65F00C55CDD AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (247, 11, N'其他', N'其他', 247, 0, 0, CAST(0x0000A65F00C55CDD AS DateTime), CAST(0x0000A65F00C55CDD AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (248, 12, N'其他', N'其他', 248, 0, 0, CAST(0x0000A65F00C55CDF AS DateTime), CAST(0x0000A65F00C55CDF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (249, 13, N'其他', N'其他', 249, 0, 0, CAST(0x0000A65F00C55CDF AS DateTime), CAST(0x0000A65F00C55CDF AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (250, 14, N'其他', N'其他', 250, 0, 0, CAST(0x0000A65F00C55CE0 AS DateTime), CAST(0x0000A65F00C55CE0 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (251, 15, N'其他', N'其他', 251, 0, 0, CAST(0x0000A65F00C55CE0 AS DateTime), CAST(0x0000A65F00C55CE0 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (252, 16, N'其他', N'其他', 252, 0, 0, CAST(0x0000A65F00C55CE0 AS DateTime), CAST(0x0000A65F00C55CE0 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (253, 17, N'其他', N'其他', 253, 0, 0, CAST(0x0000A65F00C55CE0 AS DateTime), CAST(0x0000A65F00C55CE0 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (254, 18, N'其他', N'其他', 254, 0, 0, CAST(0x0000A65F00C55CE0 AS DateTime), CAST(0x0000A65F00C55CE0 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (255, 19, N'其他', N'其他', 255, 0, 0, CAST(0x0000A65F00C55CE1 AS DateTime), CAST(0x0000A65F00C55CE1 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (256, 20, N'其他', N'其他', 256, 0, 0, CAST(0x0000A65F00C55CE1 AS DateTime), CAST(0x0000A65F00C55CE1 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (257, 21, N'其他', N'其他', 257, 0, 0, CAST(0x0000A65F00C55CE1 AS DateTime), CAST(0x0000A65F00C55CE1 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (258, 22, N'其他', N'其他', 258, 0, 0, CAST(0x0000A65F00C55CE2 AS DateTime), CAST(0x0000A65F00C55CE2 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (259, 23, N'其他', N'其他', 259, 0, 0, CAST(0x0000A65F00C55CE2 AS DateTime), CAST(0x0000A65F00C55CE2 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (260, 24, N'其他', N'其他', 260, 0, 0, CAST(0x0000A65F00C55CE2 AS DateTime), CAST(0x0000A65F00C55CE2 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (261, 25, N'其他', N'其他', 261, 0, 0, CAST(0x0000A65F00C55CE2 AS DateTime), CAST(0x0000A65F00C55CE2 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (262, 26, N'其他', N'其他', 262, 0, 0, CAST(0x0000A65F00C55CE3 AS DateTime), CAST(0x0000A65F00C55CE3 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (263, 27, N'其他', N'其他', 263, 0, 0, CAST(0x0000A65F00C55CE3 AS DateTime), CAST(0x0000A65F00C55CE3 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (264, 28, N'其他', N'其他', 264, 0, 0, CAST(0x0000A65F00C55CE3 AS DateTime), CAST(0x0000A65F00C55CE3 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (265, 29, N'其他', N'其他', 265, 0, 0, CAST(0x0000A65F00C55CE3 AS DateTime), CAST(0x0000A65F00C55CE3 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (266, 30, N'其他', N'其他', 266, 0, 0, CAST(0x0000A65F00C55CE3 AS DateTime), CAST(0x0000A65F00C55CE3 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (267, 31, N'其他', N'其他', 267, 0, 0, CAST(0x0000A65F00C55CE3 AS DateTime), CAST(0x0000A65F00C55CE3 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (268, 32, N'其他', N'其他', 268, 0, 0, CAST(0x0000A65F00C55CE3 AS DateTime), CAST(0x0000A65F00C55CE3 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (269, 33, N'其他', N'其他', 269, 0, 0, CAST(0x0000A65F00C55CE3 AS DateTime), CAST(0x0000A65F00C55CE3 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (270, 34, N'其他', N'其他', 270, 0, 0, CAST(0x0000A65F00C55CE3 AS DateTime), CAST(0x0000A65F00C55CE3 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (271, 35, N'其他', N'其他', 271, 0, 0, CAST(0x0000A65F00C55CE3 AS DateTime), CAST(0x0000A65F00C55CE3 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (272, 13, N'潜江市', N'潜江市', 272, 0, 0, CAST(0x0000A65F00C55CE3 AS DateTime), CAST(0x0000A65F00C55CE3 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (273, 8, N'黔东南州', N'黔东南州', 273, 0, 0, CAST(0x0000A65F00C55CE4 AS DateTime), CAST(0x0000A65F00C55CE4 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (274, 8, N'黔南州', N'黔南州', 274, 0, 0, CAST(0x0000A65F00C55CE4 AS DateTime), CAST(0x0000A65F00C55CE4 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (275, 8, N'黔西南州', N'黔西南州', 275, 0, 0, CAST(0x0000A65F00C55CE4 AS DateTime), CAST(0x0000A65F00C55CE4 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (276, 7, N'钦州市', N'钦州市', 276, 0, 0, CAST(0x0000A65F00C55CE4 AS DateTime), CAST(0x0000A65F00C55CE4 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (277, 10, N'秦皇岛市', N'秦皇岛市', 277, 0, 0, CAST(0x0000A65F00C55CE4 AS DateTime), CAST(0x0000A65F00C55CE4 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (278, 23, N'青岛市', N'青岛市', 278, 0, 0, CAST(0x0000A65F00C55CE4 AS DateTime), CAST(0x0000A65F00C55CE4 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (279, 6, N'清远市', N'清远市', 279, 0, 0, CAST(0x0000A65F00C55CE4 AS DateTime), CAST(0x0000A65F00C55CE4 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (280, 5, N'庆阳市', N'庆阳市', 280, 0, 0, CAST(0x0000A65F00C55CE4 AS DateTime), CAST(0x0000A65F00C55CE4 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (281, 9, N'琼海市', N'琼海市', 281, 0, 0, CAST(0x0000A65F00C55CE4 AS DateTime), CAST(0x0000A65F00C55CE4 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (282, 9, N'琼中县', N'琼中县', 282, 0, 0, CAST(0x0000A65F00C55CE5 AS DateTime), CAST(0x0000A65F00C55CE5 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (283, 33, N'曲靖市', N'曲靖市', 283, 0, 0, CAST(0x0000A65F00C55CE5 AS DateTime), CAST(0x0000A65F00C55CE5 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (284, 34, N'衢州市', N'衢州市', 284, 0, 0, CAST(0x0000A65F00C55CE5 AS DateTime), CAST(0x0000A65F00C55CE5 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (285, 4, N'泉州市', N'泉州市', 285, 0, 0, CAST(0x0000A65F00C55CE5 AS DateTime), CAST(0x0000A65F00C55CE5 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (286, 30, N'日喀则地区', N'日喀则地区', 286, 0, 0, CAST(0x0000A65F00C55CE5 AS DateTime), CAST(0x0000A65F00C55CE5 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (287, 23, N'日照市', N'日照市', 287, 0, 0, CAST(0x0000A65F00C55CE5 AS DateTime), CAST(0x0000A65F00C55CE5 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (288, 34, N'瑞安市', N'瑞安市', 288, 0, 0, CAST(0x0000A65F00C55CE5 AS DateTime), CAST(0x0000A65F00C55CE5 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (289, 33, N'瑞丽市', N'瑞丽市', 289, 0, 0, CAST(0x0000A65F00C55CE5 AS DateTime), CAST(0x0000A65F00C55CE5 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (290, 11, N'三门峡市', N'三门峡市', 290, 0, 0, CAST(0x0000A65F00C55CE6 AS DateTime), CAST(0x0000A65F00C55CE6 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (291, 4, N'三明市', N'三明市', 291, 0, 0, CAST(0x0000A65F00C55CE6 AS DateTime), CAST(0x0000A65F00C55CE6 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (292, 9, N'三亚市', N'三亚市', 292, 0, 0, CAST(0x0000A65F00C55CE6 AS DateTime), CAST(0x0000A65F00C55CE6 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (293, 30, N'山南地区', N'山南地区', 293, 0, 0, CAST(0x0000A65F00C55CE6 AS DateTime), CAST(0x0000A65F00C55CE6 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (294, 6, N'汕头市', N'汕头市', 294, 0, 0, CAST(0x0000A65F00C55CE6 AS DateTime), CAST(0x0000A65F00C55CE6 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (295, 6, N'汕尾市', N'汕尾市', 295, 0, 0, CAST(0x0000A65F00C55CE6 AS DateTime), CAST(0x0000A65F00C55CE6 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (296, 25, N'商洛市', N'商洛市', 296, 0, 0, CAST(0x0000A65F00C55CE6 AS DateTime), CAST(0x0000A65F00C55CE6 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (297, 11, N'商丘市', N'商丘市', 297, 0, 0, CAST(0x0000A65F00C55CE6 AS DateTime), CAST(0x0000A65F00C55CE6 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (298, 26, N'上海市', N'上海市', 298, 0, 0, CAST(0x0000A65F00C55CE6 AS DateTime), CAST(0x0000A65F00C55CE6 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (299, 17, N'上饶市', N'上饶市', 299, 0, 0, CAST(0x0000A65F00C55CE7 AS DateTime), CAST(0x0000A65F00C55CE7 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (300, 6, N'韶关市', N'韶关市', 300, 0, 0, CAST(0x0000A65F00C55CE7 AS DateTime), CAST(0x0000A65F00C55CE7 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (301, 14, N'邵阳市', N'邵阳市', 301, 0, 0, CAST(0x0000A65F00C55CE7 AS DateTime), CAST(0x0000A65F00C55CE7 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (302, 34, N'绍兴市', N'绍兴市', 302, 0, 0, CAST(0x0000A65F00C55CE7 AS DateTime), CAST(0x0000A65F00C55CE7 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (303, 6, N'深圳市', N'深圳市', 303, 0, 0, CAST(0x0000A65F00C55CF4 AS DateTime), CAST(0x0000A65F00C55CF4 AS DateTime), NULL, 1)
GO
print 'Processed 300 total records'
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (304, 18, N'沈阳市', N'沈阳市', 304, 0, 0, CAST(0x0000A65F00C55CF4 AS DateTime), CAST(0x0000A65F00C55CF4 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (305, 13, N'十堰市', N'十堰市', 305, 0, 0, CAST(0x0000A65F00C55CF4 AS DateTime), CAST(0x0000A65F00C55CF4 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (306, 32, N'石河子市', N'石河子市', 306, 0, 0, CAST(0x0000A65F00C55CF4 AS DateTime), CAST(0x0000A65F00C55CF4 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (307, 10, N'石家庄市', N'石家庄市', 307, 0, 0, CAST(0x0000A65F00C55CF4 AS DateTime), CAST(0x0000A65F00C55CF4 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (308, 20, N'石嘴山市', N'石嘴山市', 308, 0, 0, CAST(0x0000A65F00C55CF4 AS DateTime), CAST(0x0000A65F00C55CF4 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (309, 12, N'双鸭山市', N'双鸭山市', 309, 0, 0, CAST(0x0000A65F00C55CF4 AS DateTime), CAST(0x0000A65F00C55CF4 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (310, 6, N'顺德市', N'顺德市', 310, 0, 0, CAST(0x0000A65F00C55CFE AS DateTime), CAST(0x0000A65F00C55CFE AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (311, 24, N'朔州市', N'朔州市', 311, 0, 0, CAST(0x0000A65F00C55D02 AS DateTime), CAST(0x0000A65F00C55D02 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (312, 33, N'思茅市', N'思茅市', 312, 0, 0, CAST(0x0000A65F00C55D02 AS DateTime), CAST(0x0000A65F00C55D02 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (313, 15, N'四平市', N'四平市', 313, 0, 0, CAST(0x0000A65F00C55D0C AS DateTime), CAST(0x0000A65F00C55D0C AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (314, 15, N'松原市', N'松原市', 314, 0, 0, CAST(0x0000A65F00C55D0D AS DateTime), CAST(0x0000A65F00C55D0D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (315, 16, N'苏州市', N'苏州市', 315, 0, 0, CAST(0x0000A65F00C55D0D AS DateTime), CAST(0x0000A65F00C55D0D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (316, 16, N'宿迁市', N'宿迁市', 316, 0, 0, CAST(0x0000A65F00C55D0D AS DateTime), CAST(0x0000A65F00C55D0D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (317, 1, N'宿州市', N'宿州市', 317, 0, 0, CAST(0x0000A65F00C55D0D AS DateTime), CAST(0x0000A65F00C55D0D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (318, 12, N'绥化市', N'绥化市', 318, 0, 0, CAST(0x0000A65F00C55D0D AS DateTime), CAST(0x0000A65F00C55D0D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (319, 13, N'随州市', N'随州市', 319, 0, 0, CAST(0x0000A65F00C55D0D AS DateTime), CAST(0x0000A65F00C55D0D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (320, 27, N'遂宁市', N'遂宁市', 320, 0, 0, CAST(0x0000A65F00C55D11 AS DateTime), CAST(0x0000A65F00C55D11 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (321, 32, N'塔城地区', N'塔城地区', 321, 0, 0, CAST(0x0000A65F00C55D13 AS DateTime), CAST(0x0000A65F00C55D13 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (322, 28, N'台北市', N'台北市', 322, 0, 0, CAST(0x0000A65F00C55D13 AS DateTime), CAST(0x0000A65F00C55D13 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (323, 28, N'台北县', N'台北县', 323, 0, 0, CAST(0x0000A65F00C55D14 AS DateTime), CAST(0x0000A65F00C55D14 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (324, 28, N'台东县', N'台东县', 324, 0, 0, CAST(0x0000A65F00C55D14 AS DateTime), CAST(0x0000A65F00C55D14 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (325, 28, N'台南市', N'台南市', 325, 0, 0, CAST(0x0000A65F00C55D16 AS DateTime), CAST(0x0000A65F00C55D16 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (326, 28, N'台南县', N'台南县', 326, 0, 0, CAST(0x0000A65F00C55D16 AS DateTime), CAST(0x0000A65F00C55D16 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (327, 28, N'台中市', N'台中市', 327, 0, 0, CAST(0x0000A65F00C55D19 AS DateTime), CAST(0x0000A65F00C55D19 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (328, 28, N'台中县', N'台中县', 328, 0, 0, CAST(0x0000A65F00C55D19 AS DateTime), CAST(0x0000A65F00C55D19 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (329, 34, N'台州市', N'台州市', 329, 0, 0, CAST(0x0000A65F00C55D19 AS DateTime), CAST(0x0000A65F00C55D19 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (330, 24, N'太原市', N'太原市', 330, 0, 0, CAST(0x0000A65F00C55D19 AS DateTime), CAST(0x0000A65F00C55D19 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (331, 23, N'泰安市', N'泰安市', 331, 0, 0, CAST(0x0000A65F00C55D1A AS DateTime), CAST(0x0000A65F00C55D1A AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (332, 16, N'泰州市', N'泰州市', 332, 0, 0, CAST(0x0000A65F00C55D1A AS DateTime), CAST(0x0000A65F00C55D1A AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (333, 10, N'唐山市', N'唐山市', 333, 0, 0, CAST(0x0000A65F00C55D1A AS DateTime), CAST(0x0000A65F00C55D1A AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (334, 28, N'桃园县', N'桃园县', 334, 0, 0, CAST(0x0000A65F00C55D1A AS DateTime), CAST(0x0000A65F00C55D1A AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (335, 29, N'天津市', N'天津市', 335, 0, 0, CAST(0x0000A65F00C55D1D AS DateTime), CAST(0x0000A65F00C55D1D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (336, 13, N'天门市', N'天门市', 336, 0, 0, CAST(0x0000A65F00C55D1D AS DateTime), CAST(0x0000A65F00C55D1D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (337, 5, N'天水市', N'天水市', 337, 0, 0, CAST(0x0000A65F00C55D22 AS DateTime), CAST(0x0000A65F00C55D22 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (338, 18, N'铁岭市', N'铁岭市', 338, 0, 0, CAST(0x0000A65F00C55D23 AS DateTime), CAST(0x0000A65F00C55D23 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (339, 15, N'通化市', N'通化市', 339, 0, 0, CAST(0x0000A65F00C55D27 AS DateTime), CAST(0x0000A65F00C55D27 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (340, 19, N'通辽市', N'通辽市', 340, 0, 0, CAST(0x0000A65F00C55D27 AS DateTime), CAST(0x0000A65F00C55D27 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (341, 25, N'铜川市', N'铜川市', 341, 0, 0, CAST(0x0000A65F00C55D27 AS DateTime), CAST(0x0000A65F00C55D27 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (342, 1, N'铜陵市', N'铜陵市', 342, 0, 0, CAST(0x0000A65F00C55D27 AS DateTime), CAST(0x0000A65F00C55D27 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (343, 8, N'铜仁地区', N'铜仁地区', 343, 0, 0, CAST(0x0000A65F00C55D29 AS DateTime), CAST(0x0000A65F00C55D29 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (344, 32, N'吐鲁番地区', N'吐鲁番地区', 344, 0, 0, CAST(0x0000A65F00C55D2B AS DateTime), CAST(0x0000A65F00C55D2B AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (345, 9, N'屯昌县', N'屯昌县', 345, 0, 0, CAST(0x0000A65F00C55D2C AS DateTime), CAST(0x0000A65F00C55D2C AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (346, 9, N'万宁市', N'万宁市', 346, 0, 0, CAST(0x0000A65F00C55D2C AS DateTime), CAST(0x0000A65F00C55D2C AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (347, 23, N'威海市', N'威海市', 347, 0, 0, CAST(0x0000A65F00C55D2C AS DateTime), CAST(0x0000A65F00C55D2C AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (348, 23, N'潍坊市', N'潍坊市', 348, 0, 0, CAST(0x0000A65F00C55D2D AS DateTime), CAST(0x0000A65F00C55D2D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (349, 25, N'渭南市', N'渭南市', 349, 0, 0, CAST(0x0000A65F00C55D2D AS DateTime), CAST(0x0000A65F00C55D2D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (350, 34, N'温州市', N'温州市', 350, 0, 0, CAST(0x0000A65F00C55D2D AS DateTime), CAST(0x0000A65F00C55D2D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (351, 9, N'文昌市', N'文昌市', 351, 0, 0, CAST(0x0000A65F00C55D2D AS DateTime), CAST(0x0000A65F00C55D2D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (352, 33, N'文山州', N'文山州', 352, 0, 0, CAST(0x0000A65F00C55D2D AS DateTime), CAST(0x0000A65F00C55D2D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (353, 19, N'乌海市', N'乌海市', 353, 0, 0, CAST(0x0000A65F00C55D2E AS DateTime), CAST(0x0000A65F00C55D2E AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (354, 19, N'乌兰察布市', N'乌兰察布市', 354, 0, 0, CAST(0x0000A65F00C55D30 AS DateTime), CAST(0x0000A65F00C55D30 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (355, 32, N'乌鲁木齐市', N'乌鲁木齐市', 355, 0, 0, CAST(0x0000A65F00C55D30 AS DateTime), CAST(0x0000A65F00C55D30 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (356, 16, N'无锡市', N'无锡市', 356, 0, 0, CAST(0x0000A65F00C55D30 AS DateTime), CAST(0x0000A65F00C55D30 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (357, 20, N'吴忠市', N'吴忠市', 357, 0, 0, CAST(0x0000A65F00C55D31 AS DateTime), CAST(0x0000A65F00C55D31 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (358, 1, N'芜湖市', N'芜湖市', 358, 0, 0, CAST(0x0000A65F00C55D32 AS DateTime), CAST(0x0000A65F00C55D32 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (359, 7, N'梧州市', N'梧州市', 359, 0, 0, CAST(0x0000A65F00C55D32 AS DateTime), CAST(0x0000A65F00C55D32 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (360, 9, N'五指山市', N'五指山市', 360, 0, 0, CAST(0x0000A65F00C55D32 AS DateTime), CAST(0x0000A65F00C55D32 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (361, 13, N'武汉市', N'武汉市', 361, 0, 0, CAST(0x0000A65F00C55D32 AS DateTime), CAST(0x0000A65F00C55D32 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (362, 5, N'武威市', N'武威市', 362, 0, 0, CAST(0x0000A65F00C55D32 AS DateTime), CAST(0x0000A65F00C55D32 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (363, 25, N'西安市', N'西安市', 363, 0, 0, CAST(0x0000A65F00C55D32 AS DateTime), CAST(0x0000A65F00C55D32 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (364, 22, N'西宁市', N'西宁市', 364, 0, 0, CAST(0x0000A65F00C55D32 AS DateTime), CAST(0x0000A65F00C55D32 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (365, 33, N'西双版纳州', N'西双版纳州', 365, 0, 0, CAST(0x0000A65F00C55D32 AS DateTime), CAST(0x0000A65F00C55D32 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (366, 19, N'锡林郭勒盟', N'锡林郭勒盟', 366, 0, 0, CAST(0x0000A65F00C55D35 AS DateTime), CAST(0x0000A65F00C55D35 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (367, 4, N'厦门市', N'厦门市', 367, 0, 0, CAST(0x0000A65F00C55D36 AS DateTime), CAST(0x0000A65F00C55D36 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (368, 13, N'仙桃市', N'仙桃市', 368, 0, 0, CAST(0x0000A65F00C55D36 AS DateTime), CAST(0x0000A65F00C55D36 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (369, 13, N'咸宁市', N'咸宁市', 369, 0, 0, CAST(0x0000A65F00C55D36 AS DateTime), CAST(0x0000A65F00C55D36 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (370, 25, N'咸阳市', N'咸阳市', 370, 0, 0, CAST(0x0000A65F00C55D36 AS DateTime), CAST(0x0000A65F00C55D36 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (371, 31, N'香港特区', N'香港特区', 371, 0, 0, CAST(0x0000A65F00C55D36 AS DateTime), CAST(0x0000A65F00C55D36 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (372, 14, N'湘潭市', N'湘潭市', 372, 0, 0, CAST(0x0000A65F00C55D3B AS DateTime), CAST(0x0000A65F00C55D3B AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (373, 14, N'湘西州', N'湘西州', 373, 0, 0, CAST(0x0000A65F00C55D3C AS DateTime), CAST(0x0000A65F00C55D3C AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (374, 13, N'襄樊市', N'襄樊市', 374, 0, 0, CAST(0x0000A65F00C55D3D AS DateTime), CAST(0x0000A65F00C55D3D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (375, 13, N'孝感市', N'孝感市', 375, 0, 0, CAST(0x0000A65F00C55D40 AS DateTime), CAST(0x0000A65F00C55D40 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (376, 24, N'忻州市', N'忻州市', 376, 0, 0, CAST(0x0000A65F00C55D43 AS DateTime), CAST(0x0000A65F00C55D43 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (377, 11, N'新乡市', N'新乡市', 377, 0, 0, CAST(0x0000A65F00C55D44 AS DateTime), CAST(0x0000A65F00C55D44 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (378, 17, N'新余市', N'新余市', 378, 0, 0, CAST(0x0000A65F00C55D45 AS DateTime), CAST(0x0000A65F00C55D45 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (379, 28, N'新竹市', N'新竹市', 379, 0, 0, CAST(0x0000A65F00C55D45 AS DateTime), CAST(0x0000A65F00C55D45 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (380, 28, N'新竹县', N'新竹县', 380, 0, 0, CAST(0x0000A65F00C55D45 AS DateTime), CAST(0x0000A65F00C55D45 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (381, 11, N'信阳市', N'信阳市', 381, 0, 0, CAST(0x0000A65F00C55D48 AS DateTime), CAST(0x0000A65F00C55D48 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (382, 19, N'兴安盟', N'兴安盟', 382, 0, 0, CAST(0x0000A65F00C55D49 AS DateTime), CAST(0x0000A65F00C55D49 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (383, 10, N'邢台市', N'邢台市', 383, 0, 0, CAST(0x0000A65F00C55D49 AS DateTime), CAST(0x0000A65F00C55D49 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (384, 16, N'徐州市', N'徐州市', 384, 0, 0, CAST(0x0000A65F00C55D4C AS DateTime), CAST(0x0000A65F00C55D4C AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (385, 11, N'许昌市', N'许昌市', 385, 0, 0, CAST(0x0000A65F00C55D4C AS DateTime), CAST(0x0000A65F00C55D4C AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (386, 1, N'宣城市', N'宣城市', 386, 0, 0, CAST(0x0000A65F00C55D4D AS DateTime), CAST(0x0000A65F00C55D4D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (387, 27, N'雅安市', N'雅安市', 387, 0, 0, CAST(0x0000A65F00C55D4E AS DateTime), CAST(0x0000A65F00C55D4E AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (388, 23, N'烟台市', N'烟台市', 388, 0, 0, CAST(0x0000A65F00C55D4F AS DateTime), CAST(0x0000A65F00C55D4F AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (389, 25, N'延安市', N'延安市', 389, 0, 0, CAST(0x0000A65F00C55D4F AS DateTime), CAST(0x0000A65F00C55D4F AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (390, 15, N'延边州', N'延边州', 390, 0, 0, CAST(0x0000A65F00C55D4F AS DateTime), CAST(0x0000A65F00C55D4F AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (391, 16, N'盐城市', N'盐城市', 391, 0, 0, CAST(0x0000A65F00C55D4F AS DateTime), CAST(0x0000A65F00C55D4F AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (392, 16, N'扬中市', N'扬中市', 392, 0, 0, CAST(0x0000A65F00C55D51 AS DateTime), CAST(0x0000A65F00C55D51 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (393, 16, N'扬州市', N'扬州市', 393, 0, 0, CAST(0x0000A65F00C55D51 AS DateTime), CAST(0x0000A65F00C55D51 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (394, 6, N'阳江市', N'阳江市', 394, 0, 0, CAST(0x0000A65F00C55D52 AS DateTime), CAST(0x0000A65F00C55D52 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (395, 24, N'阳泉市', N'阳泉市', 395, 0, 0, CAST(0x0000A65F00C55D52 AS DateTime), CAST(0x0000A65F00C55D52 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (396, 12, N'伊春市', N'伊春市', 396, 0, 0, CAST(0x0000A65F00C55D52 AS DateTime), CAST(0x0000A65F00C55D52 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (397, 32, N'伊犁州', N'伊犁州', 397, 0, 0, CAST(0x0000A65F00C55D52 AS DateTime), CAST(0x0000A65F00C55D52 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (398, 27, N'宜宾市', N'宜宾市', 398, 0, 0, CAST(0x0000A65F00C55D58 AS DateTime), CAST(0x0000A65F00C55D58 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (399, 13, N'宜昌市', N'宜昌市', 399, 0, 0, CAST(0x0000A65F00C55D5B AS DateTime), CAST(0x0000A65F00C55D5B AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (400, 17, N'宜春市', N'宜春市', 400, 0, 0, CAST(0x0000A65F00C55D5B AS DateTime), CAST(0x0000A65F00C55D5B AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (401, 28, N'宜兰县', N'宜兰县', 401, 0, 0, CAST(0x0000A65F00C55D5C AS DateTime), CAST(0x0000A65F00C55D5C AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (402, 14, N'益阳市', N'益阳市', 402, 0, 0, CAST(0x0000A65F00C55D5C AS DateTime), CAST(0x0000A65F00C55D5C AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (403, 20, N'银川市', N'银川市', 403, 0, 0, CAST(0x0000A65F00C55D5C AS DateTime), CAST(0x0000A65F00C55D5C AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (404, 17, N'鹰潭市', N'鹰潭市', 404, 0, 0, CAST(0x0000A65F00C55D68 AS DateTime), CAST(0x0000A65F00C55D68 AS DateTime), NULL, 1)
GO
print 'Processed 400 total records'
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (405, 18, N'营口市', N'营口市', 405, 0, 0, CAST(0x0000A65F00C55D68 AS DateTime), CAST(0x0000A65F00C55D68 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (406, 14, N'永州市', N'永州市', 406, 0, 0, CAST(0x0000A65F00C55D69 AS DateTime), CAST(0x0000A65F00C55D69 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (407, 24, N'榆次市', N'榆次市', 407, 0, 0, CAST(0x0000A65F00C55D69 AS DateTime), CAST(0x0000A65F00C55D69 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (408, 25, N'榆林市', N'榆林市', 408, 0, 0, CAST(0x0000A65F00C55D69 AS DateTime), CAST(0x0000A65F00C55D69 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (409, 7, N'玉林市', N'玉林市', 409, 0, 0, CAST(0x0000A65F00C55D69 AS DateTime), CAST(0x0000A65F00C55D69 AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (410, 22, N'玉树州', N'玉树州', 410, 0, 0, CAST(0x0000A65F00C55D6C AS DateTime), CAST(0x0000A65F00C55D6C AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (411, 33, N'玉溪市', N'玉溪市', 411, 0, 0, CAST(0x0000A65F00C55D6C AS DateTime), CAST(0x0000A65F00C55D6C AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (412, 14, N'岳阳市', N'岳阳市', 412, 0, 0, CAST(0x0000A65F00C55D6C AS DateTime), CAST(0x0000A65F00C55D6C AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (413, 6, N'云浮市', N'云浮市', 413, 0, 0, CAST(0x0000A65F00C55D6C AS DateTime), CAST(0x0000A65F00C55D6C AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (414, 28, N'云林县', N'云林县', 414, 0, 0, CAST(0x0000A65F00C55D6D AS DateTime), CAST(0x0000A65F00C55D6D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (415, 24, N'运城市', N'运城市', 415, 0, 0, CAST(0x0000A65F00C55D6D AS DateTime), CAST(0x0000A65F00C55D6D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (416, 23, N'枣庄市', N'枣庄市', 416, 0, 0, CAST(0x0000A65F00C55D6D AS DateTime), CAST(0x0000A65F00C55D6D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (417, 6, N'湛江市', N'湛江市', 417, 0, 0, CAST(0x0000A65F00C55D6D AS DateTime), CAST(0x0000A65F00C55D6D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (418, 16, N'张家港市', N'张家港市', 418, 0, 0, CAST(0x0000A65F00C55D6D AS DateTime), CAST(0x0000A65F00C55D6D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (419, 14, N'张家界市', N'张家界市', 419, 0, 0, CAST(0x0000A65F00C55D6D AS DateTime), CAST(0x0000A65F00C55D6D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (420, 10, N'张家口市', N'张家口市', 420, 0, 0, CAST(0x0000A65F00C55D6D AS DateTime), CAST(0x0000A65F00C55D6D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (421, 5, N'张掖市', N'张掖市', 421, 0, 0, CAST(0x0000A65F00C55D6D AS DateTime), CAST(0x0000A65F00C55D6D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (422, 28, N'彰化县', N'彰化县', 422, 0, 0, CAST(0x0000A65F00C55D6D AS DateTime), CAST(0x0000A65F00C55D6D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (423, 4, N'漳州市', N'漳州市', 423, 0, 0, CAST(0x0000A65F00C55D6D AS DateTime), CAST(0x0000A65F00C55D6D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (424, 33, N'昭通市', N'昭通市', 424, 0, 0, CAST(0x0000A65F00C55D6D AS DateTime), CAST(0x0000A65F00C55D6D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (425, 6, N'肇庆市', N'肇庆市', 425, 0, 0, CAST(0x0000A65F00C55D6D AS DateTime), CAST(0x0000A65F00C55D6D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (426, 16, N'镇江市', N'镇江市', 426, 0, 0, CAST(0x0000A65F00C55D6D AS DateTime), CAST(0x0000A65F00C55D6D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (427, 11, N'郑州市', N'郑州市', 427, 0, 0, CAST(0x0000A65F00C55D6D AS DateTime), CAST(0x0000A65F00C55D6D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (428, 6, N'中山市', N'中山市', 428, 0, 0, CAST(0x0000A65F00C55D6D AS DateTime), CAST(0x0000A65F00C55D6D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (429, 20, N'中卫市', N'中卫市', 429, 0, 0, CAST(0x0000A65F00C55D6D AS DateTime), CAST(0x0000A65F00C55D6D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (430, 35, N'重庆市', N'重庆市', 430, 0, 0, CAST(0x0000A65F00C55D6D AS DateTime), CAST(0x0000A65F00C55D6D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (431, 34, N'舟山市', N'舟山市', 431, 0, 0, CAST(0x0000A65F00C55D6D AS DateTime), CAST(0x0000A65F00C55D6D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (432, 11, N'周口市', N'周口市', 432, 0, 0, CAST(0x0000A65F00C55D6D AS DateTime), CAST(0x0000A65F00C55D6D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (433, 14, N'株洲市', N'株洲市', 433, 0, 0, CAST(0x0000A65F00C55D6D AS DateTime), CAST(0x0000A65F00C55D6D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (434, 6, N'珠海市', N'珠海市', 434, 0, 0, CAST(0x0000A65F00C55D6D AS DateTime), CAST(0x0000A65F00C55D6D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (435, 11, N'驻马店市', N'驻马店市', 435, 0, 0, CAST(0x0000A65F00C55D6D AS DateTime), CAST(0x0000A65F00C55D6D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (436, 27, N'资阳市', N'资阳市', 436, 0, 0, CAST(0x0000A65F00C55D6D AS DateTime), CAST(0x0000A65F00C55D6D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (437, 23, N'淄博市', N'淄博市', 437, 0, 0, CAST(0x0000A65F00C55D6D AS DateTime), CAST(0x0000A65F00C55D6D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (438, 27, N'自贡市', N'自贡市', 438, 0, 0, CAST(0x0000A65F00C55D6D AS DateTime), CAST(0x0000A65F00C55D6D AS DateTime), NULL, 1)
INSERT [dbo].[city] ([id], [provinceId], [code], [name], [order], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (439, 8, N'遵义市', N'遵义市', 439, 0, 0, CAST(0x0000A65F00C55D6D AS DateTime), CAST(0x0000A65F00C55D6D AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[city] OFF
/****** Object:  Default [DF_Account_accountType]    Script Date: 11/21/2016 18:23:47 ******/
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF_Account_accountType]  DEFAULT ((1)) FOR [accountType]
GO
/****** Object:  Default [DF_city_createBy]    Script Date: 11/21/2016 18:23:47 ******/
ALTER TABLE [dbo].[city] ADD  CONSTRAINT [DF_city_createBy]  DEFAULT ((0)) FOR [createBy]
GO
/****** Object:  Default [DF_city_updateBy]    Script Date: 11/21/2016 18:23:47 ******/
ALTER TABLE [dbo].[city] ADD  CONSTRAINT [DF_city_updateBy]  DEFAULT ((0)) FOR [updateBy]
GO
/****** Object:  Default [DF_city_createTime]    Script Date: 11/21/2016 18:23:47 ******/
ALTER TABLE [dbo].[city] ADD  CONSTRAINT [DF_city_createTime]  DEFAULT (getdate()) FOR [createTime]
GO
/****** Object:  Default [DF_city_updateTime]    Script Date: 11/21/2016 18:23:47 ******/
ALTER TABLE [dbo].[city] ADD  CONSTRAINT [DF_city_updateTime]  DEFAULT (getdate()) FOR [updateTime]
GO
/****** Object:  Default [DF_city_isActive]    Script Date: 11/21/2016 18:23:47 ******/
ALTER TABLE [dbo].[city] ADD  CONSTRAINT [DF_city_isActive]  DEFAULT ((1)) FOR [isActive]
GO
/****** Object:  Default [DF_province_createBy]    Script Date: 11/21/2016 18:23:47 ******/
ALTER TABLE [dbo].[province] ADD  CONSTRAINT [DF_province_createBy]  DEFAULT ((0)) FOR [createBy]
GO
/****** Object:  Default [DF_province_updateBy]    Script Date: 11/21/2016 18:23:47 ******/
ALTER TABLE [dbo].[province] ADD  CONSTRAINT [DF_province_updateBy]  DEFAULT ((0)) FOR [updateBy]
GO
/****** Object:  Default [DF_province_createTime]    Script Date: 11/21/2016 18:23:47 ******/
ALTER TABLE [dbo].[province] ADD  CONSTRAINT [DF_province_createTime]  DEFAULT (getdate()) FOR [createTime]
GO
/****** Object:  Default [DF_province_updateTime]    Script Date: 11/21/2016 18:23:47 ******/
ALTER TABLE [dbo].[province] ADD  CONSTRAINT [DF_province_updateTime]  DEFAULT (getdate()) FOR [updateTime]
GO
/****** Object:  Default [DF_province_isActive]    Script Date: 11/21/2016 18:23:47 ******/
ALTER TABLE [dbo].[province] ADD  CONSTRAINT [DF_province_isActive]  DEFAULT ((1)) FOR [isActive]
GO
/****** Object:  Default [DF_SystemMenu_updateBitMap]    Script Date: 11/21/2016 18:23:47 ******/
ALTER TABLE [dbo].[SystemMenu] ADD  CONSTRAINT [DF_SystemMenu_updateBitMap]  DEFAULT ((0)) FOR [updateBitMap]
GO
/****** Object:  Default [DF_SystemMenu_insertBitMap]    Script Date: 11/21/2016 18:23:47 ******/
ALTER TABLE [dbo].[SystemMenu] ADD  CONSTRAINT [DF_SystemMenu_insertBitMap]  DEFAULT ((0)) FOR [insertBitMap]
GO
/****** Object:  Default [DF_SystemMenu_deleteBitMap]    Script Date: 11/21/2016 18:23:47 ******/
ALTER TABLE [dbo].[SystemMenu] ADD  CONSTRAINT [DF_SystemMenu_deleteBitMap]  DEFAULT ((0)) FOR [deleteBitMap]
GO
/****** Object:  Default [DF_SystemMenu_selectBitMap]    Script Date: 11/21/2016 18:23:47 ******/
ALTER TABLE [dbo].[SystemMenu] ADD  CONSTRAINT [DF_SystemMenu_selectBitMap]  DEFAULT ((0)) FOR [selectBitMap]
GO
/****** Object:  ForeignKey [FK_dbo.Account_dbo.person_personId]    Script Date: 11/21/2016 18:23:47 ******/
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Account_dbo.person_personId] FOREIGN KEY([personId])
REFERENCES [dbo].[person] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_dbo.Account_dbo.person_personId]
GO
/****** Object:  ForeignKey [FK_dbo.city_dbo.province_provinceId]    Script Date: 11/21/2016 18:23:47 ******/
ALTER TABLE [dbo].[city]  WITH CHECK ADD  CONSTRAINT [FK_dbo.city_dbo.province_provinceId] FOREIGN KEY([provinceId])
REFERENCES [dbo].[province] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[city] CHECK CONSTRAINT [FK_dbo.city_dbo.province_provinceId]
GO
/****** Object:  ForeignKey [FK_dbo.province_dbo.country_countryId]    Script Date: 11/21/2016 18:23:47 ******/
ALTER TABLE [dbo].[province]  WITH CHECK ADD  CONSTRAINT [FK_dbo.province_dbo.country_countryId] FOREIGN KEY([countryId])
REFERENCES [dbo].[country] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[province] CHECK CONSTRAINT [FK_dbo.province_dbo.country_countryId]
GO
/****** Object:  ForeignKey [FK_dbo.SystemAccountRole_dbo.SystemRole_roleId]    Script Date: 11/21/2016 18:23:47 ******/
ALTER TABLE [dbo].[SystemAccountRole]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SystemAccountRole_dbo.SystemRole_roleId] FOREIGN KEY([roleId])
REFERENCES [dbo].[SystemRole] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SystemAccountRole] CHECK CONSTRAINT [FK_dbo.SystemAccountRole_dbo.SystemRole_roleId]
GO

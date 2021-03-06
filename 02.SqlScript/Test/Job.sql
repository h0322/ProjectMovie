USE [HH_RMS]
GO
/****** Object:  Table [dbo].[SystemJob]    Script Date: 06/17/2016 11:17:08 ******/
SET IDENTITY_INSERT [dbo].[SystemJob] ON
INSERT [dbo].[SystemJob] ([id], [jobCode], [jobName], [jobDescription], [jobType], [jobAssembly], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (4, N'EmailServer', N'邮件服务', N'邮件服务', NULL, N'HH.RMS.Scheduler.Job.EmailJob', 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[SystemJob] OFF
/****** Object:  Table [dbo].[SystemScheduler]    Script Date: 06/17/2016 11:17:08 ******/
SET IDENTITY_INSERT [dbo].[SystemScheduler] ON
INSERT [dbo].[SystemScheduler] ([id], [jobId], [scheduleName], [scheduleDescription], [intervalType], [cronExpression], [year], [month], [day], [weekday], [hour], [minute], [second], [sqlScriptType], [sqlScript], [serverName], [siteName], [runTime], [stopTime], [createBy], [updateBy], [createTime], [updateTime], [remark], [isActive]) VALUES (7, 4, N'EmailJob', N'邮件定时任务', 0, N'0 0/1 * 1/1 * ? *', 2016, 5, 2, 1, 1, 1, 1, 0, N'0', N'Test', N'Test', NULL, NULL, 0, 0, CAST(0x0000A58000000000 AS DateTime), CAST(0x0000A58000000000 AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[SystemScheduler] OFF

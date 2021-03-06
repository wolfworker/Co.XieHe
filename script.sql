USE [XieHe]
GO
/****** Object:  Table [dbo].[SYS_RequestLog]    Script Date: 07/16/2018 23:47:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_RequestLog](
	[ID] [varchar](36) NOT NULL,
	[UserID] [int] NULL,
	[LogType] [tinyint] NULL,
	[LogTypeName] [nvarchar](50) NULL,
	[BussiessValue] [text] NULL,
	[Remark] [nvarchar](100) NULL,
	[CreatedUser] [nvarchar](100) NULL,
	[CreatedTime] [datetime] NULL,
	[UpdateUser] [nvarchar](100) NULL,
	[UpdateTime] [datetime] NULL,
 CONSTRAINT [PK_SYS_RequestLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键 GUID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_RequestLog', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_RequestLog', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_RequestLog', @level2type=N'COLUMN',@level2name=N'LogType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_RequestLog', @level2type=N'COLUMN',@level2name=N'LogTypeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注（用于拓展字段）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_RequestLog', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人（存用户id）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_RequestLog', @level2type=N'COLUMN',@level2name=N'CreatedUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_RequestLog', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新人（存用户id）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_RequestLog', @level2type=N'COLUMN',@level2name=N'UpdateUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_RequestLog', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
/****** Object:  Table [dbo].[SYS_DebugLog]    Script Date: 07/16/2018 23:47:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_DebugLog](
	[ID] [varchar](36) NOT NULL,
	[LogLevel] [tinyint] NULL,
	[LogContent] [text] NULL,
	[Remark] [nvarchar](100) NULL,
	[CreatedUser] [nvarchar](100) NULL,
	[CreatedTime] [datetime] NULL,
	[UpdateUser] [nvarchar](100) NULL,
	[UpdateTime] [datetime] NULL,
 CONSTRAINT [PK_SYS_ErrorLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志等级   1：错误  2：警告  3：正常' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_DebugLog', @level2type=N'COLUMN',@level2name=N'LogLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_DebugLog', @level2type=N'COLUMN',@level2name=N'LogContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注（用于拓展字段）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_DebugLog', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人（存用户id）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_DebugLog', @level2type=N'COLUMN',@level2name=N'CreatedUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_DebugLog', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新人（存用户id）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_DebugLog', @level2type=N'COLUMN',@level2name=N'UpdateUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYS_DebugLog', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
/****** Object:  Table [dbo].[POT_UserPointLog]    Script Date: 07/16/2018 23:47:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POT_UserPointLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[Type] [tinyint] NULL,
	[Point] [nchar](10) NULL,
	[Remark] [nvarchar](100) NULL,
	[CreatedUser] [nvarchar](100) NULL,
	[CreatedTime] [datetime] NULL,
	[UpdateUser] [nvarchar](100) NULL,
	[UpdateTime] [datetime] NULL,
 CONSTRAINT [PK_POT_UserPointLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分变更类型  1：注册  2：邀请  3：实名认证  4：管理员操作  5：其他' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'POT_UserPointLog', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分变化值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'POT_UserPointLog', @level2type=N'COLUMN',@level2name=N'Point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注（认证未通过原因等）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'POT_UserPointLog', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人（存用户id）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'POT_UserPointLog', @level2type=N'COLUMN',@level2name=N'CreatedUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'POT_UserPointLog', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新人（存用户id）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'POT_UserPointLog', @level2type=N'COLUMN',@level2name=N'UpdateUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'POT_UserPointLog', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
/****** Object:  Table [dbo].[ACT_VerifyLog]    Script Date: 07/16/2018 23:47:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ACT_VerifyLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[VerifiCode] [varchar](50) NULL,
	[ValiDate] [datetime] NULL,
	[Type] [tinyint] NULL,
	[Remark] [nvarchar](100) NULL,
	[CreatedUser] [nvarchar](100) NULL,
	[CreatedTime] [datetime] NULL,
	[UpdateUser] [nvarchar](100) NULL,
	[UpdateTime] [datetime] NULL,
 CONSTRAINT [PK_ACT_VerifyCode] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_VerifyLog', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验证码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_VerifyLog', @level2type=N'COLUMN',@level2name=N'VerifiCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验证码 有效期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_VerifyLog', @level2type=N'COLUMN',@level2name=N'ValiDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信码类型  1：注册，2：登录，3：找回密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_VerifyLog', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注（用于拓展字段）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_VerifyLog', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人（存用户id）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_VerifyLog', @level2type=N'COLUMN',@level2name=N'CreatedUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_VerifyLog', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新人（存用户id）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_VerifyLog', @level2type=N'COLUMN',@level2name=N'UpdateUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_VerifyLog', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
/****** Object:  Table [dbo].[ACT_User]    Script Date: 07/16/2018 23:47:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ACT_User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NULL,
	[Phone] [varchar](50) NULL,
	[PassChar] [nvarchar](50) NULL,
	[Mail] [nvarchar](100) NULL,
	[Gender] [tinyint] NULL,
	[Status] [tinyint] NULL,
	[InviteCode] [nvarchar](50) NULL,
	[Point] [decimal](18, 2) NULL,
	[Remark] [nvarchar](100) NULL,
	[CreatedUser] [nvarchar](100) NULL,
	[CreatedTime] [datetime] NULL,
	[UpdateUser] [nvarchar](100) NULL,
	[UpdateTime] [datetime] NULL,
 CONSTRAINT [PK_User_Account] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_User', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_User', @level2type=N'COLUMN',@level2name=N'Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码，加密后' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_User', @level2type=N'COLUMN',@level2name=N'PassChar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_User', @level2type=N'COLUMN',@level2name=N'Mail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别   1：男  2：女' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_User', @level2type=N'COLUMN',@level2name=N'Gender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1：有效  -1：无效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_User', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邀请码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_User', @level2type=N'COLUMN',@level2name=N'InviteCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注（用于拓展字段）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_User', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人（存用户id）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_User', @level2type=N'COLUMN',@level2name=N'CreatedUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_User', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新人（存用户id）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_User', @level2type=N'COLUMN',@level2name=N'UpdateUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_User', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
/****** Object:  Table [dbo].[ACT_InviteLog]    Script Date: 07/16/2018 23:47:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACT_InviteLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FromUserID] [int] NULL,
	[ToUserID] [int] NULL,
	[Remark] [nvarchar](100) NULL,
	[CreatedUser] [nvarchar](100) NULL,
	[CreatedTime] [datetime] NULL,
	[UpdateUser] [nvarchar](100) NULL,
	[UpdateTime] [datetime] NULL,
 CONSTRAINT [PK_ACT_InviteLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发出邀请用户id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_InviteLog', @level2type=N'COLUMN',@level2name=N'FromUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'被邀请用户id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_InviteLog', @level2type=N'COLUMN',@level2name=N'ToUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注（用于拓展字段）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_InviteLog', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人（存用户id）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_InviteLog', @level2type=N'COLUMN',@level2name=N'CreatedUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_InviteLog', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新人（存用户id）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_InviteLog', @level2type=N'COLUMN',@level2name=N'UpdateUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_InviteLog', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
/****** Object:  Table [dbo].[ACT_AuthentifyInfo]    Script Date: 07/16/2018 23:47:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ACT_AuthentifyInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[RealName] [nvarchar](100) NULL,
	[IDCardNo] [varchar](50) NULL,
	[CardType] [tinyint] NULL,
	[IDCardFrontUrl] [varchar](500) NULL,
	[IDCardBackUrl] [varchar](500) NULL,
	[BankCardFrontUrl] [varchar](500) NULL,
	[BankCardBackUrl] [varchar](500) NULL,
	[IDCardPersonUrl] [varchar](500) NULL,
	[CustomImageUrl] [varchar](500) NULL,
	[IsAuthentify] [tinyint] NULL,
	[Remark] [nvarchar](100) NULL,
	[CreatedUser] [nvarchar](100) NULL,
	[CreatedTime] [datetime] NULL,
	[UpdateUser] [nvarchar](100) NULL,
	[UpdateTime] [datetime] NULL,
 CONSTRAINT [PK_ACT_CertifyInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_AuthentifyInfo', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'真实姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_AuthentifyInfo', @level2type=N'COLUMN',@level2name=N'RealName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'证件号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_AuthentifyInfo', @level2type=N'COLUMN',@level2name=N'IDCardNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'认证证件类型  1：身份证  2：护照  3：港澳通行证  4：军官证' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_AuthentifyInfo', @level2type=N'COLUMN',@level2name=N'CardType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证正面 图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_AuthentifyInfo', @level2type=N'COLUMN',@level2name=N'IDCardFrontUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证反面 图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_AuthentifyInfo', @level2type=N'COLUMN',@level2name=N'IDCardBackUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'银行卡正面 图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_AuthentifyInfo', @level2type=N'COLUMN',@level2name=N'BankCardFrontUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'银行卡反面 图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_AuthentifyInfo', @level2type=N'COLUMN',@level2name=N'BankCardBackUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' 手持身份证 图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_AuthentifyInfo', @level2type=N'COLUMN',@level2name=N'IDCardPersonUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手写网站信息  图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_AuthentifyInfo', @level2type=N'COLUMN',@level2name=N'CustomImageUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实名认证状态    -1：未认证  1：进行中   2：未通过   3：已认证  ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_AuthentifyInfo', @level2type=N'COLUMN',@level2name=N'IsAuthentify'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注（认证未通过原因等）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_AuthentifyInfo', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人（存用户id）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_AuthentifyInfo', @level2type=N'COLUMN',@level2name=N'CreatedUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_AuthentifyInfo', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新人（存用户id）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_AuthentifyInfo', @level2type=N'COLUMN',@level2name=N'UpdateUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACT_AuthentifyInfo', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO

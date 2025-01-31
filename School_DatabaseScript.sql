USE [School]
GO
/****** Object:  Table [dbo].[UploadLog]    Script Date: 02/23/2018 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UploadLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SchoolId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Comments] [varchar](500) NULL,
	[FileName] [varchar](1000) NULL,
	[IsApprovalRequired] [bit] NULL,
	[IsFileValid] [bit] NULL,
	[TimeStamp] [datetime] NOT NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_UploadLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UploadLog] ON
INSERT [dbo].[UploadLog] ([Id], [SchoolId], [UserId], [Comments], [FileName], [IsApprovalRequired], [IsFileValid], [TimeStamp], [IsActive]) VALUES (1, 1, 1, N'', N'StudentExcelTemplate_1_18012018065234316.xlsx', 0, 1, CAST(0x0000A86C0137261D AS DateTime), 1)
INSERT [dbo].[UploadLog] ([Id], [SchoolId], [UserId], [Comments], [FileName], [IsApprovalRequired], [IsFileValid], [TimeStamp], [IsActive]) VALUES (2, 1, 1, N'', N'StudentExcelTemplate_19thJan2018_1_19012018020753898.xlsx', 0, 1, CAST(0x0000A86D00E964A8 AS DateTime), 1)
INSERT [dbo].[UploadLog] ([Id], [SchoolId], [UserId], [Comments], [FileName], [IsApprovalRequired], [IsFileValid], [TimeStamp], [IsActive]) VALUES (3, 1, 1, N'', N'StudentExcelTemplate_19thJan2018_1_19012018025940045.xlsx', 0, 1, CAST(0x0000A86D00F73A9C AS DateTime), 1)
INSERT [dbo].[UploadLog] ([Id], [SchoolId], [UserId], [Comments], [FileName], [IsApprovalRequired], [IsFileValid], [TimeStamp], [IsActive]) VALUES (4, 1, 1, N'', N'StudentExcelTemplate_1_19012018043538120.xlsx', 0, 1, CAST(0x0000A86D01119E43 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[UploadLog] OFF
/****** Object:  Table [dbo].[RoleDetails]    Script Date: 02/23/2018 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[RoleDetails] ON
INSERT [dbo].[RoleDetails] ([Id], [RoleName], [IsActive]) VALUES (1, N'Level 1', 1)
INSERT [dbo].[RoleDetails] ([Id], [RoleName], [IsActive]) VALUES (2, N'Level 2', 1)
SET IDENTITY_INSERT [dbo].[RoleDetails] OFF
/****** Object:  Table [dbo].[SchoolTrackingDetails]    Script Date: 02/23/2018 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SchoolTrackingDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[SchoolId] [int] NULL,
	[FileName] [varchar](200) NULL,
	[FilePath] [varchar](200) NULL,
	[Descriptions] [varchar](max) NULL,
	[TimeStamp] [datetime] NULL,
	[IsRequiredApproval] [bit] NULL,
	[IsValidFile] [bit] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_SchoolTrackingSheet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SchoolTrackingDetails] ON
INSERT [dbo].[SchoolTrackingDetails] ([Id], [UserId], [SchoolId], [FileName], [FilePath], [Descriptions], [TimeStamp], [IsRequiredApproval], [IsValidFile], [IsActive]) VALUES (1, 1, 1, N'StudentExcelTemplate_1_19012018051647930.xlsx', N'D:\Ingram Task\Student\Student Solution\StudentWebApp\Content\Uploads', N'', CAST(0x0000A86D011CEC06 AS DateTime), 0, 1, 1)
INSERT [dbo].[SchoolTrackingDetails] ([Id], [UserId], [SchoolId], [FileName], [FilePath], [Descriptions], [TimeStamp], [IsRequiredApproval], [IsValidFile], [IsActive]) VALUES (2, 1, 1, N'StudentExcelTemplate_1_22012018022556348.xlsx', N'D:\Ingram Task\Student\Student Solution\StudentWebApp\Content\Uploads', N'', CAST(0x0000A87000EE6FA9 AS DateTime), 0, 1, 1)
INSERT [dbo].[SchoolTrackingDetails] ([Id], [UserId], [SchoolId], [FileName], [FilePath], [Descriptions], [TimeStamp], [IsRequiredApproval], [IsValidFile], [IsActive]) VALUES (3, 1, 1, N'StudentExcelTemplate_1_22012018022847936.xlsx', N'D:\Ingram Task\Student\Student Solution\StudentWebApp\Content\Uploads', N'', CAST(0x0000A87000EEA6AA AS DateTime), 0, 1, 1)
INSERT [dbo].[SchoolTrackingDetails] ([Id], [UserId], [SchoolId], [FileName], [FilePath], [Descriptions], [TimeStamp], [IsRequiredApproval], [IsValidFile], [IsActive]) VALUES (4, 1, 1, N'StudentExcelTemplate_1_22012018023000502.xlsx', N'D:\Ingram Task\Student\Student Solution\StudentWebApp\Content\Uploads', N'', CAST(0x0000A87000EF05BF AS DateTime), 0, 1, 1)
INSERT [dbo].[SchoolTrackingDetails] ([Id], [UserId], [SchoolId], [FileName], [FilePath], [Descriptions], [TimeStamp], [IsRequiredApproval], [IsValidFile], [IsActive]) VALUES (5, 1, 1, N'StudentExcelTemplate_1_22012018.xlsx', N'D:\Ingram Task\Student\Student Solution\StudentWebApp\Content\Uploads', N'', CAST(0x0000A870013A9865 AS DateTime), 0, 1, 1)
INSERT [dbo].[SchoolTrackingDetails] ([Id], [UserId], [SchoolId], [FileName], [FilePath], [Descriptions], [TimeStamp], [IsRequiredApproval], [IsValidFile], [IsActive]) VALUES (6, 1, 1, N'StudentExcelTemplate_19thJan2018 - HeaderNotInOrder_1_23012018.xlsx', N'D:\Ingram Task\Student\Student Solution\StudentWebApp\Content\Uploads', N'The template you are trying to upload is not valid. Please place header column in correct order', CAST(0x0000A871012975D0 AS DateTime), 1, 0, 1)
INSERT [dbo].[SchoolTrackingDetails] ([Id], [UserId], [SchoolId], [FileName], [FilePath], [Descriptions], [TimeStamp], [IsRequiredApproval], [IsValidFile], [IsActive]) VALUES (7, 1, 1, N'StudentExcelTemplate_19thJan2018 - HeaderNotInOrder_1_23012018.xlsx', N'D:\Ingram Task\Student\Student Solution\StudentWebApp\Content\Uploads', N'The template you are trying to upload is not valid. Please place header column in correct order', CAST(0x0000A871012B9BC7 AS DateTime), 1, 0, 1)
INSERT [dbo].[SchoolTrackingDetails] ([Id], [UserId], [SchoolId], [FileName], [FilePath], [Descriptions], [TimeStamp], [IsRequiredApproval], [IsValidFile], [IsActive]) VALUES (8, 1, 1, N'StudentExcelTemplate_19thJan2018 - HeaderNotInOrder_1_23012018.xlsx', N'D:\Ingram Task\Student\Student Solution\StudentWebApp\Content\Uploads', N'The template you are trying to upload is not valid. Please place header column in correct order', CAST(0x0000A871012C55D4 AS DateTime), 1, 0, 1)
INSERT [dbo].[SchoolTrackingDetails] ([Id], [UserId], [SchoolId], [FileName], [FilePath], [Descriptions], [TimeStamp], [IsRequiredApproval], [IsValidFile], [IsActive]) VALUES (9, 1, 1, N'StudentExcelTemplate_19thJan2018 - HeaderNotInOrder_1_23012018.xlsx', N'D:\Ingram Task\Student\Student Solution\StudentWebApp\Content\Uploads', N'The template you are trying to upload is not valid. Please place header column in correct order', CAST(0x0000A871012C7CFC AS DateTime), 1, 0, 1)
INSERT [dbo].[SchoolTrackingDetails] ([Id], [UserId], [SchoolId], [FileName], [FilePath], [Descriptions], [TimeStamp], [IsRequiredApproval], [IsValidFile], [IsActive]) VALUES (10, 1, 1, N'StudentExcelTemplate_19thJan2018 - HeaderNotInOrder_1_23012018.xlsx', N'D:\Ingram Task\Student\Student Solution\StudentWebApp\Content\Uploads', N'The template you are trying to upload is not valid. Please place header column in correct order', CAST(0x0000A87101321434 AS DateTime), 1, 0, 1)
INSERT [dbo].[SchoolTrackingDetails] ([Id], [UserId], [SchoolId], [FileName], [FilePath], [Descriptions], [TimeStamp], [IsRequiredApproval], [IsValidFile], [IsActive]) VALUES (11, 1, 1, N'StudentExcelTemplate_19thJan2018 - HeaderNotInOrder_1_23012018.xlsx', N'D:\Ingram Task\Student\Student Solution\StudentWebApp\Content\Uploads', N'The template you are trying to upload is not valid. Please place header column in correct order', CAST(0x0000A871013678FE AS DateTime), 1, 0, 1)
INSERT [dbo].[SchoolTrackingDetails] ([Id], [UserId], [SchoolId], [FileName], [FilePath], [Descriptions], [TimeStamp], [IsRequiredApproval], [IsValidFile], [IsActive]) VALUES (12, 1, 1, N'StudentExcelTemplate_19thJan2018 - HeaderNotInOrder_1_23012018.xlsx', N'D:\Ingram Task\Student\Student Solution\StudentWebApp\Content\Uploads', N'The template you are trying to upload is not valid. Please place header column in correct order', CAST(0x0000A871013742BA AS DateTime), 1, 0, 1)
SET IDENTITY_INSERT [dbo].[SchoolTrackingDetails] OFF
/****** Object:  Table [dbo].[SchoolDetails]    Script Date: 02/23/2018 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchoolDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SchoolName] [nvarchar](500) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_SchoolDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SchoolDetails] ON
INSERT [dbo].[SchoolDetails] ([Id], [SchoolName], [IsActive]) VALUES (1, N'Prime Academy', 1)
INSERT [dbo].[SchoolDetails] ([Id], [SchoolName], [IsActive]) VALUES (2, N'Smart Beez Play School', 1)
INSERT [dbo].[SchoolDetails] ([Id], [SchoolName], [IsActive]) VALUES (3, N'Canossa High School', 1)
INSERT [dbo].[SchoolDetails] ([Id], [SchoolName], [IsActive]) VALUES (4, N'Hasanat High School', 1)
INSERT [dbo].[SchoolDetails] ([Id], [SchoolName], [IsActive]) VALUES (5, N'Holy Family High School', 1)
SET IDENTITY_INSERT [dbo].[SchoolDetails] OFF
/****** Object:  StoredProcedure [dbo].[SaveSchoolTrackingDetails]    Script Date: 02/23/2018 10:54:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Dasharath
-- Create date: 18-01-2018
-- Description:	Insert uploaded Excel file log
-- =============================================
CREATE PROCEDURE [dbo].[SaveSchoolTrackingDetails] 
	@SchoolId int,
	@UserId	int,
	@Descriptions varchar(MAX),
	@FileName varchar(200),
	@FilePath varchar(200),
	@IsApprovalRequired	bit,
	@IsFileValid bit
AS
BEGIN
	SET NOCOUNT ON;

    INSERT INTO [School].[dbo].[SchoolTrackingDetails]
           ([SchoolId]
           ,[UserId]
           ,[Descriptions]
           ,[FileName]
           ,[FilePath]
           ,[IsRequiredApproval]
           ,[IsValidFile]
           ,[TimeStamp]
           ,[IsActive])
     VALUES
           (@SchoolId
           ,@UserId
           ,@Descriptions
           ,@FileName
           ,@FilePath
           ,@IsApprovalRequired
           ,@IsFileValid
           ,GETDATE()
           ,1)

END
GO
/****** Object:  Table [dbo].[UserDetails]    Script Date: 02/23/2018 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](150) NOT NULL,
	[Password] [nvarchar](150) NULL,
	[RoleId] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_UserDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UserDetails] ON
INSERT [dbo].[UserDetails] ([Id], [UserName], [Password], [RoleId], [IsActive], [CreateDate]) VALUES (1, N'Sudipta', N'Sudipta', 1, 1, CAST(0x0000A87700C37C88 AS DateTime))
SET IDENTITY_INSERT [dbo].[UserDetails] OFF
/****** Object:  Table [dbo].[StudentDetailsStaging]    Script Date: 02/23/2018 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentDetailsStaging](
	[StudentId] [int] NOT NULL,
	[UserId] [int] NULL,
	[SchoolId] [int] NULL,
	[Name] [varchar](150) NULL,
	[RollNo] [nvarchar](150) NULL,
	[Math] [int] NULL,
	[English] [int] NULL,
	[Physics] [int] NULL,
	[CreateDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_SudentDetailsStaging] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudentDetails]    Script Date: 02/23/2018 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentDetails](
	[StudentId] [int] NOT NULL,
	[SchoolId] [int] NOT NULL,
	[UserId] [int] NULL,
	[Name] [varchar](150) NULL,
	[RollNo] [nvarchar](150) NULL,
	[Math] [int] NULL,
	[English] [int] NULL,
	[Physics] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_StudentDetails] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[StudentDetails] ([StudentId], [SchoolId], [UserId], [Name], [RollNo], [Math], [English], [Physics], [CreateDate], [UpdateDate], [IsActive]) VALUES (1, 1, 1, N'Navneet', N'101', 75, 80, 60, CAST(0x0000A87000EE33B0 AS DateTime), CAST(0x0000A8710131F50C AS DateTime), 1)
INSERT [dbo].[StudentDetails] ([StudentId], [SchoolId], [UserId], [Name], [RollNo], [Math], [English], [Physics], [CreateDate], [UpdateDate], [IsActive]) VALUES (2, 1, 1, N'Dasharath', N'102', 90, 85, 80, CAST(0x0000A87000EE344C AS DateTime), CAST(0x0000A8710131F50C AS DateTime), 1)
INSERT [dbo].[StudentDetails] ([StudentId], [SchoolId], [UserId], [Name], [RollNo], [Math], [English], [Physics], [CreateDate], [UpdateDate], [IsActive]) VALUES (3, 1, 1, N'Bharat', N'103', 45, 89, 23, CAST(0x0000A87000EE344C AS DateTime), CAST(0x0000A8710131F50C AS DateTime), 1)
INSERT [dbo].[StudentDetails] ([StudentId], [SchoolId], [UserId], [Name], [RollNo], [Math], [English], [Physics], [CreateDate], [UpdateDate], [IsActive]) VALUES (4, 1, 1, N'Sudipta', N'104', 78, 45, 89, CAST(0x0000A87000EE344C AS DateTime), CAST(0x0000A8710131F50C AS DateTime), 1)
/****** Object:  StoredProcedure [dbo].[AuthenticateUser]    Script Date: 02/23/2018 10:54:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Dasharath
-- Create date: 29-Jan-2018
-- Description:	Authentcate user
-- =============================================
CREATE PROCEDURE [dbo].[AuthenticateUser]
	@LoginID VARCHAR(20),
	@Password NVARCHAR(50)
AS
BEGIN
	SET NOCOUNT ON;

    SELECT TOP 1 UserName 
    FROM UserDetails
    WHERE UserName=@LoginID
    AND [Password]=@Password
    
END
GO
/****** Object:  StoredProcedure [dbo].[AddUpdateStudents]    Script Date: 02/23/2018 10:54:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Dasharath
-- Create date: 22-01-2018	
-- Description:	Add/Update student details from StudentDetailsStaging table to StudentDeatils table
-- =============================================
CREATE PROCEDURE [dbo].[AddUpdateStudents]
	
AS
BEGIN
	SET NOCOUNT ON;

	--Update StudentDetails from StudentDetailsStating, if same data uploaded again with some changes
	UPDATE stud SET
		stud.Name=staging.Name,
		stud.UserId=staging.UserId,
		stud.RollNo=staging.RollNo,
		stud.Math=staging.Math,
		stud.English=staging.English,
		stud.Physics=staging.Physics,
		stud.UpdateDate=GETDATE(),
		stud.IsActive=1
	from StudentDetails stud
	JOIN StudentDetailsStaging staging on stud.StudentId= staging.StudentId 
										AND stud.SchoolId=staging.SchoolId
										
										
	--Insert newly added StudentDetails
	INSERT INTO StudentDetails(
				StudentId,
				SchoolId,
				UserId,
				Name,
				RollNo,
				Math,
				English,
				Physics,
				CreateDate,
				IsActive)
	SELECT staging.StudentId,
				staging.SchoolId,
				staging.UserId,
				staging.Name,
				staging.RollNo,
				staging.Math,
				staging.English,
				staging.Physics,
				GETDATE(),
				1
	FROM StudentDetailsStaging staging
	LEFT JOIN StudentDetails stud on staging.StudentId = stud.StudentId
						and staging.SchoolId = stud.SchoolId
	WHERE stud.StudentId is null
	
	-- Delete StudentDetailsStaging data after student details Add and Update
	DELETE FROM StudentDetailsStaging 
	
END
GO
/****** Object:  Default [DF_Role_IsActive]    Script Date: 02/23/2018 10:54:58 ******/
ALTER TABLE [dbo].[RoleDetails] ADD  CONSTRAINT [DF_Role_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF_SchoolDetails_IsActive]    Script Date: 02/23/2018 10:54:58 ******/
ALTER TABLE [dbo].[SchoolDetails] ADD  CONSTRAINT [DF_SchoolDetails_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF_SchoolTrackingDetails_IsRequiredApproval]    Script Date: 02/23/2018 10:54:58 ******/
ALTER TABLE [dbo].[SchoolTrackingDetails] ADD  CONSTRAINT [DF_SchoolTrackingDetails_IsRequiredApproval]  DEFAULT ((1)) FOR [IsRequiredApproval]
GO
/****** Object:  Default [DF_SchoolTrackingDetails_IsValidFile]    Script Date: 02/23/2018 10:54:58 ******/
ALTER TABLE [dbo].[SchoolTrackingDetails] ADD  CONSTRAINT [DF_SchoolTrackingDetails_IsValidFile]  DEFAULT ((1)) FOR [IsValidFile]
GO
/****** Object:  Default [DF_SchoolTrackingDetails_IsActive]    Script Date: 02/23/2018 10:54:58 ******/
ALTER TABLE [dbo].[SchoolTrackingDetails] ADD  CONSTRAINT [DF_SchoolTrackingDetails_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF_SudentDetails_IsActive]    Script Date: 02/23/2018 10:54:58 ******/
ALTER TABLE [dbo].[StudentDetails] ADD  CONSTRAINT [DF_SudentDetails_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF_SudentDetailsStaging_IsActive]    Script Date: 02/23/2018 10:54:58 ******/
ALTER TABLE [dbo].[StudentDetailsStaging] ADD  CONSTRAINT [DF_SudentDetailsStaging_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF_UploadLog_IsApprovalRequired]    Script Date: 02/23/2018 10:54:58 ******/
ALTER TABLE [dbo].[UploadLog] ADD  CONSTRAINT [DF_UploadLog_IsApprovalRequired]  DEFAULT ((1)) FOR [IsApprovalRequired]
GO
/****** Object:  Default [DF_Table_1_IsValidFile]    Script Date: 02/23/2018 10:54:58 ******/
ALTER TABLE [dbo].[UploadLog] ADD  CONSTRAINT [DF_Table_1_IsValidFile]  DEFAULT ((1)) FOR [IsFileValid]
GO
/****** Object:  Default [DF_UploadLog_TimeStamp]    Script Date: 02/23/2018 10:54:58 ******/
ALTER TABLE [dbo].[UploadLog] ADD  CONSTRAINT [DF_UploadLog_TimeStamp]  DEFAULT (getdate()) FOR [TimeStamp]
GO
/****** Object:  Default [DF_UploadLog_IsActive]    Script Date: 02/23/2018 10:54:58 ******/
ALTER TABLE [dbo].[UploadLog] ADD  CONSTRAINT [DF_UploadLog_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF_UserDetails_IsActive]    Script Date: 02/23/2018 10:54:58 ******/
ALTER TABLE [dbo].[UserDetails] ADD  CONSTRAINT [DF_UserDetails_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF_UserDetails_CreateDate]    Script Date: 02/23/2018 10:54:58 ******/
ALTER TABLE [dbo].[UserDetails] ADD  CONSTRAINT [DF_UserDetails_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  ForeignKey [FK_SudentDetails_SchoolDetails]    Script Date: 02/23/2018 10:54:58 ******/
ALTER TABLE [dbo].[StudentDetails]  WITH NOCHECK ADD  CONSTRAINT [FK_SudentDetails_SchoolDetails] FOREIGN KEY([SchoolId])
REFERENCES [dbo].[SchoolDetails] ([Id])
GO
ALTER TABLE [dbo].[StudentDetails] CHECK CONSTRAINT [FK_SudentDetails_SchoolDetails]
GO
/****** Object:  ForeignKey [FK_SudentDetails_UserDetails]    Script Date: 02/23/2018 10:54:58 ******/
ALTER TABLE [dbo].[StudentDetails]  WITH NOCHECK ADD  CONSTRAINT [FK_SudentDetails_UserDetails] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserDetails] ([Id])
GO
ALTER TABLE [dbo].[StudentDetails] CHECK CONSTRAINT [FK_SudentDetails_UserDetails]
GO
/****** Object:  ForeignKey [FK_SudentDetails_SchoolDetailsStaging]    Script Date: 02/23/2018 10:54:58 ******/
ALTER TABLE [dbo].[StudentDetailsStaging]  WITH NOCHECK ADD  CONSTRAINT [FK_SudentDetails_SchoolDetailsStaging] FOREIGN KEY([SchoolId])
REFERENCES [dbo].[SchoolDetails] ([Id])
GO
ALTER TABLE [dbo].[StudentDetailsStaging] CHECK CONSTRAINT [FK_SudentDetails_SchoolDetailsStaging]
GO
/****** Object:  ForeignKey [FK_SudentDetailsStaging_UserDetails]    Script Date: 02/23/2018 10:54:58 ******/
ALTER TABLE [dbo].[StudentDetailsStaging]  WITH NOCHECK ADD  CONSTRAINT [FK_SudentDetailsStaging_UserDetails] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserDetails] ([Id])
GO
ALTER TABLE [dbo].[StudentDetailsStaging] CHECK CONSTRAINT [FK_SudentDetailsStaging_UserDetails]
GO
/****** Object:  ForeignKey [FK_UserDetails_RoleDetails]    Script Date: 02/23/2018 10:54:58 ******/
ALTER TABLE [dbo].[UserDetails]  WITH CHECK ADD  CONSTRAINT [FK_UserDetails_RoleDetails] FOREIGN KEY([RoleId])
REFERENCES [dbo].[RoleDetails] ([Id])
GO
ALTER TABLE [dbo].[UserDetails] CHECK CONSTRAINT [FK_UserDetails_RoleDetails]
GO

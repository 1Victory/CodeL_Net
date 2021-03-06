USE [master]
GO
/****** Object:  Database [QuizDB_Test]    Script Date: 3/22/2016 6:41:01 PM ******/
CREATE DATABASE [QuizDB_Test]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuizDB_Test', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QuizDB_Test.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuizDB_Test_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QuizDB_Test_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuizDB_Test] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuizDB_Test].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuizDB_Test] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuizDB_Test] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuizDB_Test] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuizDB_Test] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuizDB_Test] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuizDB_Test] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuizDB_Test] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuizDB_Test] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuizDB_Test] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuizDB_Test] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuizDB_Test] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuizDB_Test] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuizDB_Test] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuizDB_Test] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuizDB_Test] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuizDB_Test] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuizDB_Test] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuizDB_Test] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuizDB_Test] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuizDB_Test] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuizDB_Test] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuizDB_Test] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuizDB_Test] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuizDB_Test] SET  MULTI_USER 
GO
ALTER DATABASE [QuizDB_Test] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuizDB_Test] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuizDB_Test] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuizDB_Test] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QuizDB_Test] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QuizDB_Test]
GO
/****** Object:  Table [dbo].[OurPerson]    Script Date: 3/22/2016 6:41:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OurPerson](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](255) NULL,
	[LastName] [varchar](255) NULL,
	[Num] [int] NULL,
	[Num1] [int] NULL,
 CONSTRAINT [PK_OurPerson] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF

GO
/****** Object:  Table [dbo].[Quiz3]    Script Date: 3/22/2016 6:41:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Quiz3](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Question] [varchar](50) NULL,
	[a1] [varchar](50) NULL,
	[a2] [varchar](50) NULL,
	[a3] [varchar](50) NULL,
	[a4] [varchar](50) NULL,
	[Employee_ID] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Quiz3Answers]    Script Date: 3/22/2016 6:41:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz3Answers](
	[QuestionID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NULL,
	[a1] [int] NULL,
	[a2] [int] NULL,
	[a3] [int] NULL,
	[a4] [int] NULL,
	[Score] [int] NULL,
 CONSTRAINT [PK_Quiz3Answers] PRIMARY KEY CLUSTERED 
(
	[QuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tProducts]    Script Date: 3/22/2016 6:41:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tProducts](
	[id] [nchar](10) NOT NULL,
	[ProductName] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Description] [nchar](10) NULL,
 CONSTRAINT [PK_tProducts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[OurPerson] ON 

INSERT [dbo].[OurPerson] ([Id], [FirstName], [LastName], [Num], [Num1]) VALUES (1, N'test', N'last', NULL, NULL)
INSERT [dbo].[OurPerson] ([Id], [FirstName], [LastName], [Num], [Num1]) VALUES (2, N'Ton', N'Torro', 3, NULL)
INSERT [dbo].[OurPerson] ([Id], [FirstName], [LastName], [Num], [Num1]) VALUES (3, N'Karla', N'SEV', 4, NULL)
INSERT [dbo].[OurPerson] ([Id], [FirstName], [LastName], [Num], [Num1]) VALUES (4, N'Blu', N'Whale', 5, 4)
SET IDENTITY_INSERT [dbo].[OurPerson] OFF
SET IDENTITY_INSERT [dbo].[Quiz3] ON 

INSERT [dbo].[Quiz3] ([id], [Question], [a1], [a2], [a3], [a4], [Employee_ID], [Name]) VALUES (23, N'What is the answer to question 1?', N'Answer number one', N'Answer number two', N'Answer number three', N'Answer number four', NULL, NULL)
INSERT [dbo].[Quiz3] ([id], [Question], [a1], [a2], [a3], [a4], [Employee_ID], [Name]) VALUES (24, N'What is the answer to question 2?', N'Answer number one', N'Answer number two', N'Answer number three', N'Answer number four', NULL, NULL)
INSERT [dbo].[Quiz3] ([id], [Question], [a1], [a2], [a3], [a4], [Employee_ID], [Name]) VALUES (25, N'What is the answer to question 3?', N'Answer number one', N'Answer number two', N'Answer number three', N'Answer number four', NULL, NULL)
INSERT [dbo].[Quiz3] ([id], [Question], [a1], [a2], [a3], [a4], [Employee_ID], [Name]) VALUES (26, N'What is the answer to question 4?', N'Answer number one', N'Answer number two', N'Answer number three', N'Answer number four', NULL, NULL)
INSERT [dbo].[Quiz3] ([id], [Question], [a1], [a2], [a3], [a4], [Employee_ID], [Name]) VALUES (27, N'What is the answer to question 5?', N'Answer number one', N'Answer number two', N'Answer number three', N'Answer number four', NULL, NULL)
INSERT [dbo].[Quiz3] ([id], [Question], [a1], [a2], [a3], [a4], [Employee_ID], [Name]) VALUES (28, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Quiz3] ([id], [Question], [a1], [a2], [a3], [a4], [Employee_ID], [Name]) VALUES (29, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Quiz3] ([id], [Question], [a1], [a2], [a3], [a4], [Employee_ID], [Name]) VALUES (30, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Quiz3] ([id], [Question], [a1], [a2], [a3], [a4], [Employee_ID], [Name]) VALUES (31, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Quiz3] ([id], [Question], [a1], [a2], [a3], [a4], [Employee_ID], [Name]) VALUES (32, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Quiz3] ([id], [Question], [a1], [a2], [a3], [a4], [Employee_ID], [Name]) VALUES (33, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Quiz3] ([id], [Question], [a1], [a2], [a3], [a4], [Employee_ID], [Name]) VALUES (34, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Quiz3] ([id], [Question], [a1], [a2], [a3], [a4], [Employee_ID], [Name]) VALUES (35, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Quiz3] ([id], [Question], [a1], [a2], [a3], [a4], [Employee_ID], [Name]) VALUES (36, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Quiz3] ([id], [Question], [a1], [a2], [a3], [a4], [Employee_ID], [Name]) VALUES (37, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Quiz3] ([id], [Question], [a1], [a2], [a3], [a4], [Employee_ID], [Name]) VALUES (38, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Quiz3] ([id], [Question], [a1], [a2], [a3], [a4], [Employee_ID], [Name]) VALUES (39, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Quiz3] ([id], [Question], [a1], [a2], [a3], [a4], [Employee_ID], [Name]) VALUES (40, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Quiz3] ([id], [Question], [a1], [a2], [a3], [a4], [Employee_ID], [Name]) VALUES (41, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Quiz3] ([id], [Question], [a1], [a2], [a3], [a4], [Employee_ID], [Name]) VALUES (42, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Quiz3] ([id], [Question], [a1], [a2], [a3], [a4], [Employee_ID], [Name]) VALUES (43, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Quiz3] ([id], [Question], [a1], [a2], [a3], [a4], [Employee_ID], [Name]) VALUES (44, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Quiz3] ([id], [Question], [a1], [a2], [a3], [a4], [Employee_ID], [Name]) VALUES (45, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Quiz3] ([id], [Question], [a1], [a2], [a3], [a4], [Employee_ID], [Name]) VALUES (46, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Quiz3] ([id], [Question], [a1], [a2], [a3], [a4], [Employee_ID], [Name]) VALUES (47, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Quiz3] ([id], [Question], [a1], [a2], [a3], [a4], [Employee_ID], [Name]) VALUES (48, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Quiz3] ([id], [Question], [a1], [a2], [a3], [a4], [Employee_ID], [Name]) VALUES (49, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Quiz3] ([id], [Question], [a1], [a2], [a3], [a4], [Employee_ID], [Name]) VALUES (50, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Quiz3] OFF
SET IDENTITY_INSERT [dbo].[Quiz3Answers] ON 

INSERT [dbo].[Quiz3Answers] ([QuestionID], [EmployeeID], [a1], [a2], [a3], [a4], [Score]) VALUES (1, 34, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[Quiz3Answers] ([QuestionID], [EmployeeID], [a1], [a2], [a3], [a4], [Score]) VALUES (2, 34, NULL, NULL, NULL, NULL, 3)
SET IDENTITY_INSERT [dbo].[Quiz3Answers] OFF
INSERT [dbo].[tProducts] ([id], [ProductName], [Price], [Description]) VALUES (N'1         ', N'Car', CAST(7777.00 AS Decimal(18, 2)), N'verynice  ')
INSERT [dbo].[tProducts] ([id], [ProductName], [Price], [Description]) VALUES (N'2         ', N'Boat', CAST(55555.00 AS Decimal(18, 2)), N'great     ')
USE [master]
GO
ALTER DATABASE [QuizDB_Test] SET  READ_WRITE 
GO

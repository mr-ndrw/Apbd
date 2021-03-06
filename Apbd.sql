USE [master]
GO
/****** Object:  Database [Apbd]    Script Date: 2015-03-13 20:04:39 ******/
CREATE DATABASE [Apbd]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Apbd', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Apbd.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Apbd_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Apbd_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Apbd] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Apbd].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Apbd] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Apbd] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Apbd] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Apbd] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Apbd] SET ARITHABORT OFF 
GO
ALTER DATABASE [Apbd] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Apbd] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Apbd] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Apbd] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Apbd] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Apbd] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Apbd] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Apbd] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Apbd] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Apbd] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Apbd] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Apbd] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Apbd] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Apbd] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Apbd] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Apbd] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Apbd] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Apbd] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Apbd] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Apbd] SET  MULTI_USER 
GO
ALTER DATABASE [Apbd] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Apbd] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Apbd] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Apbd] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Apbd]
GO
/****** Object:  Table [dbo].[Cinema]    Script Date: 2015-03-13 20:04:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cinema](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [varchar](max) NOT NULL,
	[TelephoneNo] [varchar](20) NOT NULL,
	[IdRegion] [int] NOT NULL,
	[IdManager] [int] NOT NULL,
	[Name] [varchar](max) NULL,
 CONSTRAINT [PK_Cinema] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 2015-03-13 20:04:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[TelephoneNo] [varchar](50) NULL,
	[Email] [varchar](320) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Projection]    Script Date: 2015-03-13 20:04:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projection](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[Length] [int] NOT NULL,
	[IdProjectionRoom] [int] NOT NULL,
 CONSTRAINT [PK_Projection] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProjectionRoom]    Script Date: 2015-03-13 20:04:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProjectionRoom](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCinema] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[RoomNumber] [nchar](10) NULL,
 CONSTRAINT [PK_ProjectionRoom] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Region]    Script Date: 2015-03-13 20:04:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Region](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Seat]    Script Date: 2015-03-13 20:04:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seat](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProjectionRoom] [int] NOT NULL,
	[Row] [int] NOT NULL,
	[Col] [int] NOT NULL,
 CONSTRAINT [PK_Seat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Service]    Script Date: 2015-03-13 20:04:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Service](
	[IdEmployee] [int] NOT NULL,
	[IdProjection] [int] NOT NULL,
	[Role] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Work]    Script Date: 2015-03-13 20:04:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Work](
	[IdEmployee] [int] NOT NULL,
	[IdCinema] [int] NOT NULL,
	[DateFrom] [date] NOT NULL,
	[DateTo] [date] NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Cinema] ON 

INSERT [dbo].[Cinema] ([Id], [Address], [TelephoneNo], [IdRegion], [IdManager], [Name]) VALUES (2, N'Somewhere Nice', N'123123123', 1, 1, N'Busy Cinema')
INSERT [dbo].[Cinema] ([Id], [Address], [TelephoneNo], [IdRegion], [IdManager], [Name]) VALUES (3, N'A nice place for everyone', N'334554442', 1, 2, N'Not So Busy')
INSERT [dbo].[Cinema] ([Id], [Address], [TelephoneNo], [IdRegion], [IdManager], [Name]) VALUES (4, N'In nice, remote outpost', N'358484842', 2, 3, N'BusyPlex')
INSERT [dbo].[Cinema] ([Id], [Address], [TelephoneNo], [IdRegion], [IdManager], [Name]) VALUES (5, N'Warm and cozy place in hills', N'135856065', 2, 3, N'CinePlex')
INSERT [dbo].[Cinema] ([Id], [Address], [TelephoneNo], [IdRegion], [IdManager], [Name]) VALUES (6, N'A place which is nice for nice people', N'010294385', 3, 4, N'Nice Cinema')
SET IDENTITY_INSERT [dbo].[Cinema] OFF
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [Name], [Surname], [TelephoneNo], [Email]) VALUES (1, N'Max', N'Power', N'321123123', N'max@power.com')
INSERT [dbo].[Employee] ([Id], [Name], [Surname], [TelephoneNo], [Email]) VALUES (2, N'Pinky', N'Power', N'22223451', N'pinky@power.pink')
INSERT [dbo].[Employee] ([Id], [Name], [Surname], [TelephoneNo], [Email]) VALUES (3, N'Rover', N'Roverski', N'0034432215', N'rover@cars.com')
INSERT [dbo].[Employee] ([Id], [Name], [Surname], [TelephoneNo], [Email]) VALUES (4, N'Mister', N'Madame', N'6969696969', N'mister@madame.mrms')
INSERT [dbo].[Employee] ([Id], [Name], [Surname], [TelephoneNo], [Email]) VALUES (5, N'Stuart', N'Ashen', N'12121212', N'ashens@tat.garbage')
INSERT [dbo].[Employee] ([Id], [Name], [Surname], [TelephoneNo], [Email]) VALUES (6, N'Michael', N'Jordan', N'23232323', N'michael@jordan.air')
INSERT [dbo].[Employee] ([Id], [Name], [Surname], [TelephoneNo], [Email]) VALUES (7, N'Cocoa', N'Psycho', N'00000000', N'cocoa@brewdog.co.uk')
INSERT [dbo].[Employee] ([Id], [Name], [Surname], [TelephoneNo], [Email]) VALUES (8, N'Hades', N'Olimp', N'333454432', N'olimp@hades.eu')
INSERT [dbo].[Employee] ([Id], [Name], [Surname], [TelephoneNo], [Email]) VALUES (9, N'Mikkel', N'Keller', N'865843039', N'craft@beer.beer')
INSERT [dbo].[Employee] ([Id], [Name], [Surname], [TelephoneNo], [Email]) VALUES (10, N'Buxton', N'Beer', N'359285424', N'buxton@brewery.beer')
INSERT [dbo].[Employee] ([Id], [Name], [Surname], [TelephoneNo], [Email]) VALUES (11, N'Citra', N'Hops', N'113444363', N'hophead@bitter.beer')
SET IDENTITY_INSERT [dbo].[Employee] OFF
SET IDENTITY_INSERT [dbo].[Projection] ON 

INSERT [dbo].[Projection] ([Id], [DateTime], [Length], [IdProjectionRoom]) VALUES (1, CAST(0x0000A2E300FB6184 AS DateTime), 150, 1)
INSERT [dbo].[Projection] ([Id], [DateTime], [Length], [IdProjectionRoom]) VALUES (2, CAST(0x0000A2E500EAE598 AS DateTime), 200, 1)
INSERT [dbo].[Projection] ([Id], [DateTime], [Length], [IdProjectionRoom]) VALUES (3, CAST(0x0000A2E800EAE340 AS DateTime), 100, 1)
INSERT [dbo].[Projection] ([Id], [DateTime], [Length], [IdProjectionRoom]) VALUES (4, CAST(0x0000A2E900EAE340 AS DateTime), 58, 2)
INSERT [dbo].[Projection] ([Id], [DateTime], [Length], [IdProjectionRoom]) VALUES (5, CAST(0x0000A2EA00EAE340 AS DateTime), 150, 2)
INSERT [dbo].[Projection] ([Id], [DateTime], [Length], [IdProjectionRoom]) VALUES (6, CAST(0x0000A2E300FB6184 AS DateTime), 230, 2)
INSERT [dbo].[Projection] ([Id], [DateTime], [Length], [IdProjectionRoom]) VALUES (7, CAST(0x0000A45401062DF8 AS DateTime), 125, 3)
INSERT [dbo].[Projection] ([Id], [DateTime], [Length], [IdProjectionRoom]) VALUES (8, CAST(0x0000A45401062DF8 AS DateTime), 125, 4)
INSERT [dbo].[Projection] ([Id], [DateTime], [Length], [IdProjectionRoom]) VALUES (9, CAST(0x0000A45401062DF8 AS DateTime), 356, 5)
INSERT [dbo].[Projection] ([Id], [DateTime], [Length], [IdProjectionRoom]) VALUES (10, CAST(0x0000A45401062DF8 AS DateTime), 99, 6)
INSERT [dbo].[Projection] ([Id], [DateTime], [Length], [IdProjectionRoom]) VALUES (11, CAST(0x0000A45401062DF8 AS DateTime), 89, 1)
INSERT [dbo].[Projection] ([Id], [DateTime], [Length], [IdProjectionRoom]) VALUES (12, CAST(0x0000A45501062DF8 AS DateTime), 100, 1)
INSERT [dbo].[Projection] ([Id], [DateTime], [Length], [IdProjectionRoom]) VALUES (13, CAST(0x0000A45501062DF8 AS DateTime), 355, 1)
SET IDENTITY_INSERT [dbo].[Projection] OFF
SET IDENTITY_INSERT [dbo].[ProjectionRoom] ON 

INSERT [dbo].[ProjectionRoom] ([Id], [IdCinema], [Name], [RoomNumber]) VALUES (1, 2, N'Nice room', NULL)
INSERT [dbo].[ProjectionRoom] ([Id], [IdCinema], [Name], [RoomNumber]) VALUES (2, 2, N'Cozy Room', NULL)
INSERT [dbo].[ProjectionRoom] ([Id], [IdCinema], [Name], [RoomNumber]) VALUES (3, 3, N'Roomy Room', NULL)
INSERT [dbo].[ProjectionRoom] ([Id], [IdCinema], [Name], [RoomNumber]) VALUES (4, 3, N'Room for nice people', NULL)
INSERT [dbo].[ProjectionRoom] ([Id], [IdCinema], [Name], [RoomNumber]) VALUES (5, 4, N'Warm Room', NULL)
INSERT [dbo].[ProjectionRoom] ([Id], [IdCinema], [Name], [RoomNumber]) VALUES (6, 4, N'Cozy place', NULL)
SET IDENTITY_INSERT [dbo].[ProjectionRoom] OFF
SET IDENTITY_INSERT [dbo].[Region] ON 

INSERT [dbo].[Region] ([Id], [Name]) VALUES (1, N'BigRegion')
INSERT [dbo].[Region] ([Id], [Name]) VALUES (2, N'SlightlySmallerRegion')
INSERT [dbo].[Region] ([Id], [Name]) VALUES (3, N'MinisculeRegion')
SET IDENTITY_INSERT [dbo].[Region] OFF
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (1, 1, N'Boss')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (1, 2, N'Boss')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (1, 3, N'Boss')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (1, 4, N'Boss')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (1, 5, N'Boss')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (1, 6, N'Boss')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (1, 7, N'Boss')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (1, 8, N'Boss')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (1, 9, N'Head Honcho')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (1, 10, N'Numero Uno')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (1, 11, N'Godfather')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (2, 1, N'Number Two')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (2, 2, N'Number Two')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (2, 3, N'Number Two')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (2, 4, N'Number Two')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (2, 5, N'Underlord')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (2, 6, N'Number Two')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (2, 7, N'Underman')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (3, 1, N'Peon')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (3, 2, N'Peon')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (3, 3, N'Peon')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (3, 4, N'Peon')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (3, 5, N'Peon')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (3, 6, N'Peon')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (3, 7, N'Peon')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (11, 11, N'Number Two')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (11, 10, N'Peon')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (11, 9, N'Lordling')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (11, 8, N'Peon')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (11, 7, N'Peon')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (11, 6, N'Underlord')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (10, 10, N'Number Two')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (10, 9, N'Man On The Plane')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (10, 8, N'Peon')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (9, 5, N'Man')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (9, 4, N'Man')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (9, 7, N'Man Dog')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (9, 9, N'Peon')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (9, 8, N'Man Man')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (8, 8, N'Peon')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (8, 9, N'Nice Man')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (8, 2, N'Head Honcho')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (8, 1, N'Peon')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (8, 3, N'Man Man')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (8, 4, N'Princess')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (8, 5, N'Lordling')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (7, 1, N'Dog Man')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (7, 3, N'Jack Of All Trades')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (7, 5, N'Peon')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (7, 7, N'Certain Man')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (7, 9, N'Dog Man')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (7, 11, N'Head Honcho')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (6, 3, N'Peon')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (6, 6, N'Certain Man')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (6, 9, N'Hello Man')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (6, 11, N'Number Three')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (5, 1, N'Man Man')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (5, 3, N'Peon')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (5, 5, N'Dog')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (5, 7, N'Cat Man')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (5, 9, N'Peon')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (5, 11, N'Head Honcho')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (4, 1, N'Bourne Identity')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (4, 2, N'Bourne Identity')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (4, 3, N'Bourne Identity')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (4, 4, N'Bourne Identity')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (4, 5, N'Bourne Identity')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (4, 6, N'Bourne Identity')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (4, 7, N'Bourne Identity')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (4, 8, N'Bourne Identity')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (4, 9, N'Bourne Identity')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (4, 10, N'Bourne Identity')
INSERT [dbo].[Service] ([IdEmployee], [IdProjection], [Role]) VALUES (4, 11, N'Bourne Identity')
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (1, 2, CAST(0x46350B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (2, 2, CAST(0x46350B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (3, 2, CAST(0x46350B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (4, 2, CAST(0x46350B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (5, 2, CAST(0x46350B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (6, 2, CAST(0x46350B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (7, 2, CAST(0x46350B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (8, 2, CAST(0x46350B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (9, 2, CAST(0x46350B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (10, 2, CAST(0x46350B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (11, 2, CAST(0x46350B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (1, 3, CAST(0xCE370B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (2, 3, CAST(0xCE370B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (3, 3, CAST(0xCE370B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (4, 3, CAST(0xCE370B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (5, 3, CAST(0xCE370B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (6, 3, CAST(0xCE370B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (7, 3, CAST(0xCE370B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (8, 3, CAST(0xCE370B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (9, 3, CAST(0xCE370B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (10, 3, CAST(0xCE370B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (11, 3, CAST(0xCE370B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (1, 4, CAST(0x7B380B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (3, 4, CAST(0x7B380B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (5, 4, CAST(0x7B380B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (7, 4, CAST(0x7B380B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (9, 4, CAST(0x7B380B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (11, 4, CAST(0x7B380B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (2, 5, CAST(0x4C320B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (4, 5, CAST(0x4C320B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (6, 5, CAST(0x4C320B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (8, 5, CAST(0x4C320B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (10, 5, CAST(0x4C320B00 AS Date), NULL)
INSERT [dbo].[Work] ([IdEmployee], [IdCinema], [DateFrom], [DateTo]) VALUES (11, 6, CAST(0x19310B00 AS Date), NULL)
/****** Object:  Index [IdService]    Script Date: 2015-03-13 20:04:39 ******/
ALTER TABLE [dbo].[Service] ADD  CONSTRAINT [IdService] PRIMARY KEY NONCLUSTERED 
(
	[IdEmployee] ASC,
	[IdProjection] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdWork]    Script Date: 2015-03-13 20:04:39 ******/
ALTER TABLE [dbo].[Work] ADD  CONSTRAINT [IdWork] PRIMARY KEY NONCLUSTERED 
(
	[IdEmployee] ASC,
	[IdCinema] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cinema]  WITH CHECK ADD  CONSTRAINT [FK_Cinema_EmployeeManager] FOREIGN KEY([IdManager])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[Cinema] CHECK CONSTRAINT [FK_Cinema_EmployeeManager]
GO
ALTER TABLE [dbo].[Cinema]  WITH CHECK ADD  CONSTRAINT [FK_Cinema_Region] FOREIGN KEY([IdRegion])
REFERENCES [dbo].[Region] ([Id])
GO
ALTER TABLE [dbo].[Cinema] CHECK CONSTRAINT [FK_Cinema_Region]
GO
ALTER TABLE [dbo].[Projection]  WITH CHECK ADD  CONSTRAINT [FK_Projection_ProjectionRoom] FOREIGN KEY([IdProjectionRoom])
REFERENCES [dbo].[ProjectionRoom] ([Id])
GO
ALTER TABLE [dbo].[Projection] CHECK CONSTRAINT [FK_Projection_ProjectionRoom]
GO
ALTER TABLE [dbo].[ProjectionRoom]  WITH CHECK ADD  CONSTRAINT [FK_ProjectionRoom_Cinema] FOREIGN KEY([IdCinema])
REFERENCES [dbo].[Cinema] ([Id])
GO
ALTER TABLE [dbo].[ProjectionRoom] CHECK CONSTRAINT [FK_ProjectionRoom_Cinema]
GO
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [FK_Service_Employee] FOREIGN KEY([IdEmployee])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [FK_Service_Employee]
GO
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [FK_Service_Projection] FOREIGN KEY([IdProjection])
REFERENCES [dbo].[Projection] ([Id])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [FK_Service_Projection]
GO
ALTER TABLE [dbo].[Work]  WITH CHECK ADD  CONSTRAINT [FK_Work_Cinema] FOREIGN KEY([IdCinema])
REFERENCES [dbo].[Cinema] ([Id])
GO
ALTER TABLE [dbo].[Work] CHECK CONSTRAINT [FK_Work_Cinema]
GO
ALTER TABLE [dbo].[Work]  WITH CHECK ADD  CONSTRAINT [FK_Work_Employee] FOREIGN KEY([IdEmployee])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[Work] CHECK CONSTRAINT [FK_Work_Employee]
GO
USE [master]
GO
ALTER DATABASE [Apbd] SET  READ_WRITE 
GO

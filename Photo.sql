USE [master]
GO
/****** Object:  Database [Photo]    Script Date: 4/3/2020 3:04:31 PM ******/
CREATE DATABASE [Photo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Photograph', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Photograph.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Photograph_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Photograph_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Photo] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Photo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Photo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Photo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Photo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Photo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Photo] SET ARITHABORT OFF 
GO
ALTER DATABASE [Photo] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Photo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Photo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Photo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Photo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Photo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Photo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Photo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Photo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Photo] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Photo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Photo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Photo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Photo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Photo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Photo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Photo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Photo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Photo] SET  MULTI_USER 
GO
ALTER DATABASE [Photo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Photo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Photo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Photo] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Photo] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Photo]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 4/3/2020 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](max) NULL,
	[city] [nvarchar](max) NULL,
	[country] [nvarchar](max) NULL,
	[tel] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[aboutme] [nvarchar](max) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Gallery]    Script Date: 4/3/2020 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gallery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[picture] [nvarchar](50) NULL,
	[description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Gallery] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Gallery_Picture]    Script Date: 4/3/2020 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gallery_Picture](
	[galleryID] [int] NOT NULL,
	[pictureID] [int] NOT NULL,
 CONSTRAINT [PK_Gallery_Picture] PRIMARY KEY CLUSTERED 
(
	[galleryID] ASC,
	[pictureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Picture]    Script Date: 4/3/2020 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Picture](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[picture] [nvarchar](50) NULL,
 CONSTRAINT [PK_Picture] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([id], [address], [city], [country], [tel], [email], [aboutme]) VALUES (1, N'FPT University', N'Ha Noi', N'Viet Nam', N'0338047415', N'tungtt@gmail.com', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim')
SET IDENTITY_INSERT [dbo].[Contact] OFF
SET IDENTITY_INSERT [dbo].[Gallery] ON 

INSERT [dbo].[Gallery] ([id], [name], [picture], [description]) VALUES (1, N'Gallery 1', N'p1.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation')
INSERT [dbo].[Gallery] ([id], [name], [picture], [description]) VALUES (2, N'Gallery 2', N'p2.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation')
INSERT [dbo].[Gallery] ([id], [name], [picture], [description]) VALUES (3, N'Gallery 3', N'p3.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation')
SET IDENTITY_INSERT [dbo].[Gallery] OFF
INSERT [dbo].[Gallery_Picture] ([galleryID], [pictureID]) VALUES (1, 1)
INSERT [dbo].[Gallery_Picture] ([galleryID], [pictureID]) VALUES (1, 2)
INSERT [dbo].[Gallery_Picture] ([galleryID], [pictureID]) VALUES (1, 3)
INSERT [dbo].[Gallery_Picture] ([galleryID], [pictureID]) VALUES (1, 4)
INSERT [dbo].[Gallery_Picture] ([galleryID], [pictureID]) VALUES (1, 5)
INSERT [dbo].[Gallery_Picture] ([galleryID], [pictureID]) VALUES (1, 6)
INSERT [dbo].[Gallery_Picture] ([galleryID], [pictureID]) VALUES (1, 7)
INSERT [dbo].[Gallery_Picture] ([galleryID], [pictureID]) VALUES (1, 8)
INSERT [dbo].[Gallery_Picture] ([galleryID], [pictureID]) VALUES (2, 1)
INSERT [dbo].[Gallery_Picture] ([galleryID], [pictureID]) VALUES (2, 2)
INSERT [dbo].[Gallery_Picture] ([galleryID], [pictureID]) VALUES (2, 3)
INSERT [dbo].[Gallery_Picture] ([galleryID], [pictureID]) VALUES (2, 4)
INSERT [dbo].[Gallery_Picture] ([galleryID], [pictureID]) VALUES (2, 5)
INSERT [dbo].[Gallery_Picture] ([galleryID], [pictureID]) VALUES (2, 6)
INSERT [dbo].[Gallery_Picture] ([galleryID], [pictureID]) VALUES (2, 7)
INSERT [dbo].[Gallery_Picture] ([galleryID], [pictureID]) VALUES (2, 8)
INSERT [dbo].[Gallery_Picture] ([galleryID], [pictureID]) VALUES (3, 1)
INSERT [dbo].[Gallery_Picture] ([galleryID], [pictureID]) VALUES (3, 2)
INSERT [dbo].[Gallery_Picture] ([galleryID], [pictureID]) VALUES (3, 3)
INSERT [dbo].[Gallery_Picture] ([galleryID], [pictureID]) VALUES (3, 4)
INSERT [dbo].[Gallery_Picture] ([galleryID], [pictureID]) VALUES (3, 5)
INSERT [dbo].[Gallery_Picture] ([galleryID], [pictureID]) VALUES (3, 6)
INSERT [dbo].[Gallery_Picture] ([galleryID], [pictureID]) VALUES (3, 7)
INSERT [dbo].[Gallery_Picture] ([galleryID], [pictureID]) VALUES (3, 8)
SET IDENTITY_INSERT [dbo].[Picture] ON 

INSERT [dbo].[Picture] ([id], [picture]) VALUES (1, N'p1.jpg')
INSERT [dbo].[Picture] ([id], [picture]) VALUES (2, N'p2.jpg')
INSERT [dbo].[Picture] ([id], [picture]) VALUES (3, N'p3.jpg')
INSERT [dbo].[Picture] ([id], [picture]) VALUES (4, N'p4.jpg')
INSERT [dbo].[Picture] ([id], [picture]) VALUES (5, N'p5.jpg')
INSERT [dbo].[Picture] ([id], [picture]) VALUES (6, N'p6.jpg')
INSERT [dbo].[Picture] ([id], [picture]) VALUES (7, N'p7.jpg')
INSERT [dbo].[Picture] ([id], [picture]) VALUES (8, N'p8.jpg')
SET IDENTITY_INSERT [dbo].[Picture] OFF
USE [master]
GO
ALTER DATABASE [Photo] SET  READ_WRITE 
GO

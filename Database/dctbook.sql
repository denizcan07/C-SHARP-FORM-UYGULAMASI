USE [master]
GO
/****** Object:  Database [dctbook]    Script Date: 16.06.2021 12:45:06 ******/
CREATE DATABASE [dctbook]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dctbook', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS02\MSSQL\DATA\dctbook.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dctbook_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS02\MSSQL\DATA\dctbook_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [dctbook] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dctbook].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dctbook] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dctbook] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dctbook] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dctbook] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dctbook] SET ARITHABORT OFF 
GO
ALTER DATABASE [dctbook] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dctbook] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dctbook] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dctbook] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dctbook] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dctbook] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dctbook] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dctbook] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dctbook] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dctbook] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dctbook] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dctbook] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dctbook] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dctbook] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dctbook] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dctbook] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dctbook] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dctbook] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dctbook] SET  MULTI_USER 
GO
ALTER DATABASE [dctbook] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dctbook] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dctbook] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dctbook] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dctbook] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [dctbook] SET QUERY_STORE = OFF
GO
USE [dctbook]
GO
/****** Object:  Table [dbo].[kayit]    Script Date: 16.06.2021 12:45:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kayit](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[kullaniciadi] [nvarchar](50) NULL,
	[Ad] [nchar](50) NULL,
	[Soyad] [nchar](50) NULL,
	[Sifre] [nvarchar](50) NULL,
	[Telefon] [nchar](11) NULL,
	[email] [nvarchar](50) NULL,
	[resim] [nvarchar](400) NULL,
 CONSTRAINT [PK_kayit] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[kayit] ON 

INSERT [dbo].[kayit] ([id], [kullaniciadi], [Ad], [Soyad], [Sifre], [Telefon], [email], [resim]) VALUES (4, N'Can07', N'Can                                               ', N'Cannn                                             ', N'1234567', N'5385474141 ', N'can@gmail.com', N'C://desktop/foto')
INSERT [dbo].[kayit] ([id], [kullaniciadi], [Ad], [Soyad], [Sifre], [Telefon], [email], [resim]) VALUES (5, N'deno22', N'deno                                              ', N'can                                               ', N'123', N'5456765456 ', N'deno@gmail.com', N'C:\Users\msı\Desktop\deniz foto\foto.png')
INSERT [dbo].[kayit] ([id], [kullaniciadi], [Ad], [Soyad], [Sifre], [Telefon], [email], [resim]) VALUES (6, N'deniz123', N'deniz                                             ', N'can                                               ', N'can12', N'4565434565 ', N'deniz@gmail.com', N'C:\Users\msı\Desktop\deniz foto\File0335.JPG')
INSERT [dbo].[kayit] ([id], [kullaniciadi], [Ad], [Soyad], [Sifre], [Telefon], [email], [resim]) VALUES (7, N'sezer07', N'sezer                                             ', N'can                                               ', N'123', N'5676545676 ', N'sezer@gmail.com', N'C:\Users\msı\Desktop\borsa\bitcoin-1.jpg')
INSERT [dbo].[kayit] ([id], [kullaniciadi], [Ad], [Soyad], [Sifre], [Telefon], [email], [resim]) VALUES (8, N'sezer11', N'sezer                                             ', N'toşur                                             ', N'123', N'5654567654 ', N'sezer@gmail.com', N'C:\Users\msı\Desktop\borsa\Bitcoin-Analiz-18-Kasim-2020.jpg')
INSERT [dbo].[kayit] ([id], [kullaniciadi], [Ad], [Soyad], [Sifre], [Telefon], [email], [resim]) VALUES (12, N'deniz', N'deniz                                             ', N'can                                               ', N'123', N'5456765456 ', N'deniz@gmail.com', N'C:\Users\msı\Desktop\deniz foto\foto.png')
SET IDENTITY_INSERT [dbo].[kayit] OFF
GO
/****** Object:  StoredProcedure [dbo].[ekle]    Script Date: 16.06.2021 12:45:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ekle]

@kullaniciadi nvarchar(50),
@Ad nchar(50),
@Soyad nchar(50),
@Sifre nvarchar(50), 
@Telefon nchar(11),
@email nvarchar(50),
@resim nvarchar(400)
as
insert into kayit(kullaniciadi,Ad,Soyad,Sifre,Telefon,email,resim)
values(@kullaniciadi,@Ad,@Soyad,@Sifre,@Telefon,@email,@resim)
GO
/****** Object:  StoredProcedure [dbo].[göster]    Script Date: 16.06.2021 12:45:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[göster]
as
Select *From kayit 
order by id asc;

GO
/****** Object:  StoredProcedure [dbo].[güncelleme]    Script Date: 16.06.2021 12:45:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[güncelleme]
(
@id int,
@kullaniciadi nvarchar(50),
@Ad nchar(50),
@Soyad nchar(50),
@Sifre nvarchar(50), 
@Telefon nchar(11),
@email nvarchar(50),
@resim nvarchar(400)
)
as
update kayit set kullaniciadi=@kullaniciadi,Ad=@Ad,Soyad=@Soyad,Sifre=@Sifre,Telefon=@Telefon,email=@email,resim=@resim where id=@id
GO
/****** Object:  StoredProcedure [dbo].[silme]    Script Date: 16.06.2021 12:45:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[silme]
@id int
as
delete from kayit where id=@id
GO
USE [master]
GO
ALTER DATABASE [dctbook] SET  READ_WRITE 
GO

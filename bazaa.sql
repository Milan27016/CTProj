USE [master]
GO
/****** Object:  Database [baza]    Script Date: 12/21/2018 11:25:03 PM ******/
CREATE DATABASE [baza]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Kladionica1', FILENAME = N'D:\MSSQL14.MSSQLSERVER\MSSQL\DATA\Baza.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Kladionica1_log', FILENAME = N'D:\MSSQL14.MSSQLSERVER\MSSQL\DATA\Baza.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [baza] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [baza].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [baza] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [baza] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [baza] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [baza] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [baza] SET ARITHABORT OFF 
GO
ALTER DATABASE [baza] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [baza] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [baza] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [baza] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [baza] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [baza] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [baza] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [baza] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [baza] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [baza] SET  DISABLE_BROKER 
GO
ALTER DATABASE [baza] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [baza] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [baza] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [baza] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [baza] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [baza] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [baza] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [baza] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [baza] SET  MULTI_USER 
GO
ALTER DATABASE [baza] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [baza] SET DB_CHAINING OFF 
GO
ALTER DATABASE [baza] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [baza] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [baza] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'baza', N'ON'
GO
ALTER DATABASE [baza] SET QUERY_STORE = OFF
GO
USE [baza]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [baza]
GO
/****** Object:  Table [dbo].[KontaktXrefMail]    Script Date: 12/21/2018 11:25:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KontaktXrefMail](
	[IDKontakt] [int] NOT NULL,
	[IDMail] [int] NOT NULL,
 CONSTRAINT [PK_KontaktXrefMail_1] PRIMARY KEY CLUSTERED 
(
	[IDKontakt] ASC,
	[IDMail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KontaktXrefTelefon]    Script Date: 12/21/2018 11:25:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KontaktXrefTelefon](
	[IDKontakt] [int] NOT NULL,
	[IDTelefon] [int] NOT NULL,
 CONSTRAINT [PK_KontaktXrefTelefon_1] PRIMARY KEY CLUSTERED 
(
	[IDKontakt] ASC,
	[IDTelefon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Korisnik]    Script Date: 12/21/2018 11:25:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Korisnik](
	[IDKorisnik] [int] IDENTITY(1,1) NOT NULL,
	[Ime] [nvarchar](50) NOT NULL,
	[Prezime] [nvarchar](50) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[PravoPristupa] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Korisnik] PRIMARY KEY CLUSTERED 
(
	[IDKorisnik] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListaKontakt]    Script Date: 12/21/2018 11:25:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListaKontakt](
	[IDKontakt] [int] IDENTITY(1,1) NOT NULL,
	[Ime] [nvarchar](50) NOT NULL,
	[Prezime] [nvarchar](50) NOT NULL,
	[RadnoMesto] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ListaKontakt] PRIMARY KEY CLUSTERED 
(
	[IDKontakt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListaMail]    Script Date: 12/21/2018 11:25:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListaMail](
	[IDMail] [int] IDENTITY(1,1) NOT NULL,
	[Tip] [nvarchar](50) NULL,
	[Adresa] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_listaMail] PRIMARY KEY CLUSTERED 
(
	[IDMail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListaTelefon]    Script Date: 12/21/2018 11:25:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListaTelefon](
	[IDTelefon] [int] IDENTITY(1,1) NOT NULL,
	[Tip] [nvarchar](50) NULL,
	[BrTel] [nvarchar](50) NOT NULL,
	[Lokal] [nvarchar](50) NULL,
 CONSTRAINT [PK_ListaTelefona] PRIMARY KEY CLUSTERED 
(
	[IDTelefon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skola]    Script Date: 12/21/2018 11:25:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skola](
	[IDSkola] [int] IDENTITY(1,1) NOT NULL,
	[NazivSkole] [nvarchar](50) NOT NULL,
	[Adresa] [nvarchar](50) NOT NULL,
	[Opstina] [nvarchar](50) NOT NULL,
	[PostanskiBroj] [int] NOT NULL,
	[MaticniBroj] [int] NOT NULL,
	[PIB] [int] NOT NULL,
	[BrojRacuna] [nvarchar](50) NOT NULL,
	[WebStranica] [nvarchar](200) NULL,
	[Fotografija] [varbinary](max) NULL,
	[Beleske] [nvarchar](500) NULL,
 CONSTRAINT [PK_Skola] PRIMARY KEY CLUSTERED 
(
	[IDSkola] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkolaXrefKontakt]    Script Date: 12/21/2018 11:25:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkolaXrefKontakt](
	[IDSkola] [int] NOT NULL,
	[IDKontakt] [int] NOT NULL,
 CONSTRAINT [PK_SkolaXrefKontakt_1] PRIMARY KEY CLUSTERED 
(
	[IDSkola] ASC,
	[IDKontakt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[KontaktXrefMail]  WITH CHECK ADD  CONSTRAINT [FK_KontaktXrefMail_ListaKontakt] FOREIGN KEY([IDKontakt])
REFERENCES [dbo].[ListaKontakt] ([IDKontakt])
GO
ALTER TABLE [dbo].[KontaktXrefMail] CHECK CONSTRAINT [FK_KontaktXrefMail_ListaKontakt]
GO
ALTER TABLE [dbo].[KontaktXrefMail]  WITH CHECK ADD  CONSTRAINT [FK_KontaktXrefMail_ListaMail] FOREIGN KEY([IDMail])
REFERENCES [dbo].[ListaMail] ([IDMail])
GO
ALTER TABLE [dbo].[KontaktXrefMail] CHECK CONSTRAINT [FK_KontaktXrefMail_ListaMail]
GO
ALTER TABLE [dbo].[KontaktXrefTelefon]  WITH CHECK ADD  CONSTRAINT [FK_KontaktXrefTelefon_ListaKontakt] FOREIGN KEY([IDKontakt])
REFERENCES [dbo].[ListaKontakt] ([IDKontakt])
GO
ALTER TABLE [dbo].[KontaktXrefTelefon] CHECK CONSTRAINT [FK_KontaktXrefTelefon_ListaKontakt]
GO
ALTER TABLE [dbo].[KontaktXrefTelefon]  WITH CHECK ADD  CONSTRAINT [FK_KontaktXrefTelefon_ListaTelefon] FOREIGN KEY([IDTelefon])
REFERENCES [dbo].[ListaTelefon] ([IDTelefon])
GO
ALTER TABLE [dbo].[KontaktXrefTelefon] CHECK CONSTRAINT [FK_KontaktXrefTelefon_ListaTelefon]
GO
ALTER TABLE [dbo].[SkolaXrefKontakt]  WITH CHECK ADD  CONSTRAINT [FK_SkolaXrefKontakt_ListaKontakt] FOREIGN KEY([IDKontakt])
REFERENCES [dbo].[ListaKontakt] ([IDKontakt])
GO
ALTER TABLE [dbo].[SkolaXrefKontakt] CHECK CONSTRAINT [FK_SkolaXrefKontakt_ListaKontakt]
GO
ALTER TABLE [dbo].[SkolaXrefKontakt]  WITH CHECK ADD  CONSTRAINT [FK_SkolaXrefKontakt_Skola] FOREIGN KEY([IDSkola])
REFERENCES [dbo].[Skola] ([IDSkola])
GO
ALTER TABLE [dbo].[SkolaXrefKontakt] CHECK CONSTRAINT [FK_SkolaXrefKontakt_Skola]
GO
/****** Object:  StoredProcedure [dbo].[ObrisiKontakt]    Script Date: 12/21/2018 11:25:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ObrisiKontakt]

	@IDSkola int

AS
BEGIN
		
		delete from SkolaXrefKontakt
		where SkolaXrefKontakt.IDSkola = @IDSkola

END
GO
/****** Object:  StoredProcedure [dbo].[ObrisiSkolu]    Script Date: 12/21/2018 11:25:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ObrisiSkolu]

	@IDSkola int

AS
BEGIN
	
	delete from Skola
	where Skola.IDSkola = @IDSkola

END
GO
/****** Object:  StoredProcedure [dbo].[PrikaziKontakte]    Script Date: 12/21/2018 11:25:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PrikaziKontakte]
(
	@IDSkola int
)
as
	select *
	from Skola as sk
	left outer join SkolaXrefKontakt as sxk
	on sk.IDSkola = sxk.IDSkola
	join ListaKontakt as lk
	on lk.IDKontakt = sxk.IDKontakt
	where sk.IDSkola = @IDSkola
GO
USE [master]
GO
ALTER DATABASE [baza] SET  READ_WRITE 
GO

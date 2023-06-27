USE [master]
GO
/****** Object:  Database [TP_elecciones]    Script Date: 27/6/2023 10:45:22 ******/
CREATE DATABASE [TP_elecciones]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TP_elecciones', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TP_elecciones.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TP_elecciones_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TP_elecciones_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TP_elecciones] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFugit llTextInstalled'))
begin
EXEC [TP_elecciones].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TP_elecciones] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TP_elecciones] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TP_elecciones] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TP_elecciones] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TP_elecciones] SET ARITHABORT OFF 
GO
ALTER DATABASE [TP_elecciones] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TP_elecciones] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TP_elecciones] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TP_elecciones] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TP_elecciones] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TP_elecciones] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TP_elecciones] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TP_elecciones] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TP_elecciones] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TP_elecciones] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TP_elecciones] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TP_elecciones] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TP_elecciones] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TP_elecciones] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TP_elecciones] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TP_elecciones] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TP_elecciones] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TP_elecciones] SET RECOVERY FULL 
GO
ALTER DATABASE [TP_elecciones] SET  MULTI_USER 
GO
ALTER DATABASE [TP_elecciones] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TP_elecciones] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TP_elecciones] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TP_elecciones] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TP_elecciones] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TP_elecciones', N'ON'
GO
ALTER DATABASE [TP_elecciones] SET QUERY_STORE = OFF
GO
USE [TP_elecciones]
GO
/****** Object:  User [alumno]    Script Date: 27/6/2023 10:45:22 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Candidato]    Script Date: 27/6/2023 10:45:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidato](
	[IdCandidato] [int] NULL,
	[IdPartido] [int] NULL,
	[Apellido] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[FechaNacimiento] [date] NULL,
	[Foto] [varchar](50) NULL,
	[Postulacion] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partido]    Script Date: 27/6/2023 10:45:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partido](
	[IdPartido] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[Logo] [varchar](50) NULL,
	[SitioWeb] [varchar](50) NULL,
	[FechaFundacion] [date] NULL,
	[CantidadDiputados] [int] NULL,
	[CantidadSenadores] [int] NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [TP_elecciones] SET  READ_WRITE 
GO

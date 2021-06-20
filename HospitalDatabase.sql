USE [master]
GO

/****** Object:  Database [HospitalProject]    Script Date: 20.06.2021 14.11 ******/
CREATE DATABASE [HospitalProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HospitalProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\HospitalProject.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HospitalProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\HospitalProject_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HospitalProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [HospitalProject] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [HospitalProject] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [HospitalProject] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [HospitalProject] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [HospitalProject] SET ARITHABORT OFF 
GO

ALTER DATABASE [HospitalProject] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [HospitalProject] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [HospitalProject] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [HospitalProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [HospitalProject] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [HospitalProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [HospitalProject] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [HospitalProject] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [HospitalProject] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [HospitalProject] SET  DISABLE_BROKER 
GO

ALTER DATABASE [HospitalProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [HospitalProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [HospitalProject] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [HospitalProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [HospitalProject] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [HospitalProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [HospitalProject] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [HospitalProject] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [HospitalProject] SET  MULTI_USER 
GO

ALTER DATABASE [HospitalProject] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [HospitalProject] SET DB_CHAINING OFF 
GO

ALTER DATABASE [HospitalProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [HospitalProject] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [HospitalProject] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [HospitalProject] SET QUERY_STORE = OFF
GO

ALTER DATABASE [HospitalProject] SET  READ_WRITE 
GO
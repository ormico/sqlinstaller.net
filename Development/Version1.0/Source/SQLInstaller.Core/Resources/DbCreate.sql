/****** Object:  Database [{0}]    Script Date: 03/29/2007 12:50:49 ******/
USE [master]
GO
-- Get default data path
DECLARE @data_path nvarchar(512);
SET @data_path = (SELECT SUBSTRING(physical_name, 1, CHARINDEX(N'master.mdf', LOWER(physical_name)) - 1)
                  FROM master.sys.master_files
                  WHERE database_id = 1 AND file_id = 1);
-- Create database                  
EXECUTE( 'CREATE DATABASE [{0}] ON  PRIMARY 
( NAME = {0}, FILENAME = ''' + @data_path + '{0}.mdf'' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = {0}_log, FILENAME = ''' + @data_path + '{0}_log.ldf'' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)'
)
GO
EXEC dbo.sp_dbcmptlevel @dbname=N'{0}', @new_cmptlevel=90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [{0}].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [{0}] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [{0}] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [{0}] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [{0}] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [{0}] SET ARITHABORT OFF 
GO
ALTER DATABASE [{0}] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [{0}] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [{0}] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [{0}] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [{0}] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [{0}] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [{0}] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [{0}] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [{0}] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [{0}] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [{0}] SET  ENABLE_BROKER 
GO
ALTER DATABASE [{0}] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [{0}] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [{0}] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [{0}] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [{0}] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [{0}] SET  READ_WRITE 
GO
ALTER DATABASE [{0}] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [{0}] SET  MULTI_USER 
GO
ALTER DATABASE [{0}] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [{0}] SET DB_CHAINING OFF 
GO

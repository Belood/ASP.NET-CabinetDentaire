USE [master]
GO
/****** Object:  Database [CabinetDentaire]    Script Date: 4/20/2018 4:53:43 PM ******/
CREATE DATABASE [CabinetDentaire]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CabinetDentaire', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLASSIL\MSSQL\DATA\CabinetDentaire.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CabinetDentaire_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLASSIL\MSSQL\DATA\CabinetDentaire_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CabinetDentaire] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CabinetDentaire].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CabinetDentaire] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CabinetDentaire] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CabinetDentaire] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CabinetDentaire] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CabinetDentaire] SET ARITHABORT OFF 
GO
ALTER DATABASE [CabinetDentaire] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CabinetDentaire] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CabinetDentaire] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CabinetDentaire] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CabinetDentaire] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CabinetDentaire] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CabinetDentaire] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CabinetDentaire] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CabinetDentaire] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CabinetDentaire] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CabinetDentaire] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CabinetDentaire] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CabinetDentaire] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CabinetDentaire] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CabinetDentaire] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CabinetDentaire] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CabinetDentaire] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CabinetDentaire] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CabinetDentaire] SET  MULTI_USER 
GO
ALTER DATABASE [CabinetDentaire] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CabinetDentaire] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CabinetDentaire] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CabinetDentaire] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [CabinetDentaire] SET DELAYED_DURABILITY = DISABLED 
GO
USE [CabinetDentaire]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 4/20/2018 4:53:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/20/2018 4:53:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/20/2018 4:53:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/20/2018 4:53:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/20/2018 4:53:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/20/2018 4:53:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consultation]    Script Date: 4/20/2018 4:53:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consultation](
	[ConsultationID] [int] IDENTITY(1,1) NOT NULL,
	[PatientID] [int] NOT NULL,
	[PersonnelID] [int] NOT NULL,
	[Type] [nvarchar](50) NULL,
	[Observation] [nvarchar](max) NULL,
	[DateConsultation] [date] NULL,
 CONSTRAINT [PK_Consultation] PRIMARY KEY CLUSTERED 
(
	[ConsultationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 4/20/2018 4:53:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[PatientID] [int] IDENTITY(1,1) NOT NULL,
	[Nom] [nvarchar](50) NULL,
	[Prenom] [nvarchar](50) NULL,
	[Addresse] [nvarchar](max) NULL,
	[Email] [nvarchar](50) NULL,
	[NumTel] [nvarchar](50) NULL,
	[DateNaissance] [date] NULL,
	[Sexe] [nvarchar](50) NULL,
	[NumSS] [nvarchar](50) NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[PatientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personnel]    Script Date: 4/20/2018 4:53:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personnel](
	[PersonnelID] [int] IDENTITY(1,1) NOT NULL,
	[Nom] [nvarchar](50) NULL,
	[Prenom] [nvarchar](50) NULL,
	[Fonction] [nvarchar](50) NULL,
	[Addresse] [nvarchar](max) NULL,
	[Email] [nvarchar](50) NULL,
	[NumTel] [int] NULL,
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[NiveauDroits] [int] NULL,
 CONSTRAINT [PK_Personnel] PRIMARY KEY CLUSTERED 
(
	[PersonnelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RDV]    Script Date: 4/20/2018 4:53:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RDV](
	[RdvID] [int] IDENTITY(1,1) NOT NULL,
	[PatientID] [int] NOT NULL,
	[PersonnelID] [int] NOT NULL,
	[DateHeureRdv] [datetime2](7) NULL,
	[Motif] [nvarchar](max) NULL,
 CONSTRAINT [PK_RDV] PRIMARY KEY CLUSTERED 
(
	[RdvID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 4/20/2018 4:53:44 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 4/20/2018 4:53:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 4/20/2018 4:53:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 4/20/2018 4:53:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 4/20/2018 4:53:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 4/20/2018 4:53:44 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Consultation]  WITH CHECK ADD  CONSTRAINT [FK_Consultation_Patient] FOREIGN KEY([PatientID])
REFERENCES [dbo].[Patient] ([PatientID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Consultation] CHECK CONSTRAINT [FK_Consultation_Patient]
GO
ALTER TABLE [dbo].[Consultation]  WITH CHECK ADD  CONSTRAINT [FK_Consultation_PersonnelID] FOREIGN KEY([PersonnelID])
REFERENCES [dbo].[Personnel] ([PersonnelID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Consultation] CHECK CONSTRAINT [FK_Consultation_PersonnelID]
GO
ALTER TABLE [dbo].[RDV]  WITH CHECK ADD  CONSTRAINT [FK_RDV_PatientID] FOREIGN KEY([PatientID])
REFERENCES [dbo].[Patient] ([PatientID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RDV] CHECK CONSTRAINT [FK_RDV_PatientID]
GO
ALTER TABLE [dbo].[RDV]  WITH CHECK ADD  CONSTRAINT [FK_RDV_PersonnelID] FOREIGN KEY([PersonnelID])
REFERENCES [dbo].[Personnel] ([PersonnelID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RDV] CHECK CONSTRAINT [FK_RDV_PersonnelID]
GO
USE [master]
GO
ALTER DATABASE [CabinetDentaire] SET  READ_WRITE 
GO

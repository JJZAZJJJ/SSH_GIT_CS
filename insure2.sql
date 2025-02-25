USE [master]
GO
/****** Object:  Database [insure]    Script Date: 2024/9/8 10:06:25 ******/
CREATE DATABASE [insure]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'insure', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\insure.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'insure_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\insure_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [insure] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [insure].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [insure] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [insure] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [insure] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [insure] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [insure] SET ARITHABORT OFF 
GO
ALTER DATABASE [insure] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [insure] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [insure] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [insure] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [insure] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [insure] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [insure] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [insure] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [insure] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [insure] SET  DISABLE_BROKER 
GO
ALTER DATABASE [insure] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [insure] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [insure] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [insure] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [insure] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [insure] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [insure] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [insure] SET RECOVERY FULL 
GO
ALTER DATABASE [insure] SET  MULTI_USER 
GO
ALTER DATABASE [insure] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [insure] SET DB_CHAINING OFF 
GO
ALTER DATABASE [insure] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [insure] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [insure] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [insure] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'insure', N'ON'
GO
ALTER DATABASE [insure] SET QUERY_STORE = ON
GO
ALTER DATABASE [insure] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [insure]
GO
/****** Object:  Table [dbo].[commodity_liability_info]    Script Date: 2024/9/8 10:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[commodity_liability_info](
	[commodity_liability_info_id] [int] NOT NULL,
	[commodity_id] [int] NULL,
	[commodity_liability_info1] [varchar](100) NULL,
	[commodity_liability_info2] [varchar](100) NULL,
	[commodity_liability_info3] [varchar](100) NULL,
	[commodity_liability_info4] [varchar](100) NULL,
	[commodity_liability_info5] [varchar](100) NULL,
	[commodity_liability_info6] [varchar](100) NULL,
	[commodity_liability_info7] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[commodity_liability_info_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[commoidty]    Script Date: 2024/9/8 10:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[commoidty](
	[commodity_id] [int] NOT NULL,
	[commodity_name] [varchar](200) NOT NULL,
	[commodity_price] [varchar](200) NOT NULL,
	[commodity_introduce] [varchar](200) NOT NULL,
	[commodity_img] [varchar](200) NOT NULL,
	[commodity_age_start] [int] NULL,
	[commodity_age_end] [int] NOT NULL,
	[commodity_time_length] [varchar](200) NOT NULL,
	[commodity_applicable_gender] [varchar](200) NOT NULL,
	[commodity_applicable_location] [varchar](200) NOT NULL,
	[commodity_signing_form] [varchar](500) NOT NULL,
	[commodity_liability_zjs] [varchar](100) NOT NULL,
	[commodity_detailed_information1] [varchar](100) NULL,
	[commodity_detailed_information2] [varchar](100) NULL,
	[commodity_detailed_information3] [varchar](100) NULL,
	[commodity_type] [varchar](200) NULL,
	[commodity_hidden] [int] NULL,
 CONSTRAINT [PK__commoidt__4BD0F1472A9F2F0D] PRIMARY KEY CLUSTERED 
(
	[commodity_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[commoType]    Script Date: 2024/9/8 10:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[commoType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[typeName] [nvarchar](20) NULL,
	[hidden] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[my_order]    Script Date: 2024/9/8 10:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[my_order](
	[order_id] [varchar](30) NOT NULL,
	[user_id] [int] NULL,
	[commodity_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[my_order_info]    Script Date: 2024/9/8 10:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[my_order_info](
	[order_info_id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [varchar](30) NULL,
	[order_commodity_liability1] [varchar](200) NULL,
	[order_commodity_liability2] [varchar](200) NULL,
	[order_commodity_liability3] [varchar](200) NULL,
	[order_commodity_liability4] [varchar](200) NULL,
	[order_commodity_liability5] [varchar](200) NULL,
	[order_commodity_liability6] [varchar](200) NULL,
	[order_commodity_liability7] [varchar](200) NULL,
	[order_beneficiary_name] [varchar](100) NULL,
	[order_beneficiary_city] [varchar](100) NULL,
	[order_beneficiary_phone] [varchar](100) NULL,
	[order_commodity_time_start] [varchar](100) NULL,
	[order_commodity_time_end] [varchar](100) NULL,
	[order_commodity_time_length] [varchar](100) NULL,
	[order_sum_price] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[order_info_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[my_user]    Script Date: 2024/9/8 10:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[my_user](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_email] [varchar](20) NOT NULL,
	[user_password] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[my_user_info]    Script Date: 2024/9/8 10:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[my_user_info](
	[user_info_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_phone] [varchar](20) NULL,
	[user_money] [varchar](20) NOT NULL,
	[user_name] [varchar](20) NOT NULL,
	[user_brithday] [varchar](20) NULL,
	[user_sex] [varchar](20) NOT NULL,
	[user_status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_info_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserSay]    Script Date: 2024/9/8 10:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserSay](
	[sayId] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[commoId] [int] NULL,
	[userMsg] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[sayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[commodity_liability_info] ([commodity_liability_info_id], [commodity_id], [commodity_liability_info1], [commodity_liability_info2], [commodity_liability_info3], [commodity_liability_info4], [commodity_liability_info5], [commodity_liability_info6], [commodity_liability_info7]) VALUES (1, 1, N'意外傷害医療保険責任', N'死亡障害保険責任', N'予期せぬ傷害による死亡と障害', N'予期せぬ事態と病気で入院', N'重大な病気で入院する', N'不測の入院手当', N'病気で死亡したか、完全に障害がある')
INSERT [dbo].[commodity_liability_info] ([commodity_liability_info_id], [commodity_id], [commodity_liability_info1], [commodity_liability_info2], [commodity_liability_info3], [commodity_liability_info4], [commodity_liability_info5], [commodity_liability_info6], [commodity_liability_info7]) VALUES (2, 2, N'意外傷害医療保険責任', N'死亡障害保険責任', N'予期せぬ傷害による死亡と障害', N'予期せぬ事態と病気で入院', N'重大な病気で入院する', N'不測の入院手当', N'病気で死亡したか、完全に障害がある')
INSERT [dbo].[commodity_liability_info] ([commodity_liability_info_id], [commodity_id], [commodity_liability_info1], [commodity_liability_info2], [commodity_liability_info3], [commodity_liability_info4], [commodity_liability_info5], [commodity_liability_info6], [commodity_liability_info7]) VALUES (3, 3, N'意外傷害医療保険責任', N'死亡障害保険責任', N'予期せぬ傷害による死亡と障害', N'予期せぬ事態と病気で入院', N'重大な病気で入院する', N'不測の入院手当', N'病気で死亡したか、完全に障害がある')
INSERT [dbo].[commodity_liability_info] ([commodity_liability_info_id], [commodity_id], [commodity_liability_info1], [commodity_liability_info2], [commodity_liability_info3], [commodity_liability_info4], [commodity_liability_info5], [commodity_liability_info6], [commodity_liability_info7]) VALUES (4, 4, N'意外傷害医療保険責任', N'死亡障害保険責任', N'予期せぬ傷害による死亡と障害', N'予期せぬ事態と病気で入院', N'重大な病気で入院する', N'不測の入院手当', N'病気で死亡したか、完全に障害がある')
INSERT [dbo].[commodity_liability_info] ([commodity_liability_info_id], [commodity_id], [commodity_liability_info1], [commodity_liability_info2], [commodity_liability_info3], [commodity_liability_info4], [commodity_liability_info5], [commodity_liability_info6], [commodity_liability_info7]) VALUES (5, 5, N'意外傷害医療保険責任', N'死亡障害保険責任', N'予期せぬ傷害による死亡と障害', N'予期せぬ事態と病気で入院', N'重大な病気で入院する', N'不測の入院手当', N'病気で死亡したか、完全に障害がある')
INSERT [dbo].[commodity_liability_info] ([commodity_liability_info_id], [commodity_id], [commodity_liability_info1], [commodity_liability_info2], [commodity_liability_info3], [commodity_liability_info4], [commodity_liability_info5], [commodity_liability_info6], [commodity_liability_info7]) VALUES (6, 6, N'意外傷害医療保険責任', N'死亡障害保険責任', N'予期せぬ傷害による死亡と障害', N'予期せぬ事態と病気で入院', N'重大な病気で入院する', N'不測の入院手当', N'病気で死亡したか、完全に障害がある')
INSERT [dbo].[commodity_liability_info] ([commodity_liability_info_id], [commodity_id], [commodity_liability_info1], [commodity_liability_info2], [commodity_liability_info3], [commodity_liability_info4], [commodity_liability_info5], [commodity_liability_info6], [commodity_liability_info7]) VALUES (7, 7, N'意外傷害医療保険責任', N'死亡障害保険責任', N'予期せぬ傷害による死亡と障害', N'予期せぬ事態と病気で入院', N'重大な病気で入院する', N'不測の入院手当', N'病気で死亡したか、完全に障害がある')
INSERT [dbo].[commodity_liability_info] ([commodity_liability_info_id], [commodity_id], [commodity_liability_info1], [commodity_liability_info2], [commodity_liability_info3], [commodity_liability_info4], [commodity_liability_info5], [commodity_liability_info6], [commodity_liability_info7]) VALUES (8, 8, N'意外傷害医療保険責任', N'死亡障害保険責任', N'予期せぬ傷害による死亡と障害', N'予期せぬ事態と病気で入院', N'重大な病気で入院する', N'不測の入院手当', N'病気で死亡したか、完全に障害がある')
INSERT [dbo].[commodity_liability_info] ([commodity_liability_info_id], [commodity_id], [commodity_liability_info1], [commodity_liability_info2], [commodity_liability_info3], [commodity_liability_info4], [commodity_liability_info5], [commodity_liability_info6], [commodity_liability_info7]) VALUES (9, 9, N'意外傷害医療保険責任', N'死亡障害保険責任', N'予期せぬ傷害による死亡と障害', N'予期せぬ事態と病気で入院', N'重大な病気で入院する', N'不測の入院手当', N'病気で死亡したか、完全に障害がある')
INSERT [dbo].[commodity_liability_info] ([commodity_liability_info_id], [commodity_id], [commodity_liability_info1], [commodity_liability_info2], [commodity_liability_info3], [commodity_liability_info4], [commodity_liability_info5], [commodity_liability_info6], [commodity_liability_info7]) VALUES (10, 10, N'意外傷害医療保険責任', N'死亡障害保険責任', N'予期せぬ傷害による死亡と障害', N'予期せぬ事態と病気で入院', N'重大な病気で入院する', N'不測の入院手当', N'病気で死亡したか、完全に障害がある')
GO
INSERT [dbo].[commoidty] ([commodity_id], [commodity_name], [commodity_price], [commodity_introduce], [commodity_img], [commodity_age_start], [commodity_age_end], [commodity_time_length], [commodity_applicable_gender], [commodity_applicable_location], [commodity_signing_form], [commodity_liability_zjs], [commodity_detailed_information1], [commodity_detailed_information2], [commodity_detailed_information3], [commodity_type], [commodity_hidden]) VALUES (1, N'小児医療健康保険 E 金', N'44.2', N'疾病、医療、事故、ワクチン保障', N'images/jk1.jpg', 0, 18, N'1 年間', N'2', N'中国大陸?日本', N'メールボックスオーダ', N'保険情報を見て選択することを真剣に選択してください。保険をかけても返金はありません！', N'images/et1.jpg', NULL, NULL, N'1', 1)
INSERT [dbo].[commoidty] ([commodity_id], [commodity_name], [commodity_price], [commodity_introduce], [commodity_img], [commodity_age_start], [commodity_age_end], [commodity_time_length], [commodity_applicable_gender], [commodity_applicable_location], [commodity_signing_form], [commodity_liability_zjs], [commodity_detailed_information1], [commodity_detailed_information2], [commodity_detailed_information3], [commodity_type], [commodity_hidden]) VALUES (2, N'中高年医療保険', N'74.5', N'中高年の意外な多発シーンはカバーが広い', N'images/jk2.jpg', 30, 80, N'1 年間', N'2', N'中国大陸?日本', N'メールボックスオーダ', N'保険情報を見て選択することを真剣に選択してください。保険をかけても返金はありません！', N'images/et2.jpg', N'11', N'11', N'1', 0)
INSERT [dbo].[commoidty] ([commodity_id], [commodity_name], [commodity_price], [commodity_introduce], [commodity_img], [commodity_age_start], [commodity_age_end], [commodity_time_length], [commodity_applicable_gender], [commodity_applicable_location], [commodity_signing_form], [commodity_liability_zjs], [commodity_detailed_information1], [commodity_detailed_information2], [commodity_detailed_information3], [commodity_type], [commodity_hidden]) VALUES (3, N'短期意外保険', N'21.5', N'国内短距離旅行/旅行保険', N'images/jk3.jpg', 3, 65, N'1年間', N'2', N'中国大陸?日本', N'メールボックスオーダ', N'保険情報を見て選択することを真剣に選択してください。保険をかけても返金はありません！', N'images/et3.jpg', NULL, NULL, N'2', 1)
INSERT [dbo].[commoidty] ([commodity_id], [commodity_name], [commodity_price], [commodity_introduce], [commodity_img], [commodity_age_start], [commodity_age_end], [commodity_time_length], [commodity_applicable_gender], [commodity_applicable_location], [commodity_signing_form], [commodity_liability_zjs], [commodity_detailed_information1], [commodity_detailed_information2], [commodity_detailed_information3], [commodity_type], [commodity_hidden]) VALUES (4, N'個人傷害保険', N'60', N'事故、医療、交通保障のカバーが広い', N'images/jk4.jpg', 18, 65, N'1 年間', N'2', N'中国大陸?日本', N'メールボックスオーダ', N'保険情報を見て選択することを真剣に選択してください。保険をかけても返金はありません！', N'images/et4.jpg', NULL, NULL, N'2', 1)
INSERT [dbo].[commoidty] ([commodity_id], [commodity_name], [commodity_price], [commodity_introduce], [commodity_img], [commodity_age_start], [commodity_age_end], [commodity_time_length], [commodity_applicable_gender], [commodity_applicable_location], [commodity_signing_form], [commodity_liability_zjs], [commodity_detailed_information1], [commodity_detailed_information2], [commodity_detailed_information3], [commodity_type], [commodity_hidden]) VALUES (5, N'雇用者安心保険', N'80', N'雇用主の雇用リスクの効果的な移行', N'images/jk5.jpg', 20, 50, N'1 年間', N'2', N'中国大陸?日本', N'メールボックスオーダ', N'保険情報を見て選択することを真剣に選択してください。保険をかけても返金はありません！', N'images/et5.jpg', NULL, NULL, N'3', 1)
INSERT [dbo].[commoidty] ([commodity_id], [commodity_name], [commodity_price], [commodity_introduce], [commodity_img], [commodity_age_start], [commodity_age_end], [commodity_time_length], [commodity_applicable_gender], [commodity_applicable_location], [commodity_signing_form], [commodity_liability_zjs], [commodity_detailed_information1], [commodity_detailed_information2], [commodity_detailed_information3], [commodity_type], [commodity_hidden]) VALUES (6, N'企業団体総合保険', N'300', N'従業員の人身、交通事故の保障', N'images/jk6.jpg', 18, 50, N'1 年間', N'2', N'中国大陸?日本', N'メールボックスオーダ', N'保険情報を見て選択することを真剣に選択してください。保険をかけても返金はありません！', N'images/et6.jpg', NULL, NULL, N'3', 1)
INSERT [dbo].[commoidty] ([commodity_id], [commodity_name], [commodity_price], [commodity_introduce], [commodity_img], [commodity_age_start], [commodity_age_end], [commodity_time_length], [commodity_applicable_gender], [commodity_applicable_location], [commodity_signing_form], [commodity_liability_zjs], [commodity_detailed_information1], [commodity_detailed_information2], [commodity_detailed_information3], [commodity_type], [commodity_hidden]) VALUES (7, N'セルフサービス旅行保険', N'60', N'最大 50 万人の意外傷害保障', N'images/jk7.jpg', 0, 80, N'1 年間', N'2', N'中国大陸?日本', N'メールボックスオーダ', N'保険情報を見て選択することを真剣に選択してください。保険をかけても返金はありません！', N'images/et7.jpg', NULL, NULL, N'4', 1)
INSERT [dbo].[commoidty] ([commodity_id], [commodity_name], [commodity_price], [commodity_introduce], [commodity_img], [commodity_age_start], [commodity_age_end], [commodity_time_length], [commodity_applicable_gender], [commodity_applicable_location], [commodity_signing_form], [commodity_liability_zjs], [commodity_detailed_information1], [commodity_detailed_information2], [commodity_detailed_information3], [commodity_type], [commodity_hidden]) VALUES (8, N'グローバル観光保険', N'200', N'27 項目の出国保障、多言語国際救援', N'images/jk8.jpg', 0, 80, N'1 年間', N'2', N'中国大陸?日本', N'メールボックスオーダ', N'保険情報を見て選択することを真剣に選択してください。保険をかけても返金はありません！', N'images/et8.jpg', NULL, NULL, N'4', 1)
INSERT [dbo].[commoidty] ([commodity_id], [commodity_name], [commodity_price], [commodity_introduce], [commodity_img], [commodity_age_start], [commodity_age_end], [commodity_time_length], [commodity_applicable_gender], [commodity_applicable_location], [commodity_signing_form], [commodity_liability_zjs], [commodity_detailed_information1], [commodity_detailed_information2], [commodity_detailed_information3], [commodity_type], [commodity_hidden]) VALUES (9, N'家庭財産保険', N'30', N'室内財産、家屋主体、内装はすべて保障', N'images/jk9.jpg', 18, 80, N'1 年間', N'2', N'中国大陸?日本', N'メールボックスオーダ', N'保険情報を見て選択することを真剣に選択してください。保険をかけても返金はありません！', N'images/et9.jpg', N'请求', N'穹丘', N'5', 0)
INSERT [dbo].[commoidty] ([commodity_id], [commodity_name], [commodity_price], [commodity_introduce], [commodity_img], [commodity_age_start], [commodity_age_end], [commodity_time_length], [commodity_applicable_gender], [commodity_applicable_location], [commodity_signing_form], [commodity_liability_zjs], [commodity_detailed_information1], [commodity_detailed_information2], [commodity_detailed_information3], [commodity_type], [commodity_hidden]) VALUES (10, N'無事一家の幸福', N'100', N'家屋財産+個人の意外性を保障する', N'images/jk10.jpg', 0, 80, N'1 年間', N'2', N'中国大陸?日本', N'メールボックスオーダ', N'保険情報を見て選択することを真剣に選択してください。保険をかけても返金はありません！', N'images/et10.jpg', N'15', N'15', N'5', 0)
INSERT [dbo].[commoidty] ([commodity_id], [commodity_name], [commodity_price], [commodity_introduce], [commodity_img], [commodity_age_start], [commodity_age_end], [commodity_time_length], [commodity_applicable_gender], [commodity_applicable_location], [commodity_signing_form], [commodity_liability_zjs], [commodity_detailed_information1], [commodity_detailed_information2], [commodity_detailed_information3], [commodity_type], [commodity_hidden]) VALUES (12, N'保险12', N'12', N'测试保险12', N'images/jk5.jpg', 12, 24, N'1', N'1', N'中国and日本', N'メールボックスオーダ', N'不适用人群别买', N'images/et3.jpg', N'3', N'2', N'3', 1)
GO
SET IDENTITY_INSERT [dbo].[commoType] ON 

INSERT [dbo].[commoType] ([id], [typeName], [hidden]) VALUES (1, N'全部保险', 1)
INSERT [dbo].[commoType] ([id], [typeName], [hidden]) VALUES (2, N'健全保险', 0)
INSERT [dbo].[commoType] ([id], [typeName], [hidden]) VALUES (3, N'意外保险', 1)
INSERT [dbo].[commoType] ([id], [typeName], [hidden]) VALUES (4, N'企业保险', 1)
INSERT [dbo].[commoType] ([id], [typeName], [hidden]) VALUES (5, N'旅游保险', 1)
INSERT [dbo].[commoType] ([id], [typeName], [hidden]) VALUES (6, N'投资保险', 1)
SET IDENTITY_INSERT [dbo].[commoType] OFF
GO
INSERT [dbo].[my_order] ([order_id], [user_id], [commodity_id]) VALUES (N'20230321174243', 1, 8)
INSERT [dbo].[my_order] ([order_id], [user_id], [commodity_id]) VALUES (N'202406140128', 13, 3)
INSERT [dbo].[my_order] ([order_id], [user_id], [commodity_id]) VALUES (N'202406165127', 13, 3)
INSERT [dbo].[my_order] ([order_id], [user_id], [commodity_id]) VALUES (N'202406170025', 13, 3)
INSERT [dbo].[my_order] ([order_id], [user_id], [commodity_id]) VALUES (N'202406170053', 13, 4)
INSERT [dbo].[my_order] ([order_id], [user_id], [commodity_id]) VALUES (N'202406182344', 14, 3)
INSERT [dbo].[my_order] ([order_id], [user_id], [commodity_id]) VALUES (N'202406225925', 18, 2)
GO
SET IDENTITY_INSERT [dbo].[my_order_info] ON 

INSERT [dbo].[my_order_info] ([order_info_id], [order_id], [order_commodity_liability1], [order_commodity_liability2], [order_commodity_liability3], [order_commodity_liability4], [order_commodity_liability5], [order_commodity_liability6], [order_commodity_liability7], [order_beneficiary_name], [order_beneficiary_city], [order_beneficiary_phone], [order_commodity_time_start], [order_commodity_time_end], [order_commodity_time_length], [order_sum_price]) VALUES (8, N'202406165127', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'张1三', N'日本', N'12241111137', N'2024', N'2025', N'1', N'150000')
INSERT [dbo].[my_order_info] ([order_info_id], [order_id], [order_commodity_liability1], [order_commodity_liability2], [order_commodity_liability3], [order_commodity_liability4], [order_commodity_liability5], [order_commodity_liability6], [order_commodity_liability7], [order_beneficiary_name], [order_beneficiary_city], [order_beneficiary_phone], [order_commodity_time_start], [order_commodity_time_end], [order_commodity_time_length], [order_sum_price]) VALUES (9, N'202406170053', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'张1三', N'日本', N'12241111137', N'2024', N'2026', N'2', N'4500000')
INSERT [dbo].[my_order_info] ([order_info_id], [order_id], [order_commodity_liability1], [order_commodity_liability2], [order_commodity_liability3], [order_commodity_liability4], [order_commodity_liability5], [order_commodity_liability6], [order_commodity_liability7], [order_beneficiary_name], [order_beneficiary_city], [order_beneficiary_phone], [order_commodity_time_start], [order_commodity_time_end], [order_commodity_time_length], [order_sum_price]) VALUES (10, N'202406182344', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'张1三', N'日本', N'12241111137', N'2024', N'2025', N'1', N'850000')
INSERT [dbo].[my_order_info] ([order_info_id], [order_id], [order_commodity_liability1], [order_commodity_liability2], [order_commodity_liability3], [order_commodity_liability4], [order_commodity_liability5], [order_commodity_liability6], [order_commodity_liability7], [order_beneficiary_name], [order_beneficiary_city], [order_beneficiary_phone], [order_commodity_time_start], [order_commodity_time_end], [order_commodity_time_length], [order_sum_price]) VALUES (12, N'202406140128', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'十一十', N'日本', N'12241111137', N'2024', N'2028', N'4', N'300000')
INSERT [dbo].[my_order_info] ([order_info_id], [order_id], [order_commodity_liability1], [order_commodity_liability2], [order_commodity_liability3], [order_commodity_liability4], [order_commodity_liability5], [order_commodity_liability6], [order_commodity_liability7], [order_beneficiary_name], [order_beneficiary_city], [order_beneficiary_phone], [order_commodity_time_start], [order_commodity_time_end], [order_commodity_time_length], [order_sum_price]) VALUES (14, N'202406170025', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'张1三', N'日本', N'12241111137', N'2024', N'2027', N'3', N'2550000')
INSERT [dbo].[my_order_info] ([order_info_id], [order_id], [order_commodity_liability1], [order_commodity_liability2], [order_commodity_liability3], [order_commodity_liability4], [order_commodity_liability5], [order_commodity_liability6], [order_commodity_liability7], [order_beneficiary_name], [order_beneficiary_city], [order_beneficiary_phone], [order_commodity_time_start], [order_commodity_time_end], [order_commodity_time_length], [order_sum_price]) VALUES (15, N'202406225925', N'35 万円', N'7 万円', N'保険に加入しない', N'1 万円', N'保険に加入しない', N'保険に加入しない', N'保険に加入しない', N'张1三', N'中国', N'33332222111', N'2024', N'2028', N'4', N'30000')
SET IDENTITY_INSERT [dbo].[my_order_info] OFF
GO
SET IDENTITY_INSERT [dbo].[my_user] ON 

INSERT [dbo].[my_user] ([user_id], [user_email], [user_password]) VALUES (1, N'592660626@qq.com', N'123123123')
INSERT [dbo].[my_user] ([user_id], [user_email], [user_password]) VALUES (2, N'123123@qq.com', N'123456')
INSERT [dbo].[my_user] ([user_id], [user_email], [user_password]) VALUES (4, N'222222@qq.com', N'222222')
INSERT [dbo].[my_user] ([user_id], [user_email], [user_password]) VALUES (5, N'333333@qq.com', N'333333')
INSERT [dbo].[my_user] ([user_id], [user_email], [user_password]) VALUES (6, N'666666@qq.com', N'666666')
INSERT [dbo].[my_user] ([user_id], [user_email], [user_password]) VALUES (7, N'777777@qq.com', N'777777')
INSERT [dbo].[my_user] ([user_id], [user_email], [user_password]) VALUES (8, N'888888@qq.com', N'888888')
INSERT [dbo].[my_user] ([user_id], [user_email], [user_password]) VALUES (9, N'999999@qq.com', N'999999')
INSERT [dbo].[my_user] ([user_id], [user_email], [user_password]) VALUES (13, N'101010@qq.com', N'202020')
INSERT [dbo].[my_user] ([user_id], [user_email], [user_password]) VALUES (14, N'202020@qq.com', N'202020')
INSERT [dbo].[my_user] ([user_id], [user_email], [user_password]) VALUES (15, N'606060@qq.com', N'666666')
INSERT [dbo].[my_user] ([user_id], [user_email], [user_password]) VALUES (17, N'666688@qq.com', N'666666')
INSERT [dbo].[my_user] ([user_id], [user_email], [user_password]) VALUES (18, N'333222@qq.com', N'333222')
SET IDENTITY_INSERT [dbo].[my_user] OFF
GO
SET IDENTITY_INSERT [dbo].[my_user_info] ON 

INSERT [dbo].[my_user_info] ([user_info_id], [user_id], [user_phone], [user_money], [user_name], [user_brithday], [user_sex], [user_status]) VALUES (1, 1, N'1524448937', N'3500', N'张三', N'20020203', N'先生', 1)
INSERT [dbo].[my_user_info] ([user_info_id], [user_id], [user_phone], [user_money], [user_name], [user_brithday], [user_sex], [user_status]) VALUES (9, 7, N'77777777777', N'0', N'七七七', N'77770101', N'男', 1)
INSERT [dbo].[my_user_info] ([user_info_id], [user_id], [user_phone], [user_money], [user_name], [user_brithday], [user_sex], [user_status]) VALUES (11, 9, N'99999999999', N'0', N'jiujiujiu', N'99990101', N'男', 1)
INSERT [dbo].[my_user_info] ([user_info_id], [user_id], [user_phone], [user_money], [user_name], [user_brithday], [user_sex], [user_status]) VALUES (14, 13, N'10101010101', N'1000', N'十一十', N'20040505', N'女士', 0)
INSERT [dbo].[my_user_info] ([user_info_id], [user_id], [user_phone], [user_money], [user_name], [user_brithday], [user_sex], [user_status]) VALUES (15, 14, N'11111111333', N'29150000', N'里斯李', N'20040101', N'女士', 1)
INSERT [dbo].[my_user_info] ([user_info_id], [user_id], [user_phone], [user_money], [user_name], [user_brithday], [user_sex], [user_status]) VALUES (17, 17, N'26262626666', N'0', N'赵七', N'20040101', N'先生', 1)
INSERT [dbo].[my_user_info] ([user_info_id], [user_id], [user_phone], [user_money], [user_name], [user_brithday], [user_sex], [user_status]) VALUES (18, 18, N'33332222111', N'30000', N'三三', N'20030303', N'男', 0)
SET IDENTITY_INSERT [dbo].[my_user_info] OFF
GO
SET IDENTITY_INSERT [dbo].[UserSay] ON 

INSERT [dbo].[UserSay] ([sayId], [userId], [commoId], [userMsg]) VALUES (1, 2, 1, N'我tm买爆！')
INSERT [dbo].[UserSay] ([sayId], [userId], [commoId], [userMsg]) VALUES (2, 1, 1, N'买了就吃亏！')
INSERT [dbo].[UserSay] ([sayId], [userId], [commoId], [userMsg]) VALUES (3, 14, 1, N'123')
SET IDENTITY_INSERT [dbo].[UserSay] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__my_user__B0FBA2124AFF6806]    Script Date: 2024/9/8 10:06:25 ******/
ALTER TABLE [dbo].[my_user] ADD UNIQUE NONCLUSTERED 
(
	[user_email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__my_user___6A5ACCAB52DB3A49]    Script Date: 2024/9/8 10:06:25 ******/
ALTER TABLE [dbo].[my_user_info] ADD UNIQUE NONCLUSTERED 
(
	[user_phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[commoType] ADD  DEFAULT ((0)) FOR [hidden]
GO
ALTER TABLE [dbo].[commodity_liability_info]  WITH CHECK ADD  CONSTRAINT [FK__commodity__commo__46E78A0C] FOREIGN KEY([commodity_id])
REFERENCES [dbo].[commoidty] ([commodity_id])
GO
ALTER TABLE [dbo].[commodity_liability_info] CHECK CONSTRAINT [FK__commodity__commo__46E78A0C]
GO
ALTER TABLE [dbo].[my_order]  WITH CHECK ADD  CONSTRAINT [FK__my_order__commod__5CD6CB2B] FOREIGN KEY([commodity_id])
REFERENCES [dbo].[commoidty] ([commodity_id])
GO
ALTER TABLE [dbo].[my_order] CHECK CONSTRAINT [FK__my_order__commod__5CD6CB2B]
GO
ALTER TABLE [dbo].[my_order]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[my_user] ([user_id])
GO
ALTER TABLE [dbo].[my_order_info]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[my_order] ([order_id])
GO
ALTER TABLE [dbo].[my_user_info]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[my_user] ([user_id])
GO
USE [master]
GO
ALTER DATABASE [insure] SET  READ_WRITE 
GO

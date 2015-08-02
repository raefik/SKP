/*
Navicat SQL Server Data Transfer

Source Server         : ges_seleratr
Source Server Version : 105000
Source Host           : mssql2008r2.ukdns.biz:1433
Source Database       : seleratr_ges2014
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 105000
File Encoding         : 65001

Date: 2014-03-27 02:49:52
*/


-- ----------------------------
-- Table structure for sysdiagrams
-- ----------------------------
DROP TABLE [dbo].[sysdiagrams]
GO
CREATE TABLE [dbo].[sysdiagrams] (
[name] sysname NOT NULL ,
[principal_id] int NOT NULL ,
[diagram_id] int NOT NULL IDENTITY(1,1) ,
[version] int NULL ,
[definition] varbinary(MAX) NULL 
)


GO

-- ----------------------------
-- Records of sysdiagrams
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sysdiagrams] ON
GO
SET IDENTITY_INSERT [dbo].[sysdiagrams] OFF
GO

-- ----------------------------
-- Table structure for tblArticlesCategory
-- ----------------------------
DROP TABLE [dbo].[tblArticlesCategory]
GO
CREATE TABLE [dbo].[tblArticlesCategory] (
[ArticlesCat_ID] int NOT NULL IDENTITY(1,1) ,
[ArticlesCat_Name] nvarchar(255) NULL ,
[ArticlesCat_Description] ntext NULL ,
[ArticlesCat_Image] nvarchar(255) NULL ,
[ArticlesCat_Organiser] bit NULL ,
[ArticlesCat_Order] smallint NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[tblArticlesCategory]', RESEED, 21)
GO

-- ----------------------------
-- Records of tblArticlesCategory
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tblArticlesCategory] ON
GO
INSERT INTO [dbo].[tblArticlesCategory] ([ArticlesCat_ID], [ArticlesCat_Name], [ArticlesCat_Description], [ArticlesCat_Image], [ArticlesCat_Organiser], [ArticlesCat_Order]) VALUES (N'11', N'LATEST NEWS & EVENTS', N'LATEST NEWS ARTICLES', null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblArticlesCategory] ([ArticlesCat_ID], [ArticlesCat_Name], [ArticlesCat_Description], [ArticlesCat_Image], [ArticlesCat_Organiser], [ArticlesCat_Order]) VALUES (N'20', N'ABOUT US', N'ABOUT US DESCRIPTIONS', null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblArticlesCategory] ([ArticlesCat_ID], [ArticlesCat_Name], [ArticlesCat_Description], [ArticlesCat_Image], [ArticlesCat_Organiser], [ArticlesCat_Order]) VALUES (N'21', N'MEDIA', N'ALL ABOUT MEDIA', null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblArticlesCategory] ([ArticlesCat_ID], [ArticlesCat_Name], [ArticlesCat_Description], [ArticlesCat_Image], [ArticlesCat_Organiser], [ArticlesCat_Order]) VALUES (N'1', N'ANNOUNCEMENT', N'ANNOUNCEMENT ARTICLESGH', null, N'1', N'1')
GO
GO
INSERT INTO [dbo].[tblArticlesCategory] ([ArticlesCat_ID], [ArticlesCat_Name], [ArticlesCat_Description], [ArticlesCat_Image], [ArticlesCat_Organiser], [ArticlesCat_Order]) VALUES (N'17', N'CONFERENCE AND EVENT NEWS', N'ALL ARTICLE SUMMARY ABOUT CONFERENCE AND EVENT', null, null, N'2')
GO
GO
INSERT INTO [dbo].[tblArticlesCategory] ([ArticlesCat_ID], [ArticlesCat_Name], [ArticlesCat_Description], [ArticlesCat_Image], [ArticlesCat_Organiser], [ArticlesCat_Order]) VALUES (N'19', N'MEMBERS ANNOUCEMENT', N'ANNOUNCEMENT ARTICLES FOR MEMBERS ONLY', null, null, N'11')
GO
GO
INSERT INTO [dbo].[tblArticlesCategory] ([ArticlesCat_ID], [ArticlesCat_Name], [ArticlesCat_Description], [ArticlesCat_Image], [ArticlesCat_Organiser], [ArticlesCat_Order]) VALUES (N'14', N'SYMPOSIUM', N'SYMPOSIUM CONTENT', null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblArticlesCategory] ([ArticlesCat_ID], [ArticlesCat_Name], [ArticlesCat_Description], [ArticlesCat_Image], [ArticlesCat_Organiser], [ArticlesCat_Order]) VALUES (N'16', N'CONFERENCE AND SEMINAR', N'ALL ARTICLE ABOUT CONFERENCE AND SEMINAR', null, null, N'9')
GO
GO
INSERT INTO [dbo].[tblArticlesCategory] ([ArticlesCat_ID], [ArticlesCat_Name], [ArticlesCat_Description], [ArticlesCat_Image], [ArticlesCat_Organiser], [ArticlesCat_Order]) VALUES (N'18', N'MENU CONTENT', N'ALL ABOUT GES', null, null, N'9')
GO
GO
SET IDENTITY_INSERT [dbo].[tblArticlesCategory] OFF
GO

-- ----------------------------
-- Table structure for tblArticlesDetail
-- ----------------------------
DROP TABLE [dbo].[tblArticlesDetail]
GO
CREATE TABLE [dbo].[tblArticlesDetail] (
[ArticlesDetail_ID] int NOT NULL IDENTITY(1,1) ,
[ArticlesHeader_SID] nvarchar(40) NOT NULL ,
[ArticlesDetail] ntext NULL ,
[ArticlesAuthors] ntext NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[tblArticlesDetail]', RESEED, 41)
GO

-- ----------------------------
-- Records of tblArticlesDetail
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tblArticlesDetail] ON
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'1', N'44bc88002765419eb195895c35d6da44', N'<p>
	a</p>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'2', N'b4e52a2e98ab4bd5a94a039474884b13', N'<p>
	<span style="color: rgb(0, 0, 0); font-family: ''Open Sans'', sans-serif; font-size: 11px; line-height: 15px;">http://arionline.uitm.edu.my/ari/uploads/xxxxxx.jpg</span><span style="color: rgb(0, 0, 0); font-family: ''Open Sans'', sans-serif; font-size: 11px; line-height: 15px;">http://arionline.uitm.edu.my/ari/uploads/xxxxxx.jpg</span><span style="color: rgb(0, 0, 0); font-family: ''Open Sans'', sans-serif; font-size: 11px; line-height: 15px;">http://arionline.uitm.edu.my/ari/uploads/xxxxxx.jpg</span><span style="color: rgb(0, 0, 0); font-family: ''Open Sans'', sans-serif; font-size: 11px; line-height: 15px;">http://arionline.uitm.edu.my/ari/uploads/xxxxxx.jpg</span></p>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'3', N'f46ad93e9753494f810c71abfdb4c918', N'<p>
	<span style="color: rgb(0, 0, 0); font-family: ''Open Sans'', sans-serif; font-size: 11px; line-height: 15px;">http://arionline.uitm.edu.my/ari/uploads/xxxxxx.jpg</span><span style="color: rgb(0, 0, 0); font-family: ''Open Sans'', sans-serif; font-size: 11px; line-height: 15px;">http://arionline.uitm.edu.my/ari/uploads/xxxxxx.jpg</span><span style="color: rgb(0, 0, 0); font-family: ''Open Sans'', sans-serif; font-size: 11px; line-height: 15px;">http://arionline.uitm.edu.my/ari/uploads/xxxxxx.jpg</span><span style="color: rgb(0, 0, 0); font-family: ''Open Sans'', sans-serif; font-size: 11px; line-height: 15px;">http://arionline.uitm.edu.my/ari/uploads/xxxxxx.jpg</span><span style="color: rgb(0, 0, 0); font-family: ''Open Sans'', sans-serif; font-size: 11px; line-height: 15px;">http://arionline.uitm.edu.my/ari/uploads/xxxxxx.jpg</span><span style="color: rgb(0, 0, 0); font-family: ''Open Sans'', sans-serif; font-size: 11px; line-height: 15px;">http://arionline.uitm.edu.my/ari/uploads/xxxxxx.jpg</span></p>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'4', N'a26ed7b1afc2495b96a4030321ebcdc0', N'<p>
	aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'5', N'dcee416e21a944c8a1423f80e1492c75', N'<p>
	aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaasssssssssssssssssssssssssss</p>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'6', N'69140b15b81d4a5fa53495f6c98b6c85', N'<table width="550px">
	<tbody>
		<tr>
			<td class="other" nowrap="true" width="120px">
				Mohd Zahurin ...</td>
			<td width="330px">
				assalam&nbsp;</td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td class="otherCont" nowrap="true" width="120px">
				?</td>
			<td width="330px">
				adekah anda berada di tempat anda&nbsp;</td>
			<td class="showTimestamp tsDisplay" nowrap="true" width="100px">
				3:22:51 PM</td>
		</tr>
		<tr>
			<td class="myself" nowrap="true" width="120px">
				Azniza Md Aziz...</td>
			<td width="330px">
				yer&nbsp;</td>
			<td class="showTimestamp tsDisplay" nowrap="true" width="100px">
				3:23:19 PM</td>
		</tr>
		<tr>
			<td class="other" nowrap="true" width="120px">
				Mohd Zahurin ...</td>
			<td width="330px">
				Datin khorsiah mencari anda&nbsp;</td>
			<td class="showTimestamp tsDisplay" nowrap="true" width="100px">
				3:23:35 PM</td>
		</tr>
		<tr>
			<td class="otherCont" nowrap="true" width="120px">
				?</td>
			<td width="330px">
				mengenai emeeting&nbsp;</td>
			<td class="showTimestamp tsDisplay" nowrap="true" width="100px">
				3:23:38 PM</td>
		</tr>
		<tr>
			<td class="otherCont" nowrap="true" width="120px">
				?</td>
			<td width="330px">
				file JKE besar sangat &nbsp;</td>
			<td class="showTimestamp tsDisplay" nowrap="true" width="100px">
				3:23:44 PM</td>
		</tr>
		<tr>
			<td class="otherCont" nowrap="true" width="120px">
				?</td>
			<td width="330px">
				tak dapat nak save&nbsp;</td>
			<td class="showTimestamp tsDisplay" nowrap="true" width="100px">
				3:23:47 PM</td>
		</tr>
		<tr>
			<td class="otherCont" nowrap="true" width="120px">
				?</td>
			<td width="330px">
				please call her back 2031&nbsp;</td>
			<td class="showTimestamp tsDisplay" nowrap="true" width="100px">
				3:23:56 PM</td>
		</tr>
		<tr>
			<td class="otherCont" nowrap="true" width="120px">
				?</td>
			<td width="330px">
				<img alt="grin" src="file://C:/Users/User.UiTM-PC/SametimeTranscripts/CN=Mohd Zahurin Ramli_OU=InfoT/20140124/IMAGE$2F5066E837C94AEE" /></td>
			<td class="showTimestamp tsDisplay" nowrap="true" width="100px">
				3:24:02 PM</td>
		</tr>
		<tr>
			<td class="myself" nowrap="true" width="120px">
				Azniza Md Aziz...</td>
			<td width="330px">
				ok dah&nbsp;</td>
			<td class="showTimestamp tsDisplay" nowrap="true" width="100px">
				3:32:05 PM</td>
		</tr>
		<tr>
			<td class="other" nowrap="true" width="120px">
				Mohd Zahurin ...</td>
			<td width="330px">
				thanks alot&nbsp;</td>
			<td class="showTimestamp tsDisplay" nowrap="true" width="100px">
				3:32:11 PM</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'7', N'0abb1d66a8dd4cd0bc3708e17ccc5db9', N'<p>
	strArticleEndstrArticleEndstrArticleEndstrArticleEndstrArticleEndstrArticleEndstrArticleEndstrArticleEndstrArticleEndstrArticleEnd</p>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'13', N'995d533a21bb4bab95c99dadb8daaafe', N'', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'15', N'8d8246716016409a8b927e7f53d13a41', N'<p>
	qqqqqqqqqqqqqqqqaaaaaaaaaaaaaaaaaaaaaqqqqqqqqqqqqqqa</p>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'16', N'05637539664343b0948c22eeaa80496a', N'<p>
	a</p>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'17', N'77a8f8e898b04b2ba0b97f25342712e3', N'<p>
	Tiada ElektikTiada ElektikTiada Elektik</p>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'22', N'b2c139b148a449daa352a3e48b7c1a6f', N'', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'24', N'38fae4c3ee0544e394fb1b1494f797e6', N'<p>
	test by kak ad</p>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'25', N'dcd269ccbb294411ae444b4f5c1df329', N'<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, sans-serif; line-height: 18px; text-align: justify;">
	Accounting Research Institute (ARI) will be organizing one day talk by Prof Roger Willet.</p>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, sans-serif; line-height: 18px; text-align: justify;">
	This talk is aimed to get some inputs from Prof Roger Willet, who experts in management accounting area and the statistical analysis of accounting numbers and international accounting.</p>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, sans-serif; line-height: 18px; text-align: justify;">
	<br style="padding: 0px; margin: 0px;" />
	Details of the talk as follows:</p>
<table border="0" style="padding: 0px; margin: 0px; text-align: justify; border: 0px; outline: 0px; border-collapse: collapse; border-spacing: 0px; empty-cells: show; color: rgb(0, 0, 0); font-family: Verdana, Arial, sans-serif; line-height: 18px; width: 563px; height: 117px;">
	<tbody style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;">
		<tr class="alt-row" style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;">
			<td style="padding: 5px; margin: 0px; line-height: normal; text-align: left; border: 0px; outline: 0px; background-color: transparent;">
				<h3 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 17px; font-weight: normal; color: rgb(102, 102, 102); border: 0px; outline: 0px; background-color: transparent; line-height: 1.2;">
					<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent; color: rgb(0, 0, 255);">Date</span></h3>
			</td>
			<td style="padding: 5px; margin: 0px; line-height: normal; text-align: left; border: 0px; outline: 0px; background-color: transparent;">
				<h3 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 17px; font-weight: normal; color: rgb(102, 102, 102); border: 0px; outline: 0px; background-color: transparent; line-height: 1.2;">
					<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent; color: rgb(0, 0, 255);">:</span></h3>
			</td>
			<td style="padding: 5px; margin: 0px; line-height: normal; text-align: left; border: 0px; outline: 0px; background-color: transparent;">
				<h3 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 17px; font-weight: normal; color: rgb(102, 102, 102); border: 0px; outline: 0px; background-color: transparent; line-height: 1.2;">
					<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent; color: rgb(0, 0, 255);">14 February 2013 (Thursday)</span></h3>
			</td>
		</tr>
		<tr style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: rgb(251, 251, 251);">
			<td style="padding: 5px; margin: 0px; line-height: normal; text-align: left; border: 0px; outline: 0px; background-color: transparent;">
				<h3 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 17px; font-weight: normal; color: rgb(102, 102, 102); border: 0px; outline: 0px; background-color: transparent; line-height: 1.2;">
					<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent; color: rgb(0, 0, 255);">Venue</span></h3>
			</td>
			<td style="padding: 5px; margin: 0px; line-height: normal; text-align: left; border: 0px; outline: 0px; background-color: transparent;">
				<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent; color: rgb(0, 0, 255);">:</span></td>
			<td style="padding: 5px; margin: 0px; line-height: normal; text-align: left; border: 0px; outline: 0px; background-color: transparent;">
				<h3 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 17px; font-weight: normal; color: rgb(102, 102, 102); border: 0px; outline: 0px; background-color: transparent; line-height: 1.2;">
					<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent; color: rgb(0, 0, 255);">Level 12, Menara SAAS, UiTM</span></h3>
			</td>
		</tr>
		<tr class="alt-row" style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;">
			<td style="padding: 5px; margin: 0px; line-height: normal; text-align: left; border: 0px; outline: 0px; background-color: transparent;">
				<h3 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 17px; font-weight: normal; color: rgb(102, 102, 102); border: 0px; outline: 0px; background-color: transparent; line-height: 1.2;">
					<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent; color: rgb(0, 0, 255);">Time</span></h3>
			</td>
			<td style="padding: 5px; margin: 0px; line-height: normal; text-align: left; border: 0px; outline: 0px; background-color: transparent;">
				<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent; color: rgb(0, 0, 255);">:</span></td>
			<td style="padding: 5px; margin: 0px; line-height: normal; text-align: left; border: 0px; outline: 0px; background-color: transparent;">
				<h3 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 17px; font-weight: normal; color: rgb(102, 102, 102); border: 0px; outline: 0px; background-color: transparent; line-height: 1.2;">
					<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent; color: rgb(0, 0, 255);">9.00 am - 5.00 pm</span></h3>
			</td>
		</tr>
		<tr style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: rgb(251, 251, 251);">
			<td style="padding: 5px; margin: 0px; line-height: normal; text-align: left; border: 0px; outline: 0px; background-color: transparent;">
				<h3 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 17px; font-weight: normal; color: rgb(102, 102, 102); border: 0px; outline: 0px; background-color: transparent; line-height: 1.2;">
					<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent; color: rgb(0, 0, 255);">Speaker</span></h3>
				<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; background-color: transparent;">
					&nbsp;</p>
				<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; background-color: transparent;">
					&nbsp;</p>
			</td>
			<td style="padding: 5px; margin: 0px; line-height: normal; text-align: left; border: 0px; outline: 0px; background-color: transparent;">
				<h3 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 17px; font-weight: normal; color: rgb(102, 102, 102); border: 0px; outline: 0px; background-color: transparent; line-height: 1.2;">
					<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent; color: rgb(0, 0, 255);">:</span></h3>
				<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; background-color: transparent;">
					&nbsp;</p>
				<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; background-color: transparent;">
					&nbsp;</p>
			</td>
			<td style="padding: 5px; margin: 0px; line-height: normal; text-align: left; border: 0px; outline: 0px; background-color: transparent;">
				<h3 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 17px; font-weight: normal; color: rgb(102, 102, 102); border: 0px; outline: 0px; background-color: transparent; line-height: 1.2;">
					<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent; color: rgb(0, 0, 255);">Professor Roger Willett</span></h3>
				<h3 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 17px; font-weight: normal; color: rgb(102, 102, 102); border: 0px; outline: 0px; background-color: transparent; line-height: 1.2;">
					<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent; color: rgb(0, 0, 255);"><a href="http://ari.uitm.edu.my/images/stories/Download_File/cv-rw.pdf" style="padding: 0px; margin: 0px; color: rgb(102, 0, 102); text-decoration: none; outline: 0px; border: 0px; background-color: transparent;">CV.pdf</a></span></h3>
				<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; background-color: transparent;">
					&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, sans-serif; line-height: 18px; text-align: justify;">
	Please make a confirmation attendance to this talk by 8 February 2013. Should you have any queries, please do not hesitate to contact Aziah Nasir at&nbsp;<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent; color: rgb(0, 0, 255);">03-5544 4847</span>&nbsp;or email :&nbsp;<a href="mailto:aziah4435@salam.uitm.edu.my" style="padding: 0px; margin: 0px; color: rgb(102, 0, 102); text-decoration: none; outline: 0px; border: 0px; background-color: transparent;">aziah4435@salam.uitm.edu.my</a></p>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'27', N'b913d9e4d2a84f3eb74798ebaaa124e3', N'<h2 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 18px; font-weight: normal; color: rgb(0, 0, 0); border: 0px; outline: 0px; line-height: 1.2; text-align: center;">
	Theme : Steering Innovations And Competitiveness In A Dynamic Economy: New Frontiers, New Lessons&quot;</h2>
<h2 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 18px; font-weight: normal; color: rgb(0, 0, 0); border: 0px; outline: 0px; line-height: 1.2; text-align: center;">
	Date: 19-21 November 2012</h2>
<h2 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 18px; font-weight: normal; color: rgb(0, 0, 0); border: 0px; outline: 0px; line-height: 1.2; text-align: center;">
	Venue: Hotel Istana, Kuala Lumpur</h2>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, sans-serif; line-height: 18px;">
	<strong style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;">Organized by</strong></p>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, sans-serif; line-height: 18px;">
	<img border="0" height="80" src="http://ari.uitm.edu.my/images/stories/PicTure/ari-uitm.jpg" style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;" width="120" /><img border="0" height="80" src="http://ari.uitm.edu.my/images/stories/PicTure/iiu.png" style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;" width="100" /><img border="0" height="80" src="http://ari.uitm.edu.my/images/stories/PicTure/aston%20uni.jpg" style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;" width="100" /><img border="0" height="80" src="http://ari.uitm.edu.my/images/stories/PicTure/ifn-.jpg" style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;" width="151" /></p>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, sans-serif; line-height: 18px; text-align: justify;">
	IIAFC 2012 is organized by Accounting Research Institute (ARI), together with its co-organizes, the Faculty of Accountancy, Universiti Teknologi MARA, Malaysia; Indonesian Islamic University (IIU), Jogjakarta, Indonesia; Centre of Islamic Banking &amp; Finance, Royal Docks Business School, University of East London, United Kingdom; and Elshaarani Centre for Islamic Business and Finance, Aston University, Birmingham, United Kingdom.</p>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, sans-serif; line-height: 18px; text-align: justify;">
	The conference will act as a platform in giving opportunities for participants to network and share experiences in a unique inter-disciplinary environment among Islamic Accounting and Finance practitioners, academicians and other professionals who interested in this area. This event will also invite paper presenters to publish their work in the selected journals.</p>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, sans-serif; line-height: 18px; text-align: justify;">
	Topics for this conference include, but are not limited to:</p>
<ul style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; list-style: none; color: rgb(0, 0, 0); font-family: Verdana, Arial, sans-serif; line-height: 18px;">
	<li style="padding: 0px 0px 0px 30px; margin: 0px; list-style: none; background-image: url(http://ari.uitm.edu.my/templates/ru_upwh/images/bullet3.gif); border: 0px; outline: 0px; line-height: 19px; overflow: hidden; background-position: 20px 7px; background-repeat: no-repeat no-repeat;">
		<strong>Islamic Accounting</strong></li>
	<li style="padding: 0px 0px 0px 30px; margin: 0px; list-style: none; background-image: url(http://ari.uitm.edu.my/templates/ru_upwh/images/bullet3.gif); border: 0px; outline: 0px; line-height: 19px; overflow: hidden; background-position: 20px 7px; background-repeat: no-repeat no-repeat;">
		Shariah Auditing</li>
	<li style="padding: 0px 0px 0px 30px; margin: 0px; list-style: none; background-image: url(http://ari.uitm.edu.my/templates/ru_upwh/images/bullet3.gif); border: 0px; outline: 0px; line-height: 19px; overflow: hidden; background-position: 20px 7px; background-repeat: no-repeat no-repeat;">
		Ethical Issues in Islamic Financial</li>
	<li style="padding: 0px 0px 0px 30px; margin: 0px; list-style: none; background-image: url(http://ari.uitm.edu.my/templates/ru_upwh/images/bullet3.gif); border: 0px; outline: 0px; line-height: 19px; overflow: hidden; background-position: 20px 7px; background-repeat: no-repeat no-repeat;">
		Institutions and Financial Markets</li>
	<li style="padding: 0px 0px 0px 30px; margin: 0px; list-style: none; background-image: url(http://ari.uitm.edu.my/templates/ru_upwh/images/bullet3.gif); border: 0px; outline: 0px; line-height: 19px; overflow: hidden; background-position: 20px 7px; background-repeat: no-repeat no-repeat;">
		Islamic Finance and Banking</li>
	<li style="padding: 0px 0px 0px 30px; margin: 0px; list-style: none; background-image: url(http://ari.uitm.edu.my/templates/ru_upwh/images/bullet3.gif); border: 0px; outline: 0px; line-height: 19px; overflow: hidden; background-position: 20px 7px; background-repeat: no-repeat no-repeat;">
		Strategic Management from the Islamic Perspective</li>
	<li style="padding: 0px 0px 0px 30px; margin: 0px; list-style: none; background-image: url(http://ari.uitm.edu.my/templates/ru_upwh/images/bullet3.gif); border: 0px; outline: 0px; line-height: 19px; overflow: hidden; background-position: 20px 7px; background-repeat: no-repeat no-repeat;">
		Accounting for Takaful</li>
	<li style="padding: 0px 0px 0px 30px; margin: 0px; list-style: none; background-image: url(http://ari.uitm.edu.my/templates/ru_upwh/images/bullet3.gif); border: 0px; outline: 0px; line-height: 19px; overflow: hidden; background-position: 20px 7px; background-repeat: no-repeat no-repeat;">
		Comparative Study of Islamic &amp; Conventional Accounting</li>
	<li style="padding: 0px 0px 0px 30px; margin: 0px; list-style: none; background-image: url(http://ari.uitm.edu.my/templates/ru_upwh/images/bullet3.gif); border: 0px; outline: 0px; line-height: 19px; overflow: hidden; background-position: 20px 7px; background-repeat: no-repeat no-repeat;">
		Taxation and Zakat Accounting</li>
	<li style="padding: 0px 0px 0px 30px; margin: 0px; list-style: none; background-image: url(http://ari.uitm.edu.my/templates/ru_upwh/images/bullet3.gif); border: 0px; outline: 0px; line-height: 19px; overflow: hidden; background-position: 20px 7px; background-repeat: no-repeat no-repeat;">
		Intellectual Capital in Islamic Organizations</li>
	<li style="padding: 0px 0px 0px 30px; margin: 0px; list-style: none; background-image: url(http://ari.uitm.edu.my/templates/ru_upwh/images/bullet3.gif); border: 0px; outline: 0px; line-height: 19px; overflow: hidden; background-position: 20px 7px; background-repeat: no-repeat no-repeat;">
		Waqaf and Sadaqah</li>
	<li style="padding: 0px 0px 0px 30px; margin: 0px; list-style: none; background-image: url(http://ari.uitm.edu.my/templates/ru_upwh/images/bullet3.gif); border: 0px; outline: 0px; line-height: 19px; overflow: hidden; background-position: 20px 7px; background-repeat: no-repeat no-repeat;">
		Islamic Microfinance</li>
	<li style="padding: 0px 0px 0px 30px; margin: 0px; list-style: none; background-image: url(http://ari.uitm.edu.my/templates/ru_upwh/images/bullet3.gif); border: 0px; outline: 0px; line-height: 19px; overflow: hidden; background-position: 20px 7px; background-repeat: no-repeat no-repeat;">
		Reporting issues in Islamic Organizations</li>
	<li style="padding: 0px 0px 0px 30px; margin: 0px; list-style: none; background-image: url(http://ari.uitm.edu.my/templates/ru_upwh/images/bullet3.gif); border: 0px; outline: 0px; line-height: 19px; overflow: hidden; background-position: 20px 7px; background-repeat: no-repeat no-repeat;">
		Corporate Social Responsibility from the Islamic perspective</li>
	<li style="padding: 0px 0px 0px 30px; margin: 0px; list-style: none; background-image: url(http://ari.uitm.edu.my/templates/ru_upwh/images/bullet3.gif); border: 0px; outline: 0px; line-height: 19px; overflow: hidden; background-position: 20px 7px; background-repeat: no-repeat no-repeat;">
		Corporate Governance</li>
	<li style="padding: 0px 0px 0px 30px; margin: 0px; list-style: none; background-image: url(http://ari.uitm.edu.my/templates/ru_upwh/images/bullet3.gif); border: 0px; outline: 0px; line-height: 19px; overflow: hidden; background-position: 20px 7px; background-repeat: no-repeat no-repeat;">
		Human Governance</li>
	<li style="padding: 0px 0px 0px 30px; margin: 0px; list-style: none; background-image: url(http://ari.uitm.edu.my/templates/ru_upwh/images/bullet3.gif); border: 0px; outline: 0px; line-height: 19px; overflow: hidden; background-position: 20px 7px; background-repeat: no-repeat no-repeat;">
		Assurance in Halal Product Producers</li>
	<li style="padding: 0px 0px 0px 30px; margin: 0px; list-style: none; background-image: url(http://ari.uitm.edu.my/templates/ru_upwh/images/bullet3.gif); border: 0px; outline: 0px; line-height: 19px; overflow: hidden; background-position: 20px 7px; background-repeat: no-repeat no-repeat;">
		Cost &amp; Management Accounting</li>
	<li style="padding: 0px 0px 0px 30px; margin: 0px; list-style: none; background-image: url(http://ari.uitm.edu.my/templates/ru_upwh/images/bullet3.gif); border: 0px; outline: 0px; line-height: 19px; overflow: hidden; background-position: 20px 7px; background-repeat: no-repeat no-repeat;">
		Islamic Accounting Theory</li>
	<li style="padding: 0px 0px 0px 30px; margin: 0px; list-style: none; background-image: url(http://ari.uitm.edu.my/templates/ru_upwh/images/bullet3.gif); border: 0px; outline: 0px; line-height: 19px; overflow: hidden; background-position: 20px 7px; background-repeat: no-repeat no-repeat;">
		Accounting Education</li>
	<li style="padding: 0px 0px 0px 30px; margin: 0px; list-style: none; background-image: url(http://ari.uitm.edu.my/templates/ru_upwh/images/bullet3.gif); border: 0px; outline: 0px; line-height: 19px; overflow: hidden; background-position: 20px 7px; background-repeat: no-repeat no-repeat;">
		Internal Audit in Islamic-based entities</li>
	<li style="padding: 0px 0px 0px 30px; margin: 0px; list-style: none; background-image: url(http://ari.uitm.edu.my/templates/ru_upwh/images/bullet3.gif); border: 0px; outline: 0px; line-height: 19px; overflow: hidden; background-position: 20px 7px; background-repeat: no-repeat no-repeat;">
		External Audit in Islamic-based entities</li>
	<li style="padding: 0px 0px 0px 30px; margin: 0px; list-style: none; background-image: url(http://ari.uitm.edu.my/templates/ru_upwh/images/bullet3.gif); border: 0px; outline: 0px; line-height: 19px; overflow: hidden; background-position: 20px 7px; background-repeat: no-repeat no-repeat;">
		Forensic Accounting from the Islamic perspective</li>
</ul>
<h3 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 17px; font-weight: normal; color: rgb(0, 0, 0); line-height: 1.2; border: 0px; outline: 0px;">
	<strong style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;">Lead Media Partner</strong></h3>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, sans-serif; line-height: 18px; text-align: justify;">
	<a href="http://www.islamicfinancenews.com/" style="padding: 0px; margin: 0px; color: rgb(102, 0, 102); text-decoration: none; outline: 0px; border: 0px; background-color: transparent;" target="_blank" title="Islamic Finance news"><img border="0" height="91" src="http://ari.uitm.edu.my/images/stories/PicTure/ifn-.jpg" style="padding: 0px; margin: 0px; border: 3px solid white; outline: 0px; background-color: transparent; float: left;" width="336" /></a>Published every Wednesday, Islamic Finance news is the industry&rsquo;s leading, capital markets focused e-newsletter now providing over 19,500 individuals with unrivaled editorial coverage of the global Islamic financing market.<br style="padding: 0px; margin: 0px;" />
	<br style="padding: 0px; margin: 0px;" />
	Islamic Finance news provides insightful and intelligent editorial coverage from around the world, helping you stay ahead. Industry professionals and leading academics contribute via non-biased, educational and up-to-date country and sector reports, giving you first-hand knowledge and understanding of the Islamic finance markets and instruments from the specialist&rsquo;s point of view.</p>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, sans-serif; line-height: 18px;">
	&nbsp;</p>
<h1 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 19px; font-weight: normal; color: rgb(0, 0, 0); border: 0px; outline: 0px; line-height: 1.2;">
	Conference Information</h1>
<h3 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 17px; font-weight: normal; color: rgb(0, 0, 0); line-height: 1.2; border: 0px; outline: 0px;">
	&raquo;&nbsp;<a href="http://ari.uitm.edu.my/images/stories/Download_File/iiafc2012/programme_iiafc2012.pdf" style="padding: 0px; margin: 0px; color: rgb(102, 0, 102); text-decoration: none; outline: 0px; border: 0px; background-color: transparent;" target="_blank">Parallel Session</a></h3>
<h3 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 17px; font-weight: normal; color: rgb(0, 0, 0); line-height: 1.2; border: 0px; outline: 0px;">
	&raquo;&nbsp;<a href="http://ari.uitm.edu.my/conferences/2012/iiafc-2012/list-of-papers-presented.html" style="padding: 0px; margin: 0px; color: rgb(102, 0, 102); text-decoration: none; outline: 0px; border: 0px; background-color: transparent;" target="_blank">List of papers presented</a></h3>
<div>
	&nbsp;</div>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'28', N'a64783381c15472d9a642430e30b858f', N'<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, sans-serif; line-height: 18px;">
	The details of the program are as follows:&nbsp;</p>
<table border="0" style="padding: 0px; margin: 0px; border: 0px; outline: 0px; border-collapse: collapse; border-spacing: 0px; empty-cells: show; color: rgb(0, 0, 0); font-family: Verdana, Arial, sans-serif; line-height: 18px; width: 749px; height: 115px;">
	<tbody style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;">
		<tr class="alt-row" style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;">
			<td style="padding: 5px; margin: 0px; line-height: normal; border: 0px; outline: 0px; background-color: transparent;">
				<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; background-color: transparent;">
					<strong style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;">Title&nbsp;&nbsp;</strong></p>
			</td>
			<td style="padding: 5px; margin: 0px; line-height: normal; border: 0px; outline: 0px; background-color: transparent;">
				<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; background-color: transparent;">
					<strong style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;">:&nbsp;</strong></p>
			</td>
			<td style="padding: 5px; margin: 0px; line-height: normal; border: 0px; outline: 0px; background-color: transparent;">
				<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; background-color: transparent;">
					<strong style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;">International Trade Operations- The Islamic Approach</strong></p>
			</td>
		</tr>
		<tr style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: rgb(251, 251, 251);">
			<td style="padding: 5px; margin: 0px; line-height: normal; border: 0px; outline: 0px; background-color: transparent;">
				<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; background-color: transparent;">
					<strong style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;">Date&nbsp;&nbsp;</strong></p>
			</td>
			<td style="padding: 5px; margin: 0px; line-height: normal; border: 0px; outline: 0px; background-color: transparent;">
				<h3 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 17px; font-weight: normal; color: rgb(102, 102, 102); border: 0px; outline: 0px; background-color: transparent; line-height: 1.2;">
					<strong style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;">:</strong></h3>
			</td>
			<td style="padding: 5px; margin: 0px; line-height: normal; border: 0px; outline: 0px; background-color: transparent;">
				<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; background-color: transparent;">
					<strong style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;">January - March 2013 (Every Thursday)</strong></p>
			</td>
		</tr>
		<tr class="alt-row" style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;">
			<td style="padding: 5px; margin: 0px; line-height: normal; border: 0px; outline: 0px; background-color: transparent;">
				<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; background-color: transparent;">
					<strong style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;">Time&nbsp;&nbsp;&nbsp;&nbsp;</strong></p>
			</td>
			<td style="padding: 5px; margin: 0px; line-height: normal; border: 0px; outline: 0px; background-color: transparent;">
				<h3 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 17px; font-weight: normal; color: rgb(102, 102, 102); border: 0px; outline: 0px; background-color: transparent; line-height: 1.2;">
					<strong style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;">:</strong></h3>
			</td>
			<td style="padding: 5px; margin: 0px; line-height: normal; border: 0px; outline: 0px; background-color: transparent;">
				<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; background-color: transparent;">
					<strong style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;">8.30am-12.30pm</strong></p>
			</td>
		</tr>
		<tr style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: rgb(251, 251, 251);">
			<td style="padding: 5px; margin: 0px; line-height: normal; border: 0px; outline: 0px; background-color: transparent;">
				<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; background-color: transparent;">
					<strong style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;">Venue&nbsp;</strong></p>
			</td>
			<td style="padding: 5px; margin: 0px; line-height: normal; border: 0px; outline: 0px; background-color: transparent;">
				<h3 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 17px; font-weight: normal; color: rgb(102, 102, 102); border: 0px; outline: 0px; background-color: transparent; line-height: 1.2;">
					<strong style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;">:</strong></h3>
			</td>
			<td style="padding: 5px; margin: 0px; line-height: normal; border: 0px; outline: 0px; background-color: transparent;">
				<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; background-color: transparent;">
					<strong style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;">Sumber Ikhlas Room, Level 12, Menara SAAS, UiTM Shah Alam</strong></p>
			</td>
		</tr>
		<tr class="alt-row" style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;">
			<td style="padding: 5px; margin: 0px; line-height: normal; border: 0px; outline: 0px; background-color: transparent;">
				<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; background-color: transparent;">
					<strong style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;">Speaker</strong></p>
			</td>
			<td style="padding: 5px; margin: 0px; line-height: normal; border: 0px; outline: 0px; background-color: transparent;">
				<h3 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 17px; font-weight: normal; color: rgb(102, 102, 102); border: 0px; outline: 0px; background-color: transparent; line-height: 1.2;">
					<strong style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;">:</strong></h3>
			</td>
			<td style="padding: 5px; margin: 0px; line-height: normal; border: 0px; outline: 0px; background-color: transparent;">
				<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; background-color: transparent;">
					<strong style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;">Tn Haji Ismail Mahayudin</strong></p>
			</td>
		</tr>
	</tbody>
</table>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, sans-serif; line-height: 18px;">
	<u><em>Seats are limited to 25 &nbsp;participants and &nbsp;will be allocated on a first come first served basis.</em></u> The certificate of participation will be issued to those participants who have attended 70% of the course.&nbsp;<br style="padding: 0px; margin: 0px;" />
	<br style="padding: 0px; margin: 0px;" />
	Meals will be provided for all the participants.&nbsp;<br style="padding: 0px; margin: 0px;" />
	<br style="padding: 0px; margin: 0px;" />
	Please confirm your attendance by simply replying to</p>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, sans-serif; line-height: 18px;">
	email :&nbsp;<a href="mailto:aziah4435@salam.uitm.edu.my" style="padding: 0px; margin: 0px; color: rgb(102, 0, 102); text-decoration: none; outline: 0px; border: 0px; background-color: transparent;">aziah4435@salam.uitm.edu.my</a>&nbsp;or contact<strong style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;">&nbsp;:&nbsp;<a href="tel:03-5544%204847" style="padding: 0px; margin: 0px; color: rgb(102, 0, 102); text-decoration: none; outline: 0px; border: 0px; background-color: transparent;">03-5544 4847</a></strong></p>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, sans-serif; line-height: 18px;">
	<a href="http://ari.uitm.edu.my/images/stories/Download_File/itotntv.pdf" style="padding: 0px; margin: 0px; color: rgb(102, 0, 102); text-decoration: none; outline: 0px; border: 0px; background-color: transparent;" title="Tentative: Isalmic Trade Operation"><img border="0" height="22" src="http://ari.uitm.edu.my/images/stories/download.gif" style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;" width="74" />Tentative program</a></p>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, sans-serif; line-height: 18px;">
	We are looking forward to your presence.</p>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'29', N'f3fed7ce35964436a9bfb6d2e3f08bd6', N'<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, sans-serif; line-height: 18px; text-align: justify;">
	Accounting Research Institute (ARI) will be organizing one day talk by Prof Roger Willet.</p>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, sans-serif; line-height: 18px; text-align: justify;">
	This talk is aimed to get some inputs from Prof Roger Willet, who experts in management accounting area and the statistical analysis of accounting numbers and international accounting.</p>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, sans-serif; line-height: 18px; text-align: justify;">
	<br style="padding: 0px; margin: 0px;" />
	Details of the talk as follows:</p>
<table border="0" style="padding: 0px; margin: 0px; text-align: justify; border: 0px; outline: 0px; border-collapse: collapse; border-spacing: 0px; empty-cells: show; color: rgb(0, 0, 0); font-family: Verdana, Arial, sans-serif; line-height: 18px; width: 563px; height: 117px;">
	<tbody style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;">
		<tr class="alt-row" style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;">
			<td style="padding: 5px; margin: 0px; line-height: normal; text-align: left; border: 0px; outline: 0px; background-color: transparent;">
				<h3 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 17px; font-weight: normal; color: rgb(102, 102, 102); border: 0px; outline: 0px; background-color: transparent; line-height: 1.2;">
					<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent; color: rgb(0, 0, 255);">Date</span></h3>
			</td>
			<td style="padding: 5px; margin: 0px; line-height: normal; text-align: left; border: 0px; outline: 0px; background-color: transparent;">
				<h3 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 17px; font-weight: normal; color: rgb(102, 102, 102); border: 0px; outline: 0px; background-color: transparent; line-height: 1.2;">
					<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent; color: rgb(0, 0, 255);">:</span></h3>
			</td>
			<td style="padding: 5px; margin: 0px; line-height: normal; text-align: left; border: 0px; outline: 0px; background-color: transparent;">
				<h3 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 17px; font-weight: normal; color: rgb(102, 102, 102); border: 0px; outline: 0px; background-color: transparent; line-height: 1.2;">
					<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent; color: rgb(0, 0, 255);">14 February 2013 (Thursday)</span></h3>
			</td>
		</tr>
		<tr style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: rgb(251, 251, 251);">
			<td style="padding: 5px; margin: 0px; line-height: normal; text-align: left; border: 0px; outline: 0px; background-color: transparent;">
				<h3 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 17px; font-weight: normal; color: rgb(102, 102, 102); border: 0px; outline: 0px; background-color: transparent; line-height: 1.2;">
					<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent; color: rgb(0, 0, 255);">Venue</span></h3>
			</td>
			<td style="padding: 5px; margin: 0px; line-height: normal; text-align: left; border: 0px; outline: 0px; background-color: transparent;">
				<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent; color: rgb(0, 0, 255);">:</span></td>
			<td style="padding: 5px; margin: 0px; line-height: normal; text-align: left; border: 0px; outline: 0px; background-color: transparent;">
				<h3 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 17px; font-weight: normal; color: rgb(102, 102, 102); border: 0px; outline: 0px; background-color: transparent; line-height: 1.2;">
					<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent; color: rgb(0, 0, 255);">Level 12, Menara SAAS, UiTM</span></h3>
			</td>
		</tr>
		<tr class="alt-row" style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent;">
			<td style="padding: 5px; margin: 0px; line-height: normal; text-align: left; border: 0px; outline: 0px; background-color: transparent;">
				<h3 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 17px; font-weight: normal; color: rgb(102, 102, 102); border: 0px; outline: 0px; background-color: transparent; line-height: 1.2;">
					<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent; color: rgb(0, 0, 255);">Time</span></h3>
			</td>
			<td style="padding: 5px; margin: 0px; line-height: normal; text-align: left; border: 0px; outline: 0px; background-color: transparent;">
				<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent; color: rgb(0, 0, 255);">:</span></td>
			<td style="padding: 5px; margin: 0px; line-height: normal; text-align: left; border: 0px; outline: 0px; background-color: transparent;">
				<h3 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 17px; font-weight: normal; color: rgb(102, 102, 102); border: 0px; outline: 0px; background-color: transparent; line-height: 1.2;">
					<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent; color: rgb(0, 0, 255);">9.00 am - 5.00 pm</span></h3>
			</td>
		</tr>
		<tr style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: rgb(251, 251, 251);">
			<td style="padding: 5px; margin: 0px; line-height: normal; text-align: left; border: 0px; outline: 0px; background-color: transparent;">
				<h3 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 17px; font-weight: normal; color: rgb(102, 102, 102); border: 0px; outline: 0px; background-color: transparent; line-height: 1.2;">
					<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent; color: rgb(0, 0, 255);">Speaker</span></h3>
				<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; background-color: transparent;">
					&nbsp;</p>
				<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; background-color: transparent;">
					&nbsp;</p>
			</td>
			<td style="padding: 5px; margin: 0px; line-height: normal; text-align: left; border: 0px; outline: 0px; background-color: transparent;">
				<h3 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 17px; font-weight: normal; color: rgb(102, 102, 102); border: 0px; outline: 0px; background-color: transparent; line-height: 1.2;">
					<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent; color: rgb(0, 0, 255);">:</span></h3>
				<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; background-color: transparent;">
					&nbsp;</p>
				<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; background-color: transparent;">
					&nbsp;</p>
			</td>
			<td style="padding: 5px; margin: 0px; line-height: normal; text-align: left; border: 0px; outline: 0px; background-color: transparent;">
				<h3 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 17px; font-weight: normal; color: rgb(102, 102, 102); border: 0px; outline: 0px; background-color: transparent; line-height: 1.2;">
					<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent; color: rgb(0, 0, 255);">Professor Roger Willett</span></h3>
				<h3 style="padding: 0px; margin: 10px 0px; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 17px; font-weight: normal; color: rgb(102, 102, 102); border: 0px; outline: 0px; background-color: transparent; line-height: 1.2;">
					<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent; color: rgb(0, 0, 255);"><a href="http://ari.uitm.edu.my/images/stories/Download_File/cv-rw.pdf" style="padding: 0px; margin: 0px; color: rgb(102, 0, 102); text-decoration: none; outline: 0px; border: 0px; background-color: transparent;">CV.pdf</a></span></h3>
				<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; background-color: transparent;">
					&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, sans-serif; line-height: 18px; text-align: justify;">
	Please make a confirmation attendance to this talk by 8 February 2013. Should you have any queries, please do not hesitate to contact Aziah Nasir at&nbsp;<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent; color: rgb(0, 0, 255);">03-5544 4847</span>&nbsp;or email :&nbsp;<a href="mailto:aziah4435@salam.uitm.edu.my" style="padding: 0px; margin: 0px; color: rgb(102, 0, 102); text-decoration: none; outline: 0px; border: 0px; background-color: transparent;">aziah4435@salam.uitm.edu.my</a></p>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'30', N'38147a220abb4983bccb0ec305be0ec8', N'<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(53, 53, 53); font-family: Verdana, Arial, sans-serif; line-height: 18px; text-align: justify;">
	<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; font-size: small; background-color: transparent;">The Textile Research Center consists of a group of researchers having common interests in basic and applied research related to textile science, mechanics, natural dyes, functional finishes and product development.</span></p>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(53, 53, 53); font-family: Verdana, Arial, sans-serif; line-height: 18px;">
	There are currently three research groups under the Center: Technical Textiles, Natural Products and Textile Simulation. The center webpage can be accessed at&nbsp;<a href="http://textileresearchcenter.uitm.edu.my/" style="padding: 0px; margin: 0px; color: rgb(255, 0, 0); text-decoration: none; outline: 0px; border: 0px; font-size: 11px; background-color: transparent;" target="_blank"><span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; font-size: small; background-color: transparent;">textileresearchcenter.uitm.edu.my</span></a></p>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(53, 53, 53); font-family: Verdana, Arial, sans-serif; line-height: 18px;">
	&nbsp;</p>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(53, 53, 53); font-family: Verdana, Arial, sans-serif; line-height: 18px; text-align: justify;">
	<img border="0" height="105" src="http://fsg.uitm.edu.my/v1/images/stories/reseach/2013-05-08_123803.jpg" style="padding: 0px; margin: 0px; border: 0px; outline: 0px; background-color: transparent; line-height: 1.3em;" width="550" /></p>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(53, 53, 53); font-family: Verdana, Arial, sans-serif; line-height: 18px; text-align: justify;">
	&nbsp;</p>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(53, 53, 53); font-family: Verdana, Arial, sans-serif; line-height: 18px; text-align: justify;">
	<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; font-size: small; background-color: transparent; font-weight: bold; line-height: 1.3em;">Research</span><span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; font-size: small; background-color: transparent; font-weight: bold; line-height: 1.3em;">Objective</span></p>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(53, 53, 53); font-family: Verdana, Arial, sans-serif; line-height: 18px;">
	<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; font-size: small; background-color: transparent;">To establish as a center for research and advancement of textile technology, engineering and related materials.</span></p>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(53, 53, 53); font-family: Verdana, Arial, sans-serif; line-height: 18px;">
	&nbsp;</p>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(53, 53, 53); font-family: Verdana, Arial, sans-serif; line-height: 18px;">
	<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; font-size: 11px; background-color: transparent;"><span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; font-size: small; background-color: transparent;">Head of Research Center</span></span></p>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(53, 53, 53); font-family: Verdana, Arial, sans-serif; line-height: 18px;">
	<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; font-size: small; background-color: transparent; font-weight: bold; line-height: 1.3em;"><a href="http://fsg.uitm.edu.my/v1/component/peoplebooks2/?id=149&amp;task=view" style="padding: 0px; margin: 0px; color: rgb(255, 0, 0); text-decoration: none; outline: 0px; border: 0px; font-size: 11px; background-color: transparent; line-height: 1.3em;" target="_blank"><span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; font-size: small; background-color: transparent;">Prof. Dr. Wan Yunus Wan Ahmad</span></a></span></p>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(53, 53, 53); font-family: Verdana, Arial, sans-serif; line-height: 18px;">
	&nbsp;</p>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(53, 53, 53); font-family: Verdana, Arial, sans-serif; line-height: 18px;">
	<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; font-size: small; background-color: transparent; font-weight: bold; line-height: 1.3em;">Research Projects</span></p>
<ul style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; list-style: none; color: rgb(53, 53, 53); font-family: Verdana, Arial, sans-serif; line-height: 18px;">
	<li style="padding: 0px 0px 0px 30px; margin: 0px; list-style: none; background-image: url(http://fsg.uitm.edu.my/v1/templates/ru_upwh2010/images/bullet3.gif); border: 0px; outline: 0px; line-height: 19px; overflow: hidden; background-position: 20px 7px; background-repeat: no-repeat no-repeat;">
		<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; font-size: small; background-color: transparent;">Ballistic impact of textile materials</span></li>
	<li style="padding: 0px 0px 0px 30px; margin: 0px; list-style: none; background-image: url(http://fsg.uitm.edu.my/v1/templates/ru_upwh2010/images/bullet3.gif); border: 0px; outline: 0px; line-height: 19px; overflow: hidden; background-position: 20px 7px; background-repeat: no-repeat no-repeat;">
		<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; font-size: small; background-color: transparent;">Uniaxial tensile and Puncture Modelling and Simulation</span></li>
	<li style="padding: 0px 0px 0px 30px; margin: 0px; list-style: none; background-image: url(http://fsg.uitm.edu.my/v1/templates/ru_upwh2010/images/bullet3.gif); border: 0px; outline: 0px; line-height: 19px; overflow: hidden; background-position: 20px 7px; background-repeat: no-repeat no-repeat;">
		<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; font-size: small; background-color: transparent;">Mechanics of songket fabrics</span></li>
	<li style="padding: 0px 0px 0px 30px; margin: 0px; list-style: none; background-image: url(http://fsg.uitm.edu.my/v1/templates/ru_upwh2010/images/bullet3.gif); border: 0px; outline: 0px; line-height: 19px; overflow: hidden; background-position: 20px 7px; background-repeat: no-repeat no-repeat;">
		<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; font-size: small; background-color: transparent;">Natural dyes extraction and application</span></li>
	<li style="padding: 0px 0px 0px 30px; margin: 0px; list-style: none; background-image: url(http://fsg.uitm.edu.my/v1/templates/ru_upwh2010/images/bullet3.gif); border: 0px; outline: 0px; line-height: 19px; overflow: hidden; background-position: 20px 7px; background-repeat: no-repeat no-repeat;">
		<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; font-size: small; background-color: transparent;">Technical yarn development for smart textiles</span></li>
	<li style="padding: 0px 0px 0px 30px; margin: 0px; list-style: none; background-image: url(http://fsg.uitm.edu.my/v1/templates/ru_upwh2010/images/bullet3.gif); border: 0px; outline: 0px; line-height: 19px; overflow: hidden; background-position: 20px 7px; background-repeat: no-repeat no-repeat;">
		<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; font-size: small; background-color: transparent;">Nanofibre formation via electrospinning</span></li>
</ul>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(53, 53, 53); font-family: Verdana, Arial, sans-serif; line-height: 18px;">
	&nbsp;</p>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(53, 53, 53); font-family: Verdana, Arial, sans-serif; line-height: 18px;">
	<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; font-size: small; background-color: transparent; font-weight: bold; line-height: 1.3em;">Research Intensive Groups</span></p>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(53, 53, 53); font-family: Verdana, Arial, sans-serif; line-height: 18px;">
	Textile Research Center has focussed its research into three significant sections ;&nbsp;</p>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(53, 53, 53); font-family: Verdana, Arial, sans-serif; line-height: 18px;">
	<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; font-size: small; background-color: transparent; line-height: 1.3em;"><a href="http://textileresearchcenter.uitm.edu.my/research-group/technical-textiles-rig" style="padding: 0px; margin: 0px; color: rgb(255, 0, 0); text-decoration: none; outline: 0px; border: 0px; font-size: 13px; background-color: transparent; line-height: 1.3em;" target="_blank"><span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; font-size: medium; background-color: transparent;"><span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; font-size: small; background-color: transparent;"><u style="padding: 0px; margin: 0px; border: 0px; outline: 0px; font-size: 13px; background-color: transparent;">Technical Textiles</u></span></span></a></span></p>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(53, 53, 53); font-family: Verdana, Arial, sans-serif; line-height: 18px;">
	<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; font-size: small; background-color: transparent;">Head :&nbsp;<a href="http://mohdrozi.uitm.edu.my/" style="padding: 0px; margin: 0px; color: rgb(255, 0, 0); text-decoration: none; outline: 0px; border: 0px; font-size: 13px; background-color: transparent;" target="_blank">Assoc. Prof. Dr. Mohd Rozi Ahmad</a>&nbsp;<br style="padding: 0px; margin: 0px;" />
	Members : Prof. Dr. Jamil Salleh, CText FTI</span></p>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(53, 53, 53); font-family: Verdana, Arial, sans-serif; line-height: 18px;">
	<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; font-size: 11px; background-color: transparent;"><a href="http://textileresearchcenter.uitm.edu.my/research-group/textile-natural-products-rig" style="padding: 0px; margin: 0px; color: rgb(255, 0, 0); text-decoration: none; outline: 0px; border: 0px; background-color: transparent;" target="_blank"><span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; font-size: small; background-color: transparent;"><u style="padding: 0px; margin: 0px; border: 0px; outline: 0px; font-size: 13px; background-color: transparent;">Textile Natural Products</u></span></a></span></p>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(53, 53, 53); font-family: Verdana, Arial, sans-serif; line-height: 18px;">
	<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; font-size: small; background-color: transparent;">Head : Prof. Dr. Wan Yunus Wan Ahmad, CText FTI&nbsp;<br style="padding: 0px; margin: 0px;" />
	Members : Muhammad Ismail Ab Kadir, Habibah Abdul Jabbar</span></p>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(53, 53, 53); font-family: Verdana, Arial, sans-serif; line-height: 18px;">
	<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; font-size: 11px; background-color: transparent;"><a href="http://textileresearchcenter.uitm.edu.my/research-group/textile-simulation-rg" style="padding: 0px; margin: 0px; color: rgb(255, 0, 0); text-decoration: none; outline: 0px; border: 0px; background-color: transparent;" target="_blank"><span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; font-size: small; background-color: transparent;"><u style="padding: 0px; margin: 0px; border: 0px; outline: 0px; font-size: 13px; background-color: transparent;">Textile Modeling &amp; Simulation</u></span></a></span></p>
<p style="padding: 0px; margin: 10px 0px; border: 0px; outline: 0px; color: rgb(53, 53, 53); font-family: Verdana, Arial, sans-serif; line-height: 18px;">
	<span style="padding: 0px; margin: 0px; border: 0px; outline: 0px; font-size: small; background-color: transparent;">Head :&nbsp;<a href="http://faizul.uitm.edu.my/" style="padding: 0px; margin: 0px; color: rgb(255, 0, 0); text-decoration: none; outline: 0px; border: 0px; font-size: 13px; background-color: transparent;" target="_blank">Dr Mohamad Faizul Yahya CText ATI&nbsp;</a><br style="padding: 0px; margin: 0px;" />
	Members : Prof. Dr. Jamil Salleh, Dr. Suzaini Abd Ghani, Dr. Rengga Rao</span></p>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'33', N'd34d1ef264ce4635a88dae1c5b35d717', N'<p>
	But such cooperation is often not forthcoming for many reasons: policy instruments are predominantly national; voting constituencies are narrow, not global; pressure groups pursue parochial goals; international forums are often articulate national, rather than global, interests. To overcome this global cooperation deficit, we need to create shared visions of the future, inspiring people from different professions, countries and cultures to work together.</p>
<p>
	However, visions are not enough; they need to be embodied concrete action plans policies, business strategies, civil initiatives and research agenda. These action plans should emerge as the outcome of a dialogue among leading academics, businesspeople, policy-makers and representatives of civil society. For without such a dialogue, the action plans would lack credibility. And the action plans must be based on state-of-the-art research. Our ideas must go through the crucible of rigorous analysis and evaluation.</p>
<p>
	The GES seeks to meet these needs.</p>
<ul class="simple-list">
	<li>
		It is a solution symposium, not a discussion forum. The focus is on solutions to global problems.</li>
	<li>
		It is a research-based exchange, resting on the Knowledge Base of the Virtual GES (the internet platform of the GES), contain-ing background research, policy and strategy proposals, and discussion forums. The Knowledge Base which is supported by the German National Library of Economics (the world&#39;s largest economics library) has the objective to become an international repository of proposed solutions to global problems, together with underlying analysis.</li>
	<li>
		It is a multi-stakeholder initiative, since it initiates a strategic dialogue between leaders from the worlds of academia, business, politics and civil society.</li>
	<li>
		It seeks a long-term perspective, as its aim is to make the world a better place for the next generation.</li>
</ul>
<p>
	&nbsp;</p>
<p>
	The GES is meant to be daring and foresighted. It values intellectual integrity, not political correctness. We are not concerned with marginal improvements of existing arrangements; instead, we seek radically new proposals that could put our future, as a global economic community, on a better course. These proposals need to be concrete and implementable. In short, the aim is to think out of the box; to be visionary, but simultaneously practical.</p>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'35', N'a595d34561ae4a8197f0b7e987220c4d', N'<p>
	test2</p>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'37', N'94ab8719d48543439983d6b90ebc3d7e', N'<p>
	According to a World Bank report, Malaysia&rsquo;s dynamic economy and its rise to middle-income status offer lessons for other nations seeking to reduce poverty and build shared prosperity. Being a highly open economy with remarkable resilience in the face of a weak global environment, the country records an annual gross national income (GNI) per capita of almost US$10,000, gearing towards becoming a high-income economy by 2020. Malaysia&rsquo;s Economic Transformation Programme (ETP) lines up strategies to improve living standards and establishes an innovative and inclusive financial sector, underpinned by sound governance and regulations.</p>
<p>
	Malaysia boasts of a colourful, multifarious population of 28 million comprising the native Malay majority and some 60 indigenous groups, mostly residing in Sabah and Sarawak. There are also a sizeable number of Chinese and Indian descents, who play significant roles in the country&rsquo;s development, alongside the Malays and other ethnic communities.</p>
<p>
	Malaysia is home to the world&rsquo;s oldest tropical rainforest, and a treasure-trove of bio-diversity with its rich flora and fauna. Its island destinations are popular among marine enthusiasts worldwide. Other famed attractions include Petronas Twin Towers, Sepang International Circuit, and Le Tour de Langkawi. Next year, guest of the country will have the opportunity to savour more of Malaysia&rsquo;s warm hospitality, endless adventures and memorable discoveries in conjunction with <strong><em>Visit Malaysia Year 2014</em></strong>, with its theme of Celebrating 1Malaysia&hellip; Truly Asia, which reflects the land as a melting pot and home to a multifarious population who live in peace and harmony.</p>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'39', N'8bfe04a396674dde96bc1d48a6af1861', N'<p>
	test3</p>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'41', N'bb2d8ae433ff40a6ab4bb1e31cf28c9b', N'<p>
	t</p>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'10', N'835083e8277d4564ab8bd6db18d5a533', N'', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'14', N'ea63b8a68a38479ebeccb21c3c7121a4', N'', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'20', N'785bab513f104e12b83eaba7d73d60c6', N'<p>
	Mohon menghadirkan diri ke Mesyuarat Jabatan Pembangunan Sistem Bil 1/2014. Agenda mesyuarat secara dasarnya adalah seperti di bawah. Jika ada sebarang cadangan dan laporan daripada Ketua Bahagian Pembangunan Sistem, Integrasi dan Sumber Data untuk paparan dan edaran kepada ahli mesyuarat, sila maklumkan kepada saya bagi tujuan perbincangan di dalam mesyuarat ini.</p>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'11', N'e21f780eef3e4067ad819cce7e6ea75d', N'<p>
	<span style="color: rgb(0, 0, 0); font-family: ''Open Sans'', sans-serif; font-size: 11px; line-height: 15px;">http://arionline.uitm.edu.my/ari/uploads/xxxxxx.jpg</span><span style="color: rgb(0, 0, 0); font-family: ''Open Sans'', sans-serif; font-size: 11px; line-height: 15px;">http://arionline.uitm.edu.my/ari/uploads/xxxxxx.jpg</span><span style="color: rgb(0, 0, 0); font-family: ''Open Sans'', sans-serif; font-size: 11px; line-height: 15px;">http://arionline.uitm.edu.my/ari/uploads/xxxxxx.jpg</span><span style="color: rgb(0, 0, 0); font-family: ''Open Sans'', sans-serif; font-size: 11px; line-height: 15px;">http://arionline.uitm.edu.my/ari/uploads/xxxxxx.jpg</span><span style="color: rgb(0, 0, 0); font-family: ''Open Sans'', sans-serif; font-size: 11px; line-height: 15px;">http://arionline.uitm.edu.my/ari/uploads/xxxxxx.jpg</span></p>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'12', N'4a83f991e1e14140ac63435361561214', N'<p>
	aaaaaaaaaaa</p>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'18', N'9b63dd0a43474f47b17f16282f3ac6ef', N'<p>
	z</p>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'19', N'78fa05bce46245c6859458a63d96a0a2', N'<p>
	qwwqwqwqqw</p>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'21', N'1663b145d1c84c72a5c4204020b6074e', N'', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'23', N'09d2d2a115864e1f88d708687ff2f92e', N'<p>
	a</p>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'26', N'a9f6878fd7b14332ac45d569e4385c2b', N'<p>
	test test</p>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'31', N'201669f6bee444658da7f61149d24665', N'<p>
	&nbsp;</p>
<table class="simple-table">
	<tbody>
		<tr>
			<th>
				&nbsp;</th>
			<th>
				&nbsp;</th>
		</tr>
		<tr>
			<td>
				Location</td>
			<td>
				Kuala Lumpur Malaysia</td>
		</tr>
		<tr>
			<td>
				Date</td>
			<td>
				September 7 - 8, 2014</td>
		</tr>
		<tr>
			<td>
				Opening Ceremony</td>
			<td>
				September 6, 2014</td>
		</tr>
		<tr>
			<td>
				Participants</td>
			<td>
				Approx.&nbsp;1000 leading decision makers from politics, business, finance, academia, and civil society.</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'40', N'd391a1f924f545fbb9f6b3ec4e284204', N'<h2>
	<strong>Policy-and Decision-Makers</strong></h2>
<table>
	<tbody>
		<tr>
			<td colspan="2">
				<p>
					<strong>The following have been approach and indicated willingness:</strong></p>
			</td>
		</tr>
		<tr>
			<td>
				1. YB Dato&rsquo; Seri Mustapha Muhammad</td>
			<td>
				Minister of International Trade and Industry (MITI) (Creating Synergy of Emerging Economies)</td>
		</tr>
		<tr>
			<td>
				2. YB Dato&rsquo; Seri Wahid Omar</td>
			<td>
				Minister, Prime Minister&rsquo;s Department, Malaysia (Economic Transformation Programme)</td>
		</tr>
		<tr>
			<td>
				3. YB Dato&rsquo; Idris Jusoh</td>
			<td>
				Minister of Education II, Malaysia (Higher Education Hub of the East)</td>
		</tr>
		<tr>
			<td>
				4. YBhg Tan Sri Nor Mohamed Yaakob</td>
			<td>
				Deputy Chairman, Khazanah (Developing Islamic Banking in Malaysia)</td>
		</tr>
		<tr>
			<td>
				5. YBhg Dato&rsquo; Hafsah Hashim</td>
			<td>
				SME Corp. CEO -(Elevating Women Status through Literacy, Education and Entrepreneurship)</td>
		</tr>
		<tr>
			<td>
				6. YBhg Tan Sri Ahmad Kama Piah Che&rsquo; Othman</td>
			<td>
				PNB - Chief Executive Officer (Transforming Societies into Investors (Invited, pending response)</td>
		</tr>
		<tr>
			<td>
				7. YBhg Dato&rsquo; Ibrahim Mohamad</td>
			<td>
				MARA - Director General, (Affirmative Action in Restructuring Societies)</td>
		</tr>
		<!--<tr>
			<td colspan="2">
				<p>
					<strong>Letters have been issued pending and appointment dates:</strong></p>
			</td>
		</tr>
		<tr>
			<td>
				8. YBhg. Tun Musa Hitam</td>
			<td>
				Yayasan Sime Darby (Sustainability in Emerging Economies)</td>
		</tr>
		<tr>
			<td>
				9. YBhg Tan Sri Zeti Akhtar Engku Aziz</td>
			<td>
				Bank Negara Malaysia , Governor (Financial Soundness and Stability &ndash; Islamic banking Experience) (Invited, pending response)</td>
		</tr>
		<tr>
			<td>
				10. YBhg Tan Sri Dato&rsquo; Seri Dr Ali Hamsa</td>
			<td>
				Chief Secretary to the Government (Human Capital for Transforming Economies)</td>
		</tr>
		<tr>
			<td>
				11. YBhg Tun Ahmad Sarji Abdul Hamid</td>
			<td>
				PNB - former Chief Secretary to the Government/Chairman (Preparing for Human Capital in Restructuring Economies &ndash; 1970-2000)</td>
		</tr>
		<tr>
			<td>
				12. YBhg Tan Sri Azman Mokhtar</td>
			<td>
				Khazanah - Managing Director , (Rising from 1997 Economic Crisis)</td>
		</tr>-->
		<tr>
			<td colspan="2">
				<p>
					&nbsp;</p>
				<h2>
					<strong>Business Leaders</strong></h2>
			</td>
		</tr>
		<tr>
		</tr>
		<tr>
			<td colspan="2">
				<p>
					<strong>The following have been approach and indicated willingness:</strong></p>
			</td>
		</tr>
		<tr>
			<td>
				1.&nbsp;YBhg Dato&rsquo; Seri Zuki Samat&nbsp;</td>
			<td>
				Bank Islam Malaysia Berhad,&nbsp;Managing Director,(Preserving Faith in Banking)</td>
		</tr>
		<tr>
			<td>
				2.&nbsp;YBhg Dato&rsquo; Badlisham Ghazali&nbsp;</td>
			<td>
				MDeC ,Chief Executive Office&nbsp;(The Power of Crowd Sourcing)</td>
		</tr>
		<!--<tr>
			<td colspan="2">
				<p>
					<strong>Letters have been issued pending and appointment dates:</strong></p>
			</td>
		</tr>
		<tr>
			<td>
				3. YBhg Tan Sri Azman Hashim</td>
			<td>
				AmBank - President, Malaysia (Working Together Successfully - the Malaysian Way)</td>
		</tr>
		<tr>
			<td>
				4. YBhg Dato&rsquo; Farid Alias</td>
			<td>
				Maybank - President/CEO (Transforming Malaysia&rsquo;s Biggest Bank)</td>
		</tr>
		<tr>
			<td>
				5. YBhg Dato&#39; Paduka Ismee Bin Ismail</td>
			<td>
				Tabung Haji &ndash;CEO (Investing through Religious Prescriptions)</td>
		</tr>
		<tr>
			<td>
				6.YBhg Tan Sri Mohd Sidek Hassan</td>
			<td>
				PETRONAS &ndash; Chairman (Malaysia&rsquo;s Forbes 500 Company &ndash; Reverse Investment for Prosperity) (Invited, pending response)</td>
		</tr>
		<tr>
			<td>
				7. YBhg Tan Sri Tony Fernandez</td>
			<td>
				AirAsia - President (Global-Branding of a Local Idea)</td>
		</tr>-->
		<tr>
			<td colspan="2">
				<p>
					&nbsp;</p>
				<h2>
					<strong>Academics</strong></h2>
			</td>
		</tr>
		<tr>
			<td>
				1. YBhg. Tan Sri Dato&#39; Dr Wan Mohd Zahid Mohd Noordin</td>
			<td>
				Chairman of the Board Director of UiTM</td>
		</tr>
		<tr>
			<td>
				2. YBhg Tan Sri Dato&rsquo; Seri Professor Ir Sahol Hamid Abu Bakar</td>
			<td>
				President/Vice Chancellor (Transforming Societies through Entrepreneurial Higher Education &ndash; Producing Employerability)</td>
		</tr>
		<tr>
			<td>
				3. YBhg Tan Sri (Dr) Arshad Ayub</td>
			<td>
				Pro-Chancellor Universiti Teknologi MARA (UiTM)(A Second Chance Opportunity for the Disadvantaged)</td>
		</tr>
		<tr>
			<td>
				4. Professor Dr Ferid Murad</td>
			<td>
				George Washington University, Wahington D.C. (Healthier Societies in Emerging Economies)</td>
		</tr>
		<tr>
			<td>
				5. Professor Dr Mohamad Kamal Hasan</td>
			<td>
				Former Rector, International Islamic University Malaysia (Living Together in a Harmonious Society)</td>
		</tr>
		<tr>
			<td>
				6. Professor Datuk Dr Shad Saleem Faruqi</td>
			<td>
				Emeritus Professor of Law, UiTM (Legal Framework to Strengthen Emerging Economies)</td>
		</tr>
		<tr>
			<td colspan="2">
				<p>
					&nbsp;</p>
				<h1>
					<strong>INTERNATIONAL SPEAKERS</strong></h1>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<h2>
					<strong>Nobel Laureates</strong></h2>
			</td>
		</tr>
		<tr>
			<td>
				1. Michael Spence</td>
			<td>
				William R. Berkley Professor in Economics and Business,NYU Stern School of Business</td>
		</tr>
		<tr>
			<td>
				2. Sir James Mirrlees</td>
			<td>
				Emeritus Professor of Political Economy, University of Cambridge</td>
		</tr>
		<tr>
			<td>
				3. Joseph Stiglitz</td>
			<td>
				Professor, School of International and Public Affairs (SIPA),Columbia University</td>
		</tr>
		<tr>
			<td>
				4. Ricard Ernst</td>
			<td>
				Emeritus Professor at the Department Chemistry and Applied Bioscienses,Swiss Federal Institute of Technology Zurich</td>
		</tr>
		<tr>
			<td>
				5. Eric Maskin</td>
			<td>
				Professor of Economics, Harvard University</td>
		</tr>
		<tr>
			<td>
				6. Martti Ahtisaari</td>
			<td>
				Former President, Finland, Founder and Chairmain,Crisis Management Initiative</td>
		</tr>
		<tr>
			<td>
				7. James Heckman</td>
			<td>
				Professor of Economics and Law , University of Chicago</td>
		</tr>
		<tr>
			<td>
				8. Sir Christopher Pissarides</td>
			<td>
				School Professor of Economics and Political Science, LSE</td>
		</tr>
		<tr>
			<td>
				9. Robert Solow</td>
			<td>
				Emeritus Professor of Economics, Massachusetts Institute of Technology (MIT)</td>
		</tr>
		<tr>
			<td>
				10. Amartya Sen</td>
			<td>
				Professor of Economics and Philosophy, Harvard University</td>
		</tr>
		<tr>
			<td>
				11. George Akerlof</td>
			<td>
				Emeritus Professor of Economics, University of California , Berkeley</td>
		</tr>
		<tr>
			<td>
				12. Daniel McFadden</td>
			<td>
				Professor of Economics,University of California , Berkeley</td>
		</tr>
		<tr>
			<td colspan="2">
				<p>
					&nbsp;</p>
				<h2>
					<strong>Eminent Academics</strong></h2>
			</td>
		</tr>
		<tr>
			<td>
				13. Ed Lazear</td>
			<td>
				Professor of Human Resources Management and Economics, Graduate School of Business;Senior Fellow at the Hoover Institution,Standford University</td>
		</tr>
		<tr>
			<td>
				14. Pablo Guidotti</td>
			<td>
				Professor of School of the Government, Universidad Torcuoto di Tella;Member of the Board of Directors,Universidad Torcuoto di Tella, Buenos Aires</td>
		</tr>
		<tr>
			<td>
				15. Assar Lindbeck</td>
			<td>
				Professor of International Economics,Stockholm University</td>
		</tr>
		<tr>
			<td>
				16. Ignazio Visco</td>
			<td>
				Governor, Central Bank of Italy</td>
		</tr>
		<tr>
			<td>
				17. Stanley Fisher</td>
			<td>
				Former Governor of the Bank of Israel</td>
		</tr>
		<tr>
			<td>
				18. Yu Yongding</td>
			<td>
				Senior Fellow, Institute of World Economics and Politics, Chinese Academy of Social Sciences</td>
		</tr>
		<tr>
			<td>
				19. Martin Feldstein</td>
			<td>
				George F.Baker Professor of Economics, Harvard University</td>
		</tr>
		<tr>
			<td>
				20. Richard Portes</td>
			<td>
				Professor of Economics,London Business School;Founder and President, Centre for Economic Policy Research</td>
		</tr>
		<tr>
			<td>
				21. Justin Yi Fu Lin</td>
			<td>
				Founder and Director, China Center for Economic Research, Peking University, Former Chief Economist and Senior Vice-President, The World Bank</td>
		</tr>
		<tr>
			<td>
				22. Rajendra Pachauri</td>
			<td>
				Nobel Laureate, Chairman, Intergovernmental Panel on Climate Change;Director General, The Energy and Resources Institute, New Delhi</td>
		</tr>
		<tr>
			<td>
				23. Ken Rogoff</td>
			<td>
				Professor of Public Policy and Professor of Economics, Harvad University</td>
		</tr>
		<tr>
			<td colspan="2">
				<p>
					&nbsp;</p>
				<h2>
					<strong>Business Leaders</strong></h2>
			</td>
		</tr>
		<tr>
			<td>
				24. Hans-Paul B&uuml;rkner</td>
			<td>
				Chairman , The Boston Consulting Group</td>
		</tr>
		<tr>
			<td>
				25. Victor Chu</td>
			<td>
				Chairman ,First Eastern Investment Group</td>
		</tr>
		<tr>
			<td>
				26. Shumeet Banerji</td>
			<td>
				Member of the Board of Directors, Hewlett-Packard Company</td>
		</tr>
		<tr>
			<td>
				27. John Haley</td>
			<td>
				Chairman and CEO , Towers Watson &amp; Co</td>
		</tr>
		<tr>
			<td>
				28. Rodney Schwartz</td>
			<td>
				CEO and Founder, ClearlySo</td>
		</tr>
		<tr>
			<td>
				29. Thomas Mirow</td>
			<td>
				Chairperson of the Supervisory Board, HSH Nordbank AG</td>
		</tr>
		<tr>
			<td>
				30. Arun Maira</td>
			<td>
				Member of the Planning, Commission, Government of India</td>
		</tr>
		<tr>
			<td>
				31. George Soros</td>
			<td>
				Founder and Chairman , Open Society Foundations;Chairman , Soros Fund Management</td>
		</tr>
		<tr>
			<td>
				32. Jacob Frenkel</td>
			<td>
				Chairman, JP Morgan Chase International</td>
		</tr>
		<tr>
			<td>
				33. Sunnil Mittal</td>
			<td>
				Founder,Chairman and Group CEO, Bharti Enterprises Limited</td>
		</tr>
		<tr>
			<td>
				34. Jim Zemlin</td>
			<td>
				Executive Director, The Linux Foundation</td>
		</tr>
		<tr>
			<td>
				35. Jurgen Fitschen</td>
			<td>
				Co-CEO, Deutsche Bank AG</td>
		</tr>
		<tr>
			<td>
				36. Sean Cleary</td>
			<td>
				Executive Vice Chair, FutureWorld Foundation, Switzerland</td>
		</tr>
		<tr>
			<td>
				37. Philippe Bourguignon</td>
			<td>
				Vice Chairman, Revolution LLC</td>
		</tr>
		<tr>
			<td colspan="2">
				<p>
					&nbsp;</p>
				<h2>
					<strong>Policy and Political Leaders</strong></h2>
			</td>
		</tr>
		<tr>
			<td>
				38. Mehment Simsek</td>
			<td>
				Minister of Finance, Republic of Turkey</td>
		</tr>
		<tr>
			<td>
				39. Mahmoud Mohieldin</td>
			<td>
				World Bank President&#39;s Special Envoy on Millennium Development Goals ( MDGs) and Financial Development, World Bank</td>
		</tr>
		<tr>
			<td>
				40. Anders Borg</td>
			<td>
				Minister of Finance, Sweeden</td>
		</tr>
		<tr>
			<td>
				41. Fellippe Larrain</td>
			<td>
				Minister of Finance, Chile</td>
		</tr>
		<tr>
			<td>
				42. Prince Turki Al Faisal</td>
			<td>
				Founder and Trustee, King Faisal Foundation;Chairman, King Faisal Centre for Research and Islamic Studies</td>
		</tr>
		<tr>
			<td>
				43. Trevor Manuel</td>
			<td>
				Minister in the Presidency , National Planning Commissionm South Africa</td>
		</tr>
		<tr>
			<td>
				44. William Lacy Swing</td>
			<td>
				Director General, International Organisation for Migration</td>
		</tr>
		<tr>
			<td>
				45. Erden Basci</td>
			<td>
				Governor, Central Bank of the Republic of Turkey</td>
		</tr>
		<tr>
			<td>
				46. Montek Ahluwalia</td>
			<td>
				Deputy Chairman, Planning Commission, Government of India</td>
		</tr>
		<tr>
			<td>
				47. Joaquin Almunia</td>
			<td>
				Vice-President and Commissioner for Competition, European Commission</td>
		</tr>
		<tr>
			<td>
				48. Angel Gurria</td>
			<td>
				Secretary General of OECD</td>
		</tr>
		<tr>
			<td>
				49. Klaus Regling</td>
			<td>
				Managing Director, European Stability Mechanism;CEO, Europian Financial Stability Facilty</td>
		</tr>
		<tr>
			<td>
				50. Supachai Panitchpakdi</td>
			<td>
				Former Secretary-General for the UN Conference on Trade and Development</td>
		</tr>
		<tr>
			<td>
				51. Erkki Liikanen</td>
			<td>
				Governor, Bank of Finland</td>
		</tr>
		<tr>
			<td>
				52. Raguram Rajan</td>
			<td>
				Governor, Reserve Bank of India; Professor of Finance , University of Chicago</td>
		</tr>
		<tr>
		</tr>
		<tr>
			<td colspan="2">
				<p>
					&nbsp;</p>
				<h2>
					<strong>Civil Society Leaders</strong></h2>
			</td>
		</tr>
		<tr>
			<td>
				53. Robert Johnson</td>
			<td>
				President, The Institute for New Economic Thinking</td>
		</tr>
		<tr>
			<td>
				54. Pascal Lamy</td>
			<td>
				Honorary President, Notre Europe - Jacques Delors Institute; Former Director-General, World Trade Organization</td>
		</tr>
		<tr>
			<td>
				55. Angel Gurr&iacute;a</td>
			<td>
				Secretary General, OECD</td>
		</tr>
		<tr>
			<td>
				56. Achim Steiner</td>
			<td>
				Executive Director, United Nations Environment Programme; Under Secretary-General,UN</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'32', N'e00f214046154ef98601a6a071e1f892', N'<div class="permalink">
	<h4>
		<span style="font-size: 12px;">GES provides a vital platform to help leaders gain insights into future global problems, by exchanging ideas and assessing the viability of their activities with the ultimate goal of addressing issues and challenges of global significance. It offers a high-powered solution forum, under the patronage of Mr Jose Manuel Barroso, President of the European Union. GES features top leaders, high ranking and international figures who drive diverse sectors of world economies. The challenges addressed during GES include sovereign debt crises, climate change, energy security, food and water shortages, poverty and inequality , unemployment and global security threats.</span></h4>
</div>
<div class="post-intro">
	<p>
		GES is not a discussion forum. It is action-oriented, and it focuses on formulating policies and business strategies as a means of tackling global problems. The symposium provides a platform for research-based exchange, supported by state-of-the-art research and strategy analyses collated in the Virtual GES, which is the web-based information and discussion platform of the event. The outcome of each GES is summarised annually in the book <strong><em>Global Economic Solutions</em></strong>, and submitted to major international entities, national governments and other decision-making bodies. A selection of proposals for highlighted issues are compiled in focused GES Briefs.</p>
	<p>
		The themes of the GES are divided into four clusters, according to issues, namely:</p>
	<ul class="simple-list">
		<li>
			Achieving Sustainable and Inclusive Growth</li>
		<li>
			Fiscal and Financial Sustainability</li>
		<li>
			Poverty in the Midst of Plenty</li>
		<li>
			New Opportunities for Global Cooperation</li>
	</ul>
</div>
<p>
	&nbsp;</p>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'34', N'7eb40642fb3441b8a3b44945fff3b883', N'<p>
	test</p>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'36', N'9961e0a492cc4752890d1b8523f89874', N'<p>
	The IfW focuses on creating solutions to pressing problems in global economic affairs. Its research provides the basis through which it gives advice to decision-makers in policy, business, and society. The broader public is also informed of crucial developments in international economic policy. As a research portal in global economic affairs, the IfW establishes a network of International Research Fellows that supports worldwide awareness of its activities, and offers additional research impulses via scientific, joint research, and teaching stints in Kiel. The IfW lays special focus on economic education and closely cooperates with ZBW, the world&rsquo;s largest library specialising in economics and social sciences.</p>
', null)
GO
GO
INSERT INTO [dbo].[tblArticlesDetail] ([ArticlesDetail_ID], [ArticlesHeader_SID], [ArticlesDetail], [ArticlesAuthors]) VALUES (N'38', N'4a4e25be76f34ec886bb433022c758e6', N'<p>
	As of 2013, UiTM offers 480 academic programmes to over 175,000 students, from pre-diploma right up to PhD level. Its vast network of compuses is manned by a workforce of some 17,770 personal, almost equally made up of academics and administrative staff. UiTM has earned a reputation as one of Malaysia&rsquo;s innovative and entrepreneurial universities, following its linkages with a wide range of industrial sectors, throught which research and innovation are acculturated within its academia.</p>
<p>
	UiTM draws its strength from the initiatives of its founding fathers, exploring and mastering various frontiers of knowledge as it works towards reaching greater heights, celebrating more accomplishments at home and abroad, with the ultimate objective of putting UiTM on the world map.</p>
', null)
GO
GO
SET IDENTITY_INSERT [dbo].[tblArticlesDetail] OFF
GO

-- ----------------------------
-- Table structure for tblArticlesHeader
-- ----------------------------
DROP TABLE [dbo].[tblArticlesHeader]
GO
CREATE TABLE [dbo].[tblArticlesHeader] (
[ArticlesHeader_ID] int NOT NULL IDENTITY(1,1) ,
[ArticlesHeader_SID] nvarchar(40) NOT NULL ,
[Articles_Article_Code] char(40) NULL ,
[ArticlesHeader_Topic] nvarchar(255) NOT NULL ,
[ArticlesHeader_Intro] ntext NULL ,
[ArticlesHeader_Type] smallint NULL ,
[Articles_created] datetime NOT NULL ,
[Articles_modified] datetime NULL ,
[Articles_start] datetime NULL ,
[Articles_end] datetime NULL ,
[Articles_Perms] nvarchar(255) NULL ,
[Author_ID] int NOT NULL ,
[Author_ID_modified] int NULL ,
[No_of_views] int NULL ,
[Hide] bit NULL ,
[Articles_Status] char(3) NOT NULL ,
[Fea_URL_image] nvarchar(255) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[tblArticlesHeader]', RESEED, 41)
GO

-- ----------------------------
-- Records of tblArticlesHeader
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tblArticlesHeader] ON
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'1', N'44bc88002765419eb195895c35d6da44', null, N'a', N'a', N'2', N'2014-01-23 15:56:38.000', null, N'2012-12-02 00:00:00.000', N'2012-02-14 00:00:00.000', null, N'2', null, N'0', N'1', N'D  ', N'')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'2', N'b4e52a2e98ab4bd5a94a039474884b13', null, N'test topic', N'test intro', N'1', N'2014-01-23 15:57:49.000', null, N'2012-01-24 00:00:00.000', N'2012-01-25 00:00:00.000', null, N'2', null, N'0', N'1', N'D  ', N'http://arionline.uitm.edu.my/ari/uploads/xxxxxx.jpg')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'3', N'f46ad93e9753494f810c71abfdb4c918', null, N'test topic 2', N'test intro 2', N'2', N'2014-01-23 16:45:54.000', null, N'2012-02-19 00:00:00.000', N'2012-02-20 00:00:00.000', null, N'2', null, N'0', N'1', N'D  ', N'http://arionline.uitm.edu.my/ari/uploads/xxxxxxYYYYY.jpg')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'4', N'a26ed7b1afc2495b96a4030321ebcdc0', null, N'TEST SAMPAI SUKSES', N'testesetsetest', N'4', N'2014-01-24 09:19:07.000', N'2014-01-24 00:00:00.000', N'2014-01-24 00:00:00.000', N'2014-01-23 00:00:00.000', null, N'2', null, N'0', N'1', N'D  ', N'testesetsetestaaaaaaaaaaa')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'5', N'dcee416e21a944c8a1423f80e1492c75', null, N'Jemputan Kursus ', N'Maklumat yang diterima ini tidak boleh di''forward''kan kepada orang lain. Harap maklum.
This information cannot be forwarded.
', N'6', N'2014-01-24 09:55:45.000', N'2014-01-24 00:00:00.000', N'2012-01-15 00:00:00.000', N'2014-01-30 00:00:00.000', null, N'2', null, N'0', N'1', N'D  ', N'http://arionline.uitm.edu.my/ari/uploads/xxxxxx.jpgfgfgfg')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'6', N'69140b15b81d4a5fa53495f6c98b6c85', null, N'LEI Report:  Activity ''SQL STARS - Kenderaan'' on server ''Jade'' - completion status of ''Activity Ended With An Error''', N'01/24/2014 04:30:45 AM        Activity started 
01/24/2014 04:33:53 AM        Removed all records from metadata ''refKenderaanStaf'',  Connector ''Notes - StaffDB'',  Method -Action [Truncate]- 
01/24/2014 04:34:56 AM        Error: Network operation did not complete in a reasonable amount of time; please retry,  Connector ''Notes - StaffDB'',  Method -Insert-  (2567) 
01/24/2014 04:34:56 AM        Activity Ended With An Error 
', N'5', N'2014-01-24 10:08:53.000', N'2014-01-24 00:00:00.000', N'2012-01-24 00:00:00.000', N'2012-12-02 00:00:00.000', null, N'2', null, N'0', N'1', N'D  ', N'http://10.0.20.1/ges2014/ap-admin/add_article.aspaaaaaaaaaaaaaaa')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'7', N'0abb1d66a8dd4cd0bc3708e17ccc5db9', null, N'REPOSITORI SECARA DIGITAL AKTA', N'Maklumat yang diterima ini tidak boleh di''forward''kan kepada orang lain. Harap maklum.
This information cannot be forwarded.', N'6', N'2014-01-24 10:11:49.000', N'2014-01-29 00:00:00.000', N'2012-12-02 00:00:00.000', N'2012-12-02 00:00:00.000', null, N'2', null, N'0', N'1', N'D  ', N'http://arionline.uitm.edu.my/ari/uploads/xxxxxx.jpg')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'13', N'995d533a21bb4bab95c99dadb8daaafe', null, N'a', N'a', N'6', N'2014-01-29 08:32:50.000', null, N'2014-01-29 00:00:00.000', N'2014-01-29 00:00:00.000', null, N'3', null, N'0', N'1', N'D  ', N'a')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'15', N'8d8246716016409a8b927e7f53d13a41', null, N'aaaaaaaaqa', N'aqqa', N'6', N'2014-01-29 08:39:09.000', N'2014-02-07 00:00:00.000', N'2014-07-02 00:00:00.000', N'2014-02-13 00:00:00.000', null, N'3', null, N'0', N'0', N'D  ', N'aqqqqqqqqa')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'16', N'05637539664343b0948c22eeaa80496a', null, N'a', N'a', N'10', N'2014-02-07 16:50:57.000', null, N'2014-07-02 00:00:00.000', N'2014-02-26 00:00:00.000', null, N'3', null, N'0', N'0', N'D  ', N'a')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'17', N'77a8f8e898b04b2ba0b97f25342712e3', null, N'Tiada Elektik', N'Tiada ElektikTiada ElektikTiada ElektikTiada ElektikTiada ElektikTiada Elektik', N'1', N'2014-02-07 16:51:46.000', null, N'2014-07-02 00:00:00.000', N'2014-09-02 00:00:00.000', null, N'3', null, N'0', N'1', N'P  ', N'http://arionline.uitm.edu.my/ari/uploads/xxxxxx.jpg')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'22', N'b2c139b148a449daa352a3e48b7c1a6f', null, N'Article Topic', N'', N'10', N'2014-02-10 11:16:24.000', null, N'1900-01-01 00:00:00.000', N'1900-01-01 00:00:00.000', null, N'3', null, N'0', N'0', N'D  ', N'')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'24', N'38fae4c3ee0544e394fb1b1494f797e6', null, N'test by kak ad', N'test by kak ad ', N'16', N'2014-02-10 11:31:17.000', N'2014-02-10 00:00:00.000', N'2014-10-02 00:00:00.000', N'2014-11-02 00:00:00.000', null, N'3', null, N'0', N'1', N'D  ', N'')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'25', N'dcd269ccbb294411ae444b4f5c1df329', null, N'Talk on Quantitative Data Analysis - Econometric Model and Guest Lecture On Management Accounting Research Area', N'TEST AGAIN ', N'1', N'2014-02-10 11:36:57.000', N'2014-02-11 00:00:00.000', N'2014-10-02 00:00:00.000', N'2014-11-02 00:00:00.000', null, N'3', null, N'0', N'1', N'P  ', N'')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'27', N'b913d9e4d2a84f3eb74798ebaaa124e3', null, N'International Islamic Accounting and Finance Conference 2012', N'Theme : Steering Innovations And Competitiveness In A Dynamic Economy: New Frontiers, New Lessons"

Date: 19-21 November 2012

Venue: Hotel Istana, Kuala Lumpur  ', N'17', N'2014-02-10 16:34:23.000', N'2014-02-13 00:00:00.000', N'2014-10-02 00:00:00.000', N'2014-02-17 00:00:00.000', null, N'3', null, N'0', N'1', N'B  ', N'')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'28', N'a64783381c15472d9a642430e30b858f', null, N'International Trade Operations - The Islamic Approach', N'International Trade Operations - The Islamic Approach ', N'19', N'2014-02-17 16:40:51.000', N'2014-02-18 00:00:00.000', N'2014-02-17 00:00:00.000', N'2014-02-18 00:00:00.000', null, N'51', null, N'0', N'1', N'D  ', N'')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'29', N'f3fed7ce35964436a9bfb6d2e3f08bd6', null, N'Talk on Quantitative Data Analysis - Econometric Model and Guest Lecture On Management Accounting Research Area', N'Talk on Quantitative Data Analysis - Econometric Model and Guest Lecture On Management Accounting Research AreaTalk on Quantitative Data Analysis - Econometric Model and Guest Lecture On Management Accounting Research Area', N'12', N'2014-02-17 16:41:52.000', null, N'2014-02-17 00:00:00.000', N'2014-02-24 00:00:00.000', null, N'51', null, N'0', N'0', N'D  ', N'')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'33', N'd34d1ef264ce4635a88dae1c5b35d717', null, N'GES Objectives', N'The Global Economic Symposium (GES) is meant to give a new impetus to global problem-solving. Our world has become increasingly interdependent and its problems-climate change, financial crisis, failed states, vicious cycles of poverty, educational deficits, unsustainable energy demands, water management and many more are interdependent as well. These problems can only be addressed through global cooperation. ', N'20', N'2014-02-19 12:31:21.000', N'2014-02-19 00:00:00.000', N'2014-12-02 00:00:00.000', N'2014-02-22 00:00:00.000', null, N'30', null, N'0', N'0', N'P  ', N'')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'35', N'a595d34561ae4a8197f0b7e987220c4d', null, N'test2', N'test2', N'19', N'2014-02-19 15:49:00.000', null, N'2014-02-19 00:00:00.000', N'2014-02-26 00:00:00.000', null, N'51', null, N'0', N'1', N'D  ', N'http://10.0.20.1/ges2014/uploads/test2')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'37', N'94ab8719d48543439983d6b90ebc3d7e', null, N'About Malaysia', N'Malaysia occupies the length of the Southeast Asian peninsula and northern Borneo across the South China Sea. It consists of 13 states and three federal territories, including Kuala Lumpur. The country observes a system of constitutional monarchy, with the Yang Di-Pertuan Agong (the King) presiding as Head of State. It practises parliamentary democracy, led by the Prime Minister as Head of Government.    ', N'20', N'2014-02-19 15:59:58.000', N'2014-02-24 00:00:00.000', N'2014-12-02 00:00:00.000', N'2014-05-04 00:00:00.000', null, N'30', null, N'0', N'0', N'P  ', N'http://10.0.20.1/ges2014/uploads/malaysia-01.jpg')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'39', N'8bfe04a396674dde96bc1d48a6af1861', null, N'test3', N'test3', N'19', N'2014-02-19 16:06:22.000', null, N'2014-02-19 00:00:00.000', N'2014-02-20 00:00:00.000', null, N'51', null, N'0', N'1', N'B  ', N'http://10.0.20.1/ges2014/uploads/test3.jpg')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'41', N'bb2d8ae433ff40a6ab4bb1e31cf28c9b', null, N't', N't', N'18', N'2014-02-26 10:17:28.000', null, N'2014-02-27 00:00:00.000', N'2014-02-27 00:00:00.000', null, N'51', null, N'0', N'1', N'D  ', N'http://10.0.20.1/dev/uploads/t')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'10', N'835083e8277d4564ab8bd6db18d5a533', null, N'Iklan', N'IKLAN JAWATAN KOSONG PEG. KHIDMAT PELANGGAN DI INTEC EDUCATION COLLEGE', N'1', N'2014-01-29 08:06:08.000', N'2014-01-29 00:00:00.000', N'2014-01-30 00:00:00.000', N'2014-01-29 00:00:00.000', null, N'3', null, N'0', N'1', N'D  ', N'http://10.0.20.1/ges2014/ap-admin/form_component.jpg')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'14', N'ea63b8a68a38479ebeccb21c3c7121a4', null, N'xxxxxx', N'xxxxxx', N'6', N'2014-01-29 08:35:21.000', null, N'2014-01-29 00:00:00.000', N'2014-01-30 00:00:00.000', null, N'3', null, N'0', N'0', N'D  ', N'xxxxxx')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'20', N'785bab513f104e12b83eaba7d73d60c6', null, N'Mesyuarat JPS', N'', N'1', N'2014-02-10 10:20:34.000', null, N'2014-11-02 00:00:00.000', N'2014-11-02 00:00:00.000', null, N'3', null, N'0', N'1', N'D  ', N'http://arionline.uitm.edu.my/ari/uploads/xxxxxx.jpg')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'30', N'38147a220abb4983bccb0ec305be0ec8', null, N'Damage mechanism of Woven Fabric Composi', N'Damage mechanism of Woven Fabric ComposiDamage mechanism of Woven Fabric ComposiDamage mechanism of Woven Fabric Composi', N'19', N'2014-02-17 16:42:50.000', null, N'2014-02-17 00:00:00.000', N'2014-02-28 00:00:00.000', null, N'51', null, N'0', N'1', N'D  ', N'')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'11', N'e21f780eef3e4067ad819cce7e6ea75d', null, N'aaaaaaaa', N'aaaaaa', N'5', N'2014-01-29 08:14:18.000', N'2014-01-29 00:00:00.000', N'2014-01-29 00:00:00.000', N'2014-01-30 00:00:00.000', null, N'3', null, N'0', N'1', N'D  ', N'http://arionline.uitm.edu.my/ari/uploads/xxxxxx.jpg')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'12', N'4a83f991e1e14140ac63435361561214', null, N'a', N'a', N'2', N'2014-01-29 08:22:25.000', N'2014-01-29 00:00:00.000', N'2014-01-29 00:00:00.000', N'2014-01-29 00:00:00.000', null, N'3', null, N'0', N'1', N'D  ', N'a')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'18', N'9b63dd0a43474f47b17f16282f3ac6ef', null, N'z', N'z', N'4', N'2014-02-07 16:59:03.000', N'2014-02-10 00:00:00.000', N'2014-11-27 00:00:00.000', N'2014-11-28 00:00:00.000', null, N'3', null, N'0', N'0', N'D  ', N'z')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'19', N'78fa05bce46245c6859458a63d96a0a2', null, N'QWWQWQW', N'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', N'1', N'2014-02-10 10:19:03.000', N'2014-02-10 00:00:00.000', N'2014-10-02 00:00:00.000', N'2014-10-02 00:00:00.000', null, N'3', null, N'0', N'1', N'B  ', N'')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'21', N'1663b145d1c84c72a5c4204020b6074e', null, N'Article Topic', N'Article Intro', N'10', N'2014-02-10 11:09:31.000', null, N'1900-01-01 00:00:00.000', N'1900-01-01 00:00:00.000', null, N'3', null, N'0', N'0', N'D  ', N'')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'23', N'09d2d2a115864e1f88d708687ff2f92e', null, N'a', N'', N'10', N'2014-02-10 11:19:08.000', null, N'2014-10-02 00:00:00.000', N'2014-10-02 00:00:00.000', null, N'3', null, N'0', N'0', N'D  ', N'a')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'26', N'a9f6878fd7b14332ac45d569e4385c2b', null, N'test test ', N'test test    ', N'19', N'2014-02-10 11:57:42.000', N'2014-02-10 00:00:00.000', N'2014-10-02 00:00:00.000', N'2014-02-27 00:00:00.000', null, N'3', null, N'0', N'1', N'D  ', N'test test')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'31', N'201669f6bee444658da7f61149d24665', null, N'The World Seeks Solutions in Kuala Lumpur, Malaysia!', N'The GES 2014 Symposium takes place from September 6th to 8th! The overarching theme is "Transforming Economies".   ', N'14', N'2014-02-18 16:02:23.000', N'2014-02-19 00:00:00.000', N'2014-10-02 00:00:00.000', N'2014-02-22 00:00:00.000', null, N'30', null, N'0', N'0', N'P  ', N'http://10.0.20.1/ges2014/uploads/malaysia-01.jpg')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'40', N'd391a1f924f545fbb9f6b3ec4e284204', null, N'List Of Speakers', N'<h1>LISTING OF DINTINGUISHED SPEAKERS FROM MALAYSIA</h1>                                                          ', N'14', N'2014-02-24 14:33:29.000', N'2014-02-25 00:00:00.000', N'2014-02-24 00:00:00.000', N'2014-12-24 00:00:00.000', null, N'30', null, N'0', N'0', N'P  ', N'')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'32', N'e00f214046154ef98601a6a071e1f892', null, N'What is GES', N'Global Economic Symposium - 
The Global Economic Symposium is an annual conference inaugurated in Kiel in 2008, and organized by the Kiel Institute for the World Economy, in cooperation with the German National Library of Economics (ZBW) – Leibniz Information Centre of Economics.      ', N'20', N'2014-02-18 17:21:28.000', N'2014-02-19 00:00:00.000', N'2014-12-02 00:00:00.000', N'2014-02-22 00:00:00.000', null, N'30', null, N'0', N'0', N'P  ', N'http://10.0.20.1/ges2014/uploads/whatisges.jpg')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'34', N'7eb40642fb3441b8a3b44945fff3b883', null, N'test', N'test', N'19', N'2014-02-19 15:44:26.000', null, N'2014-02-19 00:00:00.000', N'2014-02-20 00:00:00.000', null, N'51', null, N'0', N'1', N'D  ', N'test')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'36', N'9961e0a492cc4752890d1b8523f89874', null, N'Kiel Institute ', N'The Kiel Institute for the World Economy is a think-tank and the research centre on economics. The Kiel-based institution is ranked 4th among the world’s top think-tanks on international economic policy in a study conducted by University of Pennsylvania, USA, titled The Global Go-To Think Tanks. This makes IfW the only German institute of its kind, to be ranked higher than renowned American outfits, such as the Heritage Foundation, Cato Institute, National Bureau for Economic Research and Rand Corporation.   ', N'20', N'2014-02-19 15:57:42.000', N'2014-02-19 00:00:00.000', N'2014-12-02 00:00:00.000', N'2014-02-28 00:00:00.000', null, N'30', null, N'0', N'0', N'P  ', N'http://10.0.20.1/ges2014/uploads/ges-2013.jpg')
GO
GO
INSERT INTO [dbo].[tblArticlesHeader] ([ArticlesHeader_ID], [ArticlesHeader_SID], [Articles_Article_Code], [ArticlesHeader_Topic], [ArticlesHeader_Intro], [ArticlesHeader_Type], [Articles_created], [Articles_modified], [Articles_start], [Articles_end], [Articles_Perms], [Author_ID], [Author_ID_modified], [No_of_views], [Hide], [Articles_Status], [Fea_URL_image]) VALUES (N'38', N'4a4e25be76f34ec886bb433022c758e6', null, N'About UiTM', N'Universiti Teknologi MARA is Malaysia’s largest university in terms of size and population, and it is still growing. It has its humble beginnings in 1956 as a training centre for the less privileged among the indigenous communities, as part of the country’s social engineering. Today, UiTM boasts of 12 state campuses, besides the main campus in Shah Alam, the state capital of Selangor. Teaching and learning also take place in 17 sattellite campuses and 21 affiliated colleges located throughout the country.    ', N'20', N'2014-02-19 16:04:53.000', N'2014-02-19 00:00:00.000', N'2014-02-14 00:00:00.000', N'2014-12-04 00:00:00.000', null, N'30', null, N'0', N'0', N'P  ', N'http://10.0.20.1/ges2014/uploads/about-uitm2.jpg')
GO
GO
SET IDENTITY_INSERT [dbo].[tblArticlesHeader] OFF
GO

-- ----------------------------
-- Table structure for tblArticleStatus
-- ----------------------------
DROP TABLE [dbo].[tblArticleStatus]
GO
CREATE TABLE [dbo].[tblArticleStatus] (
[id] int NOT NULL IDENTITY(1,1) ,
[status_type] char(2) NULL ,
[status_desc] varchar(12) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[tblArticleStatus]', RESEED, 3)
GO

-- ----------------------------
-- Records of tblArticleStatus
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tblArticleStatus] ON
GO
INSERT INTO [dbo].[tblArticleStatus] ([id], [status_type], [status_desc]) VALUES (N'1', N'B ', N'Blocked')
GO
GO
INSERT INTO [dbo].[tblArticleStatus] ([id], [status_type], [status_desc]) VALUES (N'2', N'D ', N'Draft')
GO
GO
INSERT INTO [dbo].[tblArticleStatus] ([id], [status_type], [status_desc]) VALUES (N'3', N'P ', N'Published')
GO
GO
SET IDENTITY_INSERT [dbo].[tblArticleStatus] OFF
GO

-- ----------------------------
-- Table structure for tblBankAcc
-- ----------------------------
DROP TABLE [dbo].[tblBankAcc]
GO
CREATE TABLE [dbo].[tblBankAcc] (
[Acc_id] int NOT NULL ,
[Payable_To] varchar(50) NULL ,
[Acc_Name] varchar(100) NULL ,
[Acc_Number] numeric(18) NULL ,
[Bank_Name] varchar(50) NULL ,
[Swift_Code] varchar(50) NULL ,
[Acc_Status] bit NULL 
)


GO

-- ----------------------------
-- Records of tblBankAcc
-- ----------------------------
INSERT INTO [dbo].[tblBankAcc] ([Acc_id], [Payable_To], [Acc_Name], [Acc_Number], [Bank_Name], [Swift_Code], [Acc_Status]) VALUES (N'1', N'BENDAHARI UNIVERSITI TEKNOLOGI MARA', N'AKAUN AMANAH AM UITM', N'105140003422', N'AFFIN BANK BERHAD', N'AIBBMYKL', N'1')
GO
GO

-- ----------------------------
-- Table structure for tblConfiguration
-- ----------------------------
DROP TABLE [dbo].[tblConfiguration]
GO
CREATE TABLE [dbo].[tblConfiguration] (
[websiteid] int NOT NULL ,
[website_name] nvarchar(255) NOT NULL ,
[forum_name] nvarchar(255) NULL ,
[forum_path] nvarchar(255) NULL ,
[website_path] nvarchar(255) NULL ,
[forum_email_address] nvarchar(255) NULL ,
[email_notify] bit NOT NULL ,
[mail_component] nvarchar(255) NULL ,
[mail_server] nvarchar(255) NULL ,
[IE_editor] bit NOT NULL ,
[L_code] nvarchar(255) NULL ,
[Topics_per_page] smallint NULL ,
[Title_image] nvarchar(255) NULL ,
[Text_link] bit NOT NULL ,
[Emoticons] bit NOT NULL ,
[Avatar] bit NOT NULL ,
[Email_activate] bit NOT NULL ,
[Email_post] bit NOT NULL ,
[Hot_views] smallint NULL ,
[Hot_replies] smallint NOT NULL ,
[Private_msg] bit NOT NULL ,
[No_of_priavte_msg] smallint NULL ,
[Threads_per_page] smallint NULL ,
[Spam_seconds] smallint NULL ,
[Spam_minutes] smallint NULL ,
[Vote_choices] smallint NULL ,
[Email_sys] bit NOT NULL ,
[Upload_img_path] nvarchar(255) NULL ,
[Upload_img_types] nvarchar(255) NULL ,
[Upload_img_size] smallint NULL ,
[Upload_files_path] nvarchar(255) NULL ,
[Upload_files_type] nvarchar(255) NULL ,
[Upload_files_size] smallint NULL ,
[Upload_avatar] bit NOT NULL ,
[Upload_avatar_path] nvarchar(255) NULL ,
[Upload_avatar_types] nvarchar(255) NULL ,
[Upload_avatar_size] smallint NULL ,
[Upload_component] nvarchar(255) NULL ,
[Active_users] bit NOT NULL ,
[Forums_closed] bit NOT NULL ,
[Show_edit] bit NOT NULL ,
[Process_time] bit NOT NULL ,
[Flash] bit NOT NULL ,
[Show_mod] bit NOT NULL ,
[Reg_closed] bit NOT NULL ,
[Reg_Approved] bit NOT NULL ,
[Reg_Approved_email] bit NOT NULL ,
[No_of_Welcome_msg] smallint NULL ,
[Portal_active] bit NULL 
)


GO

-- ----------------------------
-- Records of tblConfiguration
-- ----------------------------
INSERT INTO [dbo].[tblConfiguration] ([websiteid], [website_name], [forum_name], [forum_path], [website_path], [forum_email_address], [email_notify], [mail_component], [mail_server], [IE_editor], [L_code], [Topics_per_page], [Title_image], [Text_link], [Emoticons], [Avatar], [Email_activate], [Email_post], [Hot_views], [Hot_replies], [Private_msg], [No_of_priavte_msg], [Threads_per_page], [Spam_seconds], [Spam_minutes], [Vote_choices], [Email_sys], [Upload_img_path], [Upload_img_types], [Upload_img_size], [Upload_files_path], [Upload_files_type], [Upload_files_size], [Upload_avatar], [Upload_avatar_path], [Upload_avatar_types], [Upload_avatar_size], [Upload_component], [Active_users], [Forums_closed], [Show_edit], [Process_time], [Flash], [Show_mod], [Reg_closed], [Reg_Approved], [Reg_Approved_email], [No_of_Welcome_msg], [Portal_active]) VALUES (N'1', N'Global Economic Symposium 2014', N'My Forums', N'http://localhost/uss_dev/', N'http://localhost/uss_dev/', N'forum@myweb.coo', N'1', N'CDONTS', N'', N'1', N'-1', N'16', N'', N'1', N'1', N'1', N'0', N'1', N'50', N'10', N'1', N'35', N'10', N'20', N'7', N'5', N'1', N'uploads', N'jpg;jpeg;gif;png', N'15', N'uploads', N'zip;rar', N'500', N'1', N'uploads', N'jpg;jpeg;gif;png', N'15', N'AspUpload', N'1', N'0', N'1', N'1', N'0', N'1', N'0', N'0', N'0', N'700', N'1')
GO
GO

-- ----------------------------
-- Table structure for tblCurrencyRate
-- ----------------------------
DROP TABLE [dbo].[tblCurrencyRate]
GO
CREATE TABLE [dbo].[tblCurrencyRate] (
[currency_id] int NOT NULL IDENTITY(1,1) ,
[currency_type] nchar(5) NULL ,
[currency_local_rate] decimal(5,3) NULL ,
[currency_status] int NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[tblCurrencyRate]', RESEED, 4)
GO

-- ----------------------------
-- Records of tblCurrencyRate
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tblCurrencyRate] ON
GO
INSERT INTO [dbo].[tblCurrencyRate] ([currency_id], [currency_type], [currency_local_rate], [currency_status]) VALUES (N'1', N'USD  ', N'3.000', N'1')
GO
GO
INSERT INTO [dbo].[tblCurrencyRate] ([currency_id], [currency_type], [currency_local_rate], [currency_status]) VALUES (N'2', N'GBP  ', N'5.000', N'1')
GO
GO
INSERT INTO [dbo].[tblCurrencyRate] ([currency_id], [currency_type], [currency_local_rate], [currency_status]) VALUES (N'3', N'BHT  ', N'4.000', N'1')
GO
GO
INSERT INTO [dbo].[tblCurrencyRate] ([currency_id], [currency_type], [currency_local_rate], [currency_status]) VALUES (N'4', N'IDR  ', N'.010', N'1')
GO
GO
SET IDENTITY_INSERT [dbo].[tblCurrencyRate] OFF
GO

-- ----------------------------
-- Table structure for tblDateTimeFormat
-- ----------------------------
DROP TABLE [dbo].[tblDateTimeFormat]
GO
CREATE TABLE [dbo].[tblDateTimeFormat] (
[Date_format] nvarchar(255) NOT NULL ,
[Year_format] nvarchar(255) NULL ,
[Seporator] nvarchar(255) NULL ,
[Month1] nvarchar(255) NULL ,
[Month2] nvarchar(255) NULL ,
[Month3] nvarchar(255) NULL ,
[Month4] nvarchar(255) NULL ,
[Month5] nvarchar(255) NULL ,
[Month6] nvarchar(255) NULL ,
[Month7] nvarchar(255) NULL ,
[Month8] nvarchar(255) NULL ,
[Month9] nvarchar(255) NULL ,
[Month10] nvarchar(255) NULL ,
[Month11] nvarchar(255) NULL ,
[Month12] nvarchar(255) NULL ,
[Time_format] smallint NULL ,
[am] nvarchar(255) NULL ,
[pm] nvarchar(255) NULL 
)


GO

-- ----------------------------
-- Records of tblDateTimeFormat
-- ----------------------------
INSERT INTO [dbo].[tblDateTimeFormat] ([Date_format], [Year_format], [Seporator], [Month1], [Month2], [Month3], [Month4], [Month5], [Month6], [Month7], [Month8], [Month9], [Month10], [Month11], [Month12], [Time_format], [am], [pm]) VALUES (N'dd/mm/yy', N'long', N'&nbsp;', N'Jan', N'Feb', N'Mac', N'Apr', N'May', N'Jun', N'Jul', N'Aug', N'Sep', N'Oct', N'Nov', N'Dec', N'12', N'am', N'pm')
GO
GO

-- ----------------------------
-- Table structure for tblEvents
-- ----------------------------
DROP TABLE [dbo].[tblEvents]
GO
CREATE TABLE [dbo].[tblEvents] (
[Event_ID] int NOT NULL IDENTITY(1,1) ,
[Fais_Event_ID] int NULL ,
[Event_Name] varchar(255) NULL ,
[Event_Venue] varchar(255) NULL ,
[Event_Date_Start] datetime NULL ,
[Event_Date_End] datetime NULL ,
[Event_Time_Start] varchar(50) NULL ,
[Event_Time_End] varchar(50) NULL ,
[Event_Organizer] varchar(200) NULL ,
[Event_Co_Organizer] varchar(200) NULL ,
[Event_Speaker] varchar(200) NULL ,
[Event_Description] text NULL ,
[Event_add_date] datetime NULL ,
[Event_add_who] int NULL ,
[Event_Status] int NULL ,
[Event_Capacity] int NULL ,
[Event_Discount] int NULL ,
[Event_MinRequirement] int NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[tblEvents]', RESEED, 2)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'tblEvents', 
'COLUMN', N'Event_MinRequirement')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'min. participant of group to get discount'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'tblEvents'
, @level2type = 'COLUMN', @level2name = N'Event_MinRequirement'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'min. participant of group to get discount'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'tblEvents'
, @level2type = 'COLUMN', @level2name = N'Event_MinRequirement'
GO

-- ----------------------------
-- Records of tblEvents
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tblEvents] ON
GO
INSERT INTO [dbo].[tblEvents] ([Event_ID], [Fais_Event_ID], [Event_Name], [Event_Venue], [Event_Date_Start], [Event_Date_End], [Event_Time_Start], [Event_Time_End], [Event_Organizer], [Event_Co_Organizer], [Event_Speaker], [Event_Description], [Event_add_date], [Event_add_who], [Event_Status], [Event_Capacity], [Event_Discount], [Event_MinRequirement]) VALUES (N'2', N'9', N'Global Economic Symposium 2014', N'Shangri La Hotel, Kuala Lumpur', N'2014-06-09 00:00:00.000', N'2014-08-09 00:00:00.000', N'', N'', N'Kiel Institute', N'Libniz Information Centre', N'TAN SRI DATO’ SRI PROF IR DR SAHOL HAMID ABU BAKAR', N'', N'2014-01-23 15:31:49.000', N'2', N'1', null, N'20', N'3')
GO
GO
SET IDENTITY_INSERT [dbo].[tblEvents] OFF
GO

-- ----------------------------
-- Table structure for tblEventsPrice
-- ----------------------------
DROP TABLE [dbo].[tblEventsPrice]
GO
CREATE TABLE [dbo].[tblEventsPrice] (
[Price_ID] int NOT NULL IDENTITY(1,1) ,
[Event_ID] int NULL ,
[Price_type] varchar(100) NULL ,
[Price_amount] decimal(18,2) NULL ,
[Price_offeramount] decimal(18,2) NULL ,
[Price_offerstart] datetime NULL ,
[Price_offerend] datetime NULL ,
[Price_currency] int NULL ,
[Price_status] int NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[tblEventsPrice]', RESEED, 38)
GO

-- ----------------------------
-- Records of tblEventsPrice
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tblEventsPrice] ON
GO
INSERT INTO [dbo].[tblEventsPrice] ([Price_ID], [Event_ID], [Price_type], [Price_amount], [Price_offeramount], [Price_offerstart], [Price_offerend], [Price_currency], [Price_status]) VALUES (N'37', N'2', null, N'2100.00', null, null, null, N'1', N'1')
GO
GO
INSERT INTO [dbo].[tblEventsPrice] ([Price_ID], [Event_ID], [Price_type], [Price_amount], [Price_offeramount], [Price_offerstart], [Price_offerend], [Price_currency], [Price_status]) VALUES (N'38', N'4', null, N'3000.00', null, null, null, N'2', N'0')
GO
GO
SET IDENTITY_INSERT [dbo].[tblEventsPrice] OFF
GO

-- ----------------------------
-- Table structure for tblGroup
-- ----------------------------
DROP TABLE [dbo].[tblGroup]
GO
CREATE TABLE [dbo].[tblGroup] (
[Group_ID] int NOT NULL ,
[Name] nvarchar(255) NULL ,
[Minimum_posts] int NOT NULL ,
[Special_rank] int NOT NULL ,
[Stars] int NOT NULL ,
[Custom_stars] nvarchar(255) NULL ,
[Starting_group] int NOT NULL 
)


GO

-- ----------------------------
-- Records of tblGroup
-- ----------------------------
INSERT INTO [dbo].[tblGroup] ([Group_ID], [Name], [Minimum_posts], [Special_rank], [Stars], [Custom_stars], [Starting_group]) VALUES (N'1', N'Admin Group', N'-1', N'1', N'5', null, N'0')
GO
GO
INSERT INTO [dbo].[tblGroup] ([Group_ID], [Name], [Minimum_posts], [Special_rank], [Stars], [Custom_stars], [Starting_group]) VALUES (N'2', N'Guest Group', N'-1', N'0', N'0', null, N'0')
GO
GO
INSERT INTO [dbo].[tblGroup] ([Group_ID], [Name], [Minimum_posts], [Special_rank], [Stars], [Custom_stars], [Starting_group]) VALUES (N'3', N'Moderator Group', N'-1', N'0', N'4', null, N'1')
GO
GO
INSERT INTO [dbo].[tblGroup] ([Group_ID], [Name], [Minimum_posts], [Special_rank], [Stars], [Custom_stars], [Starting_group]) VALUES (N'4', N'Editor Group', N'-1', N'0', N'3', null, N'0')
GO
GO
INSERT INTO [dbo].[tblGroup] ([Group_ID], [Name], [Minimum_posts], [Special_rank], [Stars], [Custom_stars], [Starting_group]) VALUES (N'5', N'Author Group', N'-1', N'0', N'1', null, N'0')
GO
GO
INSERT INTO [dbo].[tblGroup] ([Group_ID], [Name], [Minimum_posts], [Special_rank], [Stars], [Custom_stars], [Starting_group]) VALUES (N'6', N'Bursary Group ', N'-1', N'0', N'1', null, N'0')
GO
GO
INSERT INTO [dbo].[tblGroup] ([Group_ID], [Name], [Minimum_posts], [Special_rank], [Stars], [Custom_stars], [Starting_group]) VALUES (N'7', N'Members Group', N'0', N'0', N'1', null, N'0')
GO
GO

-- ----------------------------
-- Table structure for tblLookup
-- ----------------------------
DROP TABLE [dbo].[tblLookup]
GO
CREATE TABLE [dbo].[tblLookup] (
[Lookup_ID] int NOT NULL IDENTITY(1,1) ,
[Lookup_Name] varchar(100) NOT NULL ,
[Lookup_Code] int NOT NULL ,
[Lookup_Type] varchar(100) NOT NULL ,
[Lookup_Position] int NOT NULL ,
[Lookup_Status] bit NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[tblLookup]', RESEED, 56)
GO

-- ----------------------------
-- Records of tblLookup
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tblLookup] ON
GO
INSERT INTO [dbo].[tblLookup] ([Lookup_ID], [Lookup_Name], [Lookup_Code], [Lookup_Type], [Lookup_Position], [Lookup_Status]) VALUES (N'1', N'Draft', N'1', N'PostStatus', N'1', N'1')
GO
GO
INSERT INTO [dbo].[tblLookup] ([Lookup_ID], [Lookup_Name], [Lookup_Code], [Lookup_Type], [Lookup_Position], [Lookup_Status]) VALUES (N'3', N'Archived', N'3', N'PostStatus', N'3', N'1')
GO
GO
INSERT INTO [dbo].[tblLookup] ([Lookup_ID], [Lookup_Name], [Lookup_Code], [Lookup_Type], [Lookup_Position], [Lookup_Status]) VALUES (N'16', N'self', N'1', N'RegisterFor', N'1', N'1')
GO
GO
INSERT INTO [dbo].[tblLookup] ([Lookup_ID], [Lookup_Name], [Lookup_Code], [Lookup_Type], [Lookup_Position], [Lookup_Status]) VALUES (N'17', N'others', N'2', N'RegisterFor', N'2', N'1')
GO
GO
INSERT INTO [dbo].[tblLookup] ([Lookup_ID], [Lookup_Name], [Lookup_Code], [Lookup_Type], [Lookup_Position], [Lookup_Status]) VALUES (N'18', N'Media', N'3', N'RegisterAs', N'3', N'1')
GO
GO
INSERT INTO [dbo].[tblLookup] ([Lookup_ID], [Lookup_Name], [Lookup_Code], [Lookup_Type], [Lookup_Position], [Lookup_Status]) VALUES (N'19', N'Islamic Halal', N'1', N'FoodPreference', N'1', N'1')
GO
GO
INSERT INTO [dbo].[tblLookup] ([Lookup_ID], [Lookup_Name], [Lookup_Code], [Lookup_Type], [Lookup_Position], [Lookup_Status]) VALUES (N'20', N'Vegetarian', N'2', N'FoodPreference', N'2', N'1')
GO
GO
INSERT INTO [dbo].[tblLookup] ([Lookup_ID], [Lookup_Name], [Lookup_Code], [Lookup_Type], [Lookup_Position], [Lookup_Status]) VALUES (N'21', N'Non-Vegetarian', N'3', N'FoodPreference', N'3', N'1')
GO
GO
INSERT INTO [dbo].[tblLookup] ([Lookup_ID], [Lookup_Name], [Lookup_Code], [Lookup_Type], [Lookup_Position], [Lookup_Status]) VALUES (N'24', N'Via Credit Card / Debit Card', N'1', N'PaymentType', N'1', N'1')
GO
GO
INSERT INTO [dbo].[tblLookup] ([Lookup_ID], [Lookup_Name], [Lookup_Code], [Lookup_Type], [Lookup_Position], [Lookup_Status]) VALUES (N'25', N'Via Wire Transfer', N'2', N'PaymentType', N'2', N'1')
GO
GO
INSERT INTO [dbo].[tblLookup] ([Lookup_ID], [Lookup_Name], [Lookup_Code], [Lookup_Type], [Lookup_Position], [Lookup_Status]) VALUES (N'26', N'Via Cheque', N'3', N'PaymentType', N'3', N'0')
GO
GO
INSERT INTO [dbo].[tblLookup] ([Lookup_ID], [Lookup_Name], [Lookup_Code], [Lookup_Type], [Lookup_Position], [Lookup_Status]) VALUES (N'35', N'Verified', N'0', N'PaymentStatus', N'1', N'1')
GO
GO
INSERT INTO [dbo].[tblLookup] ([Lookup_ID], [Lookup_Name], [Lookup_Code], [Lookup_Type], [Lookup_Position], [Lookup_Status]) VALUES (N'36', N'Declined', N'1', N'PaymentStatus', N'2', N'1')
GO
GO
INSERT INTO [dbo].[tblLookup] ([Lookup_ID], [Lookup_Name], [Lookup_Code], [Lookup_Type], [Lookup_Position], [Lookup_Status]) VALUES (N'37', N'Pending', N'88', N'PaymentStatus', N'3', N'1')
GO
GO
INSERT INTO [dbo].[tblLookup] ([Lookup_ID], [Lookup_Name], [Lookup_Code], [Lookup_Type], [Lookup_Position], [Lookup_Status]) VALUES (N'39', N'Unknown', N'99', N'PaymentStatus', N'4', N'1')
GO
GO
INSERT INTO [dbo].[tblLookup] ([Lookup_ID], [Lookup_Name], [Lookup_Code], [Lookup_Type], [Lookup_Position], [Lookup_Status]) VALUES (N'28', N'Local Student', N'1', N'ConferencePriceType', N'1', N'1')
GO
GO
INSERT INTO [dbo].[tblLookup] ([Lookup_ID], [Lookup_Name], [Lookup_Code], [Lookup_Type], [Lookup_Position], [Lookup_Status]) VALUES (N'29', N'International Student', N'2', N'ConferencePriceType', N'2', N'1')
GO
GO
INSERT INTO [dbo].[tblLookup] ([Lookup_ID], [Lookup_Name], [Lookup_Code], [Lookup_Type], [Lookup_Position], [Lookup_Status]) VALUES (N'30', N'Local Participant', N'3', N'ConferencePriceType', N'3', N'1')
GO
GO
INSERT INTO [dbo].[tblLookup] ([Lookup_ID], [Lookup_Name], [Lookup_Code], [Lookup_Type], [Lookup_Position], [Lookup_Status]) VALUES (N'31', N'International Participant', N'4', N'ConferencePriceType', N'4', N'1')
GO
GO
INSERT INTO [dbo].[tblLookup] ([Lookup_ID], [Lookup_Name], [Lookup_Code], [Lookup_Type], [Lookup_Position], [Lookup_Status]) VALUES (N'44', N'Not Applicable', N'0', N'PaymentType', N'4', N'1')
GO
GO
INSERT INTO [dbo].[tblLookup] ([Lookup_ID], [Lookup_Name], [Lookup_Code], [Lookup_Type], [Lookup_Position], [Lookup_Status]) VALUES (N'46', N'Speaker', N'1', N'RegisterAs', N'1', N'1')
GO
GO
INSERT INTO [dbo].[tblLookup] ([Lookup_ID], [Lookup_Name], [Lookup_Code], [Lookup_Type], [Lookup_Position], [Lookup_Status]) VALUES (N'47', N'Delegation', N'2', N'RegisterAs', N'2', N'1')
GO
GO
INSERT INTO [dbo].[tblLookup] ([Lookup_ID], [Lookup_Name], [Lookup_Code], [Lookup_Type], [Lookup_Position], [Lookup_Status]) VALUES (N'56', N'Local Order', N'4', N'PaymentType', N'4', N'1')
GO
GO
SET IDENTITY_INSERT [dbo].[tblLookup] OFF
GO

-- ----------------------------
-- Table structure for tblMembers
-- ----------------------------
DROP TABLE [dbo].[tblMembers]
GO
CREATE TABLE [dbo].[tblMembers] (
[Member_ID] int NOT NULL IDENTITY(1,1) ,
[Group_ID] int NULL ,
[Username] nvarchar(14) NULL ,
[Real_name] nvarchar(100) NULL ,
[User_code] nvarchar(255) NULL ,
[Password] nvarchar(255) NULL ,
[Salt] nvarchar(255) NULL ,
[Email] nvarchar(255) NULL ,
[ICNo] nvarchar(14) NULL ,
[Member_Photo_Name] nvarchar(255) NULL ,
[Member_title] nchar(10) NULL ,
[Address1] nvarchar(50) NULL ,
[Address2] nvarchar(50) NULL ,
[Postcode] nvarchar(6) NULL ,
[City] nvarchar(30) NULL ,
[State] nvarchar(30) NULL ,
[Citizen] nvarchar(100) NULL ,
[MobilePhone] nvarchar(15) NULL ,
[Designation] varchar(50) NULL ,
[Department] varchar(50) NULL ,
[Institution_address] nvarchar(255) NULL ,
[Gov_agency] int NULL ,
[Food_preference] varchar(50) NULL ,
[DOB] datetime NULL ,
[Gender] nvarchar(255) NULL ,
[Signature] ntext NULL ,
[Attach_signature] bit NULL ,
[No_of_posts] int NULL ,
[Join_date] datetime NULL ,
[Active] bit NULL ,
[Last_visit] datetime NULL ,
[Rich_editor] bit NULL ,
[Reply_notify] bit NULL ,
[PM_notify] bit NULL ,
[Show_Sig] bit NULL ,
[Email_Status] char(1) NULL ,
[StaffNo] nvarchar(14) NULL ,
[Profile_status] char(1) NULL ,
[Verified] bit NULL ,
[Verified_hash] nvarchar(255) NULL ,
[Time_offset] nvarchar(10) NULL ,
[Time_offset_hours] smallint NULL ,
[Date_format] nvarchar(20) NULL ,
[Edit_By] int NULL ,
[Edit_Date] datetime NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[tblMembers]', RESEED, 57)
GO

-- ----------------------------
-- Records of tblMembers
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tblMembers] ON
GO
INSERT INTO [dbo].[tblMembers] ([Member_ID], [Group_ID], [Username], [Real_name], [User_code], [Password], [Salt], [Email], [ICNo], [Member_Photo_Name], [Member_title], [Address1], [Address2], [Postcode], [City], [State], [Citizen], [MobilePhone], [Designation], [Department], [Institution_address], [Gov_agency], [Food_preference], [DOB], [Gender], [Signature], [Attach_signature], [No_of_posts], [Join_date], [Active], [Last_visit], [Rich_editor], [Reply_notify], [PM_notify], [Show_Sig], [Email_Status], [StaffNo], [Profile_status], [Verified], [Verified_hash], [Time_offset], [Time_offset_hours], [Date_format], [Edit_By], [Edit_Date]) VALUES (N'4', N'3', N'elissmie', N'Norelissuryani Binti Mokhtar', N'elissmie1E51D16Z1Z', N'4E2C3CB1186CB052829A43CD2423CE2D9482F509', N'EA00A13E', N'elissmie@gmail.com', N'820906-11-5220', null, N'Ms        ', N'NO 51 JALAN INANG 11, BANDAR BUKIT RAJA', N'', N'41050', N'KLANG', N'SELANGOR', N'Malaysia', N'0139729706', N'PPTM', N'elissmie', N'UITM SHAH ALAM', null, N'1', null, null, null, null, null, N'2014-01-23 14:51:59.000', N'1', N'2014-03-19 14:26:01.223', null, null, null, null, null, null, N'0', N'1', N'56666FBFF593F7E162CCD846FA4776B7D3C17B77', null, null, N'dd/mm/yy', N'4', N'2014-02-28 11:00:11.000')
GO
GO
INSERT INTO [dbo].[tblMembers] ([Member_ID], [Group_ID], [Username], [Real_name], [User_code], [Password], [Salt], [Email], [ICNo], [Member_Photo_Name], [Member_title], [Address1], [Address2], [Postcode], [City], [State], [Citizen], [MobilePhone], [Designation], [Department], [Institution_address], [Gov_agency], [Food_preference], [DOB], [Gender], [Signature], [Attach_signature], [No_of_posts], [Join_date], [Active], [Last_visit], [Rich_editor], [Reply_notify], [PM_notify], [Show_Sig], [Email_Status], [StaffNo], [Profile_status], [Verified], [Verified_hash], [Time_offset], [Time_offset_hours], [Date_format], [Edit_By], [Edit_Date]) VALUES (N'2', N'7', N'miezaniera', N'miezaniera amin', N'miezanieraC45EFACACF', N'978F76288B657FD1C853F3CAB2F2A0DEB9B9CD49', N'329A3A7', N'mieza.niera@gmail.com', N'831125085106', N'ges3360865.jpg', N'Mr        ', N'No.37 Jalan sp1/10', N'Bandar Saujana Putra', N'32600', N'Jenjarom', N'Selangor', N'Malaysia', N'0146416201', N'programmer', N'it', N'uitm shah alam', N'0', N'Non-Vegeterian', null, null, null, null, null, N'2014-01-21 16:06:03.000', N'1', N'2014-03-07 09:34:33.580', null, null, null, null, null, N'', N'0', N'1', N'800079497431D67270E64978C63C21A76AC25938', null, null, N'dd/mm/yy', N'30', N'2014-03-05 11:41:41.000')
GO
GO
INSERT INTO [dbo].[tblMembers] ([Member_ID], [Group_ID], [Username], [Real_name], [User_code], [Password], [Salt], [Email], [ICNo], [Member_Photo_Name], [Member_title], [Address1], [Address2], [Postcode], [City], [State], [Citizen], [MobilePhone], [Designation], [Department], [Institution_address], [Gov_agency], [Food_preference], [DOB], [Gender], [Signature], [Attach_signature], [No_of_posts], [Join_date], [Active], [Last_visit], [Rich_editor], [Reply_notify], [PM_notify], [Show_Sig], [Email_Status], [StaffNo], [Profile_status], [Verified], [Verified_hash], [Time_offset], [Time_offset_hours], [Date_format], [Edit_By], [Edit_Date]) VALUES (N'51', N'3', N'azniza_123', N'Azniza Binti Md Aziz', N'azniza_12337D4C22C36', N'8AFF39331D3F78B130C26D52ED4F5B81C7BE5F0B', N'A71B002', N'azniza_aziz@yahoo.com.my', null, null, N'Dr        ', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, N'2014-02-13 15:50:51.000', N'1', N'2014-03-18 15:49:37.373', null, null, null, null, null, null, N'0', N'1', null, null, null, N'dd/mm/yy', N'51', N'2014-02-21 15:48:40.000')
GO
GO
INSERT INTO [dbo].[tblMembers] ([Member_ID], [Group_ID], [Username], [Real_name], [User_code], [Password], [Salt], [Email], [ICNo], [Member_Photo_Name], [Member_title], [Address1], [Address2], [Postcode], [City], [State], [Citizen], [MobilePhone], [Designation], [Department], [Institution_address], [Gov_agency], [Food_preference], [DOB], [Gender], [Signature], [Attach_signature], [No_of_posts], [Join_date], [Active], [Last_visit], [Rich_editor], [Reply_notify], [PM_notify], [Show_Sig], [Email_Status], [StaffNo], [Profile_status], [Verified], [Verified_hash], [Time_offset], [Time_offset_hours], [Date_format], [Edit_By], [Edit_Date]) VALUES (N'5', N'7', N'zalieges', N'zalie zainal', N'zalieges47D3554B88', N'0E0532E2CCE0448C3AD2C556EA2F836A944ABFC4', N'6218D91F', N'zalie@salam.uitm.edu.my', N'662568948885', N'ges8562585.jpg', N'Mr        ', N'Jabatan Pembangunan sistem', N'', N'40450', N'shah alam', N'Selangor', N'Malaysia', N'6039284323', N'', N'', N'', null, N'Islamic Halal', null, null, null, null, null, N'2014-01-24 08:51:06.000', N'0', N'2014-02-24 11:18:45.487', null, null, null, null, null, null, N'0', N'1', N'BD3D69E7C9CCD06DE9ABB007B2B6859210E8746B', null, null, N'dd/mm/yy', null, null)
GO
GO
INSERT INTO [dbo].[tblMembers] ([Member_ID], [Group_ID], [Username], [Real_name], [User_code], [Password], [Salt], [Email], [ICNo], [Member_Photo_Name], [Member_title], [Address1], [Address2], [Postcode], [City], [State], [Citizen], [MobilePhone], [Designation], [Department], [Institution_address], [Gov_agency], [Food_preference], [DOB], [Gender], [Signature], [Attach_signature], [No_of_posts], [Join_date], [Active], [Last_visit], [Rich_editor], [Reply_notify], [PM_notify], [Show_Sig], [Email_Status], [StaffNo], [Profile_status], [Verified], [Verified_hash], [Time_offset], [Time_offset_hours], [Date_format], [Edit_By], [Edit_Date]) VALUES (N'30', N'3', N'baiduri_123', N'Norbaiduri Huzaifah', N'baiduri_123E18DCDB94C', N'B364052DA75F0E3FADB2FEC81FAD26DA7B2FD531', N'D7B7C86', N'baiduri@salam.uitm.edu.my', N'831125085106', null, N'Mr        ', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, N'2014-01-30 11:36:42.000', N'1', N'2014-03-19 11:05:37.230', null, null, null, null, null, N'', N'0', N'1', null, null, null, N'dd/mm/yy', N'30', N'2014-02-20 16:46:26.000')
GO
GO
INSERT INTO [dbo].[tblMembers] ([Member_ID], [Group_ID], [Username], [Real_name], [User_code], [Password], [Salt], [Email], [ICNo], [Member_Photo_Name], [Member_title], [Address1], [Address2], [Postcode], [City], [State], [Citizen], [MobilePhone], [Designation], [Department], [Institution_address], [Gov_agency], [Food_preference], [DOB], [Gender], [Signature], [Attach_signature], [No_of_posts], [Join_date], [Active], [Last_visit], [Rich_editor], [Reply_notify], [PM_notify], [Show_Sig], [Email_Status], [StaffNo], [Profile_status], [Verified], [Verified_hash], [Time_offset], [Time_offset_hours], [Date_format], [Edit_By], [Edit_Date]) VALUES (N'29', N'7', N'elissmieuser', N'Norelissuryani', N'elissmieuser8A1F15F565', N'88CC2639A00040FB253BCA5A5C99FD444E1F4E35', N'A9D585EE', N'eliss@salam.uitm.edu.my', N'820906115220', N'ges8547937.jpg', N'Mr        ', N'', N'', N'', N'', N'', N'Malaysia', N'0138729706', N'', N'', N'', N'0', N'Islamic Halal', null, null, null, null, null, N'2014-01-29 11:13:02.000', N'1', N'2014-02-27 13:57:50.267', null, null, null, null, null, N'', N'0', N'1', N'BCA42EE5D3F8992C0553877DD0279123BFEF5257', null, null, N'dd/mm/yy', N'4', N'2014-02-04 11:03:51.000')
GO
GO
INSERT INTO [dbo].[tblMembers] ([Member_ID], [Group_ID], [Username], [Real_name], [User_code], [Password], [Salt], [Email], [ICNo], [Member_Photo_Name], [Member_title], [Address1], [Address2], [Postcode], [City], [State], [Citizen], [MobilePhone], [Designation], [Department], [Institution_address], [Gov_agency], [Food_preference], [DOB], [Gender], [Signature], [Attach_signature], [No_of_posts], [Join_date], [Active], [Last_visit], [Rich_editor], [Reply_notify], [PM_notify], [Show_Sig], [Email_Status], [StaffNo], [Profile_status], [Verified], [Verified_hash], [Time_offset], [Time_offset_hours], [Date_format], [Edit_By], [Edit_Date]) VALUES (N'6', N'7', N'webentry', N'web entry', N'webentry7D9136BADZ', N'73CE965D50C7EC10FA20B431CE7D6F8CC86B8C9A', N'ACB08A36', N'webentry@yahoo.com', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, N'2014-01-28 10:50:38.000', N'0', null, null, null, null, null, null, null, N'0', N'1', N'D395BFB8912FF6F33292743CE3ED73746C7CB8B3', null, null, N'dd/mm/yy', null, null)
GO
GO
INSERT INTO [dbo].[tblMembers] ([Member_ID], [Group_ID], [Username], [Real_name], [User_code], [Password], [Salt], [Email], [ICNo], [Member_Photo_Name], [Member_title], [Address1], [Address2], [Postcode], [City], [State], [Citizen], [MobilePhone], [Designation], [Department], [Institution_address], [Gov_agency], [Food_preference], [DOB], [Gender], [Signature], [Attach_signature], [No_of_posts], [Join_date], [Active], [Last_visit], [Rich_editor], [Reply_notify], [PM_notify], [Show_Sig], [Email_Status], [StaffNo], [Profile_status], [Verified], [Verified_hash], [Time_offset], [Time_offset_hours], [Date_format], [Edit_By], [Edit_Date]) VALUES (N'52', N'7', N'khairul5888', N'Khairul Naim Mohd Tajudin', N'khairul58886875347125', N'E381223904145C21B616BC674FC4C09490519D01', N'A2B62CF6', N'naim3502@gmail.com', N'870825025173', null, N'Mr        ', N'INFOTECH OFFICE,TING 5, MENARA SAAS', N'UITM SHAH ALAM, SHAH ALAM', N'40450', N'SHAH ALAM', N'', N'Malaysia', N'0124974219', N'PPTM', N'JPS', N'', null, N'Islamic Halal', null, null, null, null, null, N'2014-02-18 10:29:25.000', N'0', N'2014-02-18 11:45:35.753', null, null, null, null, null, null, N'0', N'1', N'DC6EC2D052335804642D6C40E50CF7B52DB86EC0', null, null, N'dd/mm/yy', null, null)
GO
GO
INSERT INTO [dbo].[tblMembers] ([Member_ID], [Group_ID], [Username], [Real_name], [User_code], [Password], [Salt], [Email], [ICNo], [Member_Photo_Name], [Member_title], [Address1], [Address2], [Postcode], [City], [State], [Citizen], [MobilePhone], [Designation], [Department], [Institution_address], [Gov_agency], [Food_preference], [DOB], [Gender], [Signature], [Attach_signature], [No_of_posts], [Join_date], [Active], [Last_visit], [Rich_editor], [Reply_notify], [PM_notify], [Show_Sig], [Email_Status], [StaffNo], [Profile_status], [Verified], [Verified_hash], [Time_offset], [Time_offset_hours], [Date_format], [Edit_By], [Edit_Date]) VALUES (N'46', N'7', N'aznizaaziz', N'Azniza', N'aznizaazizF4AA72CFB3', N'C405F5437422F1C4374F28515745847CB6E47617', N'DBF123D5', N'azniza_aziz@salam.uitm.edu.my', N'821116-05-8899', N'ges1620600.jpg', N'Ms        ', N'', N'', N'', N'', N'', N'Malaysia', N'', N'', N'', N'', N'0', N'Islamic Halal', null, null, null, null, null, N'2014-02-12 12:31:22.000', N'1', N'2014-03-14 10:30:14.757', null, null, null, null, null, null, N'0', N'1', null, null, null, N'dd/mm/yy', N'42', N'2014-02-13 15:49:08.000')
GO
GO
INSERT INTO [dbo].[tblMembers] ([Member_ID], [Group_ID], [Username], [Real_name], [User_code], [Password], [Salt], [Email], [ICNo], [Member_Photo_Name], [Member_title], [Address1], [Address2], [Postcode], [City], [State], [Citizen], [MobilePhone], [Designation], [Department], [Institution_address], [Gov_agency], [Food_preference], [DOB], [Gender], [Signature], [Attach_signature], [No_of_posts], [Join_date], [Active], [Last_visit], [Rich_editor], [Reply_notify], [PM_notify], [Show_Sig], [Email_Status], [StaffNo], [Profile_status], [Verified], [Verified_hash], [Time_offset], [Time_offset_hours], [Date_format], [Edit_By], [Edit_Date]) VALUES (N'43', N'3', N'naim_123', N'Khairul Naim', N'naim_1233BF2Z59BBD', N'F996A2A1F447C16F0024D51B5DF16A2C4B2F9786', N'06A1822', N'naim@yahoo.com', null, null, N'Prof      ', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, N'2014-02-11 15:08:24.000', N'1', N'2014-03-19 13:52:41.367', null, null, null, null, null, null, N'0', N'1', null, null, null, N'dd/mm/yy', N'43', N'2014-02-20 16:15:49.000')
GO
GO
INSERT INTO [dbo].[tblMembers] ([Member_ID], [Group_ID], [Username], [Real_name], [User_code], [Password], [Salt], [Email], [ICNo], [Member_Photo_Name], [Member_title], [Address1], [Address2], [Postcode], [City], [State], [Citizen], [MobilePhone], [Designation], [Department], [Institution_address], [Gov_agency], [Food_preference], [DOB], [Gender], [Signature], [Attach_signature], [No_of_posts], [Join_date], [Active], [Last_visit], [Rich_editor], [Reply_notify], [PM_notify], [Show_Sig], [Email_Status], [StaffNo], [Profile_status], [Verified], [Verified_hash], [Time_offset], [Time_offset_hours], [Date_format], [Edit_By], [Edit_Date]) VALUES (N'50', N'1', N'zaliemoder', N'Zalie Zainal', N'zaliemoder9F642CF22Z', N'F5C14E3C623AD1FFB66E807AC5FA6022492A63AB', N'1D98031', N'zie921@yahoo.com', null, null, N'Mr        ', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, N'2014-02-12 15:13:19.000', N'1', N'2014-02-24 11:35:15.183', null, null, null, null, null, null, N'0', N'1', null, null, null, N'dd/mm/yy', null, null)
GO
GO
INSERT INTO [dbo].[tblMembers] ([Member_ID], [Group_ID], [Username], [Real_name], [User_code], [Password], [Salt], [Email], [ICNo], [Member_Photo_Name], [Member_title], [Address1], [Address2], [Postcode], [City], [State], [Citizen], [MobilePhone], [Designation], [Department], [Institution_address], [Gov_agency], [Food_preference], [DOB], [Gender], [Signature], [Attach_signature], [No_of_posts], [Join_date], [Active], [Last_visit], [Rich_editor], [Reply_notify], [PM_notify], [Show_Sig], [Email_Status], [StaffNo], [Profile_status], [Verified], [Verified_hash], [Time_offset], [Time_offset_hours], [Date_format], [Edit_By], [Edit_Date]) VALUES (N'54', N'7', N'qasrina_123', N'qasrina batrisyia', N'88A71DADE8', N'224B8A214F2BB495CA6E7B8C79FBEC8598345AFF', N'7D97B08', N'qasrina@gmail.com', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, N'2014-02-25 12:40:08.000', N'0', null, null, null, null, null, null, null, N'0', N'0', N'8F534DD4DCCA69229E65082D2BB4E789A51A9289', null, null, N'dd/mm/yy', N'30', N'2014-03-05 10:56:19.000')
GO
GO
INSERT INTO [dbo].[tblMembers] ([Member_ID], [Group_ID], [Username], [Real_name], [User_code], [Password], [Salt], [Email], [ICNo], [Member_Photo_Name], [Member_title], [Address1], [Address2], [Postcode], [City], [State], [Citizen], [MobilePhone], [Designation], [Department], [Institution_address], [Gov_agency], [Food_preference], [DOB], [Gender], [Signature], [Attach_signature], [No_of_posts], [Join_date], [Active], [Last_visit], [Rich_editor], [Reply_notify], [PM_notify], [Show_Sig], [Email_Status], [StaffNo], [Profile_status], [Verified], [Verified_hash], [Time_offset], [Time_offset_hours], [Date_format], [Edit_By], [Edit_Date]) VALUES (N'55', N'7', N'azniza_aziz', N'Azniza Binti Md Aziz', N'azniza_aziz1Z3CCFF8Z6', N'2555F20B22AC4AD0A4DD002A5C06BF1555537774', N'5B7DE33A', N'azniza.md.aziz@gmail.com', N'821116-05-8898', null, N'Ms        ', N'Pejabat Teknologi Maklumat, Tingkat 5, Menara SAAS', N'UiTM Shah Alam', N'40450', N'Shah Alam', N'Selangor', N'Malaysia', N'019-2740036', N'Programmer', N'IT', N'UiTM Shah Alam', N'1', N'Islamic Halal', null, null, null, null, null, N'2014-02-27 09:45:38.000', N'0', N'2014-02-28 12:11:15.270', null, null, null, null, null, null, N'0', N'1', N'239DF472E58DA9A73E41F4180752958E1AC7E2FF', null, null, N'dd/mm/yy', null, null)
GO
GO
INSERT INTO [dbo].[tblMembers] ([Member_ID], [Group_ID], [Username], [Real_name], [User_code], [Password], [Salt], [Email], [ICNo], [Member_Photo_Name], [Member_title], [Address1], [Address2], [Postcode], [City], [State], [Citizen], [MobilePhone], [Designation], [Department], [Institution_address], [Gov_agency], [Food_preference], [DOB], [Gender], [Signature], [Attach_signature], [No_of_posts], [Join_date], [Active], [Last_visit], [Rich_editor], [Reply_notify], [PM_notify], [Show_Sig], [Email_Status], [StaffNo], [Profile_status], [Verified], [Verified_hash], [Time_offset], [Time_offset_hours], [Date_format], [Edit_By], [Edit_Date]) VALUES (N'57', N'3', N'Padli_123', N'Fadli Abdul Rahman', N'padli_123A98D384246', N'C240F4B0131ED4CAA3814D75C48ABD64610426D8', N'8F51D822', N'paliinthemiddle@gmail.com', null, null, N'Mr        ', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, N'2014-03-10 10:25:14.000', N'1', N'2014-03-17 15:06:37.710', null, null, null, null, null, null, N'0', N'1', null, null, null, N'dd/mm/yy', null, null)
GO
GO
INSERT INTO [dbo].[tblMembers] ([Member_ID], [Group_ID], [Username], [Real_name], [User_code], [Password], [Salt], [Email], [ICNo], [Member_Photo_Name], [Member_title], [Address1], [Address2], [Postcode], [City], [State], [Citizen], [MobilePhone], [Designation], [Department], [Institution_address], [Gov_agency], [Food_preference], [DOB], [Gender], [Signature], [Attach_signature], [No_of_posts], [Join_date], [Active], [Last_visit], [Rich_editor], [Reply_notify], [PM_notify], [Show_Sig], [Email_Status], [StaffNo], [Profile_status], [Verified], [Verified_hash], [Time_offset], [Time_offset_hours], [Date_format], [Edit_By], [Edit_Date]) VALUES (N'56', N'7', N'aznizamdaziz', N'Azniza', N'aznizamdaziz4EF83B8EAF', N'62799D095E3C7D5E696A6B5B37344379F75A141E', N'A28759A4', N'azniza_md_aziz@yahoo.com', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, N'2014-02-27 10:10:51.000', N'0', null, null, null, null, null, null, null, N'0', N'1', N'FC6FE8B953B92C3DB9C926A2AFEAB96BBE00BBD4', null, null, N'dd/mm/yy', null, null)
GO
GO
SET IDENTITY_INSERT [dbo].[tblMembers] OFF
GO

-- ----------------------------
-- Table structure for tblMenu
-- ----------------------------
DROP TABLE [dbo].[tblMenu]
GO
CREATE TABLE [dbo].[tblMenu] (
[Menu_ID] int NOT NULL IDENTITY(1,1) ,
[Menu_Display] nvarchar(100) NULL ,
[Menu_Display_Type] int NULL ,
[Menu_Link] nvarchar(100) NULL ,
[Menu_Target] nvarchar(100) NULL ,
[Menu_Order] int NULL ,
[Menu_Sub] bit NULL ,
[Menu_Perm] nvarchar(255) NULL ,
[Menu_Cond] int NULL ,
[Menu_Active] bit NULL ,
[Menu_Admin] bit NULL ,
[Menu_GUID] nvarchar(100) NULL 
)


GO

-- ----------------------------
-- Records of tblMenu
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tblMenu] ON
GO
SET IDENTITY_INSERT [dbo].[tblMenu] OFF
GO

-- ----------------------------
-- Table structure for tblMenuS1
-- ----------------------------
DROP TABLE [dbo].[tblMenuS1]
GO
CREATE TABLE [dbo].[tblMenuS1] (
[SubMenu_ID] int NOT NULL IDENTITY(1,1) ,
[Menu_ID] int NOT NULL ,
[Parent_ID] int NULL ,
[SubMenu_Display] nvarchar(100) NULL ,
[SubMenu_Display_Type] int NULL ,
[SubMenu_Link] nvarchar(100) NULL ,
[SubMenu_Target] nvarchar(100) NULL ,
[SubMenu_Order] int NULL ,
[SubMenu_Perm] nvarchar(255) NULL ,
[SubMenu_Cond] int NULL ,
[SubMenu_Active] bit NULL ,
[SubMenu_Admin] bit NULL ,
[MenuS2_Sub] bit NULL ,
[SubMenu_GUID] nvarchar(100) NULL 
)


GO

-- ----------------------------
-- Records of tblMenuS1
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tblMenuS1] ON
GO
SET IDENTITY_INSERT [dbo].[tblMenuS1] OFF
GO

-- ----------------------------
-- Table structure for tblMenuS2
-- ----------------------------
DROP TABLE [dbo].[tblMenuS2]
GO
CREATE TABLE [dbo].[tblMenuS2] (
[SubMenu2_ID] int NOT NULL IDENTITY(1,1) ,
[SubMenu_ID] int NOT NULL ,
[Parent_ID] int NULL ,
[SubMenu2_Display] nvarchar(100) NULL ,
[SubMenu2_Display_Type] int NULL ,
[SubMenu2_Link] nvarchar(100) NULL ,
[SubMenu2_Target] nvarchar(100) NULL ,
[SubMenu2_Order] int NULL ,
[SubMenu2_Perm] nvarchar(255) NULL ,
[SubMenu2_Cond] int NULL ,
[SubMenu2_Active] bit NULL ,
[SubMenu2_Admin] bit NULL ,
[SubMenu2_GUID] nvarchar(100) NULL 
)


GO

-- ----------------------------
-- Records of tblMenuS2
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tblMenuS2] ON
GO
SET IDENTITY_INSERT [dbo].[tblMenuS2] OFF
GO

-- ----------------------------
-- Table structure for tblModPermissions
-- ----------------------------
DROP TABLE [dbo].[tblModPermissions]
GO
CREATE TABLE [dbo].[tblModPermissions] (
[ModPermission_ID] int NOT NULL IDENTITY(1,1) ,
[ModPermission_MemberID] int NULL ,
[ModPermission_CatID] int NULL ,
[ModPermission_Status] int NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[tblModPermissions]', RESEED, 55)
GO

-- ----------------------------
-- Records of tblModPermissions
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tblModPermissions] ON
GO
INSERT INTO [dbo].[tblModPermissions] ([ModPermission_ID], [ModPermission_MemberID], [ModPermission_CatID], [ModPermission_Status]) VALUES (N'19', N'51', N'1', N'1')
GO
GO
INSERT INTO [dbo].[tblModPermissions] ([ModPermission_ID], [ModPermission_MemberID], [ModPermission_CatID], [ModPermission_Status]) VALUES (N'45', N'4', N'20', N'1')
GO
GO
INSERT INTO [dbo].[tblModPermissions] ([ModPermission_ID], [ModPermission_MemberID], [ModPermission_CatID], [ModPermission_Status]) VALUES (N'21', N'51', N'14', N'1')
GO
GO
INSERT INTO [dbo].[tblModPermissions] ([ModPermission_ID], [ModPermission_MemberID], [ModPermission_CatID], [ModPermission_Status]) VALUES (N'52', N'30', N'21', N'1')
GO
GO
INSERT INTO [dbo].[tblModPermissions] ([ModPermission_ID], [ModPermission_MemberID], [ModPermission_CatID], [ModPermission_Status]) VALUES (N'43', N'4', N'1', N'1')
GO
GO
INSERT INTO [dbo].[tblModPermissions] ([ModPermission_ID], [ModPermission_MemberID], [ModPermission_CatID], [ModPermission_Status]) VALUES (N'44', N'4', N'16', N'1')
GO
GO
INSERT INTO [dbo].[tblModPermissions] ([ModPermission_ID], [ModPermission_MemberID], [ModPermission_CatID], [ModPermission_Status]) VALUES (N'34', N'4', N'21', N'1')
GO
GO
INSERT INTO [dbo].[tblModPermissions] ([ModPermission_ID], [ModPermission_MemberID], [ModPermission_CatID], [ModPermission_Status]) VALUES (N'36', N'4', N'18', N'1')
GO
GO
INSERT INTO [dbo].[tblModPermissions] ([ModPermission_ID], [ModPermission_MemberID], [ModPermission_CatID], [ModPermission_Status]) VALUES (N'9', N'51', N'21', N'1')
GO
GO
INSERT INTO [dbo].[tblModPermissions] ([ModPermission_ID], [ModPermission_MemberID], [ModPermission_CatID], [ModPermission_Status]) VALUES (N'6', N'51', N'17', N'1')
GO
GO
INSERT INTO [dbo].[tblModPermissions] ([ModPermission_ID], [ModPermission_MemberID], [ModPermission_CatID], [ModPermission_Status]) VALUES (N'8', N'51', N'11', N'1')
GO
GO
INSERT INTO [dbo].[tblModPermissions] ([ModPermission_ID], [ModPermission_MemberID], [ModPermission_CatID], [ModPermission_Status]) VALUES (N'10', N'51', N'19', N'1')
GO
GO
INSERT INTO [dbo].[tblModPermissions] ([ModPermission_ID], [ModPermission_MemberID], [ModPermission_CatID], [ModPermission_Status]) VALUES (N'20', N'51', N'16', N'1')
GO
GO
INSERT INTO [dbo].[tblModPermissions] ([ModPermission_ID], [ModPermission_MemberID], [ModPermission_CatID], [ModPermission_Status]) VALUES (N'18', N'51', N'20', N'1')
GO
GO
INSERT INTO [dbo].[tblModPermissions] ([ModPermission_ID], [ModPermission_MemberID], [ModPermission_CatID], [ModPermission_Status]) VALUES (N'47', N'30', N'20', N'1')
GO
GO
INSERT INTO [dbo].[tblModPermissions] ([ModPermission_ID], [ModPermission_MemberID], [ModPermission_CatID], [ModPermission_Status]) VALUES (N'31', N'4', N'17', N'1')
GO
GO
INSERT INTO [dbo].[tblModPermissions] ([ModPermission_ID], [ModPermission_MemberID], [ModPermission_CatID], [ModPermission_Status]) VALUES (N'33', N'4', N'11', N'1')
GO
GO
INSERT INTO [dbo].[tblModPermissions] ([ModPermission_ID], [ModPermission_MemberID], [ModPermission_CatID], [ModPermission_Status]) VALUES (N'35', N'4', N'19', N'1')
GO
GO
INSERT INTO [dbo].[tblModPermissions] ([ModPermission_ID], [ModPermission_MemberID], [ModPermission_CatID], [ModPermission_Status]) VALUES (N'37', N'4', N'14', N'1')
GO
GO
INSERT INTO [dbo].[tblModPermissions] ([ModPermission_ID], [ModPermission_MemberID], [ModPermission_CatID], [ModPermission_Status]) VALUES (N'55', N'30', N'14', N'1')
GO
GO
SET IDENTITY_INSERT [dbo].[tblModPermissions] OFF
GO

-- ----------------------------
-- Table structure for tblModuleSettings
-- ----------------------------
DROP TABLE [dbo].[tblModuleSettings]
GO
CREATE TABLE [dbo].[tblModuleSettings] (
[WelcomeMsg] ntext NULL ,
[No_of_top_posters] int NULL ,
[No_of_news] int NULL ,
[UseMarqueeOnRP] bit NOT NULL ,
[RPMarqueeHeight] int NULL ,
[Num_of_Recent_Posts] int NULL ,
[NewsForum] int NULL ,
[PollForum] int NULL ,
[DefaultSkin] int NULL ,
[GuestBookEmailing] bit NOT NULL ,
[Menu_Direction] nvarchar(255) NOT NULL ,
[ShowBirthDays] bit NOT NULL ,
[ShowGender] bit NOT NULL ,
[Block_A] smallint NULL ,
[Block_B] smallint NULL ,
[Block_C] smallint NULL ,
[Block_D] smallint NULL ,
[Block_E] smallint NULL ,
[Num_Volume] int NULL ,
[Num_Code_Volume] int NULL 
)


GO

-- ----------------------------
-- Records of tblModuleSettings
-- ----------------------------
INSERT INTO [dbo].[tblModuleSettings] ([WelcomeMsg], [No_of_top_posters], [No_of_news], [UseMarqueeOnRP], [RPMarqueeHeight], [Num_of_Recent_Posts], [NewsForum], [PollForum], [DefaultSkin], [GuestBookEmailing], [Menu_Direction], [ShowBirthDays], [ShowGender], [Block_A], [Block_B], [Block_C], [Block_D], [Block_E], [Num_Volume], [Num_Code_Volume]) VALUES (N'<p>	<strong>Driving Research in Islamic Financial Criminology</strong></p><div>	<span style="color: rgb(0, 0, 0); font-family: Verdana, Arial, sans-serif; line-height: 18px; text-align: justify;">As a national Higher Institution Centre of Excellence (HICoE), the Accounting Research Institute or ARI focuses on a specific niche research area &ndash; Islamic Financial Criminology (IFC).&nbsp; In essence, IFC encompasses two very important conceptual domains:&nbsp; Islamic Finance &amp; Muamalat and Financial Criminology. Premised on the Shari&rsquo;ah principles and requirements, the Islamic Finance industry has great potential to grow. Hence, research in Islamic Finance and Muamalat aspires to explore new models, new tools, new products and new methodologies that could support the prosperity of the Islamic finance industry in Malaysia. Financial criminology refers to the scientific study of the causation, correction, detection and prevention of financial crime in business and non-business organizations.&nbsp; Research in Islamic Financial Criminology therefore focuses on developing possible fraud risk mechanisms for the Islamic finance industry.</span></div><p>	&nbsp;</p>', N'3', N'3', N'1', N'75', N'3', N'1', N'2', N'1', N'1', N'A', N'1', N'1', N'10', N'11', N'1', N'2', N'5', N'30', N'30')
GO
GO

-- ----------------------------
-- Table structure for tblPayment
-- ----------------------------
DROP TABLE [dbo].[tblPayment]
GO
CREATE TABLE [dbo].[tblPayment] (
[Payment_ID] int NOT NULL IDENTITY(1,1) ,
[Member_ID] int NULL ,
[Payment_Amount] decimal(18) NULL ,
[Payment_Type] int NULL ,
[Payment_Status] char(2) NULL ,
[Payment_StatusRef] varchar(255) NULL ,
[Payment_ReceiptNo] varchar(50) NULL ,
[Payment_Date] datetime NULL ,
[Payment_ProcessDate] datetime NULL ,
[Payment_ModifiedDate] datetime NULL ,
[Payment_ModifiedWho] int NULL ,
[Register_TransactionID] int NULL ,
[Payment_Hide] int NULL ,
[Payment_Hide_Date] datetime NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[tblPayment]', RESEED, 167)
GO

-- ----------------------------
-- Records of tblPayment
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tblPayment] ON
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'119', N'29', N'2100', N'1', N'0 ', null, N'ABD3243', N'2014-02-18 10:28:59.000', N'2014-02-18 00:00:00.000', N'2014-02-19 13:52:44.000', N'4', N'8034021', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'120', N'2', N'2100', N'1', N'0 ', N'3D Secure Authentication failed', N'405818429227', N'2014-02-18 10:29:16.000', N'2014-02-27 15:36:32.000', null, null, N'836603', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'121', N'46', N'2100', N'2', N'0 ', null, N'123254256', N'2014-02-18 10:29:29.000', N'1900-01-01 00:00:00.000', N'2014-02-18 10:48:44.000', N'50', N'9148981', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'122', N'2', N'2100', N'1', N'0 ', N'3D Secure Authentication failed', N'405818429227', N'2014-02-18 10:30:46.000', N'2014-02-27 15:36:32.000', null, null, N'836603', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'123', N'52', N'2100', N'2', N'0 ', null, N'4545456', N'2014-02-18 10:34:31.000', N'1900-01-01 00:00:00.000', N'2014-02-20 14:50:13.000', N'4', N'3709070', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'124', N'52', N'2100', N'2', N'0 ', null, N'4545456', N'2014-02-18 10:34:31.000', N'1900-01-01 00:00:00.000', N'2014-02-20 14:50:13.000', N'4', N'3709070', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'126', N'29', N'2100', N'2', N'0 ', null, N'', N'1900-01-01 00:00:00.000', N'1900-01-01 00:00:00.000', N'2014-02-19 13:52:49.000', N'4', N'1644251', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'127', N'29', N'2100', N'2', N'0 ', null, N'ZU20439085', N'2014-02-19 00:00:00.000', N'2014-02-19 13:34:49.000', N'2014-02-19 13:34:49.000', N'4', N'9905206', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'130', N'2', N'2100', N'4', N'88', null, null, N'2014-02-21 15:14:31.000', N'1900-01-01 00:00:00.000', null, null, N'3596003', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'131', N'2', N'2100', N'2', N'88', null, null, N'2014-02-21 18:56:14.000', N'1900-01-01 00:00:00.000', null, null, N'3692286', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'132', N'30', N'2400', N'0', N'99', null, null, N'2014-02-24 09:40:30.000', N'2014-02-24 09:40:30.000', null, null, N'6476862', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'134', N'2', N'2100', N'2', N'88', null, null, N'2014-02-25 17:01:27.000', N'1900-01-01 00:00:00.000', null, null, N'8505823', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'135', N'2', N'2100', N'0', N'99', null, null, N'2014-02-26 11:30:57.000', N'2014-02-26 11:30:57.000', null, null, N'4284283', N'1', N'2014-02-27 11:05:06.000')
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'136', N'29', N'2100', N'4', N'0 ', null, N'localORDERELISS', N'2014-02-26 11:36:06.000', N'2014-02-26 00:00:00.000', N'2014-02-26 17:16:01.000', N'4', N'796931', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'137', N'29', N'2100', N'0', N'99', null, null, N'2014-02-26 11:40:14.000', N'2014-02-26 11:40:14.000', null, null, N'8817211', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'138', N'2', N'2100', N'0', N'99', null, N'1457894448', N'2014-02-26 11:47:37.000', N'2014-02-26 00:00:00.000', N'2014-02-26 17:08:54.000', N'30', N'3579480', N'1', N'2014-02-27 11:05:02.000')
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'139', N'29', N'2100', N'0', N'99', null, N'1457894448', N'2014-02-26 12:22:10.000', N'2014-02-26 00:00:00.000', N'2014-02-26 17:09:19.000', N'30', N'662457', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'140', N'2', N'2100', N'0', N'99', null, N'1457894448', N'2014-02-26 14:32:41.000', N'2014-02-26 00:00:00.000', N'2014-02-26 17:06:17.000', N'30', N'3830639', N'1', N'2014-02-27 11:04:59.000')
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'141', N'2', N'2100', N'4', N'88', null, null, N'2014-02-27 11:11:09.000', N'2014-02-27 11:11:34.000', null, null, N'2603113', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'142', N'2', N'2100', N'2', N'88', null, null, N'2014-02-27 11:22:02.000', N'2014-02-27 11:28:21.000', null, null, N'9864923', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'143', N'2', N'2100', N'2', N'88', null, null, N'2014-02-27 12:17:49.000', N'2014-02-27 12:17:59.000', null, null, N'1378596', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'145', N'2', N'2100', N'2', N'88', null, null, N'2014-02-27 14:55:39.000', N'2014-02-27 14:56:34.000', null, null, N'464594', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'146', N'55', N'2100', N'0', N'99', null, null, N'2014-02-27 15:08:32.000', N'2014-02-27 15:08:32.000', null, null, N'8914104', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'147', N'2', N'2100', N'1', N'0 ', null, null, N'2014-02-27 15:09:21.000', N'2014-02-27 15:12:56.000', null, null, N'4642450', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'149', N'55', N'2100', N'0', N'99', null, null, N'2014-02-27 15:23:07.000', N'2014-02-27 15:23:07.000', null, null, N'2983624', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'158', N'2', N'2100', N'1', N'0 ', null, N'405819429237', N'2014-02-27 16:48:21.000', N'2014-02-27 16:53:16.000', null, null, N'4105188', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'159', N'2', N'2100', N'0', N'99', null, null, N'2014-02-28 10:23:26.000', N'2014-02-28 10:23:26.000', null, null, N'7897106', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'161', N'46', N'2100', N'2', N'88', null, null, N'2014-02-28 10:41:33.000', N'2014-02-28 11:25:28.000', null, null, N'2096979', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'164', N'46', N'2100', N'0', N'99', null, null, N'2014-02-28 11:35:20.000', N'2014-02-28 11:35:20.000', null, null, N'1196973', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'128', N'2', N'2100', N'1', N'0 ', null, null, N'2014-02-20 09:31:57.000', N'2014-02-20 09:36:42.000', null, null, N'5774500', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'133', N'2', N'2100', N'4', N'88', null, N'', N'2014-02-25 16:04:21.000', N'2014-02-28 00:00:00.000', N'2014-02-27 11:10:41.000', N'30', N'2305109', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'160', N'46', N'2100', N'2', N'88', null, null, N'2014-02-28 10:25:51.000', N'2014-02-28 11:25:28.000', null, null, N'2096979', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'144', N'55', N'2100', N'0', N'99', null, null, N'2014-02-27 14:18:26.000', N'2014-02-27 14:18:26.000', null, null, N'8413463', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'129', N'4', N'2100', N'0', N'0 ', null, N'SponsoredSpeakers', N'2014-02-21 14:01:36.000', N'2014-02-21 00:00:00.000', N'2014-02-27 08:22:25.000', N'4', N'2044794', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'125', N'52', N'2100', N'2', N'0 ', null, N'4545456', N'2014-02-18 10:34:31.000', N'1900-01-01 00:00:00.000', N'2014-02-20 14:50:13.000', N'4', N'3709070', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'148', N'55', N'2100', N'4', N'88', null, null, N'2014-02-27 15:21:06.000', N'2014-02-27 17:01:17.000', null, null, N'7191736', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'150', N'2', N'2100', N'1', N'0 ', null, N'405819429230', N'2014-02-27 16:06:46.000', N'2014-02-27 16:24:28.000', null, null, N'4378168', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'151', N'2', N'2100', N'1', N'0 ', null, N'405819429232', N'2014-02-27 16:25:14.000', N'2014-02-27 16:26:56.000', null, null, N'8363153', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'152', N'55', N'2100', N'0', N'99', null, null, N'2014-02-27 16:25:32.000', N'2014-02-27 16:25:32.000', null, null, N'3756939', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'153', N'55', N'2100', N'4', N'88', null, null, N'2014-02-27 16:26:28.000', N'2014-02-27 17:01:17.000', null, null, N'7191736', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'154', N'2', N'2100', N'1', N'0 ', null, N'405819429234', N'2014-02-27 16:31:37.000', N'2014-02-27 16:33:17.000', null, null, N'3292658', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'155', N'55', N'2100', N'0', N'99', null, null, N'2014-02-27 16:38:13.000', N'2014-02-27 16:38:13.000', null, null, N'8550640', N'1', N'2014-02-27 16:38:22.000')
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'156', N'2', N'2100', N'1', N'0 ', null, N'405819429235', N'2014-02-27 16:42:26.000', N'2014-02-27 16:43:01.000', null, null, N'3590204', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'157', N'2', N'2100', N'1', N'0 ', null, N'405819429236', N'2014-02-27 16:46:40.000', N'2014-02-27 16:47:09.000', null, null, N'8449670', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'162', N'46', N'2100', N'4', N'88', null, null, N'2014-02-28 11:31:45.000', N'2014-02-28 11:32:13.000', null, null, N'9546930', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'163', N'46', N'2100', N'4', N'88', null, null, N'2014-02-28 11:34:08.000', N'2014-02-28 11:49:56.000', null, null, N'7487909', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'165', N'46', N'2100', N'0', N'99', null, null, N'2014-02-28 11:37:05.000', N'2014-02-28 11:37:05.000', null, null, N'7909618', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'166', N'46', N'2100', N'0', N'99', null, null, N'2014-02-28 12:00:45.000', N'2014-02-28 12:00:45.000', null, null, N'2737805', null, null)
GO
GO
INSERT INTO [dbo].[tblPayment] ([Payment_ID], [Member_ID], [Payment_Amount], [Payment_Type], [Payment_Status], [Payment_StatusRef], [Payment_ReceiptNo], [Payment_Date], [Payment_ProcessDate], [Payment_ModifiedDate], [Payment_ModifiedWho], [Register_TransactionID], [Payment_Hide], [Payment_Hide_Date]) VALUES (N'167', N'46', N'2100', N'0', N'99', null, null, N'2014-03-05 08:50:39.000', N'2014-03-05 08:50:39.000', null, null, N'3329541', null, null)
GO
GO
SET IDENTITY_INSERT [dbo].[tblPayment] OFF
GO

-- ----------------------------
-- Table structure for tblPermissions
-- ----------------------------
DROP TABLE [dbo].[tblPermissions]
GO
CREATE TABLE [dbo].[tblPermissions] (
[Group_ID] int NOT NULL ,
[Author_ID] int NOT NULL ,
[Screen_ID] int NULL ,
[Forum_ID] int NULL ,
[Reading] bit NULL ,
[Post] bit NULL ,
[Reply_posts] bit NULL ,
[Edit_posts] bit NULL ,
[Delete_posts] bit NULL ,
[Priority_posts] bit NULL ,
[Poll_create] bit NULL ,
[Vote] bit NULL ,
[Attachments] bit NULL ,
[Image_upload] bit NULL ,
[Display_Post] bit NULL ,
[Moderate] bit NULL ,
[Permission_Status] bit NOT NULL 
)


GO

-- ----------------------------
-- Records of tblPermissions
-- ----------------------------
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1192', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'2', N'1142', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1181', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'3', N'1144', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'3', N'1145', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'3', N'1146', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1140', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'3', N'1148', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'57', N'1197', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'2', N'1144', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1197', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1193', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1070', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1147', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1065', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1191', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1152', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1183', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1198', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1060', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1194', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1075', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1197', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1146', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1186', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1045', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1150', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1155', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1010', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1045', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1193', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1025', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1035', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1149', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1196', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1147', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1201', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1065', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1143', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1190', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1095', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'2', N'1193', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1015', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1199', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1200', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'2', N'1152', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1187', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1189', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'2', N'1196', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1188', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1171', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1186', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1020', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1090', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1199', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'29', N'1195', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1188', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1185', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1192', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1140', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'29', N'1190', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1183', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1197', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'29', N'1015', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'29', N'1184', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1149', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'57', N'1188', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1143', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1199', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1189', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1195', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1171', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1186', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1020', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'57', N'1152', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1190', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'57', N'1185', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'57', N'1187', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1015', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1184', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1181', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1201', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1192', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1181', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1140', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1191', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1183', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1194', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1197', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1045', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1149', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1147', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1201', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1065', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1143', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1095', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1199', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1200', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1189', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1188', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1198', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1171', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1185', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1186', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1187', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1020', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1090', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'3', N'1150', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'3', N'1154', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'3', N'1155', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'3', N'1156', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'3', N'1157', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'3', N'1125', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'3', N'1167', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1195', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1190', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1015', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1184', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1090', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1192', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1191', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'2', N'1195', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1191', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1194', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1045', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1143', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'2', N'1190', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1200', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1147', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'2', N'1015', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'2', N'1184', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1020', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1198', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'50', N'1195', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1065', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1095', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1200', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1188', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'29', N'1193', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'50', N'1055', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1185', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1187', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'29', N'1152', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1090', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1183', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'29', N'1196', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1185', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'50', N'1190', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1193', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1152', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1196', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'50', N'1015', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'50', N'1085', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'6', N'1195', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'6', N'1055', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'6', N'1190', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'6', N'1015', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'6', N'1085', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1198', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1080', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1152', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1140', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1194', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1149', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1095', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1189', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1171', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1187', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'57', N'1045', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'57', N'1198', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'57', N'1171', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'57', N'1186', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1005', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1010', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1152', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'2', N'1070', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'1', N'1144', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1144', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'1', N'1145', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'1', N'1146', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'50', N'1193', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1148', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'1', N'1148', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1085', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1153', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'1', N'1151', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'1', N'1153', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'50', N'1152', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'17', N'1144', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'17', N'1146', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'17', N'1148', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'17', N'1150', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'17', N'1151', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'17', N'1153', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'1', N'1155', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1156', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1158', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'1', N'1158', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'50', N'1184', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1161', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1164', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1167', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1144', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1145', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1146', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1148', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1055', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1150', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1154', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1155', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1156', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1157', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1158', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1161', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1162', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1163', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1164', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1165', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1151', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'51', N'1085', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1153', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1159', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1005', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1010', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1100', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1105', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1110', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1115', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1025', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1030', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1035', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1040', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1050', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1060', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1070', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1075', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1080', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1195', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1055', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1120', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1125', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1167', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'50', N'1168', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1169', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1170', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1172', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1173', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1100', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1105', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1110', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1115', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1025', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1030', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1035', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1040', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1050', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1190', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1060', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1070', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1075', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1080', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1184', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1120', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1125', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1150', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1151', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1162', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1163', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1145', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1146', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'37', N'1145', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'6', N'1193', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'37', N'1151', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'37', N'1010', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'37', N'1100', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'37', N'1110', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'37', N'1030', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'37', N'1040', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'37', N'1050', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'37', N'1060', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'37', N'1070', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'37', N'1080', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'37', N'1125', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1165', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1168', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'6', N'1152', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1144', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1146', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1148', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1150', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1155', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1157', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1162', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1164', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1170', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1173', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1159', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1169', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'7', N'6', N'1184', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'1', N'1150', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'37', N'1144', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'37', N'1146', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'37', N'1148', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'37', N'1150', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'37', N'1005', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'37', N'1105', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'37', N'1115', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'37', N'1025', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'37', N'1035', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1195', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'37', N'1075', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1055', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'37', N'1120', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1154', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1145', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'4', N'1184', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1154', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1156', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1158', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1161', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1163', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1165', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1172', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1151', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1153', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1168', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1167', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1174', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'17', N'1145', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1055', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'17', N'1154', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'43', N'1085', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1155', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1159', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'1', N'1159', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1166', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'1', N'1005', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'1', N'1010', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'1', N'1100', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'1', N'1105', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1005', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1105', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1025', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1035', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1075', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'1', N'1110', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'1', N'1115', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'1', N'1125', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1115', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1125', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'13', N'1010', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'13', N'1100', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'13', N'1110', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'13', N'1030', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'13', N'1040', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'13', N'1050', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'13', N'1060', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'13', N'1070', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'13', N'1080', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'13', N'1130', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'13', N'1120', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'1', N'1030', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'1', N'1040', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'1', N'1050', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'1', N'1060', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'1', N'1070', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'1', N'1080', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1010', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1100', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1030', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1040', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1050', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1060', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1070', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1080', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'7', N'1010', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'7', N'1040', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1110', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'5', N'1120', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'4', N'7', N'1050', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'4', N'7', N'1070', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'1', N'1130', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'1', N'1025', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'1', N'1035', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'1', N'1075', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1201', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'17', N'1005', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'17', N'1010', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'17', N'1100', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'17', N'1105', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'17', N'1110', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'17', N'1115', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'17', N'1025', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'17', N'1030', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'17', N'1035', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'17', N'1040', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'17', N'1050', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'17', N'1060', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1193', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'17', N'1070', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'17', N'1075', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'17', N'1080', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'17', N'1120', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'17', N'1125', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'7', N'1005', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'7', N'1035', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'13', N'1005', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'13', N'1105', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'13', N'1115', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'13', N'1025', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'13', N'1035', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1015', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'30', N'1085', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'13', N'1075', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'13', N'1135', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'13', N'1125', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'1', N'1120', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'6', N'6', N'1146', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'1', N'1', N'1154', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO
INSERT INTO [dbo].[tblPermissions] ([Group_ID], [Author_ID], [Screen_ID], [Forum_ID], [Reading], [Post], [Reply_posts], [Edit_posts], [Delete_posts], [Priority_posts], [Poll_create], [Vote], [Attachments], [Image_upload], [Display_Post], [Moderate], [Permission_Status]) VALUES (N'3', N'32', N'1157', null, null, null, null, null, null, null, null, null, null, null, null, null, N'1')
GO
GO

-- ----------------------------
-- Table structure for tblRegistration
-- ----------------------------
DROP TABLE [dbo].[tblRegistration]
GO
CREATE TABLE [dbo].[tblRegistration] (
[reg_id] int NOT NULL IDENTITY(1,1) ,
[Event_ID] int NULL ,
[Member_ID] int NULL ,
[Register_For] int NULL ,
[Register_Type] int NULL ,
[Event_Fees] decimal(18) NULL ,
[Register_status] bit NULL ,
[Register_Date] datetime NULL ,
[Register_TransactionID] int NOT NULL ,
[Register_Hide] bit NULL ,
[Register_ByWho] int NULL ,
[Register_WhoModified] int NULL ,
[Participant_Name] nvarchar(255) NULL ,
[Participant_IC] nvarchar(20) NULL ,
[Participant_HP] nvarchar(20) NULL ,
[Participant_email] nvarchar(50) NULL ,
[Register_Date_Modified] datetime NULL ,
[Participant_Image_URL] nvarchar(255) NULL ,
[Participant_Image_Name] nvarchar(255) NULL ,
[Member_IPAddress] nvarchar(20) NULL ,
[Register_source] int NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[tblRegistration]', RESEED, 168)
GO

-- ----------------------------
-- Records of tblRegistration
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tblRegistration] ON
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'120', N'2', N'29', N'1', N'2', N'2100', N'1', N'2014-02-24 12:07:41.000', N'8034021', N'0', N'29', N'4', N'Norelissuryani', N'', N'', N'eliss@salam.uitm.edu.my', null, N'http://ges2014.uitm.edu.my/dev/members/uploads/ges4370996.jpg', N'ges4370996.jpg', null, N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'121', N'2', N'2', N'1', N'2', N'2100', N'1', N'2014-02-27 15:30:08.000', N'836603', N'0', N'2', N'30', N'miezaniera amin', N'', N'', N'mieza.niera@gmail.com', null, N'http://10.0.20.1/ges2014/members/uploads/ges9495965.jpg', N'ges9495965.jpg', null, N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'122', N'2', N'46', N'1', N'2', N'2100', N'1', N'2014-02-21 11:47:15.000', N'9148981', N'0', N'46', N'4', N'azniza md aziz', N'', N'', N'azniza_aziz@salam.uitm.edu.my', null, N'http://ges2014.uitm.edu.my/dev/members/uploads/ges1620600.jpg', N'ges1620600.jpg', null, N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'127', N'2', N'29', N'2', N'2', N'2100', N'1', N'2014-02-19 13:52:49.000', N'1644251', N'0', N'29', N'4', N'Rossalinda Rose Kimberly ', N'', N'0139729706', N'isabella@zuberg.com', null, N'http://10.0.20.1/ges2014/members/uploads/ges636561.jpg', N'ges636561.jpg', null, N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'130', N'2', N'4', N'3', N'1', N'2100', N'1', N'2014-02-27 08:22:25.000', N'2044794', N'0', N'4', N'4', N'Melissa Ooi', N'23243435XJKKDUI', N'09347529055', N'melissa@yahoo.com', null, N'http://ges2014.uitm.edu.my/dev/members/uploads/ges3963892.jpg', N'ges3963892.jpg', null, N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'131', N'2', N'2', N'2', N'2', N'2100', N'0', N'2014-02-24 17:22:26.000', N'3596003', N'0', N'2', N'30', N'siti adila', N'', N'Your Contact Number', N'adila@yahoo.com', null, N'', N'', N'10.1.6.152', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'132', N'2', N'2', N'2', N'2', N'2100', N'0', N'2014-02-21 18:56:14.000', N'3692286', N'0', N'2', N'2', N'ahmad sopian', N'', N'', N'ahmad@yahoo.com', null, N'http://ges2014.uitm.edu.my/dev/members/uploads/ges6600458.jpg', N'ges6600458.jpg', N'10.1.5.184', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'133', N'2', N'30', N'1', N'2', N'2400', N'0', N'2014-02-24 09:40:30.000', N'6476862', N'1', N'30', N'30', N'Ezin, H.E. Jean-Pierre ', N'A1452364', N'0145263846', N'jean@gmail.com', null, N'http://ges2014.uitm.edu.my/dev/members/uploads/ges5648266.jpg', N'ges5648266.jpg', null, N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'136', N'2', N'2', N'2', N'2', N'2100', N'0', N'2014-02-26 11:30:57.000', N'4284283', N'1', N'2', N'2', N'norita', N'', N'', N'norita@gmail.com', N'2014-02-27 11:05:06.000', N'', N'', N'10.1.6.152', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'137', N'2', N'29', N'2', N'2', N'2100', N'1', N'2014-02-26 17:16:01.000', N'796931', N'0', N'29', N'4', N'zirdane koyoski', N'', N'24243434535', N'zirdane@yahoo.co.uk', null, N'', N'', N'10.1.5.34', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'138', N'2', N'29', N'2', N'2', N'2100', N'1', N'2014-02-26 15:26:50.000', N'8817211', N'0', N'29', N'4', N'tina adella', N'', N'2322', N'tina@tino.com', null, N'', N'', N'10.1.5.34', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'139', N'2', N'2', N'2', N'2', N'2100', N'0', N'2014-02-26 11:47:37.000', N'3579480', N'1', N'2', N'2', N'azman', N'', N'', N'man@yahoo.com', N'2014-02-27 11:05:02.000', N'', N'', N'10.1.6.152', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'140', N'2', N'29', N'2', N'2', N'2100', N'1', N'2014-02-26 15:25:19.000', N'662457', N'0', N'29', N'4', N'Zirkosh Soros', N'23234455AASF', N'34335465', N'sirkos@co.uk', null, N'', N'', N'10.1.5.34', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'141', N'2', N'2', N'2', N'2', N'2100', N'0', N'2014-02-26 14:32:41.000', N'3830639', N'1', N'2', N'2', N'firdaus', N'', N'', N'firdaus@gmail.com', N'2014-02-27 11:04:59.000', N'', N'', N'10.1.6.152', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'142', N'2', N'2', N'2', N'2', N'2100', N'0', N'2014-02-27 11:11:09.000', N'2603113', N'0', N'2', N'2', N'firdaus', N'', N'', N'firdaus@gmail.com', null, N'', N'', N'10.1.6.152', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'143', N'2', N'2', N'2', N'2', N'2100', N'0', N'2014-02-27 11:22:02.000', N'9864923', N'0', N'2', N'2', N'azman', N'', N'', N'azman@gmail.com', null, N'', N'', N'10.1.6.152', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'144', N'2', N'2', N'2', N'2', N'2100', N'0', N'2014-02-27 12:17:49.000', N'1378596', N'0', N'2', N'2', N'roslan', N'', N'', N'roslan@gmail.com', null, N'', N'', N'10.1.6.152', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'145', N'2', N'55', N'1', N'3', N'2100', N'0', N'2014-02-27 14:18:26.000', N'8413463', N'0', N'55', N'55', N'Azniza Binti Md Aziz', N'', N'', N'azniza.md.aziz@gmail.com', null, N'', N'', N'10.1.6.59', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'146', N'2', N'2', N'2', N'2', N'2100', N'0', N'2014-02-27 14:55:39.000', N'464594', N'0', N'2', N'2', N'hidayah', N'', N'', N'hidayah@gmail.com', null, N'', N'', N'10.1.6.152', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'147', N'2', N'55', N'2', N'1', N'2100', N'0', N'2014-02-27 15:08:32.000', N'8914104', N'0', N'55', N'55', N'Atia Adina Mohd Azham', N'821119-05-5547', N'012-5487996', N'atia@gmail.com', null, N'http://ges2014.uitm.edu.my/dev/members/uploads/ges9742700.jpg', N'ges9742700.jpg', N'10.1.6.59', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'148', N'2', N'2', N'2', N'2', N'2100', N'1', N'2014-02-27 15:09:21.000', N'4642450', N'0', N'2', N'2', N'alias', N'', N'', N'alias@gmail.com', null, N'', N'', N'10.1.6.152', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'150', N'2', N'55', N'2', N'1', N'2100', N'0', N'2014-02-27 15:23:07.000', N'2983624', N'0', N'55', N'55', N'Mohd Azham Shaari', N'820101-01-9874', N'013-6654778', N'azham@gmail.com', null, N'', N'', N'10.1.6.59', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'160', N'2', N'2', N'2', N'1', N'2100', N'0', N'2014-02-28 10:23:26.000', N'7897106', N'0', N'2', N'2', N'polly', N'', N'', N'polly@gmail.com', null, N'http://ges2014.uitm.edu.my/dev/members/uploads/ges8725702.jpg', N'ges8725702.jpg', N'10.1.6.152', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'161', N'2', N'46', N'2', N'2', N'2100', N'0', N'2014-02-28 10:25:51.000', N'2096979', N'0', N'46', N'46', N'Azham Shaari', N'820102-01-0201', N'013-9874556', N'azhamd@gmail.com', null, N'', N'', N'10.1.6.59', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'162', N'2', N'46', N'2', N'2', N'2100', N'0', N'2014-02-28 10:41:33.000', N'2096979', N'0', N'46', N'46', N'Aiman Alif Nor Azlan', N'900902-09-2136', N'012-5698771', N'alif@gmail.com', null, N'', N'', N'10.1.6.59', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'165', N'2', N'46', N'2', N'1', N'2100', N'0', N'2014-02-28 11:35:20.000', N'1196973', N'0', N'46', N'46', N'Rohani Esa', N'600105-06-9874', N'013-9687445', N'rohani@gmail.com', null, N'', N'', N'10.1.6.59', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'166', N'2', N'46', N'2', N'3', N'2100', N'0', N'2014-02-28 11:37:05.000', N'7909618', N'0', N'46', N'46', N'Norelissuryani Mokhtar', N'820606-04-7896', N'014-6547896', N'nor@gmail.com', null, N'', N'', N'10.1.6.59', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'168', N'2', N'46', N'2', N'3', N'2100', N'0', N'2014-03-05 08:50:39.000', N'3329541', N'0', N'46', N'46', N'azham', N'Your IC No', N'0192740058', N'azham', null, N'', N'', N'10.1.6.59', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'124', N'2', N'52', N'1', N'2', N'2100', N'1', N'2014-02-20 14:50:13.000', N'3709070', N'0', N'52', N'4', N'Khairul Naim Mohd Tajudin', N'', N'', N'naim3502@gmail.com', null, N'', N'', null, N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'125', N'2', N'52', N'2', N'2', N'2100', N'1', N'2014-02-20 14:50:13.000', N'3709070', N'0', N'52', N'4', N'MOHD ZAINI', N'', N'0124556789', N'zaini@gmail.com', null, N'', N'', null, N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'128', N'2', N'29', N'2', N'2', N'2100', N'1', N'2014-02-21 12:19:19.000', N'9905206', N'0', N'29', N'4', N'mark zuckerberg', N'', N'34892849357435', N'mark@facebook.com', null, N'http://10.0.20.1/ges2014/members/uploads/ges891077.jpg', N'ges891077.jpg', null, N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'129', N'2', N'2', N'2', N'2', N'2100', N'1', N'2014-02-24 09:32:46.000', N'5774500', N'0', N'2', N'30', N'Harvey, Fiona', N'', N'', N'fiona@yahoo.com.uk', null, N'http://ges2014.uitm.edu.my/dev/members/uploads/ges4026300.jpg', N'ges4026300.jpg', null, N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'135', N'2', N'2', N'2', N'2', N'2100', N'0', N'2014-02-25 17:01:27.000', N'8505823', N'0', N'2', N'2', N'Wahid Omar', N'', N'', N'Omar@gmail.com', null, N'', N'', N'10.1.6.152', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'149', N'2', N'55', N'2', N'2', N'2100', N'0', N'2014-02-27 15:21:06.000', N'7191736', N'0', N'55', N'55', N'Adam Amzar Mohd Azham', N'940102-05-4789', N'011-45789698', N'adam@gmail.com', null, N'', N'', N'10.1.6.59', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'151', N'2', N'2', N'2', N'2', N'2100', N'1', N'2014-02-27 16:06:46.000', N'4378168', N'0', N'2', N'2', N'roslina', N'', N'', N'roslina@gmail.com', null, N'', N'', N'10.1.6.152', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'152', N'2', N'2', N'2', N'2', N'2100', N'1', N'2014-02-27 16:25:14.000', N'8363153', N'0', N'2', N'2', N'nurzie', N'', N'', N'nurzie@gmail.com', null, N'', N'', N'10.1.6.152', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'153', N'2', N'55', N'2', N'3', N'2100', N'0', N'2014-02-27 16:25:32.000', N'3756939', N'0', N'55', N'55', N'Farahtul Shuhada Khairul Anuar', N'800202-04-0201', N'012-8796554', N'farah@gmail.com', null, N'', N'', N'10.1.6.59', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'154', N'2', N'55', N'2', N'2', N'2100', N'0', N'2014-02-27 16:26:28.000', N'7191736', N'0', N'55', N'55', N'Aiman Alif Bin Nor Azlan', N'800306-05-8796', N'013-987456', N'aiman@gmail.com', null, N'', N'', N'10.1.6.59', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'155', N'2', N'2', N'2', N'2', N'2100', N'1', N'2014-02-27 16:31:37.000', N'3292658', N'0', N'2', N'2', N'mira', N'', N'', N'mira@gmail.com', null, N'', N'', N'10.1.6.152', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'156', N'2', N'55', N'2', N'2', N'2100', N'0', N'2014-02-27 16:38:13.000', N'8550640', N'1', N'55', N'55', N'a', N'888', N'012-5478963', N'a@gmail.com', N'2014-02-27 16:38:22.000', N'', N'', N'10.1.6.59', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'157', N'2', N'2', N'2', N'2', N'2100', N'1', N'2014-02-27 16:42:26.000', N'3590204', N'0', N'2', N'2', N'masita', N'', N'', N'masita@yahoo.com', null, N'', N'', N'10.1.6.152', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'158', N'2', N'2', N'2', N'2', N'2100', N'1', N'2014-02-27 16:46:40.000', N'8449670', N'0', N'2', N'2', N'husna', N'', N'', N'husna@gmail.com', null, N'', N'', N'10.1.6.152', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'123', N'2', N'2', N'2', N'2', N'2100', N'1', N'2014-02-27 15:30:19.000', N'836603', N'0', N'2', N'30', N'ariana rose', N'', N'', N'rose@yahoo.com', null, N'http://10.0.20.1/ges2014/members/uploads/ges2430842.jpg', N'ges2430842.jpg', null, N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'126', N'2', N'52', N'2', N'2', N'2100', N'1', N'2014-02-20 14:50:13.000', N'3709070', N'0', N'52', N'4', N'Siti Zubaidah', N'', N'0133691782', N'zue1234@yahoo.com', null, N'', N'', null, N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'134', N'2', N'2', N'2', N'2', N'2100', N'0', N'2014-02-25 16:04:21.000', N'2305109', N'0', N'2', N'2', N'Faiz', N'', N'', N'fais', null, N'', N'', N'10.1.6.152', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'159', N'2', N'2', N'2', N'2', N'2100', N'1', N'2014-02-27 16:48:21.000', N'4105188', N'0', N'2', N'2', N'zahrah', N'', N'', N'zahrah@gmail.com', null, N'', N'', N'10.1.6.152', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'163', N'2', N'46', N'2', N'2', N'2100', N'0', N'2014-02-28 11:31:45.000', N'9546930', N'0', N'46', N'46', N'Fakhrul Afiq Khairul Anuar', N'801212-04-5698', N'014-5698774', N'afiq@gmail.com', null, N'', N'', N'10.1.6.59', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'164', N'2', N'46', N'2', N'2', N'2100', N'0', N'2014-02-28 11:34:08.000', N'7487909', N'0', N'46', N'46', N'Atia Adina Adam Amzar', N'900902-05-8796', N'012-8965447', N'amzar@gmail.com', null, N'', N'', N'10.1.6.59', N'0')
GO
GO
INSERT INTO [dbo].[tblRegistration] ([reg_id], [Event_ID], [Member_ID], [Register_For], [Register_Type], [Event_Fees], [Register_status], [Register_Date], [Register_TransactionID], [Register_Hide], [Register_ByWho], [Register_WhoModified], [Participant_Name], [Participant_IC], [Participant_HP], [Participant_email], [Register_Date_Modified], [Participant_Image_URL], [Participant_Image_Name], [Member_IPAddress], [Register_source]) VALUES (N'167', N'2', N'46', N'2', N'2', N'2100', N'0', N'2014-02-28 12:00:45.000', N'2737805', N'0', N'46', N'46', N'Norbaiduri Huzaifah', N'', N'', N'bai@gmail.com', null, N'', N'', N'10.1.6.59', N'0')
GO
GO
SET IDENTITY_INSERT [dbo].[tblRegistration] OFF
GO

-- ----------------------------
-- Table structure for tblScreen
-- ----------------------------
DROP TABLE [dbo].[tblScreen]
GO
CREATE TABLE [dbo].[tblScreen] (
[Screen_ID] int NOT NULL IDENTITY(1,1) ,
[Screen_Name] nvarchar(100) NOT NULL ,
[Screen_Description] nvarchar(100) NULL ,
[Screen_Status] bit NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[tblScreen]', RESEED, 1201)
GO

-- ----------------------------
-- Records of tblScreen
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tblScreen] ON
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1181', N'add_article.asp', N'Add New Article', N'1')
GO
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1197', N'default.asp', N'Dashboard', N'1')
GO
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1143', N'inc_LookupSetting.asp', N'Lookup Parameter', N'1')
GO
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1198', N'payment_list_group.asp', N'Transaction ID', N'1')
GO
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1199', N'moderator_list.asp', N'Moderator List', N'1')
GO
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1200', N'moderator_listS1.asp', N'Add moderator permission ', N'1')
GO
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1147', N'events_List.asp', N'Event Setup', N'1')
GO
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1201', N'gallery.asp', N'Add Media', N'1')
GO
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1149', N'events_Add.asp', N'Add New Events', N'1')
GO
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1183', N'articles_list.asp', N'Article List', N'1')
GO
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1184', N'update_article.asp', N'Update Article', N'1')
GO
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1152', N'reg_list.asp', N'Participant List', N'1')
GO
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1185', N'reg_list_edit.asp', N'Update Participant', N'1')
GO
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1187', N'reg_listgroup_edit.asp', N'Update Participant By Group', N'1')
GO
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1015', N'screen_List.asp', N'Screen List', N'1')
GO
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1020', N'user_ssa_Add.asp', N'Add New Secure Screen Access', N'1')
GO
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1188', N'payment_list.asp', N'Payment List', N'1')
GO
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1045', N'edit_userprofile.asp', N'My Profile', N'1')
GO
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1055', N'group_Add.asp', N'Add New User Group', N'1')
GO
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1065', N'group_List.asp', N'Group List', N'1')
GO
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1085', N'user_SSA.asp', N'Permission List', N'1')
GO
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1090', N'user_ssa_List.asp', N'Secure Screen Access List ', N'1')
GO
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1095', N'inc_Users.asp', N'Users Listing', N'1')
GO
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1140', N'add_users.asp', N'Add New User', N'1')
GO
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1171', N'reg_list_add.asp', N'Add New Participant', N'1')
GO
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1191', N'articles_category_list.asp', N'Article Category', N'1')
GO
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1192', N'account_setup.asp', N'Account Bank Setup ', N'1')
GO
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1193', N'events_update.asp', N'Update Event', N'1')
GO
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1194', N'currency_list.asp', N'Currency Setup', N'1')
GO
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1195', N'event_price_list.asp', N'Price Info Setup', N'1')
GO
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1186', N'reg_listgroup.asp', N'Participant Group List', N'1')
GO
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1189', N'pay_list_edit.asp', N'Update Payment', N'1')
GO
GO
INSERT INTO [dbo].[tblScreen] ([Screen_ID], [Screen_Name], [Screen_Description], [Screen_Status]) VALUES (N'1190', N'portal_setup.asp', N'Portal Setup', N'1')
GO
GO
SET IDENTITY_INSERT [dbo].[tblScreen] OFF
GO

-- ----------------------------
-- Table structure for tblSession
-- ----------------------------
DROP TABLE [dbo].[tblSession]
GO
CREATE TABLE [dbo].[tblSession] (
[ID] int NULL ,
[SessionID] uniqueidentifier NULL 
)


GO

-- ----------------------------
-- Records of tblSession
-- ----------------------------

-- ----------------------------
-- Procedure structure for gesChkUserID
-- ----------------------------
DROP PROCEDURE [dbo].[gesChkUserID]
GO


CREATE PROCEDURE [dbo].[gesChkUserID]
( 
@strUserID nvarchar(255) 
) 
 AS 
SELECT tblMembers.Username, tblMembers.ICNo, tblMembers.Gender, tblMembers.Member_ID, tblMembers.Group_ID, tblMembers.Active, tblMembers.Signature, tblMembers.Email,  tblMembers.Attach_signature, tblMembers.Last_visit, tblMembers.StaffNo, tblMembers.Profile_status, tblMembers.Date_format
FROM tblMembers 
WHERE tblMembers.User_code = @strUserID;



GO

-- ----------------------------
-- Procedure structure for gesSelectConfiguration
-- ----------------------------
DROP PROCEDURE [dbo].[gesSelectConfiguration]
GO

CREATE PROCEDURE [dbo].[gesSelectConfiguration] AS SELECT tblConfiguration.* From tblConfiguration;


GO

-- ----------------------------
-- Procedure structure for gesTimeAndDateSettings
-- ----------------------------
DROP PROCEDURE [dbo].[gesTimeAndDateSettings]
GO


CREATE PROCEDURE [dbo].[gesTimeAndDateSettings] AS SELECT tblDateTimeFormat.* FROM tblDateTimeFormat;



GO

-- ----------------------------
-- Procedure structure for gesUpdateLasVisit
-- ----------------------------
DROP PROCEDURE [dbo].[gesUpdateLasVisit]
GO


CREATE PROCEDURE [dbo].[gesUpdateLasVisit] 
(
@lngUserID int 
)
 AS 
UPDATE tblMembers SET tblMembers.Last_visit=GetDate() WHERE tblMembers.Member_ID=@lngUserID;



GO

-- ----------------------------
-- Indexes structure for table sysdiagrams
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sysdiagrams
-- ----------------------------
ALTER TABLE [dbo].[sysdiagrams] ADD PRIMARY KEY ([diagram_id])
GO

-- ----------------------------
-- Uniques structure for table sysdiagrams
-- ----------------------------
ALTER TABLE [dbo].[sysdiagrams] ADD UNIQUE ([principal_id] ASC, [name] ASC)
GO

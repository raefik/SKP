

-- ----------------------------
-- Table structure for gesparticipants
-- ----------------------------
DROP TABLE [attendance].[gesparticipants]
GO
CREATE TABLE [attendance].[gesparticipants] (
[id] int NOT NULL IDENTITY(1,1) ,
[participanttype_code] nvarchar(255) NULL ,
[reg_id] int NULL ,
[rfid] nvarchar(255) NULL ,
[hotelstatus_code] nvarchar(255) NULL ,
[transportstatus_code] nvarchar(255) NULL ,
[committeestatus_code] nvarchar(255) NULL ,
[created_at] datetime NOT NULL ,
[updated_at] datetime NOT NULL 
)


GO

-- ----------------------------
-- Records of gesparticipants
-- ----------------------------
SET IDENTITY_INSERT [attendance].[gesparticipants] ON
GO
SET IDENTITY_INSERT [attendance].[gesparticipants] OFF
GO

-- ----------------------------
-- Table structure for notifystatuses
-- ----------------------------
DROP TABLE [attendance].[notifystatuses]
GO
CREATE TABLE [attendance].[notifystatuses] (
[id] int NOT NULL IDENTITY(1,1) ,
[code] nvarchar(255) NULL ,
[name] nvarchar(255) NULL ,
[created_at] datetime NOT NULL ,
[updated_at] datetime NOT NULL 
)


GO

-- ----------------------------
-- Records of notifystatuses
-- ----------------------------
SET IDENTITY_INSERT [attendance].[notifystatuses] ON
GO
SET IDENTITY_INSERT [attendance].[notifystatuses] OFF
GO

-- ----------------------------
-- Table structure for participantanswers
-- ----------------------------
DROP TABLE [attendance].[participantanswers]
GO
CREATE TABLE [attendance].[participantanswers] (
[id] int NOT NULL IDENTITY(1,1) ,
[participant_id] int NULL ,
[pollanswer_id] int NULL ,
[created_at] datetime NOT NULL ,
[updated_at] datetime NOT NULL 
)


GO

-- ----------------------------
-- Records of participantanswers
-- ----------------------------
SET IDENTITY_INSERT [attendance].[participantanswers] ON
GO
SET IDENTITY_INSERT [attendance].[participantanswers] OFF
GO

-- ----------------------------
-- Table structure for participanttypes
-- ----------------------------
DROP TABLE [attendance].[participanttypes]
GO
CREATE TABLE [attendance].[participanttypes] (
[id] int NOT NULL IDENTITY(1,1) ,
[code] nvarchar(255) NULL ,
[name] nvarchar(255) NULL ,
[created_at] datetime NOT NULL ,
[updated_at] datetime NOT NULL 
)


GO

-- ----------------------------
-- Records of participanttypes
-- ----------------------------
SET IDENTITY_INSERT [attendance].[participanttypes] ON
GO
SET IDENTITY_INSERT [attendance].[participanttypes] OFF
GO

-- ----------------------------
-- Table structure for pollanswers
-- ----------------------------
DROP TABLE [attendance].[pollanswers]
GO
CREATE TABLE [attendance].[pollanswers] (
[id] int NOT NULL IDENTITY(1,1) ,
[answer] nvarchar(255) NULL ,
[poll_id] int NULL ,
[created_at] datetime NOT NULL ,
[updated_at] datetime NOT NULL 
)


GO

-- ----------------------------
-- Records of pollanswers
-- ----------------------------
SET IDENTITY_INSERT [attendance].[pollanswers] ON
GO
SET IDENTITY_INSERT [attendance].[pollanswers] OFF
GO

-- ----------------------------
-- Table structure for polls
-- ----------------------------
DROP TABLE [attendance].[polls]
GO
CREATE TABLE [attendance].[polls] (
[id] int NOT NULL IDENTITY(1,1) ,
[question] nvarchar(255) NULL ,
[presenter_id] int NULL ,
[created_at] datetime NOT NULL ,
[updated_at] datetime NOT NULL 
)


GO

-- ----------------------------
-- Records of polls
-- ----------------------------
SET IDENTITY_INSERT [attendance].[polls] ON
GO
SET IDENTITY_INSERT [attendance].[polls] OFF
GO

-- ----------------------------
-- Table structure for presenterfiles
-- ----------------------------
DROP TABLE [attendance].[presenterfiles]
GO
CREATE TABLE [attendance].[presenterfiles] (
[id] int NOT NULL IDENTITY(1,1) ,
[member_id] int NULL ,
[files] nvarchar(255) NULL ,
[reg_id] int NULL ,
[created_at] datetime NOT NULL ,
[updated_at] datetime NOT NULL 
)


GO

-- ----------------------------
-- Records of presenterfiles
-- ----------------------------
SET IDENTITY_INSERT [attendance].[presenterfiles] ON
GO
SET IDENTITY_INSERT [attendance].[presenterfiles] OFF
GO

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE [attendance].[roles]
GO
CREATE TABLE [attendance].[roles] (
[id] int NOT NULL IDENTITY(1,1) ,
[code] nvarchar(255) NULL ,
[name] nvarchar(255) NULL ,
[created_at] datetime NOT NULL ,
[updated_at] datetime NOT NULL 
)


GO
DBCC CHECKIDENT(N'[attendance].[roles]', RESEED, 6)
GO

-- ----------------------------
-- Records of roles
-- ----------------------------
SET IDENTITY_INSERT [attendance].[roles] ON
GO
INSERT INTO [attendance].[roles] ([id], [code], [name], [created_at], [updated_at]) VALUES (N'1', N'ADM', N'Admin', N'2014-03-12 17:13:46.613', N'2014-03-12 17:13:46.613')
GO
GO
INSERT INTO [attendance].[roles] ([id], [code], [name], [created_at], [updated_at]) VALUES (N'2', N'ATT', N'Attendance', N'2014-03-20 14:38:34.417', N'2014-03-20 14:38:34.417')
GO
GO
INSERT INTO [attendance].[roles] ([id], [code], [name], [created_at], [updated_at]) VALUES (N'3', N'HTL', N'Admin Hotel', N'2014-03-24 05:34:46.937', N'2014-03-24 05:34:46.937')
GO
GO
INSERT INTO [attendance].[roles] ([id], [code], [name], [created_at], [updated_at]) VALUES (N'4', N'LGS', N'Admin Logistic', N'2014-03-24 05:35:11.220', N'2014-03-24 05:35:11.220')
GO
GO
INSERT INTO [attendance].[roles] ([id], [code], [name], [created_at], [updated_at]) VALUES (N'5', N'USH', N'Admin Usher', N'2014-03-24 05:35:37.743', N'2014-03-24 05:35:37.743')
GO
GO
INSERT INTO [attendance].[roles] ([id], [code], [name], [created_at], [updated_at]) VALUES (N'6', N'APT', N'Admin Airport', N'2014-03-24 05:36:03.147', N'2014-03-24 05:36:03.147')
GO
GO
SET IDENTITY_INSERT [attendance].[roles] OFF
GO

-- ----------------------------
-- Table structure for rooms
-- ----------------------------
DROP TABLE [attendance].[rooms]
GO
CREATE TABLE [attendance].[rooms] (
[id] int NOT NULL IDENTITY(1,1) ,
[code] nvarchar(255) NULL ,
[name] nvarchar(255) NULL ,
[created_at] datetime NOT NULL ,
[updated_at] datetime NOT NULL ,
[capacity] int NULL 
)


GO
DBCC CHECKIDENT(N'[attendance].[rooms]', RESEED, 6)
GO

-- ----------------------------
-- Records of rooms
-- ----------------------------
SET IDENTITY_INSERT [attendance].[rooms] ON
GO
INSERT INTO [attendance].[rooms] ([id], [code], [name], [created_at], [updated_at], [capacity]) VALUES (N'1', N'PHG', N'Pahang', N'2014-03-21 16:29:37.647', N'2014-03-26 15:10:49.807', N'45')
GO
GO
INSERT INTO [attendance].[rooms] ([id], [code], [name], [created_at], [updated_at], [capacity]) VALUES (N'2', N'SLG', N'Selangor', N'2014-03-21 16:30:14.747', N'2014-03-26 15:11:38.163', N'120')
GO
GO
INSERT INTO [attendance].[rooms] ([id], [code], [name], [created_at], [updated_at], [capacity]) VALUES (N'3', N'JHR', N'Johor', N'2014-03-21 16:30:52.117', N'2014-03-26 15:12:10.533', N'130')
GO
GO
INSERT INTO [attendance].[rooms] ([id], [code], [name], [created_at], [updated_at], [capacity]) VALUES (N'4', N'PRK', N'Perak', N'2014-03-21 16:31:28.277', N'2014-03-26 15:12:59.727', N'120')
GO
GO
INSERT INTO [attendance].[rooms] ([id], [code], [name], [created_at], [updated_at], [capacity]) VALUES (N'5', N'KDH', N'Kedah', N'2014-03-21 16:31:54.907', N'2014-03-26 15:13:25.970', N'120')
GO
GO
INSERT INTO [attendance].[rooms] ([id], [code], [name], [created_at], [updated_at], [capacity]) VALUES (N'6', N'PNG', N'Penang', N'2014-03-21 16:32:24.117', N'2014-03-26 15:14:33.780', N'80')
GO
GO
SET IDENTITY_INSERT [attendance].[rooms] OFF
GO

-- ----------------------------
-- Table structure for schema_migrations
-- ----------------------------
DROP TABLE [attendance].[schema_migrations]
GO
CREATE TABLE [attendance].[schema_migrations] (
[version] nvarchar(255) NOT NULL 
)


GO

-- ----------------------------
-- Records of schema_migrations
-- ----------------------------
INSERT INTO [attendance].[schema_migrations] ([version]) VALUES (N'20140311172544')
GO
GO
INSERT INTO [attendance].[schema_migrations] ([version]) VALUES (N'20140312171019')
GO
GO
INSERT INTO [attendance].[schema_migrations] ([version]) VALUES (N'20140319041352')
GO
GO
INSERT INTO [attendance].[schema_migrations] ([version]) VALUES (N'20140319041452')
GO
GO
INSERT INTO [attendance].[schema_migrations] ([version]) VALUES (N'20140319041524')
GO
GO
INSERT INTO [attendance].[schema_migrations] ([version]) VALUES (N'20140319041542')
GO
GO
INSERT INTO [attendance].[schema_migrations] ([version]) VALUES (N'20140319041627')
GO
GO
INSERT INTO [attendance].[schema_migrations] ([version]) VALUES (N'20140319041740')
GO
GO
INSERT INTO [attendance].[schema_migrations] ([version]) VALUES (N'20140319041824')
GO
GO
INSERT INTO [attendance].[schema_migrations] ([version]) VALUES (N'20140319042103')
GO
GO
INSERT INTO [attendance].[schema_migrations] ([version]) VALUES (N'20140319042241')
GO
GO
INSERT INTO [attendance].[schema_migrations] ([version]) VALUES (N'20140319044119')
GO
GO
INSERT INTO [attendance].[schema_migrations] ([version]) VALUES (N'20140319044311')
GO
GO
INSERT INTO [attendance].[schema_migrations] ([version]) VALUES (N'20140319044418')
GO
GO
INSERT INTO [attendance].[schema_migrations] ([version]) VALUES (N'20140326150346')
GO
GO

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE [attendance].[sessions]
GO
CREATE TABLE [attendance].[sessions] (
[id] int NOT NULL IDENTITY(1,1) ,
[code] nvarchar(255) NULL ,
[starttime] datetime NULL ,
[endtime] datetime NULL ,
[created_at] datetime NOT NULL ,
[updated_at] datetime NOT NULL 
)


GO

-- ----------------------------
-- Records of sessions
-- ----------------------------
SET IDENTITY_INSERT [attendance].[sessions] ON
GO
SET IDENTITY_INSERT [attendance].[sessions] OFF
GO

-- ----------------------------
-- Table structure for trackattendances
-- ----------------------------
DROP TABLE [attendance].[trackattendances]
GO
CREATE TABLE [attendance].[trackattendances] (
[id] int NOT NULL IDENTITY(1,1) ,
[track_id] int NULL ,
[rfid] nvarchar(255) NULL ,
[first_in] datetime NULL ,
[last_out] datetime NULL ,
[created_at] datetime NOT NULL ,
[updated_at] datetime NOT NULL 
)


GO

-- ----------------------------
-- Records of trackattendances
-- ----------------------------
SET IDENTITY_INSERT [attendance].[trackattendances] ON
GO
SET IDENTITY_INSERT [attendance].[trackattendances] OFF
GO

-- ----------------------------
-- Table structure for tracks
-- ----------------------------
DROP TABLE [attendance].[tracks]
GO
CREATE TABLE [attendance].[tracks] (
[id] int NOT NULL IDENTITY(1,1) ,
[theme] nvarchar(255) NULL ,
[description] nvarchar(255) NULL ,
[room_code] nvarchar(255) NULL ,
[trackstatus_code] nvarchar(255) NULL ,
[session_code] nvarchar(255) NULL ,
[created_at] datetime NOT NULL ,
[updated_at] datetime NOT NULL 
)


GO

-- ----------------------------
-- Records of tracks
-- ----------------------------
SET IDENTITY_INSERT [attendance].[tracks] ON
GO
SET IDENTITY_INSERT [attendance].[tracks] OFF
GO

-- ----------------------------
-- Table structure for trackstatuses
-- ----------------------------
DROP TABLE [attendance].[trackstatuses]
GO
CREATE TABLE [attendance].[trackstatuses] (
[id] int NOT NULL IDENTITY(1,1) ,
[code] nvarchar(255) NULL ,
[name] nvarchar(255) NULL ,
[created_at] datetime NOT NULL ,
[updated_at] datetime NOT NULL 
)


GO

-- ----------------------------
-- Records of trackstatuses
-- ----------------------------
SET IDENTITY_INSERT [attendance].[trackstatuses] ON
GO
SET IDENTITY_INSERT [attendance].[trackstatuses] OFF
GO

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE [attendance].[users]
GO
CREATE TABLE [attendance].[users] (
[id] int NOT NULL IDENTITY(1,1) ,
[username] nvarchar(255) NULL ,
[password] nvarchar(255) NULL ,
[password_salt] nvarchar(255) NULL ,
[role_code] nvarchar(255) NULL ,
[created_at] datetime NOT NULL ,
[updated_at] datetime NOT NULL ,
[push_notification] varchar(255) NULL 
)


GO
DBCC CHECKIDENT(N'[attendance].[users]', RESEED, 7)
GO

-- ----------------------------
-- Records of users
-- ----------------------------
SET IDENTITY_INSERT [attendance].[users] ON
GO
INSERT INTO [attendance].[users] ([id], [username], [password], [password_salt], [role_code], [created_at], [updated_at], [push_notification]) VALUES (N'5', N'adminGES', N'$2a$10$qKRzjhOFvEE5u8H4UqBxJet4xGEQIvx4HiOOaNyF2NN54R0Zjf3BK', N'$2a$10$qKRzjhOFvEE5u8H4UqBxJe', N'ADM', N'2014-03-13 17:36:19.607', N'2014-03-25 16:48:01.937', N'APA91bGG3a-FOQVHaw-pbodO3kq22kKuwHHrA9feUcXcYLTM1e5X4sVns5sgcU5Fm-ifrQcswzZRrPxuLIArKqIwof6jq0iSG3dYY36qrZaVjSKRt6tsVmDuf3dQpw57b5R_IsBn4AZ9HxBLiaCUQZiz9TtyzgsocvrjdMNv2fHmEEzeuIWGmWk')
GO
GO
INSERT INTO [attendance].[users] ([id], [username], [password], [password_salt], [role_code], [created_at], [updated_at], [push_notification]) VALUES (N'6', N'attendance', N'$2a$10$a49gi6O71PFBz/rfD/Jfl.ZbNFNcNuspT/gOk9VF9crzfujGJ36le', N'$2a$10$a49gi6O71PFBz/rfD/Jfl.', N'ATT', N'2014-03-20 14:39:41.937', N'2014-03-20 14:40:51.600', null)
GO
GO
INSERT INTO [attendance].[users] ([id], [username], [password], [password_salt], [role_code], [created_at], [updated_at], [push_notification]) VALUES (N'7', N'hotel', N'$2a$10$uHxUoaYpimjZcMznwbTA7uiXFbppBZ6ufDOvFdcJU8zQQ6nwGW56O', N'$2a$10$uHxUoaYpimjZcMznwbTA7u', N'HTL', N'2014-03-25 16:37:11.263', N'2014-03-25 16:39:04.313', N'APA91bGG3a-FOQVHaw-pbodO3kq22kKuwHHrA9feUcXcYLTM1e5X4sVns5sgcU5Fm-ifrQcswzZRrPxuLIArKqIwof6jq0iSG3dYY36qrZaVjSKRt6tsVmDuf3dQpw57b5R_IsBn4AZ9HxBLiaCUQZiz9TtyzgsocvrjdMNv2fHmEEzeuIWGmWk')
GO
GO
SET IDENTITY_INSERT [attendance].[users] OFF
GO

-- ----------------------------
-- Indexes structure for table gesparticipants
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table gesparticipants
-- ----------------------------
ALTER TABLE [attendance].[gesparticipants] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table notifystatuses
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table notifystatuses
-- ----------------------------
ALTER TABLE [attendance].[notifystatuses] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table participantanswers
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table participantanswers
-- ----------------------------
ALTER TABLE [attendance].[participantanswers] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table participanttypes
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table participanttypes
-- ----------------------------
ALTER TABLE [attendance].[participanttypes] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table pollanswers
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table pollanswers
-- ----------------------------
ALTER TABLE [attendance].[pollanswers] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table polls
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table polls
-- ----------------------------
ALTER TABLE [attendance].[polls] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table presenterfiles
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table presenterfiles
-- ----------------------------
ALTER TABLE [attendance].[presenterfiles] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table roles
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table roles
-- ----------------------------
ALTER TABLE [attendance].[roles] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table rooms
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table rooms
-- ----------------------------
ALTER TABLE [attendance].[rooms] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table schema_migrations
-- ----------------------------
CREATE UNIQUE INDEX [unique_schema_migrations] ON [attendance].[schema_migrations]
([version] ASC) 
WITH (IGNORE_DUP_KEY = ON)
GO

-- ----------------------------
-- Indexes structure for table sessions
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sessions
-- ----------------------------
ALTER TABLE [attendance].[sessions] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table trackattendances
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table trackattendances
-- ----------------------------
ALTER TABLE [attendance].[trackattendances] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table tracks
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tracks
-- ----------------------------
ALTER TABLE [attendance].[tracks] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table trackstatuses
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table trackstatuses
-- ----------------------------
ALTER TABLE [attendance].[trackstatuses] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table users
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE [attendance].[users] ADD PRIMARY KEY ([id])
GO

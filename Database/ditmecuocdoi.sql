USE [Docode2]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 19/10/2023 4:38:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[email] [nvarchar](100) NULL,
	[first_name] [nvarchar](50) NULL,
	[last_name] [nvarchar](50) NULL,
	[gender] [bit] NULL,
	[phone_number] [nvarchar](20) NULL,
	[is_available] [bit] NULL,
	[create_date] [date] NULL,
	[role] [int] NULL,
	[dob] [date] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 19/10/2023 4:38:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[id] [int] NOT NULL,
	[title] [nvarchar](300) NULL,
	[content] [nvarchar](30) NULL,
	[img] [nvarchar](30) NULL,
	[create_date] [date] NULL,
	[is_available] [bit] NULL,
	[author_id] [int] NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlogComment]    Script Date: 19/10/2023 4:38:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogComment](
	[id] [int] NOT NULL,
	[account_id] [int] NULL,
	[blogId] [int] NULL,
	[comment] [nvarchar](500) NULL,
	[date] [datetime] NULL,
 CONSTRAINT [PK_BlogComment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 19/10/2023 4:38:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] NOT NULL,
	[name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 19/10/2023 4:38:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[id] [int] NOT NULL,
	[name] [nvarchar](100) NULL,
	[img] [nvarchar](20) NULL,
	[decription] [nvarchar](300) NULL,
	[created_by] [int] NULL,
	[number_student] [int] NULL,
	[is_available] [bit] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseCategory]    Script Date: 19/10/2023 4:38:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseCategory](
	[course_id] [int] NOT NULL,
	[category_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseComment]    Script Date: 19/10/2023 4:38:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseComment](
	[id] [int] NOT NULL,
	[account_id] [int] NULL,
	[course_id] [int] NULL,
	[comment] [nvarchar](500) NULL,
	[date] [datetime] NULL,
 CONSTRAINT [PK_CourseComment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseTracking]    Script Date: 19/10/2023 4:38:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseTracking](
	[account_id] [int] NULL,
	[chapter_id] [int] NULL,
	[is_complete] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chapter]    Script Date: 19/10/2023 4:38:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chapter](
	[id] [int] NOT NULL,
	[name] [nvarchar](100) NULL,
	[course_id] [int] NULL,
 CONSTRAINT [PK_Chapter] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 19/10/2023 4:38:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade](
	[account_id] [int] NULL,
	[test_id] [int] NULL,
	[score] [float] NULL,
	[submitted_time] [datetime] NULL,
	[is_passed] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JoinCourse]    Script Date: 19/10/2023 4:38:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JoinCourse](
	[account_id] [int] NULL,
	[course_id] [int] NULL,
	[joined_date] [date] NULL,
	[is_complete] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lesson]    Script Date: 19/10/2023 4:38:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lesson](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[chapter_id] [int] NULL,
	[content] [nvarchar](500) NULL,
 CONSTRAINT [PK_Lesson] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quiz]    Script Date: 19/10/2023 4:38:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz](
	[id] [int] NOT NULL,
	[test_id] [int] NULL,
	[question] [nvarchar](500) NULL,
	[answer1] [nvarchar](500) NULL,
	[answer2] [nvarchar](500) NULL,
	[answer3] [nvarchar](500) NULL,
	[answer4] [nvarchar](500) NULL,
	[correctAnswer] [nvarchar](500) NULL,
 CONSTRAINT [PK_Quiz] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Test]    Script Date: 19/10/2023 4:38:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[course_id] [int] NULL,
 CONSTRAINT [PK_Test] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([id], [username], [password], [email], [first_name], [last_name], [gender], [phone_number], [is_available], [create_date], [role], [dob]) VALUES (1, N'admin', N'admin', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL)
INSERT [dbo].[Account] ([id], [username], [password], [email], [first_name], [last_name], [gender], [phone_number], [is_available], [create_date], [role], [dob]) VALUES (2, N'mra', N'123', N'mra@gmail.com', N'hieu', N'tran', 1, NULL, 1, NULL, 4, NULL)
INSERT [dbo].[Account] ([id], [username], [password], [email], [first_name], [last_name], [gender], [phone_number], [is_available], [create_date], [role], [dob]) VALUES (3, N'mrb', N'1234', N'mrb@gmail.com', N'hai', N'nguyen', 0, NULL, 1, NULL, 4, NULL)
INSERT [dbo].[Account] ([id], [username], [password], [email], [first_name], [last_name], [gender], [phone_number], [is_available], [create_date], [role], [dob]) VALUES (4, N'mrc', N'12345', N'mrc@gmail.com', N'haha', N'hehe', 1, N'123456789', 1, NULL, 4, CAST(N'2023-09-12' AS Date))
INSERT [dbo].[Account] ([id], [username], [password], [email], [first_name], [last_name], [gender], [phone_number], [is_available], [create_date], [role], [dob]) VALUES (5, N'coursemanager1', N'123456789', NULL, N'nam', N'hai', 1, NULL, 1, NULL, 2, NULL)
INSERT [dbo].[Account] ([id], [username], [password], [email], [first_name], [last_name], [gender], [phone_number], [is_available], [create_date], [role], [dob]) VALUES (6, N'blogmanager1', N'123456789', NULL, N'li', N'nguyen', 0, NULL, 1, NULL, 3, NULL)
INSERT [dbo].[Account] ([id], [username], [password], [email], [first_name], [last_name], [gender], [phone_number], [is_available], [create_date], [role], [dob]) VALUES (7, N'tranhieu299200', N'anhyeuem123', N'trunghieu299200@gmail.com', N'hieu', N'tran', 1, N'0961544189', 1, CAST(N'2023-10-08' AS Date), 4, NULL)
INSERT [dbo].[Account] ([id], [username], [password], [email], [first_name], [last_name], [gender], [phone_number], [is_available], [create_date], [role], [dob]) VALUES (1000, N'saolaithea', N'hahahihi', NULL, N'nam', N'tran', 1, NULL, 1, CAST(N'2023-10-16' AS Date), 4, CAST(N'2003-12-12' AS Date))
GO
INSERT [dbo].[Blog] ([id], [title], [content], [img], [create_date], [is_available], [author_id]) VALUES (1, N'Cài đặt Visual Studio Code là chạy C++ một cách dễ dàng', N'vscodecpp.jsp', N'blog1.jpg', CAST(N'2023-09-19' AS Date), 1, 3)
INSERT [dbo].[Blog] ([id], [title], [content], [img], [create_date], [is_available], [author_id]) VALUES (2, N'Lập trình game nên bắt đầu từ đâu?', N'laptrinhgame.jsp', N'blog2.jpg', CAST(N'2023-09-20' AS Date), 1, 3)
INSERT [dbo].[Blog] ([id], [title], [content], [img], [create_date], [is_available], [author_id]) VALUES (3, N'Lịch sử phát triển dòng máy Mac của Apple', N'', N'blog3.jpg', CAST(N'2023-09-19' AS Date), 0, 3)
INSERT [dbo].[Blog] ([id], [title], [content], [img], [create_date], [is_available], [author_id]) VALUES (4, N'So sánh chip A17 Pro và A16 Bionic', N'a16vsa17.jsp', N'blog4.jpg', CAST(N'2023-09-21' AS Date), 1, 3)
INSERT [dbo].[Blog] ([id], [title], [content], [img], [create_date], [is_available], [author_id]) VALUES (5, N'Chơi game trên đám mây là gì?', N'cloudgame.jsp', N'blog5.jpg', CAST(N'2023-09-23' AS Date), 1, 3)
GO
INSERT [dbo].[Course] ([id], [name], [img], [decription], [created_by], [number_student], [is_available]) VALUES (1, N'C cho người mới bắt đầu', N'img/C.jpg', N'Khóa học lập trình C cho người mới bắt đầu. Khóa học này sẽ cung cấp những kiến thức cơ bản và là nền tảng để bạn đi xa hơn trên con đường lập trình.', 5, 50, 1)
INSERT [dbo].[Course] ([id], [name], [img], [decription], [created_by], [number_student], [is_available]) VALUES (2, N'C# cơ bản', N'img/Csap.jpg', N'Khóa học này sẽ cung cấp cho bạn kiến thức cơ bản về lập trình C# qua các khái niệm từ cơ bản và các bài tập thực tế bằng ngôn ngữ lập trình C#.', 5, 27, 1)
INSERT [dbo].[Course] ([id], [name], [img], [decription], [created_by], [number_student], [is_available]) VALUES (3, N'C++ cơ bản', N'img/C++begin.jpg', N'Khóa học lập trình C++ cơ bản cho người mới bắt đầu. Khóa học này sẽ cung cấp những kiến thức cơ bản, dễ hiểu nhất về ngôn ngữ lập trình C++.', 5, 10000, 1)
INSERT [dbo].[Course] ([id], [name], [img], [decription], [created_by], [number_student], [is_available]) VALUES (4, N'C++ nâng cao', N'img/C++.jpg', N'Khóa học lập trình C++ nâng cao sẽ giúp bạn hiểu sâu hơn về C++ với một số khái niệm như con trỏ, mảng, cấp phát bộ nhớ động, struct, ...', 5, 300, 1)
INSERT [dbo].[Course] ([id], [name], [img], [decription], [created_by], [number_student], [is_available]) VALUES (5, N'Java cơ bản', N'img/java.jpg', N'Khóa học lập trình Java cơ bản cho người mới bắt đầu, khóa học này sẽ là nền tảng cho khóa Java nâng cao để tiến tới Java Web hay lập trình Android, ...', 5, 69, 1)
INSERT [dbo].[Course] ([id], [name], [img], [decription], [created_by], [number_student], [is_available]) VALUES (6, NULL, N'img/javaoop.jpg', N'Lập trình hướng đối tượng (Object-Oriented-Programming) là phương pháp lập trình dựa trên đối tượng để tìm ra bản chất của vấn đề. ', 5, 173, 1)
INSERT [dbo].[Course] ([id], [name], [img], [decription], [created_by], [number_student], [is_available]) VALUES (7, N'Làm quen với SQL', N'img/sql1.jpg', N'Khóa học này sẽ giúp các lập trình viên nắm được nguyên tắc, cú pháp và cách thức hoạt động của SQL (Structured Query Language).', 5, 333, 1)
GO
INSERT [dbo].[Chapter] ([id], [name], [course_id]) VALUES (1, N'Chương trình C# đầu tiên', 2)
INSERT [dbo].[Chapter] ([id], [name], [course_id]) VALUES (2, N'Biến', 2)
INSERT [dbo].[Chapter] ([id], [name], [course_id]) VALUES (3, N'Các toán tử', 2)
INSERT [dbo].[Chapter] ([id], [name], [course_id]) VALUES (4, N'Câu lệnh điều kiện', 2)
INSERT [dbo].[Chapter] ([id], [name], [course_id]) VALUES (5, N'Vòng lặp', 2)
INSERT [dbo].[Chapter] ([id], [name], [course_id]) VALUES (6, N'Mảng', 2)
INSERT [dbo].[Chapter] ([id], [name], [course_id]) VALUES (7, N'Xử lí xâu', 2)
INSERT [dbo].[Chapter] ([id], [name], [course_id]) VALUES (8, N'Hàm trong C#', 2)
INSERT [dbo].[Chapter] ([id], [name], [course_id]) VALUES (9, N'Chương trình C đầu tiên', 1)
INSERT [dbo].[Chapter] ([id], [name], [course_id]) VALUES (10, N'Hàm đệ quy', 1)
INSERT [dbo].[Chapter] ([id], [name], [course_id]) VALUES (11, N'Biến', 1)
INSERT [dbo].[Chapter] ([id], [name], [course_id]) VALUES (12, N'Đầu vào', 1)
INSERT [dbo].[Chapter] ([id], [name], [course_id]) VALUES (13, N'Cấu trúc rẽ nhánh', 1)
INSERT [dbo].[Chapter] ([id], [name], [course_id]) VALUES (14, N'Vòng lặp', 1)
INSERT [dbo].[Chapter] ([id], [name], [course_id]) VALUES (15, N'Vòng lặp: while và do-while', 1)
INSERT [dbo].[Chapter] ([id], [name], [course_id]) VALUES (16, N'Mảng', 1)
INSERT [dbo].[Chapter] ([id], [name], [course_id]) VALUES (17, N'Chuỗi', 1)
INSERT [dbo].[Chapter] ([id], [name], [course_id]) VALUES (18, N'Hàm', 1)
INSERT [dbo].[Chapter] ([id], [name], [course_id]) VALUES (19, N'Lớp và đối tượng', 6)
INSERT [dbo].[Chapter] ([id], [name], [course_id]) VALUES (20, N'Biến tĩnh, phương thức tĩnh', 6)
INSERT [dbo].[Chapter] ([id], [name], [course_id]) VALUES (21, N'Tính đóng gói', 6)
INSERT [dbo].[Chapter] ([id], [name], [course_id]) VALUES (22, N'Tính kế thừa', 6)
INSERT [dbo].[Chapter] ([id], [name], [course_id]) VALUES (23, N'Tính đa hình và trừu tượng', 6)
INSERT [dbo].[Chapter] ([id], [name], [course_id]) VALUES (24, N'Mối quan hệ giữa các đối tượng', 6)
GO
INSERT [dbo].[Quiz] ([id], [test_id], [question], [answer1], [answer2], [answer3], [answer4], [correctAnswer]) VALUES (1, 1, N'Cú pháp chính xác để hiện lên màn hình "Hello World" trong C', N'printf("Hello World);', N'Console.WriteLine("Hello World");', N'printf("Hello World")', N'print(Hello World)', N'printf("Hello World)')
INSERT [dbo].[Quiz] ([id], [test_id], [question], [answer1], [answer2], [answer3], [answer4], [correctAnswer]) VALUES (2, 1, N'Làm thế nào để ghi chú trong C', N'# đây là ghi chú', N'-- đây là ghi chú', N'* đây là ghi chú', N'// đây là ghi chú', N'// đây là ghi chú')
INSERT [dbo].[Quiz] ([id], [test_id], [question], [answer1], [answer2], [answer3], [answer4], [correctAnswer]) VALUES (3, 1, N'Khi một biến được tạo trong C, một địa chỉ bộ nhớ được gán cho biến.', N'Yes', N'No', NULL, NULL, N'Yes')
INSERT [dbo].[Quiz] ([id], [test_id], [question], [answer1], [answer2], [answer3], [answer4], [correctAnswer]) VALUES (4, 1, N'Trong C, các câu lệnh mã phải kết thúc bằng dấu chấm phẩy (;)', N'Yes', N'No', NULL, NULL, N'Yes')
INSERT [dbo].[Quiz] ([id], [test_id], [question], [answer1], [answer2], [answer3], [answer4], [correctAnswer]) VALUES (5, 1, N'Làm thế nào bạn có thể tạo một biến với giá trị số 5?', N'int num = 5', N'num = 5', N'5 = num', N'num = 5 int', N'int num = 5')
INSERT [dbo].[Quiz] ([id], [test_id], [question], [answer1], [answer2], [answer3], [answer4], [correctAnswer]) VALUES (6, 1, N'Làm thế nào bạn có thể tạo một biến với số thực có giá trị là 2.8?', N'float = 2.8', N'float num = 2.8', N'float num = 2,8', N'val num = 2.8', N'float num = 2.8')
INSERT [dbo].[Quiz] ([id], [test_id], [question], [answer1], [answer2], [answer3], [answer4], [correctAnswer]) VALUES (7, 1, N'Toán tử nào được sử dụng để cộng hai giá trị lại với nhau?', N'+', N'/', N'&', N'add', N'+')
GO
INSERT [dbo].[Test] ([id], [name], [course_id]) VALUES (1, N'C quizes', 1)
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [FK_Blog_Account] FOREIGN KEY([author_id])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [FK_Blog_Account]
GO
ALTER TABLE [dbo].[BlogComment]  WITH CHECK ADD  CONSTRAINT [FK_BlogComment_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[BlogComment] CHECK CONSTRAINT [FK_BlogComment_Account]
GO
ALTER TABLE [dbo].[BlogComment]  WITH CHECK ADD  CONSTRAINT [FK_BlogComment_Blog] FOREIGN KEY([blogId])
REFERENCES [dbo].[Blog] ([id])
GO
ALTER TABLE [dbo].[BlogComment] CHECK CONSTRAINT [FK_BlogComment_Blog]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Account] FOREIGN KEY([created_by])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Account]
GO
ALTER TABLE [dbo].[CourseCategory]  WITH CHECK ADD  CONSTRAINT [FK_CourseCategory_Category] FOREIGN KEY([course_id])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[CourseCategory] CHECK CONSTRAINT [FK_CourseCategory_Category]
GO
ALTER TABLE [dbo].[CourseCategory]  WITH CHECK ADD  CONSTRAINT [FK_CourseCategory_Course] FOREIGN KEY([category_id])
REFERENCES [dbo].[Course] ([id])
GO
ALTER TABLE [dbo].[CourseCategory] CHECK CONSTRAINT [FK_CourseCategory_Course]
GO
ALTER TABLE [dbo].[CourseComment]  WITH CHECK ADD  CONSTRAINT [FK_CourseComment_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[CourseComment] CHECK CONSTRAINT [FK_CourseComment_Account]
GO
ALTER TABLE [dbo].[CourseComment]  WITH CHECK ADD  CONSTRAINT [FK_CourseComment_Course] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([id])
GO
ALTER TABLE [dbo].[CourseComment] CHECK CONSTRAINT [FK_CourseComment_Course]
GO
ALTER TABLE [dbo].[CourseTracking]  WITH CHECK ADD  CONSTRAINT [FK_CourseTracking_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[CourseTracking] CHECK CONSTRAINT [FK_CourseTracking_Account]
GO
ALTER TABLE [dbo].[Chapter]  WITH CHECK ADD  CONSTRAINT [FK_Chapter_Course] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([id])
GO
ALTER TABLE [dbo].[Chapter] CHECK CONSTRAINT [FK_Chapter_Course]
GO
ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [FK_Grade_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [FK_Grade_Account]
GO
ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [FK_Grade_Test] FOREIGN KEY([test_id])
REFERENCES [dbo].[Test] ([id])
GO
ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [FK_Grade_Test]
GO
ALTER TABLE [dbo].[JoinCourse]  WITH CHECK ADD  CONSTRAINT [FK_JoinCourse_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[JoinCourse] CHECK CONSTRAINT [FK_JoinCourse_Account]
GO
ALTER TABLE [dbo].[JoinCourse]  WITH CHECK ADD  CONSTRAINT [FK_JoinCourse_Course] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([id])
GO
ALTER TABLE [dbo].[JoinCourse] CHECK CONSTRAINT [FK_JoinCourse_Course]
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_Chapter] FOREIGN KEY([chapter_id])
REFERENCES [dbo].[Chapter] ([id])
GO
ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_Lesson_Chapter]
GO
ALTER TABLE [dbo].[Quiz]  WITH CHECK ADD  CONSTRAINT [FK_Quiz_Test] FOREIGN KEY([test_id])
REFERENCES [dbo].[Test] ([id])
GO
ALTER TABLE [dbo].[Quiz] CHECK CONSTRAINT [FK_Quiz_Test]
GO

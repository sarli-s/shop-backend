USE [API_SHOP_B]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 18/04/2026 23:06:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CATEGORY_ID] [int] IDENTITY(1,1) NOT NULL,
	[CATEGORY_NAME] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CATEGORY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_item]    Script Date: 18/04/2026 23:06:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_item](
	[ORDER_ITEM_ID] [int] IDENTITY(1,1) NOT NULL,
	[PRODUCT_ID] [int] NOT NULL,
	[ORDER_ID] [int] NOT NULL,
	[QUANTITY] [int] NOT NULL,
 CONSTRAINT [PK_Order_item] PRIMARY KEY CLUSTERED 
(
	[ORDER_ITEM_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 18/04/2026 23:06:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ORDER_ID] [int] IDENTITY(1,1) NOT NULL,
	[ORDER_DATE] [date] NOT NULL,
	[ORDER_SUM] [float] NULL,
	[USER_ID] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[ORDER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 18/04/2026 23:06:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[PRODUCT_ID] [int] IDENTITY(1,1) NOT NULL,
	[PRODUCT_NAME] [varchar](50) NOT NULL,
	[PRICE] [float] NOT NULL,
	[CATEGORY_ID] [int] NOT NULL,
	[DESCRIPTION] [varchar](max) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[PRODUCT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RATING]    Script Date: 18/04/2026 23:06:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RATING](
	[RATING_ID] [int] IDENTITY(1,1) NOT NULL,
	[HOST] [nvarchar](50) NULL,
	[METHOD] [nchar](10) NULL,
	[PATH] [nvarchar](50) NULL,
	[REFERER] [nvarchar](100) NULL,
	[USER_AGENT] [nvarchar](max) NULL,
	[Record_Date] [datetime] NULL,
 CONSTRAINT [PK_RATING] PRIMARY KEY CLUSTERED 
(
	[RATING_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 18/04/2026 23:06:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[userEmail] [varchar](50) NOT NULL,
	[userFirstName] [varchar](50) NULL,
	[userLastName] [varchar](50) NULL,
	[userPassword] [varchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 
GO
INSERT [dbo].[Categories] ([CATEGORY_ID], [CATEGORY_NAME]) VALUES (1, N'לבית ולמטבח')
GO
INSERT [dbo].[Categories] ([CATEGORY_ID], [CATEGORY_NAME]) VALUES (2, N'ליום הולדת')
GO
INSERT [dbo].[Categories] ([CATEGORY_ID], [CATEGORY_NAME]) VALUES (3, N'ציוד משרדי')
GO
INSERT [dbo].[Categories] ([CATEGORY_ID], [CATEGORY_NAME]) VALUES (4, N'טקסטיל')
GO
INSERT [dbo].[Categories] ([CATEGORY_ID], [CATEGORY_NAME]) VALUES (5, N'אופנה')
GO
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_item] ON 
GO
INSERT [dbo].[Order_item] ([ORDER_ITEM_ID], [PRODUCT_ID], [ORDER_ID], [QUANTITY]) VALUES (1, 1, 1, 5)
GO
INSERT [dbo].[Order_item] ([ORDER_ITEM_ID], [PRODUCT_ID], [ORDER_ID], [QUANTITY]) VALUES (2, 2, 2, 3)
GO
INSERT [dbo].[Order_item] ([ORDER_ITEM_ID], [PRODUCT_ID], [ORDER_ID], [QUANTITY]) VALUES (3, 2, 3, 3)
GO
INSERT [dbo].[Order_item] ([ORDER_ITEM_ID], [PRODUCT_ID], [ORDER_ID], [QUANTITY]) VALUES (4, 2, 4, 3)
GO
INSERT [dbo].[Order_item] ([ORDER_ITEM_ID], [PRODUCT_ID], [ORDER_ID], [QUANTITY]) VALUES (5, 5, 4, 1)
GO
INSERT [dbo].[Order_item] ([ORDER_ITEM_ID], [PRODUCT_ID], [ORDER_ID], [QUANTITY]) VALUES (6, 2, 5, 3)
GO
INSERT [dbo].[Order_item] ([ORDER_ITEM_ID], [PRODUCT_ID], [ORDER_ID], [QUANTITY]) VALUES (7, 5, 5, 1)
GO
INSERT [dbo].[Order_item] ([ORDER_ITEM_ID], [PRODUCT_ID], [ORDER_ID], [QUANTITY]) VALUES (8, 2, 6, 15)
GO
INSERT [dbo].[Order_item] ([ORDER_ITEM_ID], [PRODUCT_ID], [ORDER_ID], [QUANTITY]) VALUES (9, 5, 6, 4)
GO
INSERT [dbo].[Order_item] ([ORDER_ITEM_ID], [PRODUCT_ID], [ORDER_ID], [QUANTITY]) VALUES (10, 2, 7, 15)
GO
INSERT [dbo].[Order_item] ([ORDER_ITEM_ID], [PRODUCT_ID], [ORDER_ID], [QUANTITY]) VALUES (11, 5, 7, 4)
GO
INSERT [dbo].[Order_item] ([ORDER_ITEM_ID], [PRODUCT_ID], [ORDER_ID], [QUANTITY]) VALUES (12, 8, 8, 10)
GO
INSERT [dbo].[Order_item] ([ORDER_ITEM_ID], [PRODUCT_ID], [ORDER_ID], [QUANTITY]) VALUES (13, 5, 12, 2)
GO
INSERT [dbo].[Order_item] ([ORDER_ITEM_ID], [PRODUCT_ID], [ORDER_ID], [QUANTITY]) VALUES (14, 4, 13, 1)
GO
SET IDENTITY_INSERT [dbo].[Order_item] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([ORDER_ID], [ORDER_DATE], [ORDER_SUM], [USER_ID]) VALUES (1, CAST(N'2026-02-23' AS Date), 745, 1)
GO
INSERT [dbo].[Orders] ([ORDER_ID], [ORDER_DATE], [ORDER_SUM], [USER_ID]) VALUES (2, CAST(N'2026-02-23' AS Date), 135, 1)
GO
INSERT [dbo].[Orders] ([ORDER_ID], [ORDER_DATE], [ORDER_SUM], [USER_ID]) VALUES (3, CAST(N'2026-02-23' AS Date), 135, 1)
GO
INSERT [dbo].[Orders] ([ORDER_ID], [ORDER_DATE], [ORDER_SUM], [USER_ID]) VALUES (4, CAST(N'2026-02-23' AS Date), 200, 5)
GO
INSERT [dbo].[Orders] ([ORDER_ID], [ORDER_DATE], [ORDER_SUM], [USER_ID]) VALUES (5, CAST(N'2026-02-23' AS Date), 200, 5)
GO
INSERT [dbo].[Orders] ([ORDER_ID], [ORDER_DATE], [ORDER_SUM], [USER_ID]) VALUES (6, CAST(N'2026-02-23' AS Date), 935, 5)
GO
INSERT [dbo].[Orders] ([ORDER_ID], [ORDER_DATE], [ORDER_SUM], [USER_ID]) VALUES (7, CAST(N'2026-02-23' AS Date), 935, 5)
GO
INSERT [dbo].[Orders] ([ORDER_ID], [ORDER_DATE], [ORDER_SUM], [USER_ID]) VALUES (8, CAST(N'2026-02-23' AS Date), 490, 7)
GO
INSERT [dbo].[Orders] ([ORDER_ID], [ORDER_DATE], [ORDER_SUM], [USER_ID]) VALUES (12, CAST(N'2026-03-10' AS Date), 130, 7)
GO
INSERT [dbo].[Orders] ([ORDER_ID], [ORDER_DATE], [ORDER_SUM], [USER_ID]) VALUES (13, CAST(N'2026-03-10' AS Date), 89, 5)
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([PRODUCT_ID], [PRODUCT_NAME], [PRICE], [CATEGORY_ID], [DESCRIPTION]) VALUES (1, N'קרש חיתוך מעץ אלון יוקרתי', 149, 1, N'קרש חיתוך עמיד ואיכותי העשוי מעץ אלון מלא, עליו ניתן לחרוט בלייזר שמות משפחה, מתכונים נוסטלגיים או הקדשות אישיות. זהו פתרון מושלם להגשה מרשימה של גבינות ואירוח, המשלב פרקטיקה עם נגיעה עיצובית חמה במטבח')
GO
INSERT [dbo].[Products] ([PRODUCT_ID], [PRODUCT_NAME], [PRICE], [CATEGORY_ID], [DESCRIPTION]) VALUES (2, N'סט תחתיות לכוסות משעם', 45, 1, N'סט של 6 תחתיות טבעיות המונעות סימני רטיבות על השולחן, עם אפשרות להדפסת משפטי השראה או שמות האורחים על כל תחתית. עיצוב מינימליסטי שמוסיף אופי לכל פינת אוכל או סלון')
GO
INSERT [dbo].[Products] ([PRODUCT_ID], [PRODUCT_NAME], [PRICE], [CATEGORY_ID], [DESCRIPTION]) VALUES (3, N'ספל מאג קרמי עם כיתוב מוזהב', 39, 1, N'ספל קפה קלאסי בגימור מט, עליו ניתן להדפיס שם או משפט בוקר טוב באותיות זהב בולטות ויוקרתיות. המתנה האידיאלית למי שרוצה לפתוח את היום עם חיוך ומסר אישי על השולחן')
GO
INSERT [dbo].[Products] ([PRODUCT_ID], [PRODUCT_NAME], [PRICE], [CATEGORY_ID], [DESCRIPTION]) VALUES (4, N'שטיח כניסה לבית בעיצוב אישי', 89, 1, N'שטיח "ברוכים הבאים" עשוי סיבי קוקוס איכותיים, המאפשר להוסיף את שם המשפחה או משפט מקורי שמקבל את פני האורחים. השטיח עמיד בתנאי חוץ ושומר על ניקיון הבית בסטייל ייחודי')
GO
INSERT [dbo].[Products] ([PRODUCT_ID], [PRODUCT_NAME], [PRICE], [CATEGORY_ID], [DESCRIPTION]) VALUES (5, N'קופסת עץ ליין עם חריטה', 65, 2, N'קופסת אחסון מהודרת לבקבוק יין, הכוללת חריטה של תאריך יום ההולדת וברכה אישית מעומק הלב. זוהי דרך יוקרתית להפוך מתנה סטנדרטית למזכרת שתישאר לשנים רבות')
GO
INSERT [dbo].[Products] ([PRODUCT_ID], [PRODUCT_NAME], [PRICE], [CATEGORY_ID], [DESCRIPTION]) VALUES (6, N'בלון גז קריסטלי עם כיתוב', 55, 2, N'בלון שקוף וגדול הממולא בקונפטי צבעוני, ועליו מודפס שם חתן או כלה השמחה בכתב יד מעוצב. פתרון דקורטיבי ומרהיב שמוסיף אווירה חגיגית לכל מסיבת יום הולדת')
GO
INSERT [dbo].[Products] ([PRODUCT_ID], [PRODUCT_NAME], [PRICE], [CATEGORY_ID], [DESCRIPTION]) VALUES (7, N'פאזל עץ "סיבות למה אני אוהב אותך"', 110, 2, N'פאזל ייחודי שבו על כל חלק נחטרת סיבה אחרת או זיכרון משותף, ליצירת חוויה מרגשת של הרכבה וגילוי. מתנה אישית מאוד שמתאימה לימי הולדת עגולים')
GO
INSERT [dbo].[Products] ([PRODUCT_ID], [PRODUCT_NAME], [PRICE], [CATEGORY_ID], [DESCRIPTION]) VALUES (8, N'נר ריחני בכלי זכוכית עם הקדשה', 49, 2, N'נר בניחוח וניל או לבנדר המגיע בתוך כלי זכוכית אלגנטי, עם מדבקת מעצבים הכוללת את שם בעל השמחה וברכה קצרה. מוצר שיוצר אווירה נעימה וריח נפלא בכל חדר')
GO
INSERT [dbo].[Products] ([PRODUCT_ID], [PRODUCT_NAME], [PRICE], [CATEGORY_ID], [DESCRIPTION]) VALUES (9, N'עט מתכת יוקרתי עם חריטת שם', 79, 3, N'עט נובע או עט כדורי בגימור כרום, הכולל חריטת לייזר מדויקת של שם המשתמש על גוף העט. מתנה פרקטית ומכובדת למנהלים, סטודנטים או לכל מי שמעריך כלי כתיבה איכותיים')
GO
INSERT [dbo].[Products] ([PRODUCT_ID], [PRODUCT_NAME], [PRICE], [CATEGORY_ID], [DESCRIPTION]) VALUES (10, N'מחברת פרימיום עם כריכה קשה', 59, 3, N'מחברת דפים שורות עם כריכת דמוי עור איכותית, עליה ניתן להטביע שם או משפט מוטיבציה. מושלמת לרישום פרוטוקולים, רעיונות יצירתיים או לניהול משימות יומי')
GO
INSERT [dbo].[Products] ([PRODUCT_ID], [PRODUCT_NAME], [PRICE], [CATEGORY_ID], [DESCRIPTION]) VALUES (11, N'משטח לעכבר (Mouse Pad) ממותג', 35, 3, N'משטח ארגונומי רך המאפשר עבודה חלקה עם העכבר, עליו ניתן להדפיס את התפקיד שלכם או משפט מצחיק למשרד. משדרג את נראות שולחן העבודה ומוסיף צבע לסביבת העבודה')
GO
INSERT [dbo].[Products] ([PRODUCT_ID], [PRODUCT_NAME], [PRICE], [CATEGORY_ID], [DESCRIPTION]) VALUES (12, N'מעמד שולחני לטלפון מעץ', 45, 3, N'סטנד מעוצב לטלפון הנייד המאפשר צפייה נוחה במסך תוך כדי עבודה, עם חריטה של ראשי תיבות או שם החברה. מוצר המשלב סדר על השולחן עם נגיעה אישית חמימה')
GO
INSERT [dbo].[Products] ([PRODUCT_ID], [PRODUCT_NAME], [PRICE], [CATEGORY_ID], [DESCRIPTION]) VALUES (13, N'מגבת גוף עם רקמה אישית', 75, 4, N'מגבת רחצה גדולה ומפנקת עשויה 100% כותנה איכותית, הכוללת רקמת שם בולטת במגוון צבעים לבחירה. מתנה נהדרת למתגייסים, למטיילים או כפינוק אישי לבית')
GO
INSERT [dbo].[Products] ([PRODUCT_ID], [PRODUCT_NAME], [PRICE], [CATEGORY_ID], [DESCRIPTION]) VALUES (14, N'ציפית לכרית עם משפט "לילה טוב"', 40, 4, N'ציפית רכה ונעימה למגע עליה ניתן להדפיס הקדשה אישית או שם, כדי להפוך את השינה לנעימה יותר. דרך יצירתית להוסיף חום ואישיות לחדר השינה')
GO
INSERT [dbo].[Products] ([PRODUCT_ID], [PRODUCT_NAME], [PRICE], [CATEGORY_ID], [DESCRIPTION]) VALUES (15, N'חלוק רחצה מפנק עם רקמה', 180, 4, N'חלוק מגבת רך וסופג המעניק תחושת ספא ביתית, עם רקמת שם או ראשי תיבות על גב החלוק או על הכיס')
GO
INSERT [dbo].[Products] ([PRODUCT_ID], [PRODUCT_NAME], [PRICE], [CATEGORY_ID], [DESCRIPTION]) VALUES (17, N'סינר מטבח בעיצוב אישי', 65, 4, N'סינר בד עמיד המגן על הבגדים בזמן הבישול, עם הדפסת טקסט כמו "השף של הבית" או "המטבח של אמא". מתנה משעשעת ושימושית לכל חובב קוליסינר בד עמיד המגן על הבגדים בזמן הבישול, עם הדפסת טקסט כמו "השף של הבית" או "המטבח של אמא". מתנה משעשעת ושימושית לכל חובב קולינריהנריה')
GO
INSERT [dbo].[Products] ([PRODUCT_ID], [PRODUCT_NAME], [PRICE], [CATEGORY_ID], [DESCRIPTION]) VALUES (18, N'חולצת T-shirt עם כיתוב מקורי', 55, 5, N'חולצת כותנה בגזרה נוחה עליה ניתן להדפיס כל טקסט שעולה בדעתכם, מציטוטים של שירים ועד בדיחות פנימיות. הבסיס המושלם ליצירת אמירה אופנתית אישית וייחודית')
GO
INSERT [dbo].[Products] ([PRODUCT_ID], [PRODUCT_NAME], [PRICE], [CATEGORY_ID], [DESCRIPTION]) VALUES (19, N'כובע מצחייה (Cap) עם רקמה', 50, 5, N'כובע איכותי עם סגירה מתכווננת, המאפשר רקמת שם או מילה קצרה בחזית הכובע. אקססורי מושלם לימי הקיץ שמוסיף סטייל אישי לכל הופעה יומיומית')
GO
INSERT [dbo].[Products] ([PRODUCT_ID], [PRODUCT_NAME], [PRICE], [CATEGORY_ID], [DESCRIPTION]) VALUES (20, N'ארנק עור עם חריטה פנימית', 130, 5, N'ארנק גברים קלאסי מעור אמיתי, המאפשר לחרוט הקדשה אישית נסתרת בחלקו הפנימי. מתנה אינטימית ומרגשת שזוכים לראות בכל פעם שפותחים את הארנק')
GO
INSERT [dbo].[Products] ([PRODUCT_ID], [PRODUCT_NAME], [PRICE], [CATEGORY_ID], [DESCRIPTION]) VALUES (21, N'תיק בד (Tote Bag) ממותג', 30, 5, N'תיק בד רב-פעמי וידידותי לסביבה, עליו ניתן להדפיס משפטים מעוררי השראה או שמות מעוצבים. פתרון אופנתי ונוח לנשיאת קניות, ספרים או ציוד לים')
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[RATING] ON 
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (1, N'localhost:44324', N'GET       ', N'/home.html', NULL, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-22T18:14:12.857' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (2, N'localhost:44324', N'GET       ', N'/openapi/v1.json', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-22T18:14:12.857' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (3, N'localhost:44324', N'GET       ', N'/openapi/v1.json', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-22T19:43:05.207' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (4, N'localhost:44324', N'GET       ', N'/home.html', NULL, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-22T19:43:05.207' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (5, N'localhost:44324', N'GET       ', N'/home.html', NULL, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-23T00:34:21.827' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (6, N'localhost:44324', N'GET       ', N'/openapi/v1.json', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-23T00:34:21.827' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (7, N'localhost:44324', N'GET       ', N'/.well-known/appspecific/com.chrome.devtools.json', NULL, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-23T00:34:25.243' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (8, N'localhost:44324', N'GET       ', N'/home.html', NULL, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-23T01:05:04.500' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (9, N'localhost:44324', N'GET       ', N'/home.js', N'https://localhost:44324/home.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-23T01:05:06.257' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (10, N'localhost:44324', N'GET       ', N'/favicon.ico', N'https://localhost:44324/home.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-23T01:05:06.500' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (11, N'localhost:44324', N'GET       ', N'/openapi/v1.json', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-23T01:05:26.633' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (12, N'localhost:44324', N'GET       ', N'/api/Categories', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-23T01:05:34.950' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (13, N'localhost:44324', N'POST      ', N'/api/Password', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-23T01:06:02.143' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (14, N'localhost:44324', N'GET       ', N'/api/Products', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-23T01:06:31.920' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (15, N'localhost:44324', N'GET       ', N'/api/Products', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-23T01:06:48.967' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (16, N'localhost:44324', N'GET       ', N'/api/Products', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-23T01:07:02.670' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (17, N'localhost:44324', N'GET       ', N'/api/Products', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-23T01:07:16.713' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (18, N'localhost:44324', N'GET       ', N'/api/Products', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-23T01:07:29.227' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (19, N'localhost:44324', N'GET       ', N'/openapi/v1.json', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-23T01:12:06.957' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (20, N'localhost:44324', N'GET       ', N'/api/Products', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-23T01:12:23.263' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (21, N'localhost:44324', N'GET       ', N'/api/Users/4', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-23T01:14:06.880' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (22, N'localhost:44324', N'GET       ', N'/openapi/v1.json', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-23T02:12:51.517' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (23, N'localhost:44324', N'POST      ', N'/api/Orders', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-23T02:13:28.610' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (24, N'localhost:44324', N'GET       ', N'/.well-known/appspecific/com.chrome.devtools.json', NULL, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-23T02:15:08.830' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (25, N'localhost:44324', N'POST      ', N'/api/Orders', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-23T02:15:29.073' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (26, N'localhost:44324', N'POST      ', N'/api/Orders', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-23T02:16:56.913' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (27, N'localhost:44324', N'POST      ', N'/api/Orders', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-23T02:25:45.963' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (28, N'localhost:44324', N'POST      ', N'/api/Orders', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-23T02:26:11.127' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (29, N'localhost:44324', N'POST      ', N'/api/Orders', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-23T02:27:46.323' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (30, N'localhost:44324', N'POST      ', N'/api/Orders', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-23T02:29:10.327' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (31, N'localhost:44324', N'GET       ', N'/openapi/v1.json', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-23T02:29:57.660' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (32, N'localhost:44324', N'GET       ', N'/.well-known/appspecific/com.chrome.devtools.json', NULL, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-23T02:29:57.660' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (33, N'localhost:44324', N'POST      ', N'/api/Orders', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-23T02:30:30.333' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (34, N'localhost:44324', N'GET       ', N'/favicon.ico', N'https://localhost:44324/home.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-23T14:11:29.720' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (35, N'localhost:44324', N'GET       ', N'/openapi/v1.json', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-23T14:11:33.403' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (36, N'localhost:44324', N'GET       ', N'/api/Categories', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-02-23T14:11:50.990' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (37, N'localhost:44324', N'GET       ', N'/home.html', NULL, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T16:59:02.610' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (38, N'localhost:44324', N'GET       ', N'/openapi/v1.json', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T16:59:03.013' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (39, N'localhost:44324', N'GET       ', N'/api/Categories', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:00:27.740' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (40, N'localhost:44324', N'GET       ', N'/api/Orders/1', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:00:37.613' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (41, N'localhost:44324', N'POST      ', N'/api/Orders', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:00:47.670' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (42, N'localhost:44324', N'GET       ', N'/api/Orders/1', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:01:46.777' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (43, N'localhost:44324', N'POST      ', N'/api/Orders', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:10:23.390' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (44, N'localhost:44324', N'POST      ', N'/api/Orders', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:11:13.113' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (45, N'localhost:44324', N'POST      ', N'/api/Orders', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:11:25.873' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (46, N'localhost:44324', N'POST      ', N'/api/Password', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:12:04.653' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (47, N'localhost:44324', N'POST      ', N'/api/Password', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:12:28.617' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (48, N'localhost:44324', N'POST      ', N'/api/Password', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:12:47.320' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (49, N'localhost:44324', N'GET       ', N'/api/Products', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:17:18.967' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (50, N'localhost:44324', N'GET       ', N'/api/Products', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:17:43.343' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (51, N'localhost:44324', N'GET       ', N'/api/Products', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:17:48.550' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (52, N'localhost:44324', N'GET       ', N'/api/Products', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:17:57.997' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (53, N'localhost:44324', N'GET       ', N'/openapi/v1.json', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:18:52.517' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (54, N'localhost:44324', N'GET       ', N'/home.html', NULL, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:18:52.517' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (55, N'localhost:44324', N'GET       ', N'/api/Products', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:19:02.147' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (56, N'localhost:44324', N'GET       ', N'/api/Products', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:25:57.993' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (57, N'localhost:44324', N'GET       ', N'/api/Products', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:26:10.473' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (58, N'localhost:44324', N'GET       ', N'/api/Products', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:26:30.097' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (59, N'localhost:44324', N'GET       ', N'/api/Products', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:27:09.273' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (60, N'localhost:44324', N'GET       ', N'/api/Products', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:27:32.393' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (61, N'localhost:44324', N'GET       ', N'/api/Products', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:27:55.387' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (62, N'localhost:44324', N'GET       ', N'/home.html', NULL, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:30:45.710' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (63, N'localhost:44324', N'GET       ', N'/openapi/v1.json', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:30:45.710' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (64, N'localhost:44324', N'GET       ', N'/api/Products', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:31:48.517' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (65, N'localhost:44324', N'GET       ', N'/api/Users/1', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:32:08.227' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (66, N'localhost:44324', N'PUT       ', N'/api/Users/1', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:32:58.060' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (67, N'localhost:44324', N'PUT       ', N'/api/Users/1', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:33:16.247' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (68, N'localhost:44324', N'GET       ', N'/home.html', NULL, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:35:40.513' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (69, N'localhost:44324', N'GET       ', N'/home.js', N'https://localhost:44324/home.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:35:42.603' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (70, N'localhost:44324', N'GET       ', N'/favicon.ico', N'https://localhost:44324/home.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:35:42.897' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (71, N'localhost:44324', N'GET       ', N'/openapi/v1.json', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:35:44.773' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (72, N'localhost:44324', N'PUT       ', N'/api/Users/1', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:37:09.053' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (73, N'localhost:44324', N'GET       ', N'/openapi/v1.json', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:53:33.273' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (74, N'localhost:44324', N'GET       ', N'/api/Users/1', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:53:46.700' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (75, N'localhost:44324', N'PUT       ', N'/api/Users/1', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:54:18.573' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (76, N'localhost:44324', N'POST      ', N'/api/Users/login', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:54:53.120' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (77, N'localhost:44324', N'POST      ', N'/api/Users', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T17:55:33.690' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (78, N'localhost:44324', N'GET       ', N'/openapi/v1.json', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T18:01:02.910' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (79, N'localhost:44324', N'GET       ', N'/openapi/v1.json', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T18:01:21.260' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (80, N'localhost:44324', N'GET       ', N'/openapi/v1.json', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T19:25:23.843' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (81, N'localhost:44324', N'GET       ', N'/api/Categories', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T19:27:19.320' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (82, N'localhost:44324', N'GET       ', N'/api/Orders/1', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T19:27:29.243' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (83, N'localhost:44324', N'POST      ', N'/api/Orders', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T19:27:53.653' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (84, N'localhost:44324', N'POST      ', N'/api/Password', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T19:28:06.067' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (85, N'localhost:44324', N'GET       ', N'/api/Products', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T19:28:15.207' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (86, N'localhost:44324', N'GET       ', N'/api/Users/1', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T19:28:26.877' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (87, N'localhost:44324', N'PUT       ', N'/api/Users/1', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T19:28:50.393' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (88, N'localhost:44324', N'GET       ', N'/api/Users/1', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T19:29:00.903' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (89, N'localhost:44324', N'GET       ', N'/openapi/v1.json', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T20:20:18.163' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (90, N'localhost:44324', N'GET       ', N'/api/Categories', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', CAST(N'2026-03-10T20:20:25.780' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (91, N'localhost:44324', N'GET       ', N'/home.html', NULL, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', CAST(N'2026-04-18T22:51:25.833' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (92, N'localhost:44324', N'GET       ', N'/home.js', N'https://localhost:44324/home.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', CAST(N'2026-04-18T22:51:28.907' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (93, N'localhost:44324', N'GET       ', N'/favicon.ico', N'https://localhost:44324/home.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', CAST(N'2026-04-18T22:51:29.287' AS DateTime))
GO
INSERT [dbo].[RATING] ([RATING_ID], [HOST], [METHOD], [PATH], [REFERER], [USER_AGENT], [Record_Date]) VALUES (94, N'localhost:44324', N'GET       ', N'/openapi/v1.json', N'https://localhost:44324/swagger/index.html', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', CAST(N'2026-04-18T22:51:35.693' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[RATING] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 
GO
INSERT [dbo].[User] ([userId], [userEmail], [userFirstName], [userLastName], [userPassword]) VALUES (1, N'a@a.a', N'aa', N'AA', N'123DKY^($Ghf$')
GO
INSERT [dbo].[User] ([userId], [userEmail], [userFirstName], [userLastName], [userPassword]) VALUES (2, N'yossi.levi@example.com', N'Yossi', N'Levi', N'K9#bV2!mP98qZ')
GO
INSERT [dbo].[User] ([userId], [userEmail], [userFirstName], [userLastName], [userPassword]) VALUES (3, N'sara.cohen@example.com', N'Sara', N'Cohen', N'Th7@nB$uR41xW')
GO
INSERT [dbo].[User] ([userId], [userEmail], [userFirstName], [userLastName], [userPassword]) VALUES (4, N'moshe.ab@example.com', N'Moshe', N'Abraham', N'G2*fD9&sL05vK')
GO
INSERT [dbo].[User] ([userId], [userEmail], [userFirstName], [userLastName], [userPassword]) VALUES (5, N'rivka.m@example.com', N'Rivka', N'Mizrahi', N'P5^hJ1(tN33yQ')
GO
INSERT [dbo].[User] ([userId], [userEmail], [userFirstName], [userLastName], [userPassword]) VALUES (6, N'david.peretz@example.com', N'David', N'Peretz', N'X8)kM4_zB62pL')
GO
INSERT [dbo].[User] ([userId], [userEmail], [userFirstName], [userLastName], [userPassword]) VALUES (7, N'leah.gold@example.com', N'Leah', N'Goldberg', N'W1!qA7*eS09cN')
GO
INSERT [dbo].[User] ([userId], [userEmail], [userFirstName], [userLastName], [userPassword]) VALUES (8, N'avraham.h@example.com', N'Avraham', N'Halevi', N'M4#vG2%dF81rZ')
GO
INSERT [dbo].[User] ([userId], [userEmail], [userFirstName], [userLastName], [userPassword]) VALUES (9, N'chana.s@example.com', N'Chana', N'Shapiro', N'L9&sK3@jH54xT')
GO
INSERT [dbo].[User] ([userId], [userEmail], [userFirstName], [userLastName], [userPassword]) VALUES (10, N'itshak.f@example.com', N'Itshak', N'Friedman', N'B0(nP6^tV17mK')
GO
INSERT [dbo].[User] ([userId], [userEmail], [userFirstName], [userLastName], [userPassword]) VALUES (11, N'rachel.d@example.com', N'Rachel', N'Dayan', N'Q3$fR5*wL92vY')
GO
INSERT [dbo].[User] ([userId], [userEmail], [userFirstName], [userLastName], [userPassword]) VALUES (12, N's@s.s', N'ss', N'SS', N'123!#%SFGJghjk')
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Order_item]  WITH CHECK ADD  CONSTRAINT [FK_Order_item_Orders] FOREIGN KEY([ORDER_ID])
REFERENCES [dbo].[Orders] ([ORDER_ID])
GO
ALTER TABLE [dbo].[Order_item] CHECK CONSTRAINT [FK_Order_item_Orders]
GO
ALTER TABLE [dbo].[Order_item]  WITH CHECK ADD  CONSTRAINT [FK_Order_item_Products] FOREIGN KEY([PRODUCT_ID])
REFERENCES [dbo].[Products] ([PRODUCT_ID])
GO
ALTER TABLE [dbo].[Order_item] CHECK CONSTRAINT [FK_Order_item_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_User] FOREIGN KEY([USER_ID])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_User]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CATEGORY_ID])
REFERENCES [dbo].[Categories] ([CATEGORY_ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO

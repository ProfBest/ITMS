USE [ITMSDB]
GO
SET IDENTITY_INSERT [dbo].[Employer] ON 

INSERT [dbo].[Employer] ([Employer_ID], [EMP_EmployerName], [EMP_Dept], [EMP_Supervisor], [EMP_Title], [EMP_Duties], [EMP_StreetAdd], [EMP_City], [EMP_State], [EMP_Zip], [EMP_Phone]) VALUES (1, N'Sunrise', N'IT', N'Roger Razim', N'Programmer', N'Debuger', N'76 Stone St', N'New York', N'NY', N'11368', N'917-487-5876')
INSERT [dbo].[Employer] ([Employer_ID], [EMP_EmployerName], [EMP_Dept], [EMP_Supervisor], [EMP_Title], [EMP_Duties], [EMP_StreetAdd], [EMP_City], [EMP_State], [EMP_Zip], [EMP_Phone]) VALUES (2, N'Sunrise', N'IT', N'Roger Razim', N'Programmer', N'Debuger', N'76 Stone St', N'New York', N'NY', N'11368', N'917-487-5876')
INSERT [dbo].[Employer] ([Employer_ID], [EMP_EmployerName], [EMP_Dept], [EMP_Supervisor], [EMP_Title], [EMP_Duties], [EMP_StreetAdd], [EMP_City], [EMP_State], [EMP_Zip], [EMP_Phone]) VALUES (3, N'Sunrise', N'IT', N'Roger Razim', N'Programmer', N'Debuger', N'76 Stone St', N'New York', N'NY', N'11368', N'917-487-5876')
SET IDENTITY_INSERT [dbo].[Employer] OFF
INSERT [dbo].[Student] ([Student_ID], [S_FName], [S_LName], [S_SSN], [S_GPA], [S_Graduation], [S_StreetAdd], [S_City], [S_State], [S_Zip], [S_PhoneDay], [S_PhoneEve], [S_PhoneCell], [S_Email]) VALUES (N'89498194', N'Joe', N'Smith', N'1234', CAST(3.9 AS Decimal(3, 1)), CAST(0x26350B00 AS Date), N'333 Flatbush Avenue', N'Brooklyn', N'NY', N'11201', N'7182605555', N'7182605551', N'9172605552', N'jsmith@nyctc.com')
INSERT [dbo].[Student] ([Student_ID], [S_FName], [S_LName], [S_SSN], [S_GPA], [S_Graduation], [S_StreetAdd], [S_City], [S_State], [S_Zip], [S_PhoneDay], [S_PhoneEve], [S_PhoneCell], [S_Email]) VALUES (N'89498195', N'Joe', N'Smith', N'1234', CAST(3.9 AS Decimal(3, 1)), CAST(0x26350B00 AS Date), N'333 Flatbush Avenue', N'Brooklyn', N'NY', N'11201', N'7182605555', N'7182605551', N'9172605552', N'jsmith@nyctc.com')
INSERT [dbo].[Student] ([Student_ID], [S_FName], [S_LName], [S_SSN], [S_GPA], [S_Graduation], [S_StreetAdd], [S_City], [S_State], [S_Zip], [S_PhoneDay], [S_PhoneEve], [S_PhoneCell], [S_Email]) VALUES (N'89498196', N'Joe', N'Smith', N'1234', CAST(3.9 AS Decimal(3, 1)), CAST(0x26350B00 AS Date), N'333 Flatbush Avenue', N'Brooklyn', N'NY', N'11201', N'7182605555', N'7182605551', N'9172605552', N'jsmith@nyctc.com')
SET IDENTITY_INSERT [dbo].[St_Emp] ON 

INSERT [dbo].[St_Emp] ([St_Emp_ID], [Student_ID], [Employer_ID]) VALUES (1, N'89498194', 1)
INSERT [dbo].[St_Emp] ([St_Emp_ID], [Student_ID], [Employer_ID]) VALUES (2, N'89498195', 2)
INSERT [dbo].[St_Emp] ([St_Emp_ID], [Student_ID], [Employer_ID]) VALUES (3, N'89498196', 3)
SET IDENTITY_INSERT [dbo].[St_Emp] OFF
SET IDENTITY_INSERT [dbo].[Internship_Req] ON 

INSERT [dbo].[Internship_Req] ([InternReq_ID], [Student_ID], [INR_Semes], [INR_CST], [INR_License], [INR_Car], [INR_NJ], [INR_Westchester], [INR_Resident], [INR_Limit], [INR_Limit_Desc]) VALUES (2, N'89498194', N'Fall 2013', N'Project', 1, 1, 1, 1, N'PermanentResident', 1, N'Explanation goes here')
INSERT [dbo].[Internship_Req] ([InternReq_ID], [Student_ID], [INR_Semes], [INR_CST], [INR_License], [INR_Car], [INR_NJ], [INR_Westchester], [INR_Resident], [INR_Limit], [INR_Limit_Desc]) VALUES (3, N'89498195', N'Fall 2013', N'Project', 1, 1, 1, 1, N'PermanentResident', 1, N'Explanation goes here')
INSERT [dbo].[Internship_Req] ([InternReq_ID], [Student_ID], [INR_Semes], [INR_CST], [INR_License], [INR_Car], [INR_NJ], [INR_Westchester], [INR_Resident], [INR_Limit], [INR_Limit_Desc]) VALUES (4, N'89498196', N'Fall 2013', N'Project', 1, 1, 1, 1, N'PermanentResident', 1, N'Explanation goes here')
SET IDENTITY_INSERT [dbo].[Internship_Req] OFF
SET IDENTITY_INSERT [dbo].[MODTaken] ON 

INSERT [dbo].[MODTaken] ([MODTaken_ID], [MOD_Name]) VALUES (1, N'Programming')
INSERT [dbo].[MODTaken] ([MODTaken_ID], [MOD_Name]) VALUES (2, N'Networking')
INSERT [dbo].[MODTaken] ([MODTaken_ID], [MOD_Name]) VALUES (3, N'Web Design')
INSERT [dbo].[MODTaken] ([MODTaken_ID], [MOD_Name]) VALUES (4, N'Database')
INSERT [dbo].[MODTaken] ([MODTaken_ID], [MOD_Name]) VALUES (5, N'Security')
SET IDENTITY_INSERT [dbo].[MODTaken] OFF
SET IDENTITY_INSERT [dbo].[INR_ModTaken] ON 

INSERT [dbo].[INR_ModTaken] ([INR_ModTaken_ID], [InternReq_ID], [ModTaken_ID]) VALUES (4, 2, 1)
INSERT [dbo].[INR_ModTaken] ([INR_ModTaken_ID], [InternReq_ID], [ModTaken_ID]) VALUES (5, 2, 2)
INSERT [dbo].[INR_ModTaken] ([INR_ModTaken_ID], [InternReq_ID], [ModTaken_ID]) VALUES (6, 2, 3)
INSERT [dbo].[INR_ModTaken] ([INR_ModTaken_ID], [InternReq_ID], [ModTaken_ID]) VALUES (7, 3, 1)
INSERT [dbo].[INR_ModTaken] ([INR_ModTaken_ID], [InternReq_ID], [ModTaken_ID]) VALUES (8, 3, 2)
INSERT [dbo].[INR_ModTaken] ([INR_ModTaken_ID], [InternReq_ID], [ModTaken_ID]) VALUES (9, 3, 3)
INSERT [dbo].[INR_ModTaken] ([INR_ModTaken_ID], [InternReq_ID], [ModTaken_ID]) VALUES (10, 4, 1)
INSERT [dbo].[INR_ModTaken] ([INR_ModTaken_ID], [InternReq_ID], [ModTaken_ID]) VALUES (11, 4, 2)
INSERT [dbo].[INR_ModTaken] ([INR_ModTaken_ID], [InternReq_ID], [ModTaken_ID]) VALUES (12, 4, 3)
SET IDENTITY_INSERT [dbo].[INR_ModTaken] OFF
SET IDENTITY_INSERT [dbo].[Preference] ON 

INSERT [dbo].[Preference] ([Pref_ID], [Pref_Desc]) VALUES (1, N'Programming')
INSERT [dbo].[Preference] ([Pref_ID], [Pref_Desc]) VALUES (2, N'Networking')
INSERT [dbo].[Preference] ([Pref_ID], [Pref_Desc]) VALUES (3, N'Web Design')
INSERT [dbo].[Preference] ([Pref_ID], [Pref_Desc]) VALUES (4, N'Database')
INSERT [dbo].[Preference] ([Pref_ID], [Pref_Desc]) VALUES (5, N'Security')
SET IDENTITY_INSERT [dbo].[Preference] OFF
SET IDENTITY_INSERT [dbo].[INR_Pref] ON 

INSERT [dbo].[INR_Pref] ([INR_Pref_ID], [InternReq_ID], [Pref_ID], [INR_Pref_Rank]) VALUES (1, 2, 1, 1)
INSERT [dbo].[INR_Pref] ([INR_Pref_ID], [InternReq_ID], [Pref_ID], [INR_Pref_Rank]) VALUES (2, 2, 2, 5)
INSERT [dbo].[INR_Pref] ([INR_Pref_ID], [InternReq_ID], [Pref_ID], [INR_Pref_Rank]) VALUES (3, 2, 3, 3)
INSERT [dbo].[INR_Pref] ([INR_Pref_ID], [InternReq_ID], [Pref_ID], [INR_Pref_Rank]) VALUES (4, 2, 4, 4)
INSERT [dbo].[INR_Pref] ([INR_Pref_ID], [InternReq_ID], [Pref_ID], [INR_Pref_Rank]) VALUES (5, 3, 1, 1)
INSERT [dbo].[INR_Pref] ([INR_Pref_ID], [InternReq_ID], [Pref_ID], [INR_Pref_Rank]) VALUES (6, 3, 2, 5)
INSERT [dbo].[INR_Pref] ([INR_Pref_ID], [InternReq_ID], [Pref_ID], [INR_Pref_Rank]) VALUES (7, 3, 3, 3)
INSERT [dbo].[INR_Pref] ([INR_Pref_ID], [InternReq_ID], [Pref_ID], [INR_Pref_Rank]) VALUES (8, 3, 4, 4)
INSERT [dbo].[INR_Pref] ([INR_Pref_ID], [InternReq_ID], [Pref_ID], [INR_Pref_Rank]) VALUES (9, 4, 1, 1)
INSERT [dbo].[INR_Pref] ([INR_Pref_ID], [InternReq_ID], [Pref_ID], [INR_Pref_Rank]) VALUES (10, 4, 2, 5)
INSERT [dbo].[INR_Pref] ([INR_Pref_ID], [InternReq_ID], [Pref_ID], [INR_Pref_Rank]) VALUES (11, 4, 3, 3)
INSERT [dbo].[INR_Pref] ([INR_Pref_ID], [InternReq_ID], [Pref_ID], [INR_Pref_Rank]) VALUES (12, 4, 4, 4)
SET IDENTITY_INSERT [dbo].[INR_Pref] OFF
SET IDENTITY_INSERT [dbo].[Res_Transcript] ON 

INSERT [dbo].[Res_Transcript] ([RT_ID], [RT_Resume], [RT_Transcript]) VALUES (2, N'\\somewhere\Resume', N'\\somewhere\Transcript')
INSERT [dbo].[Res_Transcript] ([RT_ID], [RT_Resume], [RT_Transcript]) VALUES (3, N'\\somewhere\Resume', N'\\somewhere\Transcript')
INSERT [dbo].[Res_Transcript] ([RT_ID], [RT_Resume], [RT_Transcript]) VALUES (4, N'\\somewhere\Resume', N'\\somewhere\Transcript')
SET IDENTITY_INSERT [dbo].[Res_Transcript] OFF
SET IDENTITY_INSERT [dbo].[INR_RT] ON 

INSERT [dbo].[INR_RT] ([INR_RT_ID], [RT_ID], [InternReq_ID]) VALUES (2, 2, 2)
INSERT [dbo].[INR_RT] ([INR_RT_ID], [RT_ID], [InternReq_ID]) VALUES (3, 3, 3)
INSERT [dbo].[INR_RT] ([INR_RT_ID], [RT_ID], [InternReq_ID]) VALUES (4, 4, 4)
SET IDENTITY_INSERT [dbo].[INR_RT] OFF
SET IDENTITY_INSERT [dbo].[Position] ON 

INSERT [dbo].[Position] ([PO_ID], [PO_Title], [PO_Desc], [PO_Type], [PO_Skills], [PO_Hours], [PO_Days]) VALUES (1, N'IT Intern', N'Help desk', N'Volunteer', N'AAA', CAST(32.00 AS Decimal(4, 2)), CAST(5.00 AS Decimal(4, 2)))
INSERT [dbo].[Position] ([PO_ID], [PO_Title], [PO_Desc], [PO_Type], [PO_Skills], [PO_Hours], [PO_Days]) VALUES (2, N'Developer', N'Build Applications', N'Paid', N'C#, VB.NET', CAST(40.00 AS Decimal(4, 2)), CAST(6.00 AS Decimal(4, 2)))
INSERT [dbo].[Position] ([PO_ID], [PO_Title], [PO_Desc], [PO_Type], [PO_Skills], [PO_Hours], [PO_Days]) VALUES (3, N'Assistant', N'Assist CEO', N'Credit', N'Book keeping', CAST(20.60 AS Decimal(4, 2)), CAST(3.50 AS Decimal(4, 2)))
INSERT [dbo].[Position] ([PO_ID], [PO_Title], [PO_Desc], [PO_Type], [PO_Skills], [PO_Hours], [PO_Days]) VALUES (4, N'IT Intern', N'Help desk', N'Volunteer', N'AAA', CAST(32.00 AS Decimal(4, 2)), CAST(5.00 AS Decimal(4, 2)))
INSERT [dbo].[Position] ([PO_ID], [PO_Title], [PO_Desc], [PO_Type], [PO_Skills], [PO_Hours], [PO_Days]) VALUES (5, N'Developer', N'Build Applications', N'Paid', N'C#, VB.NET', CAST(40.00 AS Decimal(4, 2)), CAST(6.00 AS Decimal(4, 2)))
INSERT [dbo].[Position] ([PO_ID], [PO_Title], [PO_Desc], [PO_Type], [PO_Skills], [PO_Hours], [PO_Days]) VALUES (6, N'Assistant', N'Assist CEO', N'Credit', N'Book keeping', CAST(20.60 AS Decimal(4, 2)), CAST(3.50 AS Decimal(4, 2)))
SET IDENTITY_INSERT [dbo].[Position] OFF
SET IDENTITY_INSERT [dbo].[Manager] ON 

INSERT [dbo].[Manager] ([Manager_ID], [MA_LName], [MA_FName], [MA_StreetAdd], [MA_City], [MA_Zip], [MA_State], [MA_Title], [MA_Dept], [MA_Org], [MA_PhoneWork], [MA_PhoneCell], [MA_Email]) VALUES (1, N'Doe', N'John', N'32 Cupper St', N'Danbury', N'11368', N'CT', N'CT', N'11385', N'917-983-3388', N'212-983-7487', N'347-9839-6765', N'christ80e@htoamil.com')
INSERT [dbo].[Manager] ([Manager_ID], [MA_LName], [MA_FName], [MA_StreetAdd], [MA_City], [MA_Zip], [MA_State], [MA_Title], [MA_Dept], [MA_Org], [MA_PhoneWork], [MA_PhoneCell], [MA_Email]) VALUES (2, N'Lane', N'Stacy', N'300 Jay St', N'Brooklyn', N'11218', N'NY', N'Big Boss', N'Sales', N'SP Developers', N'718-897-4981', N'615-520-8481', N'something@gmail.com')
INSERT [dbo].[Manager] ([Manager_ID], [MA_LName], [MA_FName], [MA_StreetAdd], [MA_City], [MA_Zip], [MA_State], [MA_Title], [MA_Dept], [MA_Org], [MA_PhoneWork], [MA_PhoneCell], [MA_Email]) VALUES (3, N'Doe', N'John', N'32 Cupper St', N'Danbury', N'11368', N'CT', N'CT', N'11385', N'917-983-3388', N'212-983-7487', N'347-9839-6765', N'christ80e@htoamil.com')
INSERT [dbo].[Manager] ([Manager_ID], [MA_LName], [MA_FName], [MA_StreetAdd], [MA_City], [MA_Zip], [MA_State], [MA_Title], [MA_Dept], [MA_Org], [MA_PhoneWork], [MA_PhoneCell], [MA_Email]) VALUES (4, N'Lane', N'Stacy', N'300 Jay St', N'Brooklyn', N'11218', N'NY', N'Big Boss', N'Sales', N'SP Developers', N'718-897-4981', N'615-520-8481', N'something@gmail.com')
SET IDENTITY_INSERT [dbo].[Manager] OFF
SET IDENTITY_INSERT [dbo].[MA_Position] ON 

INSERT [dbo].[MA_Position] ([MP_ID], [Manager_ID], [PO_ID]) VALUES (1, 1, 1)
INSERT [dbo].[MA_Position] ([MP_ID], [Manager_ID], [PO_ID]) VALUES (2, 2, 2)
INSERT [dbo].[MA_Position] ([MP_ID], [Manager_ID], [PO_ID]) VALUES (3, 2, 3)
INSERT [dbo].[MA_Position] ([MP_ID], [Manager_ID], [PO_ID]) VALUES (4, 3, 4)
INSERT [dbo].[MA_Position] ([MP_ID], [Manager_ID], [PO_ID]) VALUES (5, 4, 5)
INSERT [dbo].[MA_Position] ([MP_ID], [Manager_ID], [PO_ID]) VALUES (6, 4, 6)
SET IDENTITY_INSERT [dbo].[MA_Position] OFF
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([Company_ID], [Co_Company], [Co_StreetAdd], [Co_City], [Co_State], [Co_Zip], [Co_Phone]) VALUES (1, N'My NYC Company', N'48 White St', N'Stamford', N'CT', N'11385', N'917-983-3388')
INSERT [dbo].[Company] ([Company_ID], [Co_Company], [Co_StreetAdd], [Co_City], [Co_State], [Co_Zip], [Co_Phone]) VALUES (2, N'My NYC Company', N'48 White St', N'Stamford', N'CT', N'11385', N'917-983-3388')
SET IDENTITY_INSERT [dbo].[Company] OFF
SET IDENTITY_INSERT [dbo].[Comp_Manager] ON 

INSERT [dbo].[Comp_Manager] ([Comp_MA_ID], [Company_ID], [Manager_ID]) VALUES (1, 1, 1)
INSERT [dbo].[Comp_Manager] ([Comp_MA_ID], [Company_ID], [Manager_ID]) VALUES (2, 1, 2)
INSERT [dbo].[Comp_Manager] ([Comp_MA_ID], [Company_ID], [Manager_ID]) VALUES (3, 2, 3)
INSERT [dbo].[Comp_Manager] ([Comp_MA_ID], [Company_ID], [Manager_ID]) VALUES (4, 2, 4)
SET IDENTITY_INSERT [dbo].[Comp_Manager] OFF

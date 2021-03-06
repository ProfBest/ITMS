USE [master]
GO
/****** Object:  Database [ITMSDB]    Script Date: 2/6/2014 8:18:13 AM ******/
CREATE DATABASE [ITMSDB] ON  PRIMARY 
( NAME = N'ITMSDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\ITMSDB.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ITMSDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\ITMSDB_log.ldf' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ITMSDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ITMSDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ITMSDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ITMSDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ITMSDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ITMSDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ITMSDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ITMSDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ITMSDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [ITMSDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ITMSDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ITMSDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ITMSDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ITMSDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ITMSDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ITMSDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ITMSDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ITMSDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ITMSDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ITMSDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ITMSDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ITMSDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ITMSDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ITMSDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ITMSDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ITMSDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ITMSDB] SET  MULTI_USER 
GO
ALTER DATABASE [ITMSDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ITMSDB] SET DB_CHAINING OFF 
GO
USE [ITMSDB]
GO
/****** Object:  StoredProcedure [dbo].[usp_Company_Get]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Company_Get]
	@CompanyId int 
AS
BEGIN
	SELECT 
		[CompanyId] = c.Company_ID,
		[CompanyName] = c.Co_Company,
		[PhoneNumber] = c.Co_Phone,
		[Address] = c.Co_StreetAdd,
		[City] = c.Co_City,
		[State] = c.Co_State,
		[Zipcode] = c.Co_Zip
	FROM Company c
	WHERE c.Company_ID =@CompanyId

END

GO
/****** Object:  StoredProcedure [dbo].[usp_Company_GetAll]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Company_GetAll]
	
AS
BEGIN
	SELECT 
		[CompanyId] = c.Company_ID,
		[CompanyName] = c.Co_Company,
		[PhoneNumber] = c.Co_Phone,
		[Address] = c.Co_StreetAdd,
		[City] = c.Co_City,
		[State] = c.Co_State,
		[Zipcode] = c.Co_Zip
	FROM Company c

END

GO
/****** Object:  StoredProcedure [dbo].[usp_Company_Insert]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Company_Insert]
		@CompanyID				int OUTPUT,
		@CompanyName			nvarchar(50),
		@Street					nvarchar(100),
		@City					nvarchar(50),
		@State					nvarchar(2),
		@ZipCode				nvarchar(15),
		@Phone			nvarchar(15)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO 
		 Company(Co_Company,Co_StreetAdd,Co_City,Co_State,Co_Zip,Co_Phone)
	VALUES 
	(	
		@CompanyName,
		@Street,
		@City,
		@State,
		@ZipCode,
		@Phone
	);

	SELECT @CompanyID = SCOPE_IDENTITY();

END
GO
/****** Object:  StoredProcedure [dbo].[usp_Employer_Get]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Employer_Get]
	@StudentId nvarchar(50)
AS
BEGIN 
	SELECT 
		[EmployerId] = e.Employer_ID,
		[SupervisorName] = e.EMP_Supervisor,
		[Department] = e.EMP_Dept,
		[Title] = e.EMP_Title,
		[JobDescription] = e.EMP_Duties,
		[CompanyName] = e.EMP_EmployerName,
		[PhoneNumber] = e.EMP_Phone,
		[Address] = e.EMP_StreetAdd,
		[City] = e.EMP_City,
		[State] = e.EMP_State,
		[Zipcode] = e.EMP_Zip
	FROM Employer e 
	INNER JOIN St_Emp se
		ON se.Student_ID = @StudentId
END

GO
/****** Object:  StoredProcedure [dbo].[usp_Employer_Insert]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Employer_Insert] 
	@StudentId				nvarchar(50),
	@CompanyName			nvarchar(50),
	@Dept					nvarchar(50),
	@Supervisor				nvarchar(50),
	@Title					nvarchar(50),
	@Duties					nvarchar(250),
	@Street					nvarchar(100),
	@City					nvarchar(20),
	@State					nvarchar(2),
	@Zip					nvarchar(15),
	@Phone					nvarchar(15),
	@EmployerId int OUTPUT
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	

		
		
    -- Insert statements for procedure here
    INSERT INTO 
		Employer(EMP_EmployerName,EMP_Dept,EMP_Supervisor,EMP_Title,EMP_Duties,EMP_StreetAdd,EMP_City,EMP_State,EMP_Zip,EMP_Phone)
	VALUES
	(
		@CompanyName,
		@Dept,
		@Supervisor,
		@Title,
		@Duties,
		@Street,
		@City,
		@State,
		@Zip,
		@Phone
	)
	

	SELECT @EmployerId  = SCOPE_IDENTITY()
	
	INSERT INTO St_Emp(Student_ID,Employer_ID)
	VALUES
	(
		@StudentId,
		@EmployerId 
	);
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Manager_Get]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Manager_Get]
	@ManagerId int
AS
	BEGIN
		SELECT 
			[ManagerId] = m.Manager_ID,
			[PhoneWork] = m.MA_PhoneWork,
			[Title] = m.MA_Title,
			[Department] = m.MA_Dept,
			[Organization] = m.MA_Org,
			[FirstName] = m.MA_FName,
			[LastName] = m.MA_LName,
			[Email] = m.MA_Email,
			[PhoneCell] = m.MA_PhoneCell,
			[Address] = m.MA_StreetAdd,
			[City] = m.MA_City,
			[State] = m.MA_State,
			[Zipcode] = m.MA_Zip

 		FROM Manager m 
		WHERE m.Manager_ID = @ManagerId
	END 
GO
/****** Object:  StoredProcedure [dbo].[usp_Manager_GetAll]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Manager_GetAll]
	@CompanyId int = -1
AS

IF (@CompanyId = -1)
	BEGIN
		SELECT 
			[ManagerId] = m.Manager_ID,
			[PhoneWork] = m.MA_PhoneWork,
			[Title] = m.MA_Title,
			[Department] = m.MA_Dept,
			[Organization] = m.MA_Org,
			[FirstName] = m.MA_FName,
			[LastName] = m.MA_LName,
			[Email] = m.MA_Email,
			[PhoneCell] = m.MA_PhoneCell,
			[Address] = m.MA_StreetAdd,
			[City] = m.MA_City,
			[State] = m.MA_State,
			[Zipcode] = m.MA_Zip

 		FROM Manager m 
	END 
ELSE 

	BEGIN
		SELECT 
			[ManagerId] = m.Manager_ID,
			[PhoneWork] = m.MA_PhoneWork,
			[Title] = m.MA_Title,
			[Department] = m.MA_Dept,
			[Organization] = m.MA_Org,
			[FirstName] = m.MA_FName,
			[LastName] = m.MA_LName,
			[Email] = m.MA_Email,
			[PhoneCell] = m.MA_PhoneCell,
			[Address] = m.MA_StreetAdd,
			[City] = m.MA_City,
			[State] = m.MA_State,
			[Zipcode] = m.MA_Zip

 		FROM Manager m 
		INNER JOIN Comp_Manager cm
			ON cm.Manager_ID = m.Manager_ID 
		WHERE cm.Company_ID = @CompanyId
	END
GO
/****** Object:  StoredProcedure [dbo].[usp_Manager_Insert]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Manager_Insert]
	@ManagerID			int OUTPUT ,
	@CompanyID			int,
	@FirstName			nvarchar(50),
	@LastName			nvarchar(50),
	@Street				nvarchar(30),
	@City				nvarchar(30),
	@Zipcode			nvarchar(9),
	@State				nvarchar(2),
	@Title				nvarchar(50),
	@Department			nvarchar(20),
	@Organization		nvarchar(20),
	@PhoneWork			nvarchar(15),
	@PhoneCell			nvarchar(15),
	@Email				nvarchar(100)
	
AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO 
		Manager(MA_LName,MA_FName,MA_StreetAdd,MA_City,MA_Zip,MA_State,MA_Title,MA_Dept,MA_Org,MA_PhoneWork,MA_PhoneCell,MA_Email)
	VALUES(
	@LastName,
	@FirstName,
	@Street,
	@City,
	@Zipcode,
	@State,
	@Title,
	@Department,
	@Organization,
	@PhoneWork,
	@phoneCell,
	@Email	
	)
	
	SELECT @ManagerID = SCOPE_IDENTITY()
	
	INSERT INTO Comp_Manager(Manager_ID,Company_ID)
	VALUES ( @ManagerID	, @CompanyID );
	
END

GO
/****** Object:  StoredProcedure [dbo].[usp_ModTaken_Insert]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ModTaken_Insert]

	@ModuleId		int,
	@RequirementId		int,
	@ID int OUTPUT
AS
BEGIN
	
	SET NOCOUNT ON;


    -- Insert statements for procedure here
	INSERT INTO dbo.INR_ModTaken(ModTaken_ID,InternReq_ID)
	VALUES ( @ModuleId,@RequirementId);
	
	SELECT @ID = scope_identity();
				
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Module_Get]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Module_Get]
	@ModuleId int 
AS

	BEGIN 
		SELECT 
			[ModuleId] = m.MODTaken_ID,
			[Description] = m.MOD_Name
		FROM MODTaken m
		WHERE m.MODTaken_ID = @ModuleId
	END
GO
/****** Object:  StoredProcedure [dbo].[usp_Module_GetAll]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Module_GetAll]
AS
BEGIN 
	SELECT 
		[ModuleId] = m.MODTaken_ID,
		[Description] = m.MOD_Name
	FROM MODTaken m
END

GO
/****** Object:  StoredProcedure [dbo].[usp_ModuleTaken_GetAll]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ModuleTaken_GetAll]
	@RequirementId int 
	
AS
BEGIN 
	SELECT 
		[ModuleTakenId] = mt.INR_ModTaken_ID,
		[ModuleId] = m.MODTaken_ID,
		[Description] = m.MOD_Name
	FROM INR_ModTaken mt
	INNER JOIN MODTaken m
		ON m.MODTaken_ID = mt.ModTaken_ID
	WHERE mt.InternReq_ID = @RequirementId
END 
GO
/****** Object:  StoredProcedure [dbo].[usp_Position_Get]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Position_Get]
	@PositionId int 
AS
BEGIN
	SELECT 
				[PositionId] = p.PO_ID,
				[PositionType] = p.PO_Type,
				[Skills] = p.PO_Skills,
				[WorkHours] = p.PO_Hours,
				[WorkDays] = p.PO_Days,
				[Title] = p.PO_Title,
				[JobDescription] = p.PO_Desc
		FROM Position p 
		WHERE p.PO_ID = @PositionId
END


GO
/****** Object:  StoredProcedure [dbo].[usp_Position_GetAll]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Position_GetAll]
	@ManagerId int = -1
AS
BEGIN

IF @ManagerId <> -1
	BEGIN
		SELECT 
			[PositionId] = p.PO_ID,
			[PositionType] = p.PO_Type,
			[Skills] = p.PO_Skills,
			[WorkHours] = p.PO_Hours,
			[WorkDays] = p.PO_Days,
			[Title] = p.PO_Title,
			[JobDescription] = p.PO_Desc
		FROM MA_Position mp 
		INNER JOIN Position p 
			ON mp.PO_ID = p.PO_ID
		WHERE mp.Manager_ID = @ManagerId
	END
ELSE 
	BEGIN
		SELECT 
				[PositionId] = p.PO_ID,
				[PositionType] = p.PO_Type,
				[Skills] = p.PO_Skills,
				[WorkHours] = p.PO_Hours,
				[WorkDays] = p.PO_Days,
				[Title] = p.PO_Title,
				[JobDescription] = p.PO_Desc
		FROM Position p 
	END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_Position_Insert]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Position_Insert]
	@PostionID	INT OUTPUT ,	
	@ManagerId	INT,
	@Title			nvarchar(50),
	@Duties			nvarchar(250),
	@Type			nvarchar(250),
	@Skills			nvarchar(250),
	@WorkHours			decimal(4,2),
	@WorkDays			decimal(4,2)
AS
BEGIN
	
	SET NOCOUNT ON;


    -- Insert statements for procedure here
	INSERT INTO 
		Position(PO_Title,PO_Desc,PO_Type,PO_Skills,PO_Hours,PO_Days)
	VALUES (
				@Title,
				@Duties,
				@Type,
				@Skills	,
				@WorkHours,
				@WorkDays
				)
			
			
	SELECT @PostionID = SCOPE_IDENTITY();	
	
	
	INSERT INTO MA_Position(Manager_ID,PO_ID)
	VALUES (@ManagerId,@PostionID	)	
				
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Preference_Get]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Preference_Get]
	@PreferenceId int
AS

	BEGIN 
		SELECT 
			[PrefernceId] = p.Pref_ID,
			[Description] = p.Pref_Desc
		FROM Preference p 
		WHERE p.Pref_ID = @PreferenceId
	END
GO
/****** Object:  StoredProcedure [dbo].[usp_Preference_GetAll]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Preference_GetAll]

AS
BEGIN 
	SELECT 
		[PrefernceId] = p.Pref_ID,
		[Description] = p.Pref_Desc
	FROM Preference p 
END

GO
/****** Object:  StoredProcedure [dbo].[usp_PreferenceRank_GetAll]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_PreferenceRank_GetAll]
	@RequirementId int 
AS
BEGIN 
	SELECT
		 [PreferenceRankId] =  inr.INR_Pref_ID,
		 [PrefernceId] = p.Pref_ID,
		 [Description] = p.Pref_Desc,
		 [Rank] = inr.INR_Pref_Rank
	FROM INR_Pref inr
	INNER JOIN Preference p 
		ON p.Pref_ID = inr.Pref_ID
	WHERE inr.InternReq_ID = @RequirementId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_PreferenceRank_Insert]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_PreferenceRank_Insert]
		@RequirementId int,
		@PreferenceId	int,
		@Rank	int,
		@ID int OUTPUT
		
AS
BEGIN
	
	SET NOCOUNT ON;


    -- Insert statements for procedure here
	INSERT INTO 
		dbo.INR_Pref(Pref_ID,INR_Pref_Rank,InternReq_ID)
	VALUES
		(@PreferenceId,@Rank,@RequirementId);
	
	SELECT @ID =  SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Requirement_Get]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Requirement_Get]
	@StudentId nvarchar(50)
AS
BEGIN 
	SELECT 
		[RequirementId] = r.InternReq_ID,
		[DriverLicense] = r.INR_License,
		[Owncar] = r.INR_Car,
		[TravelNJ] = r.INR_NJ,
		[TravelWestchester] = r.INR_Westchester,
		[ResidenceStatus] = r.INR_Resident,
		[Limitation] = r.INR_Limit,
		[LimitationExplanation] = r.INR_Limit_Desc,
		[Semester] = r.INR_Semes,
		[InternshipType] = r.INR_CST
	FROM Internship_Req r 
	WHERE r.Student_ID = @StudentId

END

GO
/****** Object:  StoredProcedure [dbo].[usp_Requirement_Insert]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Requirement_Insert]
	-- Add the parameters for the stored procedure here
	@StudentId				nvarchar(50),
	@Semester				Nvarchar(50),
	@CST				Nvarchar(50),
	@License				bit,
	@OwnCar					bit,
	@TravelNJ					bit,
	@TravelWestchester			bit,
	@ResidentStatus			Nvarchar(50),
	@Limit				bit,
	@LimitDescription		nvarchar(500),
	@RequirementId int OUTPUT
AS

BEGIN
	SET NOCOUNT ON;
	
	Insert into Internship_Req(Student_ID,INR_Semes,INR_CST,INR_License, INR_Car, INR_NJ,INR_Westchester,INR_Resident,INR_Limit,INR_Limit_Desc)
	values
	(
		@StudentId,
		@Semester,		
		@CST,			
		@License,		
		@OwnCar,		
		@TravelNJ,			
		@TravelWestchester,	
		@ResidentStatus,
		@Limit,
		@LimitDescription
	)	
	

 select  @RequirementId =  scope_identity()

END
GO
/****** Object:  StoredProcedure [dbo].[usp_ResumeTranscript_Get]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ResumeTranscript_Get]
	@RequirementId int 
AS
BEGIN
	SELECT 
		[FileId] = rt.RT_ID,
		[Resume] = rt.RT_Resume,
		[Transcript] = rt.RT_Transcript
	FROM Res_Transcript rt 
	INNER JOIN INR_RT inr
		ON inr.RT_ID = rt.RT_ID
	WHERE inr.InternReq_ID = @RequirementId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ResumeTranscript_Insert]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_ResumeTranscript_Insert]
		@RequirementID			int ,
		@Resume			nvarchar(250),
		@Transcript 	nvarchar(250),
		@ID   INT OUTPUT
AS
BEGIN
	
	SET NOCOUNT ON;
	

    -- Insert statements for procedure here
	INSERT INTO 
		Res_Transcript(RT_Resume,RT_Transcript)
	VALUES
		(@Resume,@Transcript)
		
	SELECT @ID  = SCOPE_IDENTITY();
	
	INSERT INTO 
		INR_RT(InternReq_ID,RT_ID)
	VALUES (@RequirementID, @ID )		
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Student_Get]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Student_Get]
	@StudentId nvarchar(50)
AS
BEGIN 
	SELECT 
		[StudentId] = s.Student_ID,
		[Last4SSN] = s.S_SSN,
		[GPA] = s.S_GPA,
		[GraduationDate] = s.S_Graduation,
		[FirstName] = s.S_FName,
		[LastName] = s.S_LName,
		[Email] = s.S_Email,
		[PhoneCell] = s.S_PhoneCell,
		[PhoneDay] = s.S_PhoneDay,
		[PhoneEvening] = s.S_PhoneEve,
		[Address] = s.S_StreetAdd,
		[City] = s.S_City,
		[State] = s.S_State,
		[Zipcode] = s.S_Zip

	FROM Student s
	WHERE s.Student_ID = @StudentId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Student_GetAll]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Student_GetAll]
AS
BEGIN 
	SELECT 
		[StudentId] = s.Student_ID,
		[Last4SSN] = s.S_SSN,
		[GPA] = s.S_GPA,
		[GraduationDate] = s.S_Graduation,
		[FirstName] = s.S_FName,
		[LastName] = s.S_LName,
		[Email] = s.S_Email,
		[PhoneCell] = s.S_PhoneCell,
		[PhoneDay] = s.S_PhoneDay,
		[PhoneEvening] = s.S_PhoneEve,
		[Address] = s.S_StreetAdd,
		[City] = s.S_City,
		[State] = s.S_State,
		[Zipcode] = s.S_Zip

	FROM Student s
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Student_Insert]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Student_Insert]
	-- Add the parameters for the stored procedure here
	@StudentID				NVARCHAR(50),
	@Firstname				NVARCHAR(50),
	@LastName				NVARCHAR(50),
	@SSN					NVARCHAR(4),
	@GPA					DECIMAL (3,2),
	@GraduationDate			date,
	@Street					NVARCHAR(30),
	@City					NVARCHAR(20),
	@State					NCHAR(2),
	@Zip					NVARCHAR(9),
	@PhoneDay				NVARCHAR(15),
	@PhoneEve				NVARCHAR(15),
	@PhoneCell				NVARCHAR(15),
	@Email					NVARCHAR(100)
	
	
	
AS
BEGIN
	SET NOCOUNT ON;
	declare @Student_ID int
	
	INSERT INTO Student(Student_ID,S_FName,S_LName,S_SSN,S_GPA,S_Graduation,S_StreetAdd,S_City,S_State,S_Zip,S_PhoneDay,S_PhoneEve,S_PhoneCell,S_Email)
	values
	(
		@StudentID,				
		@Firstname,					
		@LastName,					
		@SSN,					
		@GPA,					
		@GraduationDate,			
		@Street,				
		@City,					
		@State,					
		@Zip,					
		@PhoneDay,				
		@PhoneEve,				
		@PhoneCell,				
		@Email
	)	
	
END
GO
/****** Object:  Table [dbo].[Comp_Manager]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comp_Manager](
	[Comp_MA_ID] [int] IDENTITY(1,1) NOT NULL,
	[Company_ID] [int] NOT NULL,
	[Manager_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Comp_MA_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Company]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[Company_ID] [int] IDENTITY(1,1) NOT NULL,
	[Co_Company] [nvarchar](50) NOT NULL,
	[Co_StreetAdd] [nvarchar](100) NOT NULL,
	[Co_City] [nvarchar](30) NOT NULL,
	[Co_State] [nvarchar](2) NOT NULL,
	[Co_Zip] [nvarchar](15) NOT NULL,
	[Co_Phone] [nvarchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Company_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employer]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employer](
	[Employer_ID] [int] IDENTITY(1,1) NOT NULL,
	[EMP_EmployerName] [nvarchar](50) NOT NULL,
	[EMP_Dept] [nvarchar](50) NOT NULL,
	[EMP_Supervisor] [nvarchar](50) NOT NULL,
	[EMP_Title] [nvarchar](50) NOT NULL,
	[EMP_Duties] [nvarchar](250) NOT NULL,
	[EMP_StreetAdd] [nvarchar](100) NOT NULL,
	[EMP_City] [nvarchar](50) NOT NULL,
	[EMP_State] [nvarchar](2) NOT NULL,
	[EMP_Zip] [nvarchar](15) NOT NULL,
	[EMP_Phone] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK__Employer__6C37C549E3296C4A] PRIMARY KEY CLUSTERED 
(
	[Employer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[INR_ModTaken]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INR_ModTaken](
	[INR_ModTaken_ID] [int] IDENTITY(1,1) NOT NULL,
	[InternReq_ID] [int] NOT NULL,
	[ModTaken_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[INR_ModTaken_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[INR_Pref]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INR_Pref](
	[INR_Pref_ID] [int] IDENTITY(1,1) NOT NULL,
	[InternReq_ID] [int] NOT NULL,
	[Pref_ID] [int] NOT NULL,
	[INR_Pref_Rank] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[INR_Pref_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[INR_RT]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INR_RT](
	[INR_RT_ID] [int] IDENTITY(1,1) NOT NULL,
	[RT_ID] [int] NOT NULL,
	[InternReq_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[INR_RT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Internship_Req]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Internship_Req](
	[InternReq_ID] [int] IDENTITY(1,1) NOT NULL,
	[Student_ID] [nvarchar](8) NOT NULL,
	[INR_Semes] [nvarchar](20) NOT NULL,
	[INR_CST] [nvarchar](50) NOT NULL,
	[INR_License] [bit] NOT NULL,
	[INR_Car] [bit] NOT NULL,
	[INR_NJ] [bit] NOT NULL,
	[INR_Westchester] [bit] NOT NULL,
	[INR_Resident] [nvarchar](50) NOT NULL,
	[INR_Limit] [bit] NOT NULL,
	[INR_Limit_Desc] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK__Internsh__7CB44E5D2D210B28] PRIMARY KEY CLUSTERED 
(
	[InternReq_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MA_Position]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MA_Position](
	[MP_ID] [int] IDENTITY(1,1) NOT NULL,
	[Manager_ID] [int] NOT NULL,
	[PO_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Manager]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[Manager_ID] [int] IDENTITY(1,1) NOT NULL,
	[MA_LName] [nvarchar](50) NOT NULL,
	[MA_FName] [nvarchar](50) NOT NULL,
	[MA_StreetAdd] [nvarchar](100) NOT NULL,
	[MA_City] [nvarchar](30) NOT NULL,
	[MA_Zip] [nvarchar](15) NOT NULL,
	[MA_State] [nvarchar](2) NOT NULL,
	[MA_Title] [nvarchar](50) NOT NULL,
	[MA_Dept] [nvarchar](50) NOT NULL,
	[MA_Org] [nvarchar](50) NOT NULL,
	[MA_PhoneWork] [nvarchar](15) NOT NULL,
	[MA_PhoneCell] [nvarchar](15) NULL,
	[MA_Email] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Manager_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MODTaken]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MODTaken](
	[MODTaken_ID] [int] IDENTITY(1,1) NOT NULL,
	[MOD_Name] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MODTaken_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Position]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[PO_ID] [int] IDENTITY(1,1) NOT NULL,
	[PO_Title] [nvarchar](20) NOT NULL,
	[PO_Desc] [nvarchar](250) NOT NULL,
	[PO_Type] [nvarchar](250) NOT NULL,
	[PO_Skills] [nvarchar](250) NOT NULL,
	[PO_Hours] [decimal](4, 2) NOT NULL,
	[PO_Days] [decimal](4, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Preference]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preference](
	[Pref_ID] [int] IDENTITY(1,1) NOT NULL,
	[Pref_Desc] [nvarchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Pref_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Res_Transcript]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Res_Transcript](
	[RT_ID] [int] IDENTITY(1,1) NOT NULL,
	[RT_Resume] [nvarchar](30) NOT NULL,
	[RT_Transcript] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[St_Emp]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[St_Emp](
	[St_Emp_ID] [int] IDENTITY(1,1) NOT NULL,
	[Student_ID] [nvarchar](8) NOT NULL,
	[Employer_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[St_Emp_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 2/6/2014 8:18:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Student_ID] [nvarchar](8) NOT NULL,
	[S_FName] [nvarchar](20) NOT NULL,
	[S_LName] [nvarchar](20) NOT NULL,
	[S_SSN] [nvarchar](4) NOT NULL,
	[S_GPA] [decimal](3, 1) NOT NULL,
	[S_Graduation] [date] NOT NULL,
	[S_StreetAdd] [nvarchar](30) NOT NULL,
	[S_City] [nvarchar](20) NOT NULL,
	[S_State] [nchar](2) NOT NULL,
	[S_Zip] [nvarchar](5) NOT NULL,
	[S_PhoneDay] [nvarchar](14) NOT NULL,
	[S_PhoneEve] [nvarchar](14) NOT NULL,
	[S_PhoneCell] [nvarchar](14) NOT NULL,
	[S_Email] [nvarchar](26) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Student_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Comp_Manager]  WITH CHECK ADD FOREIGN KEY([Company_ID])
REFERENCES [dbo].[Company] ([Company_ID])
GO
ALTER TABLE [dbo].[Comp_Manager]  WITH CHECK ADD FOREIGN KEY([Manager_ID])
REFERENCES [dbo].[Manager] ([Manager_ID])
GO
ALTER TABLE [dbo].[INR_ModTaken]  WITH CHECK ADD  CONSTRAINT [FK__INR_ModTa__Inter__286302EC] FOREIGN KEY([InternReq_ID])
REFERENCES [dbo].[Internship_Req] ([InternReq_ID])
GO
ALTER TABLE [dbo].[INR_ModTaken] CHECK CONSTRAINT [FK__INR_ModTa__Inter__286302EC]
GO
ALTER TABLE [dbo].[INR_ModTaken]  WITH CHECK ADD FOREIGN KEY([ModTaken_ID])
REFERENCES [dbo].[MODTaken] ([MODTaken_ID])
GO
ALTER TABLE [dbo].[INR_Pref]  WITH CHECK ADD  CONSTRAINT [FK__INR_Pref__Intern__24927208] FOREIGN KEY([InternReq_ID])
REFERENCES [dbo].[Internship_Req] ([InternReq_ID])
GO
ALTER TABLE [dbo].[INR_Pref] CHECK CONSTRAINT [FK__INR_Pref__Intern__24927208]
GO
ALTER TABLE [dbo].[INR_Pref]  WITH CHECK ADD FOREIGN KEY([Pref_ID])
REFERENCES [dbo].[Preference] ([Pref_ID])
GO
ALTER TABLE [dbo].[INR_RT]  WITH CHECK ADD  CONSTRAINT [FK__INR_RT__InternRe__1DE57479] FOREIGN KEY([InternReq_ID])
REFERENCES [dbo].[Internship_Req] ([InternReq_ID])
GO
ALTER TABLE [dbo].[INR_RT] CHECK CONSTRAINT [FK__INR_RT__InternRe__1DE57479]
GO
ALTER TABLE [dbo].[INR_RT]  WITH CHECK ADD FOREIGN KEY([RT_ID])
REFERENCES [dbo].[Res_Transcript] ([RT_ID])
GO
ALTER TABLE [dbo].[Internship_Req]  WITH CHECK ADD  CONSTRAINT [FK__Internshi__Stude__1273C1CD] FOREIGN KEY([Student_ID])
REFERENCES [dbo].[Student] ([Student_ID])
GO
ALTER TABLE [dbo].[Internship_Req] CHECK CONSTRAINT [FK__Internshi__Stude__1273C1CD]
GO
ALTER TABLE [dbo].[MA_Position]  WITH CHECK ADD FOREIGN KEY([Manager_ID])
REFERENCES [dbo].[Manager] ([Manager_ID])
GO
ALTER TABLE [dbo].[MA_Position]  WITH CHECK ADD FOREIGN KEY([PO_ID])
REFERENCES [dbo].[Position] ([PO_ID])
GO
ALTER TABLE [dbo].[St_Emp]  WITH CHECK ADD  CONSTRAINT [FK__St_Emp__Employer__21B6055D] FOREIGN KEY([Employer_ID])
REFERENCES [dbo].[Employer] ([Employer_ID])
GO
ALTER TABLE [dbo].[St_Emp] CHECK CONSTRAINT [FK__St_Emp__Employer__21B6055D]
GO
ALTER TABLE [dbo].[St_Emp]  WITH CHECK ADD FOREIGN KEY([Student_ID])
REFERENCES [dbo].[Student] ([Student_ID])
GO
USE [master]
GO
ALTER DATABASE [ITMSDB] SET  READ_WRITE 
GO

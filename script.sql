USE [master]
GO
/****** Object:  Database [Onlineinterview]    Script Date: 17/04/2020 1:09:26 AM ******/
CREATE DATABASE [Onlineinterview]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Onlineinterview', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.DEV400\MSSQL\DATA\Onlineinterview.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Onlineinterview_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.DEV400\MSSQL\DATA\Onlineinterview_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Onlineinterview] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Onlineinterview].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Onlineinterview] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Onlineinterview] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Onlineinterview] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Onlineinterview] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Onlineinterview] SET ARITHABORT OFF 
GO
ALTER DATABASE [Onlineinterview] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Onlineinterview] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Onlineinterview] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Onlineinterview] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Onlineinterview] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Onlineinterview] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Onlineinterview] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Onlineinterview] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Onlineinterview] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Onlineinterview] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Onlineinterview] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Onlineinterview] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Onlineinterview] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Onlineinterview] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Onlineinterview] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Onlineinterview] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Onlineinterview] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Onlineinterview] SET RECOVERY FULL 
GO
ALTER DATABASE [Onlineinterview] SET  MULTI_USER 
GO
ALTER DATABASE [Onlineinterview] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Onlineinterview] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Onlineinterview] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Onlineinterview] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Onlineinterview] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Onlineinterview', N'ON'
GO
ALTER DATABASE [Onlineinterview] SET QUERY_STORE = OFF
GO
USE [Onlineinterview]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Onlineinterview]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 17/04/2020 1:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[admin_name] [varchar](255) NULL,
	[admin_email] [varchar](50) NULL,
	[admin_password] [varchar](50) NULL,
 CONSTRAINT [PK__Admin__43AA4141693CFD13] PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Candidates]    Script Date: 17/04/2020 1:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidates](
	[candidate_id] [int] IDENTITY(1,1) NOT NULL,
	[candidate_fname] [varchar](50) NULL,
	[candidate_lname] [varchar](50) NULL,
	[candidate_gender] [varchar](50) NULL,
	[candidate_dob] [date] NULL,
	[candidate_address] [varchar](max) NULL,
	[candidate_city] [varchar](50) NULL,
	[candidate_country] [varchar](50) NULL,
	[candidate_number] [bigint] NULL,
	[candidate_email] [varchar](50) NULL,
	[candidate_password] [varchar](100) NULL,
	[candidate_eduname] [varchar](255) NULL,
	[candidate_eduuniversity] [varchar](max) NULL,
	[candidate_eduaddress] [varchar](255) NULL,
	[candidate_eduphone] [bigint] NULL,
	[candidate_edudgree] [varchar](255) NULL,
	[candidate_edusdate] [date] NULL,
	[candidate_eduedate] [date] NULL,
	[candidate_comname] [varchar](255) NULL,
	[candidate_comaddress] [varchar](max) NULL,
	[candidate_comjob] [varchar](255) NULL,
	[candidate_comexp] [int] NULL,
	[candidate_comsdate] [date] NULL,
	[candidate_comedate] [date] NULL,
	[candidate_fathername] [varchar](50) NULL,
	[candidate_nicnumber] [bigint] NULL,
 CONSTRAINT [PK__Candidat__39BD4C18B3F41B7B] PRIMARY KEY CLUSTERED 
(
	[candidate_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 17/04/2020 1:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [varchar](50) NULL,
 CONSTRAINT [PK__Category__D54EE9B4D6208039] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Criteria]    Script Date: 17/04/2020 1:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Criteria](
	[criteria_id] [int] IDENTITY(1,1) NOT NULL,
	[criteria_name] [varchar](50) NULL,
	[category_fid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[criteria_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Interview]    Script Date: 17/04/2020 1:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interview](
	[interview_id] [int] IDENTITY(1,1) NOT NULL,
	[interview_name] [varchar](500) NULL,
	[interview_description] [varchar](max) NULL,
	[interview_date] [date] NULL,
	[interview_duration] [int] NULL,
	[interview_marks] [int] NULL,
	[interview_negativemarks] [int] NULL,
	[interview_totalquestion] [int] NULL,
	[category_fid] [int] NULL,
	[criteria_fid] [int] NULL,
	[interviewpass_marks] [int] NULL,
 CONSTRAINT [PK__Intervie__141E55521B2D0836] PRIMARY KEY CLUSTERED 
(
	[interview_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Manager]    Script Date: 17/04/2020 1:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[manager_id] [int] NOT NULL,
	[manager_name] [varchar](255) NULL,
	[manager_email] [varchar](50) NULL,
	[manager_password] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[manager_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Question]    Script Date: 17/04/2020 1:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[question_id] [int] IDENTITY(1,1) NOT NULL,
	[question_name] [varchar](max) NULL,
	[option_one] [varchar](max) NULL,
	[option_two] [varchar](max) NULL,
	[option_three] [varchar](max) NULL,
	[option_four] [varchar](max) NULL,
	[question_answer] [int] NULL,
	[interview_fid] [int] NULL,
 CONSTRAINT [PK__Question__2EC2154958B56093] PRIMARY KEY CLUSTERED 
(
	[question_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Result]    Script Date: 17/04/2020 1:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Result](
	[result_id] [int] NOT NULL,
	[result_status] [varchar](50) NULL,
	[result_score] [int] NULL,
	[candidate_email] [varchar](50) NULL,
	[totalquestion] [int] NULL,
	[interview_fid] [int] NULL,
	[interview_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[result_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  StoredProcedure [dbo].[spAddInterview]    Script Date: 17/04/2020 1:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spAddInterview]

@interviewname varchar(500),
@interviewdis varchar(MAX),
@interviewdate date,
@interviewduration int,
@interviewpassmarks int,
@interviewmarks int,
@interviewcriteriafid int,
@interviewcategoryfid int
as
begin
      insert into interview
	  (interview_name,interview_description,interview_date,interview_duration,interviewpass_marks,interview_marks,criteria_fid,category_fid) values
	  (@interviewname,@interviewdis,@interviewdate,@interviewduration,@interviewpassmarks,@interviewmarks,@interviewcriteriafid,@interviewcategoryfid)
	  
	  
	  
end
GO
/****** Object:  StoredProcedure [dbo].[spAddQuestion]    Script Date: 17/04/2020 1:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spAddQuestion]
@questionname varchar(MAX),
@optionone varchar(MAX),
@optiontwo varchar(MAX),
@optionthree varchar(MAX),
@optionfour varchar(MAX),
@questionanswer int,
@interviewfid int
as
begin
        insert into question( question_name,option_one,option_two,option_three,option_four,question_answer,interview_fid) values
		(@questionname,@optionone,@optiontwo,@optionthree,@optionfour,@questionanswer,@interviewfid)
		

end
GO
/****** Object:  StoredProcedure [dbo].[spAdminLogin]    Script Date: 17/04/2020 1:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spAdminLogin]

@admin_email varchar(50),
@password varchar(100)
as
begin

  Declare @count int
  select @count =COUNT(@admin_email) from admin
  where admin_email=@admin_email and admin_password=@password
  if (@count=1)
        begin
   select 1 as retunvalue
end

else
   begin
 select -1 as retunvalue
 end
 
end
GO
/****** Object:  StoredProcedure [dbo].[spAdminRegisterInsert]    Script Date: 17/04/2020 1:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spAdminRegisterInsert]
@admin_name varchar(50),
@admin_email varchar(50),
@password  varchar(100)
as
begin
      declare @count int
 declare @returnvalue int
 select @count = COUNT(admin_email) from admin where admin_email= @admin_email
     if @count>0
     begin
    set @returnvalue = -1
end


else
 begin
    set @returnvalue = 1
insert into admin(admin_name,admin_email,admin_password) values
(@admin_name,@admin_email,@password)
end
select @returnvalue as returnvalue
end
GO
/****** Object:  StoredProcedure [dbo].[spCandidateLogin]    Script Date: 17/04/2020 1:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spCandidateLogin]
@candidate_email varchar(50),
@password varchar(100)
as
begin
      Declare @count int
	  select @count =COUNT(candidate_email) from candidates
	  where candidate_email= @candidate_email and candidate_password=@password
	  if (@count = 1)
	         begin
			      select 1 as retunvalue
			end
			
	   else
	       begin
		       select -1 as retunvalue
			end
end
GO
/****** Object:  StoredProcedure [dbo].[spCandidateRegisterInsert]    Script Date: 17/04/2020 1:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spCandidateRegisterInsert]
@candidate_fname varchar(50),
@candidate_lname varchar(50),
@candidate_fathername varchar(50),
@candidate_nicnumber bigint,
@email varchar(50),
@password varchar(100),
@candidate_gender varchar(50),
@candidate_dob date,
@candidate_address varchar(max),
@candidate_city varchar(50),
@candidate_country varchar(50),
@candidate_number bigint,
@candidate_eduname varchar(max),
@candidate_eduuniversity varchar(max),
@candidate_eduaddress varchar(max),
@candidate_eduphone bigint,
@candidate_edudgree varchar(max),
@candidate_edusdate date,
@candidate_eduedate date,
@candidate_comname varchar(255),
@candidate_comaddress varchar(max),
@candidate_comjob varchar(255),
@candidate_comexp int,
@candidate_comsdate date,
@candidate_comedate date
as
begin
     declare @count int
	 declare @returnvalue int
	 select @count = COUNT(candidate_email) from Candidates where candidate_email = @email
	     if @count>0
		      begin
			      set @returnvalue =-1
				  
			   end
			   
		else
		  begin
		      set @returnvalue =1
			  insert into Candidates (candidate_fname,candidate_fathername,candidate_nicnumber,candidate_lname,candidate_gender,candidate_dob,candidate_address,candidate_city,candidate_country,candidate_number,candidate_password,candidate_email,candidate_eduname,candidate_eduuniversity,candidate_eduaddress,candidate_eduphone,candidate_edudgree,candidate_edusdate,candidate_eduedate,candidate_comname,candidate_comaddress,candidate_comjob,candidate_comexp,candidate_comsdate,candidate_comedate) values
			  (@candidate_fname,@candidate_lname,@candidate_fathername,@candidate_nicnumber,@password,@email,@candidate_gender,@candidate_dob,@candidate_address,@candidate_city,@candidate_country,@candidate_number,@candidate_eduname,@candidate_eduuniversity,@candidate_eduaddress,@candidate_eduphone,@candidate_edudgree,@candidate_edusdate,@candidate_eduedate,@candidate_comname,@candidate_comaddress,@candidate_comjob,@candidate_comexp,@candidate_comsdate,@candidate_comedate)
			 end
		select @returnvalue as returnvalue
end
GO
/****** Object:  StoredProcedure [dbo].[spCandidateResult]    Script Date: 17/04/2020 1:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spCandidateResult]
@email varchar(50)
as 
begin
     select * from result
	 join interview
	 on
	 result.interview_fid = interview.interview_id
	 where candidate_email= @email
end
GO
/****** Object:  StoredProcedure [dbo].[spCriteriaEdit]    Script Date: 17/04/2020 1:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spCriteriaEdit]
@criteria_name varchar(50),
@category_id int,
@criteria_id int
as
begin
     update criteria set criteria_name= @criteria_name, category_fid=@category_id where criteria_id=@criteria_id 
	 
	 
end
GO
/****** Object:  StoredProcedure [dbo].[spCriteriaEditFill]    Script Date: 17/04/2020 1:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spCriteriaEditFill]
@id int
as
begin
     select * from criteria
	 left join category
	 on
	 criteria.category_fid=category.category_id where criteria_id=@id
	 
end
GO
/****** Object:  StoredProcedure [dbo].[spCriteriaList]    Script Date: 17/04/2020 1:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spCriteriaList]
as
begin
select * from criteria
left join category
on
criteria.category_fid=category.category_id

end
GO
/****** Object:  StoredProcedure [dbo].[spEditInterview]    Script Date: 17/04/2020 1:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure[dbo].[spEditInterview]
@interviewid int,
@interviewname varchar(100),
@interviewdiscription varchar(MAX),
@interviewdate date,
@interviewduration int,
@interviewpassmarks int,
@interviewnmarks int,
@categoryfid int,
@criteriafid int
as
begin
     update interview set interview_name = @interviewname, interview_description = @interviewdiscription,interview_date= @interviewdate,interview_duration = @interviewduration, interviewpass_marks = @interviewpassmarks ,interview_marks =@interviewnmarks, category_fid =@categoryfid , criteria_fid =@criteriafid 
	 where interview_id = @interviewid
	 
	 end
GO
/****** Object:  StoredProcedure [dbo].[spEditInterviewFill]    Script Date: 17/04/2020 1:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	 CREATE procedure [dbo].[spEditInterviewFill]
	 @interviewid int
	 as
	 begin
	     select * from interview where interview_id = @interviewid
		 
	end
GO
/****** Object:  StoredProcedure [dbo].[spEditQuestion]    Script Date: 17/04/2020 1:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	CREATE procedure [dbo].[spEditQuestion]
	@questionid int,
	@questionname varchar(MAX),
	@optionone varchar(MAX),
	@optiontwo varchar(MAX),
	@optionthree varchar(MAX),
	@optionfour varchar(MAX),
	@questionanswer int,
	@interviewfid int
	as
	begin
	  update question set question_name = @questionname, option_one = @optionone, option_two = @optiontwo, option_three = @optionthree, option_four = @optionfour, question_answer = @questionanswer, interview_fid = @interviewfid 
	  where question_id = @questionid
	  
	  end
GO
/****** Object:  StoredProcedure [dbo].[spEditQuestionFill]    Script Date: 17/04/2020 1:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	  Create procedure [dbo].[spEditQuestionFill]
	  @questionid int
	  as 
	  
	  begin
	     select * from question
		 left join interview on
		 question.interview_fid = interview.interview_id
		 where question_id = @questionid
end
GO
/****** Object:  StoredProcedure [dbo].[spGetallQuestion]    Script Date: 17/04/2020 1:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spGetallQuestion]
as

begin 
      select * from question
	  left join interview on
	  question.interview_fid = interview.interview_id
	  
end
GO
/****** Object:  StoredProcedure [dbo].[spInterviewList]    Script Date: 17/04/2020 1:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spInterviewList]
as 

begin
     select *  from interview
	 left join criteria on interview.criteria_fid = criteria.criteria_id
	 left join category on interview.category_fid =category.category_id
end
GO
/****** Object:  StoredProcedure [dbo].[spInterviewListDetails]    Script Date: 17/04/2020 1:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spInterviewListDetails]
@interview_id int
as
begin
     select * from interview
	 left join criteria on interview.criteria_fid=criteria.criteria_id
	 left join category on interview.category_fid =category.category_id
	 where interview_id =@interview_id
end
GO
/****** Object:  StoredProcedure [dbo].[spInterviewQuestion]    Script Date: 17/04/2020 1:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spInterviewQuestion]
@interviewfid int
as
begin
     select * from question
	 left join interview on
	 question.interview_fid = interview.interview_id
	where interview_fid = @interviewfid
	
end
GO
/****** Object:  StoredProcedure [dbo].[spInterviewSearchCategory]    Script Date: 17/04/2020 1:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spInterviewSearchCategory]
@criteriaid int
as
begin
     select * from criteria
	 join interview
	 on
	 criteria.criteria_id = interview.criteria_fid
	 where criteria_id = @criteriaid
end
GO
/****** Object:  StoredProcedure [dbo].[spManagerLogin]    Script Date: 17/04/2020 1:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spManagerLogin]
@manager_email varchar(50),
@password varchar(100)
as
begin

  Declare @count int
  select @count =COUNT(@manager_email) from manager
  where manager_email=@manager_email and manager_password=@password
  if (@count=1)
        begin
   select 1 as retunvalue
end

else
   begin
 select -1 as retunvalue
 end
 
end
GO
/****** Object:  StoredProcedure [dbo].[spManagerRegisterInsert]    Script Date: 17/04/2020 1:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spManagerRegisterInsert]
@manager_name varchar(50),
@manager_email varchar(50),
@password  varchar(100)
as
begin
      declare @count int
 declare @returnvalue int
 select @count = COUNT(manager_email) from manager where manager_email= @manager_email
     if @count>0
     begin
    set @returnvalue = -1
end


else
 begin
    set @returnvalue = 1
insert into manager(manager_name,manager_email,manager_password) values
(@manager_name,@manager_email,@password)
end
select @returnvalue as returnvalue
end
GO
/****** Object:  StoredProcedure [dbo].[spQuestionsearchInterview]    Script Date: 17/04/2020 1:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spQuestionsearchInterview]
@interviewid int
as
begin
     select * from question
	 join interview
	 on
	 interview.interview_id = question.interview_fid
	 where interview_fid = @interviewid
	 
end
GO
/****** Object:  StoredProcedure [dbo].[spResultInsert]    Script Date: 17/04/2020 1:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spResultInsert]
@interviewfid varchar(150),
@resultstatus varchar(150),
@resultscore int,
@totalquestion int,
@candidatename varchar(50),
@interviewdate date
as
begin
      insert into result (interview_fid,result_status,result_score,totalquestion,candidate_email,interview_date) values
	  (@interviewfid,@resultstatus,@resultscore,@totalquestion,@candidatename,@interviewdate)
	  
end
GO
USE [master]
GO
ALTER DATABASE [Onlineinterview] SET  READ_WRITE 
GO

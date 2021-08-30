USE [TIMECHECK]
GO
/****** Object:  Table [dbo].[ADS_TBL_app_setting]    Script Date: 3/31/2021 10:20:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_app_setting](
	[vname] [nvarchar](40) NOT NULL,
	[value] [nvarchar](200) NULL,
	[descr] [nvarchar](300) NULL,
	[tab_no] [int] NULL,
	[deleted] [int] NULL CONSTRAINT [DF_app_setting_deleted]  DEFAULT ((0)),
	[created_id] [int] NULL,
	[created_date] [datetime] NULL,
	[updated_id] [int] NULL,
	[updated_date] [datetime] NULL,
 CONSTRAINT [PK_app_setting] PRIMARY KEY CLUSTERED 
(
	[vname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_countries]    Script Date: 3/31/2021 10:20:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_countries](
	[country_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](50) NOT NULL,
	[description_eng] [nvarchar](50) NOT NULL,
	[description_arb] [nvarchar](50) NOT NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL CONSTRAINT [DF_countries_created_date]  DEFAULT (getdate()),
	[last_updated_id] [int] NOT NULL,
	[last_updated_date] [datetime] NOT NULL CONSTRAINT [DF_countries_last_updated_time]  DEFAULT (getdate()),
 CONSTRAINT [PK_countries] PRIMARY KEY CLUSTERED 
(
	[country_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_daily_EmployeeAttendanceDetails]    Script Date: 3/31/2021 10:20:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_daily_EmployeeAttendanceDetails](
	[daily_EmployeeAttendanceDetails_id] [int] IDENTITY(1,1) NOT NULL,
	[Ddate] [datetime] NOT NULL,
	[employee_id] [int] NOT NULL,
	[employee_code] [nvarchar](10) NOT NULL,
	[organization_id] [int] NULL,
	[grade_id] [int] NULL,
	[designation_id] [int] NULL,
	[country_id] [int] NULL,
	[manager_flag] [nvarchar](1) NULL,
	[manager_id] [int] NULL,
	[email] [nvarchar](50) NULL,
	[employee_type_id] [int] NULL,
	[top_mgr] [nvarchar](50) NULL,
	[inpayroll] [nvarchar](50) NULL,
	[join_date] [datetime] NULL,
	[inactive_date] [datetime] NULL,
	[schedule_id] [int] NULL,
	[in_time1] [datetime] NULL,
	[out_time1] [datetime] NULL,
	[in_time2] [datetime] NULL,
	[out_time2] [datetime] NULL,
	[in_time3] [datetime] NULL,
	[out_time3] [datetime] NULL,
	[flexibletime] [int] NULL,
	[gracetime_in] [int] NULL,
	[gracetime_out] [int] NULL,
	[ActualSchInPerMove] [datetime] NULL,
	[ActualSchOutPerMove] [datetime] NULL,
	[ActualSchOUTCalculated] [datetime] NULL,
	[NightShift] [int] NULL,
	[holiday] [int] NULL,
	[restday] [int] NULL,
	[leave] [int] NULL,
	[EmpLeaveID] [int] NULL,
	[HolidayID] [int] NULL,
	[absent] [int] NULL,
	[shift1_absent] [int] NULL,
	[shift2_absent] [int] NULL,
	[shift3_absent] [int] NULL,
	[absent_approved] [int] NULL,
	[absent_approved_id] [int] NULL,
	[absent_approved_name_eng] [nvarchar](200) NULL,
	[absent_approved_name_arb] [nvarchar](200) NULL,
	[absent_approved_unit_eng] [nvarchar](200) NULL,
	[absent_approved_unit_arb] [nvarchar](200) NULL,
	[AbsentMts] [int] NULL,
	[Time_In] [datetime] NULL,
	[Time_Out] [datetime] NULL,
	[reason_in_id] [int] NULL,
	[reason_out_id] [int] NULL,
	[reader_in_id] [int] NULL,
	[reader_out_id] [int] NULL,
	[late] [int] NULL,
	[late_approved] [int] NULL,
	[late_approved_id] [int] NULL,
	[late_approved_name_eng] [nvarchar](200) NULL,
	[late_approved_name_arb] [nvarchar](200) NULL,
	[late_approved_unit_eng] [nvarchar](200) NULL,
	[late_approved_unit_arb] [nvarchar](200) NULL,
	[early] [int] NULL,
	[early_approved] [int] NULL,
	[early_approved_id] [int] NULL,
	[early_approved_name_eng] [nvarchar](200) NULL,
	[early_approved_name_arb] [nvarchar](200) NULL,
	[early_approved_unit_eng] [nvarchar](200) NULL,
	[early_approved_unit_arb] [nvarchar](200) NULL,
	[Comment] [nvarchar](300) NULL,
	[Remarks] [nvarchar](100) NULL,
	[RemarksEng] [nvarchar](200) NULL,
	[RemarksArb] [nvarchar](200) NULL,
	[IN_PermissionID] [int] NULL,
	[IN_perm_from_time] [datetime] NULL,
	[IN_perm_to_time] [datetime] NULL,
	[OUT_PermissionID] [int] NULL,
	[OUT_perm_from_time] [datetime] NULL,
	[OUT_perm_to_time] [datetime] NULL,
	[perm_late] [int] NULL,
	[perm_early] [int] NULL,
	[fulldaypermission] [int] NULL,
	[IN_OffcialPerm] [nvarchar](50) NULL,
	[OUT_OffcialPerm] [nvarchar](50) NULL,
	[PermAppliedMts] [int] NULL,
	[Perm_time_used] [int] NULL,
	[perm_violation] [nvarchar](100) NULL,
	[open_shift] [nvarchar](50) NULL,
	[shiftno] [int] NULL,
	[worktime] [int] NULL,
	[overtime] [int] NULL,
	[earlyin] [int] NULL,
	[lateout] [int] NULL,
	[comment_for_update] [nvarchar](200) NULL,
	[EmployeeNameEng] [nvarchar](250) NULL,
	[EmployeeNameArb] [nvarchar](250) NULL,
	[OrgUnitCode] [nvarchar](50) NULL,
	[OrgUnitEng] [nvarchar](200) NULL,
	[OrgUnitArb] [nvarchar](200) NULL,
	[DesignationCode] [nvarchar](100) NULL,
	[DesignationEng] [nvarchar](200) NULL,
	[DesignationArb] [nvarchar](200) NULL,
	[GradeCode] [nvarchar](50) NULL,
	[GradeEng] [nvarchar](200) NULL,
	[GradeArb] [nvarchar](200) NULL,
	[NationCode] [nvarchar](50) NULL,
	[NationEng] [nvarchar](200) NULL,
	[NationArb] [nvarchar](200) NULL,
	[InReaderCode] [nvarchar](50) NULL,
	[InReaderEng] [nvarchar](200) NULL,
	[InReaderArb] [nvarchar](200) NULL,
	[OutReaderCode] [nvarchar](50) NULL,
	[OutReaderEng] [nvarchar](200) NULL,
	[OutReaderArb] [nvarchar](200) NULL,
	[created_id] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[last_updated_id] [int] NULL,
	[last_updated_date] [datetime] NOT NULL,
	[InReasonCode] [nvarchar](50) NULL,
	[InReasonEng] [nvarchar](200) NULL,
	[InReasonArb] [nvarchar](200) NULL,
	[OutReasonCode] [nvarchar](50) NULL,
	[OutReasonEng] [nvarchar](200) NULL,
	[OutReasonArb] [nvarchar](200) NULL,
	[late_approved_date] [datetime] NULL,
	[early_approved_date] [datetime] NULL,
	[absent_approved_date] [datetime] NULL,
	[late_approved_remarks] [nvarchar](500) NULL,
	[early_approved_remarks] [nvarchar](500) NULL,
	[absent_approved_remarks] [nvarchar](500) NULL,
	[region_id] [int] NULL,
	[region_code] [nvarchar](50) NULL,
	[region_eng] [nvarchar](200) NULL,
	[region_arb] [nvarchar](200) NULL,
	[OT1] [int] NULL,
	[OT2] [int] NULL,
	[OT1_PROCESSED] [int] NULL,
	[OT2_PROCESSED] [int] NULL,
	[OT_request_status] [int] NULL,
	[OT_request_userid] [int] NULL,
	[OT_request_date] [datetime] NULL,
	[OT_action_status] [int] NULL,
	[OT_action_userid] [int] NULL,
	[OT_action_date] [datetime] NULL,
	[OT_processed_status] [int] NULL,
	[OT_processed_userid] [int] NULL,
	[OT_processed_date] [datetime] NULL,
	[late_applied_id] [int] NULL,
	[early_applied_id] [int] NULL,
	[absent_applied_id] [int] NULL,
	[late_applied_date] [datetime] NULL,
	[early_applied_date] [datetime] NULL,
	[absent_applied_date] [datetime] NULL,
	[late_applied_remarks] [nvarchar](500) NULL,
	[early_applied_remarks] [nvarchar](500) NULL,
	[absent_applied_remarks] [nvarchar](500) NULL,
	[OutMinutes] [int] NULL,
	[default_Overtime] [int] NOT NULL,
	[break_hours] [int] NULL,
	[extratime] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_designations]    Script Date: 3/31/2021 10:20:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_designations](
	[designation_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](200) NOT NULL,
	[description_arb] [nvarchar](200) NOT NULL,
	[description_eng] [nvarchar](200) NOT NULL,
	[vacancy] [int] NULL CONSTRAINT [DF_designations_vacancy]  DEFAULT ((0)),
	[remarks] [nvarchar](255) NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL CONSTRAINT [DF_designations_created_date]  DEFAULT (getdate()),
	[last_updated_id] [int] NOT NULL,
	[last_updated_date] [datetime] NOT NULL CONSTRAINT [DF_designations_last_updated_time]  DEFAULT (getdate()),
 CONSTRAINT [PK_designations] PRIMARY KEY CLUSTERED 
(
	[designation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_device_groups]    Script Date: 3/31/2021 10:20:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_device_groups](
	[group_id] [int] IDENTITY(1,1) NOT NULL,
	[organization_id] [int] NOT NULL,
	[code] [int] NOT NULL,
	[name_arb] [nvarchar](50) NOT NULL,
	[name_eng] [nvarchar](50) NOT NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[last_updated_id] [int] NOT NULL,
	[last_updated_date] [datetime] NOT NULL,
 CONSTRAINT [PK_device_groups] PRIMARY KEY CLUSTERED 
(
	[group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_email_log]    Script Date: 3/31/2021 10:20:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_email_log](
	[email_log_id] [int] IDENTITY(1,1) NOT NULL,
	[HTML_body] [nvarchar](max) NULL,
	[employee_id] [int] NOT NULL,
	[from_email] [nvarchar](100) NULL,
	[to_email] [nvarchar](100) NULL,
	[cc_email] [nvarchar](100) NULL,
	[bcc_email] [nvarchar](100) NULL,
	[smtp_server_name] [nvarchar](100) NULL,
	[port_no] [nvarchar](20) NULL,
	[web_server_name] [nvarchar](50) NULL,
	[email_log_created_id] [int] NOT NULL,
	[log_created_date] [datetime] NOT NULL,
	[organization_id] [int] NOT NULL,
	[event_name] [nvarchar](50) NULL,
	[email_send_status] [nvarchar](50) NULL,
	[email_sent_time] [datetime] NULL,
	[exception_message] [nvarchar](50) NULL,
 CONSTRAINT [PK_email_logid] PRIMARY KEY CLUSTERED 
(
	[email_log_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_Email_Type]    Script Date: 3/31/2021 10:20:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_Email_Type](
	[EmailTypeID] [int] NOT NULL,
	[Email_Subject] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_Emails]    Script Date: 3/31/2021 10:20:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADS_TBL_Emails](
	[email_id] [int] IDENTITY(1,1) NOT NULL,
	[to_text] [nvarchar](1000) NULL,
	[subject_text] [nvarchar](1000) NULL,
	[body_text] [varchar](max) NULL,
	[email_status] [int] NULL,
	[type_id] [int] NULL,
	[created_date_time] [datetime] NULL,
	[created_by] [int] NULL,
	[last_updated_id] [int] NULL,
	[last_updated_datetime] [datetime] NULL,
	[cc_email] [varchar](200) NULL,
	[bcc_email] [varchar](200) NULL,
	[processed_date] [datetime] NULL,
	[is_complete_violation_email] [bit] NULL,
 CONSTRAINT [PK_Emails] PRIMARY KEY CLUSTERED 
(
	[email_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADS_TBL_employee_admin_organizations]    Script Date: 3/31/2021 10:20:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_employee_admin_organizations](
	[dept_admin_org_id] [int] IDENTITY(1,1) NOT NULL,
	[dept_admin_id] [int] NOT NULL,
	[organization_id] [int] NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_dept_admin_organizations] PRIMARY KEY CLUSTERED 
(
	[dept_admin_org_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_employee_admins]    Script Date: 3/31/2021 10:20:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_employee_admins](
	[dept_admin_id] [int] IDENTITY(1,1) NOT NULL,
	[employee_id] [int] NOT NULL,
	[from_date] [datetime] NOT NULL,
	[to_date] [datetime] NOT NULL,
	[delegation_level] [int] NOT NULL,
	[status] [bit] NOT NULL,
	[remarks] [nvarchar](1000) NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[updated_id] [int] NOT NULL,
	[updated_date] [datetime] NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_dept_admins] PRIMARY KEY CLUSTERED 
(
	[dept_admin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_employee_cards]    Script Date: 3/31/2021 10:20:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_employee_cards](
	[employee_card_id] [int] IDENTITY(1,1) NOT NULL,
	[employee_id] [int] NOT NULL,
	[card_no] [nvarchar](100) NOT NULL,
	[from_date] [datetime] NOT NULL,
	[to_date] [datetime] NULL,
	[update_id] [int] NOT NULL,
	[updated_date] [datetime] NOT NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
 CONSTRAINT [PK_employee_cards] PRIMARY KEY CLUSTERED 
(
	[employee_card_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_employee_delegate_features]    Script Date: 3/31/2021 10:20:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_employee_delegate_features](
	[delegate_feature_id] [int] IDENTITY(1,1) NOT NULL,
	[delegate_id] [int] NOT NULL,
	[feature_id] [int] NOT NULL,
 CONSTRAINT [PK_delegate_features] PRIMARY KEY CLUSTERED 
(
	[delegate_feature_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_employee_delegates]    Script Date: 3/31/2021 10:20:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_employee_delegates](
	[delegate_id] [int] IDENTITY(1,1) NOT NULL,
	[employee_id] [int] NOT NULL,
	[delegated_employee_id] [int] NOT NULL,
	[from_date] [datetime] NOT NULL,
	[to_date] [datetime] NOT NULL,
	[remarks] [nvarchar](500) NULL,
	[status] [bit] NOT NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[updated_id] [int] NOT NULL,
	[updated_date] [datetime] NOT NULL,
 CONSTRAINT [PK_delegates] PRIMARY KEY CLUSTERED 
(
	[delegate_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_employee_event_transactions]    Script Date: 3/31/2021 10:20:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_employee_event_transactions](
	[transaction_id] [int] IDENTITY(1,1) NOT NULL,
	[employee_id] [int] NOT NULL,
	[transaction_time] [datetime] NOT NULL,
	[reason_id] [int] NOT NULL,
	[remarks] [nvarchar](255) NULL,
	[reader_id] [int] NULL,
	[user_entry_flag] [int] NOT NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[last_updated_id] [int] NOT NULL,
	[last_updated_date] [datetime] NOT NULL,
	[reader_location] [nvarchar](100) NULL,
 CONSTRAINT [PK_employee_move_transactions] PRIMARY KEY CLUSTERED 
(
	[transaction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_employee_grace_times]    Script Date: 3/31/2021 10:20:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_employee_grace_times](
	[employee_grace_time_id] [int] IDENTITY(1,1) NOT NULL,
	[employee_id] [int] NOT NULL,
	[from_date] [datetime] NOT NULL,
	[to_date] [datetime] NOT NULL,
	[in_grace_time] [numeric](18, 2) NULL,
	[out_grace_time] [numeric](18, 2) NULL,
	[tcn] [int] NOT NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[last_updated_id] [int] NOT NULL,
	[last_updated_date] [datetime] NOT NULL,
 CONSTRAINT [PK_employee_grace_times] PRIMARY KEY CLUSTERED 
(
	[employee_grace_time_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_employee_group_members]    Script Date: 3/31/2021 10:20:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_employee_group_members](
	[group_member_id] [int] IDENTITY(1,1) NOT NULL,
	[employee_group_id] [int] NOT NULL,
	[employee_id] [int] NOT NULL,
	[effective_from_date] [datetime] NOT NULL,
	[effective_to_date] [datetime] NULL,
	[active_flag] [int] NOT NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[last_updated_id] [int] NOT NULL,
	[last_updated_date] [datetime] NOT NULL,
 CONSTRAINT [PK_employee_group_members] PRIMARY KEY CLUSTERED 
(
	[group_member_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_employee_groups]    Script Date: 3/31/2021 10:20:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_employee_groups](
	[employee_group_id] [int] IDENTITY(1,1) NOT NULL,
	[group_code] [nvarchar](10) NOT NULL,
	[group_name_eng] [nvarchar](50) NOT NULL,
	[group_name_arb] [nvarchar](50) NOT NULL,
	[shift_flag] [bit] NOT NULL,
	[From_Date] [datetime] NULL,
	[To_Date] [datetime] NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[last_updated_id] [int] NOT NULL,
	[last_updated_date] [datetime] NOT NULL,
 CONSTRAINT [PK_employee_groups] PRIMARY KEY CLUSTERED 
(
	[employee_group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_employee_images]    Script Date: 3/31/2021 10:20:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADS_TBL_employee_images](
	[employee_image_id] [int] IDENTITY(1,1) NOT NULL,
	[employee_id] [int] NOT NULL,
	[image] [varbinary](max) NULL,
	[Ext] [varchar](50) NULL,
	[updated_id] [int] NOT NULL,
	[updated_date] [datetime] NOT NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
 CONSTRAINT [PK_employee_images] PRIMARY KEY CLUSTERED 
(
	[employee_image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADS_TBL_employee_leaves]    Script Date: 3/31/2021 10:20:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADS_TBL_employee_leaves](
	[employee_leave_id] [int] IDENTITY(1,1) NOT NULL,
	[leave_id] [int] NOT NULL,
	[employee_id] [int] NOT NULL,
	[from_date] [datetime] NOT NULL,
	[to_date] [datetime] NOT NULL,
	[number_of_leaves] [numeric](18, 2) NOT NULL,
	[remarks] [nvarchar](255) NULL,
	[approve_reject_flag] [int] NULL,
	[approver_id] [int] NULL,
	[approved_date] [datetime] NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[last_updated_id] [int] NOT NULL,
	[last_updated_time] [datetime] NOT NULL,
	[info_source_reference] [varchar](200) NULL,
 CONSTRAINT [PK_employee_leaves] PRIMARY KEY CLUSTERED 
(
	[employee_leave_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADS_TBL_employee_manual_event_transactions]    Script Date: 3/31/2021 10:20:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_employee_manual_event_transactions](
	[transaction_id] [int] IDENTITY(1,1) NOT NULL,
	[employee_id] [int] NOT NULL,
	[from_date] [datetime] NOT NULL,
	[to_date] [datetime] NOT NULL,
	[from_time] [nvarchar](5) NULL,
	[to_time] [nvarchar](5) NULL,
	[remarks] [nvarchar](max) NULL,
	[approver_remarks] [nvarchar](50) NULL,
	[approve_reject_flag] [int] NOT NULL,
	[approver_id] [int] NULL,
	[approved_date] [datetime] NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[updated_id] [int] NOT NULL,
	[updated_date] [datetime] NOT NULL,
	[minutes] [int] NULL,
	[deleted_flag] [bit] NOT NULL,
	[processed_flag] [bit] NOT NULL,
 CONSTRAINT [PK_employee_manual_event_transactions] PRIMARY KEY CLUSTERED 
(
	[transaction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_employee_manual_transactions]    Script Date: 3/31/2021 10:20:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_employee_manual_transactions](
	[transaction_id] [int] IDENTITY(1,1) NOT NULL,
	[employee_id] [int] NOT NULL,
	[transaction_date] [datetime] NOT NULL,
	[transaction_time] [datetime] NOT NULL,
	[reason_id] [int] NOT NULL,
	[remarks] [nvarchar](max) NULL,
	[status] [nvarchar](20) NOT NULL,
	[created_id] [int] NULL,
	[created_date] [datetime] NULL,
	[updated_id] [int] NULL,
	[updated_date] [datetime] NULL,
	[reader_id] [int] NULL,
 CONSTRAINT [PK_employee_manual_transactions] PRIMARY KEY CLUSTERED 
(
	[transaction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_employee_master]    Script Date: 3/31/2021 10:20:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADS_TBL_employee_master](
	[employee_id] [int] IDENTITY(1,1) NOT NULL,
	[employee_code] [nvarchar](10) NOT NULL,
	[salutation_eng] [nvarchar](10) NULL,
	[salutation_arb] [nvarchar](10) NULL,
	[name_eng] [nvarchar](255) NOT NULL,
	[name_arb] [nvarchar](255) NOT NULL,
	[card_number] [nvarchar](50) NULL,
	[reader_password] [nvarchar](50) NULL,
	[organization_id] [int] NULL,
	[grade_id] [int] NULL,
	[designation_id] [int] NULL,
	[country_id] [int] NULL,
	[join_date] [datetime] NULL,
	[inactive_date] [datetime] NULL,
	[status_flag] [int] NULL CONSTRAINT [DF_employees_status_flag]  DEFAULT ((0)),
	[sex_flag] [int] NULL CONSTRAINT [DF_employees_sex]  DEFAULT ((0)),
	[local_flag] [int] NULL CONSTRAINT [DF_employees_local_flag]  DEFAULT ((0)),
	[punch_flag] [int] NULL CONSTRAINT [DF_employees_exempt_flag]  DEFAULT ((0)),
	[shift_flag] [int] NULL CONSTRAINT [DF_employees_shift_flag]  DEFAULT ((0)),
	[overtime_flag] [int] NULL CONSTRAINT [DF_employees_overtime_flag]  DEFAULT ((0)),
	[on_reports_flag] [int] NULL CONSTRAINT [DF_employees_on_reports_flag]  DEFAULT ((0)),
	[schedule_type_id] [int] NOT NULL CONSTRAINT [DF_employee_master_schedule_type_id]  DEFAULT ((0)),
	[remarks] [nvarchar](255) NULL,
	[photo_file_name] [nvarchar](50) NULL,
	[manager_flag] [bit] NULL CONSTRAINT [DF_employee_managerflg]  DEFAULT (''),
	[manager_id] [int] NULL,
	[email] [nvarchar](50) NULL,
	[employee_type_id] [int] NULL,
	[inpayroll] [bit] NULL CONSTRAINT [DF_employee_inpayroll]  DEFAULT ('Y'),
	[region_id] [int] NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL CONSTRAINT [DF_employees_created_date]  DEFAULT (getdate()),
	[last_updated_id] [int] NOT NULL,
	[last_updated_date] [datetime] NOT NULL CONSTRAINT [DF_employees_last_updated_date]  DEFAULT (getdate()),
	[share_roaster] [int] NOT NULL CONSTRAINT [DF_employee_master_share_roster]  DEFAULT ((0)),
	[mobile] [varchar](50) NULL,
	[active_date] [datetime] NOT NULL CONSTRAINT [DF__employee___activ__3AD6B8E2]  DEFAULT (getdate()),
	[notify_flag] [bit] NOT NULL CONSTRAINT [DF__employee___notif__3BCADD1B]  DEFAULT ((1)),
	[include_notifications] [bit] NOT NULL CONSTRAINT [DF__employee___inclu__3CBF0154]  DEFAULT ((1)),
	[open_shift_flag] [int] NOT NULL CONSTRAINT [DF_employee_master_open_shift_flag]  DEFAULT ((0)),
	[web_punch_flag] [int] NOT NULL CONSTRAINT [DF_employee_master_web_punch_flag]  DEFAULT ((1)),
	[monthly_Missed_hours_flag] [int] NULL CONSTRAINT [DF_employee_master_monthly_Missed_hours_flag]  DEFAULT ((0)),
 CONSTRAINT [PK_employees] PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADS_TBL_employee_master_personal]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_employee_master_personal](
	[employee_id] [int] IDENTITY(1,1) NOT NULL,
	[marital_status] [int] NULL,
	[qualification] [nvarchar](100) NULL,
	[residence_phone_number] [nvarchar](50) NULL,
	[mobile] [nvarchar](50) NULL,
	[bleeper] [nvarchar](50) NULL,
	[email1] [nvarchar](50) NULL,
	[email2] [nvarchar](50) NULL,
	[email3] [nvarchar](50) NULL,
	[permanent_address] [nvarchar](1024) NULL,
	[permanent_zip_code] [nvarchar](15) NULL,
	[remarks] [nvarchar](255) NULL,
	[driving_license_number] [nvarchar](50) NULL,
	[license_place_of_issue] [nvarchar](50) NULL,
	[passport_number] [nvarchar](50) NULL,
	[birth_date] [datetime] NULL,
	[place_of_birth] [nvarchar](50) NULL,
	[passport_place_of_issue] [nvarchar](50) NULL,
	[passport_date_of_issue] [datetime] NULL,
	[passport_date_of_expiry] [datetime] NULL,
	[passport_hold_flag] [int] NULL,
	[passport_remarks] [nvarchar](255) NULL,
	[visa_number] [nvarchar](50) NULL,
	[visa_issue_date] [datetime] NULL,
	[visa_place_of_issue] [nvarchar](50) NULL,
	[visa_date_of_expire] [datetime] NULL,
	[labour_hire_country_id] [int] NULL,
	[labour_hire_city] [nvarchar](50) NULL,
	[labour_contract_date] [datetime] NULL,
	[labour_date_of_expire] [datetime] NULL,
	[place_of_old_service] [nvarchar](50) NULL,
	[old_service_from_date] [datetime] NULL,
	[old_service_to_date] [datetime] NULL,
	[old_service_profession] [nvarchar](50) NULL,
	[photo_file_name] [nvarchar](50) NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[last_updated_id] [int] NOT NULL,
	[last_updated_date] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_employee_missing_transactions]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_employee_missing_transactions](
	[transaction_id] [int] IDENTITY(1,1) NOT NULL,
	[employee_id] [int] NOT NULL,
	[transaction_date] [datetime] NOT NULL,
	[transaction_time] [datetime] NOT NULL,
	[reason_id] [int] NOT NULL,
	[remarks] [nvarchar](max) NULL,
	[status] [nvarchar](20) NOT NULL,
	[created_id] [int] NULL,
	[created_date] [datetime] NULL,
	[updated_id] [int] NULL,
	[updated_date] [datetime] NULL,
	[employee_events_transaction_id] [numeric](18, 0) NULL,
 CONSTRAINT [PK_employee_missing_transactions] PRIMARY KEY CLUSTERED 
(
	[transaction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_employee_readers]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADS_TBL_employee_readers](
	[employee_readers_id] [int] IDENTITY(1,1) NOT NULL,
	[employee_id] [int] NOT NULL,
	[reader_id] [int] NOT NULL,
	[status] [varchar](2) NULL,
	[created_date] [datetime] NOT NULL,
	[last_updated_date] [datetime] NOT NULL,
 CONSTRAINT [PK__ADS_TBL___78C394BC43864539] PRIMARY KEY CLUSTERED 
(
	[employee_readers_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADS_TBL_employee_salary]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_employee_salary](
	[employee_salary_id] [int] IDENTITY(1,1) NOT NULL,
	[employee_id] [int] NOT NULL,
	[basic_salary] [decimal](18, 2) NOT NULL,
	[monthly_allowance] [int] NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[updated_id] [int] NULL,
	[updated_date] [datetime] NULL,
 CONSTRAINT [PK_employee_salary] PRIMARY KEY CLUSTERED 
(
	[employee_salary_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_employee_schedules]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_employee_schedules](
	[employee_schedule_id] [int] IDENTITY(1,1) NOT NULL,
	[employee_id] [int] NOT NULL,
	[from_date] [datetime] NOT NULL,
	[to_date] [datetime] NOT NULL,
	[monday_schedule_id] [int] NULL,
	[tuesday_schedule_id] [int] NULL,
	[wednesday_schedule_id] [int] NULL,
	[thursday_schedule_id] [int] NULL,
	[friday_schedule_id] [int] NULL,
	[saturday_schedule_id] [int] NULL,
	[sunday_schedule_id] [int] NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[last_updated_id] [int] NOT NULL,
	[last_updated_time] [datetime] NOT NULL,
 CONSTRAINT [PK_employee_schedules] PRIMARY KEY CLUSTERED 
(
	[employee_schedule_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_employee_templates]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADS_TBL_employee_templates](
	[employee_template_id] [int] IDENTITY(1,1) NOT NULL,
	[employee_id] [int] NOT NULL,
	[template] [varchar](2500) NOT NULL,
	[tcn] [int] NOT NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[last_updated_id] [int] NOT NULL,
	[last_updated_date] [datetime] NOT NULL,
 CONSTRAINT [PK_employee_templates] PRIMARY KEY CLUSTERED 
(
	[employee_template_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADS_TBL_employee_type]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADS_TBL_employee_type](
	[employee_type_id] [int] IDENTITY(1,1) NOT NULL,
	[employee_type_code] [varchar](30) NOT NULL,
	[description_eng] [nvarchar](50) NOT NULL,
	[description_arb] [nvarchar](50) NOT NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL CONSTRAINT [DF_employee_type_created_date]  DEFAULT (getdate()),
	[last_updated_id] [int] NOT NULL,
	[last_updated_date] [datetime] NOT NULL CONSTRAINT [DF_employee_type_last_updated_date]  DEFAULT (getdate()),
 CONSTRAINT [PK_employee_type_id] PRIMARY KEY CLUSTERED 
(
	[employee_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADS_TBL_features]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADS_TBL_features](
	[feature_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](200) NULL,
	[description_eng] [varchar](200) NOT NULL,
	[description_arb] [nvarchar](200) NOT NULL,
	[status] [bit] NOT NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[updated_id] [int] NOT NULL,
	[updated_date] [datetime] NOT NULL,
 CONSTRAINT [PK_features] PRIMARY KEY CLUSTERED 
(
	[feature_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADS_TBL_grades]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADS_TBL_grades](
	[grade_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](30) NOT NULL,
	[description_eng] [nvarchar](50) NOT NULL,
	[description_arb] [nvarchar](50) NOT NULL,
	[number_of_CL] [int] NOT NULL CONSTRAINT [DF_grades_number_of_CL]  DEFAULT ((0)),
	[number_of_SL] [int] NOT NULL CONSTRAINT [DF_grades_number_of_SL]  DEFAULT ((0)),
	[number_of_AL] [int] NOT NULL CONSTRAINT [DF_grades_number_of_AL]  DEFAULT ((0)),
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL CONSTRAINT [DF_grades_created_date]  DEFAULT (getdate()),
	[last_updated_id] [int] NOT NULL,
	[last_updated_date] [datetime] NOT NULL CONSTRAINT [DF_grades_last_updated_date]  DEFAULT (getdate()),
	[overtime_eligible_flag] [varchar](1) NULL CONSTRAINT [DF_grades_OT_eligibleflg]  DEFAULT ('N'),
	[senior_flag] [varchar](1) NOT NULL CONSTRAINT [DF_grades_senior_flag]  DEFAULT ('N'),
 CONSTRAINT [PK_grades] PRIMARY KEY CLUSTERED 
(
	[grade_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADS_TBL_group_permission_employees]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_group_permission_employees](
	[permission_employee_id] [int] IDENTITY(1,1) NOT NULL,
	[group_permissions_id] [int] NOT NULL,
	[employee_id] [int] NOT NULL,
	[tcn] [int] NOT NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[last_updated_id] [int] NOT NULL,
	[last_updated_time] [datetime] NOT NULL,
	[minutes] [int] NULL,
 CONSTRAINT [PK_group_permission_employees] PRIMARY KEY CLUSTERED 
(
	[permission_employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_group_permissions]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_group_permissions](
	[group_permissions_id] [int] IDENTITY(1,1) NOT NULL,
	[permission_name] [nvarchar](50) NOT NULL,
	[organization_id] [int] NOT NULL,
	[permission_type_id] [int] NOT NULL,
	[from_date] [datetime] NOT NULL,
	[to_date] [datetime] NOT NULL,
	[from_time] [nvarchar](5) NOT NULL,
	[to_time] [nvarchar](5) NOT NULL,
	[remarks] [nvarchar](50) NOT NULL,
	[approve_reject_flag] [int] NOT NULL,
	[approver_id] [int] NULL,
	[approved_date] [datetime] NULL,
	[tcn] [int] NOT NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[last_updated_id] [int] NOT NULL,
	[last_updated_time] [datetime] NOT NULL,
	[minutes] [int] NULL,
 CONSTRAINT [PK_group_permissions] PRIMARY KEY CLUSTERED 
(
	[group_permissions_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_group_schedules]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_group_schedules](
	[group_schedule_id] [int] IDENTITY(1,1) NOT NULL,
	[employee_group_id] [int] NOT NULL,
	[from_date] [datetime] NOT NULL,
	[to_date] [datetime] NOT NULL,
	[monday_schedule_id] [int] NULL,
	[tuesday_schedule_id] [int] NULL,
	[wednesday_schedule_id] [int] NULL,
	[thursday_schedule_id] [int] NULL,
	[friday_schedule_id] [int] NULL,
	[saturday_schedule_id] [int] NULL,
	[sunday_schedule_id] [int] NULL,
	[created_id] [int] NOT NULL,
	[created_time] [datetime] NOT NULL,
	[last_updated_id] [int] NOT NULL,
	[last_updated_time] [datetime] NOT NULL,
 CONSTRAINT [PK_group_schedule] PRIMARY KEY CLUSTERED 
(
	[group_schedule_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_holidays]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_holidays](
	[holiday_id] [int] IDENTITY(1,1) NOT NULL,
	[description_arb] [nvarchar](50) NOT NULL,
	[description_eng] [nvarchar](50) NOT NULL,
	[remarks] [nvarchar](255) NULL,
	[from_date] [datetime] NOT NULL,
	[to_date] [datetime] NOT NULL,
	[recurring_flag] [int] NOT NULL CONSTRAINT [DF_holidays_recurring_flag]  DEFAULT ((0)),
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL CONSTRAINT [DF_holidays_created_date]  DEFAULT (getdate()),
	[last_updated_id] [int] NOT NULL,
	[last_updated_time] [datetime] NOT NULL CONSTRAINT [DF_holidays_last_updated_time]  DEFAULT (getdate()),
	[info_source_reference] [nvarchar](50) NULL,
	[Public_Holiday] [int] NULL,
 CONSTRAINT [PK_holidays] PRIMARY KEY CLUSTERED 
(
	[holiday_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_leaves]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADS_TBL_leaves](
	[leave_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](50) NOT NULL,
	[description_eng] [nvarchar](50) NULL,
	[description_arb] [nvarchar](50) NULL,
	[approve_need_flag] [int] NOT NULL CONSTRAINT [DF_leaves_approve_need_flag]  DEFAULT ((0)),
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL CONSTRAINT [DF_leaves_created_date]  DEFAULT (getdate()),
	[last_updated_id] [int] NOT NULL,
	[last_updated_date] [datetime] NOT NULL CONSTRAINT [DF_leaves_last_updated_date]  DEFAULT (getdate()),
	[official_flag] [varchar](1) NULL CONSTRAINT [DF_leaves_official_flag]  DEFAULT ('N'),
	[allow_attachement] [int] NOT NULL CONSTRAINT [DF_leaves_allow_attachement]  DEFAULT ((0)),
 CONSTRAINT [PK_leaves_id] PRIMARY KEY CLUSTERED 
(
	[leave_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADS_TBL_License]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADS_TBL_License](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LicenseType] [varchar](50) NULL,
	[LicenseValidationEndPoint] [nvarchar](200) NULL,
	[Code] [varchar](50) NULL,
	[NameEn] [nvarchar](200) NULL,
	[NameAr] [nvarchar](200) NULL,
	[APIEndpoint] [nvarchar](200) NULL,
	[APIUsername] [nvarchar](200) NULL,
	[APIPassword] [nvarchar](200) NULL,
	[PrimaryLicenseKey] [nvarchar](max) NULL,
	[LicenseId] [nvarchar](max) NULL,
	[DescriptionEn] [nvarchar](500) NULL,
	[DescriptionAr] [nvarchar](500) NULL,
	[DbType] [nvarchar](100) NULL,
	[DbName] [nvarchar](100) NULL,
	[DbUser] [nvarchar](100) NULL,
	[DbPassword] [nvarchar](100) NULL,
	[LogoFile] [nvarchar](200) NULL,
	[ActivationDate] [datetime] NULL,
	[ExpiryDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
	[UpdatedBy] [int] NOT NULL,
 CONSTRAINT [PK_ADS_TBL_License] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADS_TBL_locations]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_locations](
	[location_id] [int] IDENTITY(1,1) NOT NULL,
	[organization_id] [int] NOT NULL,
	[code] [int] NOT NULL,
	[computer_name] [nvarchar](50) NOT NULL,
	[card_no_length] [int] NOT NULL CONSTRAINT [DF_locations_card_no_length]  DEFAULT ((6)),
	[polling_retry] [int] NOT NULL CONSTRAINT [DF_locations_poll_retry]  DEFAULT ((3)),
	[connection_retry] [int] NOT NULL CONSTRAINT [DF_locations_connection_retry]  DEFAULT ((3)),
	[polling_timeout] [int] NOT NULL CONSTRAINT [DF_locations_polling_timeout]  DEFAULT ((3000)),
	[polling_delay] [int] NOT NULL CONSTRAINT [DF_locations_polling_delay]  DEFAULT ((3000)),
	[reconnection_delay] [int] NOT NULL CONSTRAINT [DF_locations_reconnection_delay]  DEFAULT ((30)),
	[polling_frequency] [int] NOT NULL CONSTRAINT [DF_locations_polling_frequency]  DEFAULT ((1)),
	[polling_mode_flag] [int] NOT NULL CONSTRAINT [DF_locations_polling_mode_flag]  DEFAULT ((0)),
	[tcn] [int] NOT NULL CONSTRAINT [DF_locations_tcn]  DEFAULT (checksum(getdate())),
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL CONSTRAINT [DF_locations_created_date]  DEFAULT (getdate()),
	[last_updated_id] [int] NOT NULL,
	[last_updated_date] [datetime] NOT NULL CONSTRAINT [DF_locations_last_updated_date]  DEFAULT (getdate()),
 CONSTRAINT [PK_locations] PRIMARY KEY CLUSTERED 
(
	[location_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_menu_items]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_menu_items](
	[MenuId] [int] IDENTITY(1,1) NOT NULL,
	[MenuNameEng] [nvarchar](100) NOT NULL,
	[MenuNameArb] [nvarchar](100) NULL,
	[SortOrder] [int] NULL,
	[MenuIcon] [nvarchar](50) NULL,
	[MenuUrl] [nvarchar](50) NULL,
	[CreatedId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedId] [int] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ADS_TBL_menu_items] PRIMARY KEY CLUSTERED 
(
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_month_lock]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_month_lock](
	[month_lock_id] [int] IDENTITY(1,1) NOT NULL,
	[organization_id] [int] NOT NULL,
	[year] [nvarchar](4) NOT NULL,
	[month] [nvarchar](2) NULL,
	[status] [bit] NULL,
	[deleted] [bit] NULL,
	[created_id] [int] NULL,
	[created_date] [datetime] NULL,
	[updated_id] [int] NULL,
	[updated_date] [datetime] NULL,
 CONSTRAINT [PK_month_lock] PRIMARY KEY CLUSTERED 
(
	[month_lock_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_month_lock_audit]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_month_lock_audit](
	[audit_id] [int] IDENTITY(1,1) NOT NULL,
	[organization_id] [int] NOT NULL,
	[year] [nvarchar](10) NULL,
	[month] [nvarchar](10) NULL,
	[status] [bit] NULL,
	[deleted] [bit] NULL,
	[updated_id] [int] NULL,
	[updated_date] [datetime] NULL,
 CONSTRAINT [PK_month_lock_audit] PRIMARY KEY CLUSTERED 
(
	[audit_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_month_lock_detail]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_month_lock_detail](
	[month_lock_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[month_lock_id] [int] NOT NULL,
	[employee_id] [int] NOT NULL,
	[status] [bit] NOT NULL,
	[deleted] [bit] NULL,
	[rivisons] [int] NOT NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NULL,
	[updated_id] [int] NULL,
	[updated_date] [datetime] NULL,
 CONSTRAINT [PK_month_lock_detail] PRIMARY KEY CLUSTERED 
(
	[month_lock_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_month_lock_detail_audit]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_month_lock_detail_audit](
	[audit_id] [int] IDENTITY(1,1) NOT NULL,
	[month_lock_id] [int] NULL,
	[employee_id] [int] NULL,
	[status] [bit] NULL,
	[deleted] [bit] NULL,
	[rivisions] [int] NULL,
	[updated_id] [int] NULL,
	[updated_date] [datetime] NULL,
 CONSTRAINT [PK_month_lock_detail_audit] PRIMARY KEY CLUSTERED 
(
	[audit_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_notification_descriptions]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADS_TBL_notification_descriptions](
	[notification_description_id] [int] IDENTITY(1,1) NOT NULL,
	[notification_type_id] [int] NOT NULL,
	[status] [int] NOT NULL,
	[description_eng] [varchar](1000) NULL,
	[description_arb] [nvarchar](500) NOT NULL,
	[updated_id] [int] NOT NULL,
	[updated_date] [datetime] NOT NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
 CONSTRAINT [PK_notification_descriptions] PRIMARY KEY CLUSTERED 
(
	[notification_description_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADS_TBL_notification_status]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADS_TBL_notification_status](
	[notification_status_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](50) NOT NULL,
	[description_eng] [varchar](100) NOT NULL,
	[description_arb] [nvarchar](100) NOT NULL,
	[updated_id] [int] NOT NULL,
	[updated_date] [datetime] NOT NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
 CONSTRAINT [PK_notification_status] PRIMARY KEY CLUSTERED 
(
	[notification_status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADS_TBL_notification_types]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADS_TBL_notification_types](
	[notification_type_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](50) NOT NULL,
	[description_eng] [varchar](200) NOT NULL,
	[description_arb] [nvarchar](200) NOT NULL,
	[active] [bit] NOT NULL,
	[updated_id] [int] NOT NULL,
	[updated_date] [datetime] NOT NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
 CONSTRAINT [PK_notification_types] PRIMARY KEY CLUSTERED 
(
	[notification_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADS_TBL_notifications]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADS_TBL_notifications](
	[notification_id] [int] IDENTITY(1,1) NOT NULL,
	[receiver_employee_id] [int] NOT NULL,
	[notification_type_id] [int] NOT NULL,
	[description_eng] [varchar](max) NULL,
	[description_arb] [nvarchar](max) NULL,
	[status] [int] NOT NULL,
	[mark_read] [bit] NOT NULL,
	[updated_id] [int] NOT NULL,
	[updated_date] [datetime] NOT NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
 CONSTRAINT [PK_notifications] PRIMARY KEY CLUSTERED 
(
	[notification_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADS_TBL_organization_grace_times]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_organization_grace_times](
	[organization_grace_time_id] [int] IDENTITY(1,1) NOT NULL,
	[organization_id] [int] NOT NULL,
	[from_date] [datetime] NOT NULL,
	[to_date] [datetime] NOT NULL,
	[in_grace_time] [numeric](18, 2) NULL,
	[out_grace_time] [numeric](18, 2) NULL,
	[tcn] [int] NOT NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[last_updated_id] [int] NOT NULL,
	[last_updated_date] [datetime] NOT NULL,
 CONSTRAINT [PK_organization_grace_times] PRIMARY KEY CLUSTERED 
(
	[organization_grace_time_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_organization_schedules]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_organization_schedules](
	[organization_schedule_id] [int] IDENTITY(1,1) NOT NULL,
	[organization_id] [int] NOT NULL,
	[from_date] [datetime] NOT NULL,
	[to_date] [datetime] NULL,
	[monday_schedule_id] [int] NULL,
	[tuesday_schedule_id] [int] NULL,
	[wednesday_schedule_id] [int] NULL,
	[thursday_schedule_id] [int] NULL,
	[friday_schedule_id] [int] NULL,
	[saturday_schedule_id] [int] NULL,
	[sunday_schedule_id] [int] NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[last_updated_id] [int] NOT NULL,
	[last_updated_date] [datetime] NOT NULL,
 CONSTRAINT [PK_organization_schedules] PRIMARY KEY CLUSTERED 
(
	[organization_schedule_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_organization_types]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_organization_types](
	[organization_type_id] [int] IDENTITY(1,1) NOT NULL,
	[description_arb] [nvarchar](50) NOT NULL,
	[description_eng] [nvarchar](50) NOT NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL CONSTRAINT [DF_organization_types_created_date]  DEFAULT (getdate()),
	[last_updated_id] [int] NOT NULL,
	[last_updated_date] [datetime] NOT NULL CONSTRAINT [DF_organization_types_last_updated_time]  DEFAULT (getdate()),
 CONSTRAINT [PK_organization_types] PRIMARY KEY CLUSTERED 
(
	[organization_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_organizations]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADS_TBL_organizations](
	[organization_id] [int] IDENTITY(1,1) NOT NULL,
	[organization_type_id] [int] NOT NULL,
	[code] [nvarchar](100) NOT NULL,
	[description_arb] [nvarchar](100) NOT NULL,
	[description_eng] [nvarchar](100) NOT NULL,
	[parent_id] [int] NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL CONSTRAINT [DF_organizations_created_date]  DEFAULT (getdate()),
	[last_updated_id] [int] NOT NULL,
	[last_updated_date] [datetime] NOT NULL CONSTRAINT [DF_organizations_last_updated_time]  DEFAULT (getdate()),
	[branch_flag] [varchar](1) NULL CONSTRAINT [DF_organizat_branchflg]  DEFAULT ('N'),
	[open_shift_flag] [int] NOT NULL CONSTRAINT [DF_organizations_open_shift_flag]  DEFAULT ((0)),
	[inactive_date] [datetime] NULL,
	[calculate_monthly_missed_hours] [int] NOT NULL CONSTRAINT [DF__ADS_TBL_o__calcu__5F492382]  DEFAULT ((0)),
 CONSTRAINT [PK_organizations] PRIMARY KEY CLUSTERED 
(
	[organization_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADS_TBL_permission_types]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADS_TBL_permission_types](
	[permission_type_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](50) NOT NULL,
	[description_arb] [nvarchar](100) NOT NULL,
	[description_eng] [nvarchar](100) NOT NULL,
	[comments_eng] [nvarchar](max) NULL,
	[comments_arb] [nvarchar](max) NULL,
	[max_permissions_per_day] [nvarchar](20) NULL,
	[max_minutes_per_day] [nvarchar](20) NULL,
	[max_permissions_per_month] [nvarchar](20) NULL,
	[max_minutes_minutes_per_month] [nvarchar](20) NULL,
	[min_permission_time] [nvarchar](20) NULL,
	[max_permission_time] [nvarchar](20) NULL,
	[group_apply_flag] [int] NOT NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[last_updated_id] [int] NOT NULL,
	[last_updated_time] [datetime] NOT NULL,
	[official_flag] [varchar](1) NULL,
	[reason_id] [int] NULL,
	[hr_only] [int] NOT NULL,
	[allow_attachement] [int] NOT NULL,
	[comments_required] [int] NOT NULL,
	[nationality_id] [int] NULL,
	[permission_type] [int] NOT NULL,
	[permission_priority] [int] NULL,
	[ramadan_restriction] [int] NOT NULL,
	[workflow_id] [int] NOT NULL,
	[OrganizationId] [nvarchar](10) NULL,
	[ManagerId] [nvarchar](10) NULL,
	[group_id] [nvarchar](10) NULL,
	[EmployeeId] [nvarchar](10) NULL,
	[gender_id] [nvarchar](10) NULL,
	[valid_from] [datetime] NULL,
	[valid_to] [datetime] NULL,
	[medical_pass_attachment] [int] NOT NULL,
 CONSTRAINT [PK_permission_types] PRIMARY KEY CLUSTERED 
(
	[permission_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADS_TBL_permissions]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_permissions](
	[single_permissions_id] [int] IDENTITY(1,1) NOT NULL,
	[permission_type_id] [int] NOT NULL,
	[employee_id] [int] NOT NULL,
	[from_date] [datetime] NOT NULL,
	[to_date] [datetime] NOT NULL,
	[from_time] [nvarchar](5) NULL,
	[to_time] [nvarchar](5) NULL,
	[remarks] [nvarchar](4000) NULL,
	[approver_remarks] [nvarchar](max) NULL,
	[approve_reject_flag] [int] NOT NULL,
	[approver_id] [int] NULL,
	[approved_date] [datetime] NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[last_updated_id] [int] NOT NULL,
	[last_updated_time] [datetime] NOT NULL,
	[minutes] [int] NULL,
	[category_id] [int] NOT NULL,
	[permission_status] [nvarchar](50) NULL,
	[attachment_required] [bit] NOT NULL,
	[attachment_uploaded] [bit] NOT NULL,
	[reference_id] [nvarchar](500) NULL,
 CONSTRAINT [PK_single_permissions] PRIMARY KEY CLUSTERED 
(
	[single_permissions_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_permissions_detail]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_permissions_detail](
	[permission_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[single_permissions_id] [int] NOT NULL,
	[sunday_minutes] [nvarchar](10) NULL,
	[monday_minutes] [nvarchar](10) NULL,
	[tuesday_minutes] [nvarchar](10) NULL,
	[wednesday_minutes] [nvarchar](10) NULL,
	[thursday_minutes] [nvarchar](10) NULL,
	[friday_minutes] [nvarchar](10) NULL,
	[saturday_minutes] [nvarchar](10) NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[last_updated_id] [int] NULL,
	[last_updated_time] [datetime] NULL,
 CONSTRAINT [PK_single_permissions_detail] PRIMARY KEY CLUSTERED 
(
	[permission_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_preferences]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_preferences](
	[preference_id] [int] IDENTITY(1,1) NOT NULL,
	[employee_id] [int] NOT NULL,
	[language] [nvarchar](50) NOT NULL,
	[page_size] [int] NOT NULL CONSTRAINT [DF_preferences_page_size]  DEFAULT ((10)),
	[sidebar] [nvarchar](50) NULL,
	[theme] [nvarchar](50) NOT NULL CONSTRAINT [DF_preferences_theme]  DEFAULT (N'default.css'),
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[updated_id] [int] NOT NULL,
	[updated_date] [datetime] NOT NULL,
 CONSTRAINT [PK_preferences] PRIMARY KEY CLUSTERED 
(
	[preference_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_Processed_OverTime_Data]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_Processed_OverTime_Data](
	[processed_overtime_id] [int] IDENTITY(1,1) NOT NULL,
	[employee_id] [int] NOT NULL,
	[processed_date] [datetime] NOT NULL,
	[worked_time] [int] NOT NULL,
	[required_time] [int] NOT NULL,
	[overtime] [int] NOT NULL,
	[worked_time_HH_MM] [nvarchar](50) NULL,
	[required_time_HH_MM] [nvarchar](50) NULL,
	[overtime_HH_MM] [nvarchar](50) NULL,
	[from_date] [datetime] NULL,
	[to_date] [datetime] NULL,
 CONSTRAINT [PK_Processed_OverTime_Data] PRIMARY KEY CLUSTERED 
(
	[processed_overtime_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_reader_prompts]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_reader_prompts](
	[reader_prompt_id] [int] IDENTITY(1,1) NOT NULL,
	[function_key_code] [nvarchar](10) NOT NULL,
	[reader_type_id] [nvarchar](50) NOT NULL,
	[prompt_number] [nvarchar](50) NOT NULL,
	[tcn] [int] NOT NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[last_updated_id] [int] NOT NULL,
	[last_updated_time] [datetime] NOT NULL,
 CONSTRAINT [PK_reader_prompts] PRIMARY KEY CLUSTERED 
(
	[reader_prompt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_reader_status]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_reader_status](
	[ReaderStatusId] [int] IDENTITY(1,1) NOT NULL,
	[ReaderStatusName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ADS_Tbl_Reader_Status] PRIMARY KEY CLUSTERED 
(
	[ReaderStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_reader_types]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_reader_types](
	[reader_type_id] [int] IDENTITY(1,1) NOT NULL,
	[type_name_eng] [nvarchar](50) NOT NULL,
	[type_name_arb] [nvarchar](50) NOT NULL,
	[driver_name_eng] [nvarchar](50) NULL,
	[driver_name_arb] [nvarchar](50) NOT NULL,
	[load_driver_flag] [int] NOT NULL CONSTRAINT [DF_reader_types_load_driver]  DEFAULT ((1)),
	[description_arb] [nvarchar](255) NULL,
	[description_eng] [nvarchar](50) NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL CONSTRAINT [DF_reader_types_created_date]  DEFAULT (getdate()),
	[last_updated_id] [int] NOT NULL,
	[last_updated_date] [datetime] NOT NULL CONSTRAINT [DF_reader_types_last_updated_date]  DEFAULT (getdate()),
 CONSTRAINT [PK_reader_types] PRIMARY KEY CLUSTERED 
(
	[reader_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_readers]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_readers](
	[ReaderId] [int] IDENTITY(1,1) NOT NULL,
	[ReaderCode] [nvarchar](50) NOT NULL,
	[ReaderName] [nvarchar](50) NOT NULL,
	[LocationId] [int] NULL,
	[ReaderTypeId] [int] NULL,
	[ReaderIP] [nvarchar](50) NULL,
	[ReaderMAC] [nvarchar](50) NULL,
	[LastCommunicationTime] [datetime] NULL,
	[PunchTypeId] [int] NULL,
	[StatusId] [int] NULL,
	[IsAuthorized] [bit] NULL,
	[License] [nvarchar](50) NULL,
	[IsDeleted] [bit] NULL,
	[FP] [bit] NULL,
	[Card] [bit] NULL,
	[LoginMethod] [nvarchar](50) NULL,
	[PunchMethod] [nvarchar](50) NULL,
	[CreatedId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_ADS_TBL_readers_CreatedDate]  DEFAULT (getdate()),
	[UpdatedId] [int] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ADS_TBL_readers_ADS_ReaderID] PRIMARY KEY CLUSTERED 
(
	[ReaderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_reasons]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_reasons](
	[reason_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](10) NOT NULL,
	[description_arb] [nvarchar](50) NOT NULL,
	[description_eng] [nvarchar](50) NOT NULL,
	[reason_mode] [int] NOT NULL,
	[prompt_message] [nvarchar](50) NOT NULL,
	[deletable] [int] NOT NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[last_updated_id] [int] NOT NULL,
	[last_updated_date] [datetime] NOT NULL,
	[normal_in] [int] NOT NULL,
	[normal_out] [int] NOT NULL,
	[web_punch] [bit] NOT NULL,
	[Is_Active] [bit] NULL,
 CONSTRAINT [PK_reasons] PRIMARY KEY CLUSTERED 
(
	[reason_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_regions]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADS_TBL_regions](
	[region_id] [int] IDENTITY(1,1) NOT NULL,
	[region_code] [varchar](200) NOT NULL,
	[description_arb] [nvarchar](200) NOT NULL,
	[description_eng] [nvarchar](200) NOT NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL CONSTRAINT [DF_regions_created_date]  DEFAULT (getdate()),
	[last_updated_id] [int] NOT NULL,
	[last_updated_date] [datetime] NOT NULL CONSTRAINT [DF_regions_last_updated_date]  DEFAULT (getdate()),
 CONSTRAINT [PK_regions] PRIMARY KEY CLUSTERED 
(
	[region_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADS_TBL_report_catagories]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_report_catagories](
	[TableID] [int] IDENTITY(1,1) NOT NULL,
	[Name_Eng] [nvarchar](200) NULL,
	[Name_Arb] [nvarchar](200) NULL,
	[TblName] [nvarchar](200) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [int] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_ReportTemplateDetails]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_ReportTemplateDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TemplateID] [int] NOT NULL,
	[ColumnType] [nvarchar](50) NULL,
	[ColumnNameEn] [nvarchar](200) NULL,
	[ColumnNameAr] [nvarchar](200) NULL,
	[ColumnOriginalName] [nvarchar](50) NULL,
	[ColumnOperator] [nvarchar](50) NULL,
	[IsVisible] [bit] NULL,
	[DefaultValues] [nvarchar](50) NULL,
 CONSTRAINT [PK_ReportTemplateDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_ReportTemplates]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_ReportTemplates](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameEn] [nvarchar](200) NOT NULL,
	[NameAr] [nvarchar](200) NOT NULL,
	[DescriptionEn] [nvarchar](500) NULL,
	[DescriptionAr] [nvarchar](500) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [int] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
	[TableName] [nvarchar](200) NOT NULL,
	[Category] [nvarchar](200) NOT NULL,
	[Layout] [nvarchar](200) NOT NULL,
	[SortOrder] [nvarchar](50) NULL,
	[IsDeleted] [bit] NULL,
	[ApplyGroup] [bit] NOT NULL,
	[TableType] [nvarchar](1) NOT NULL,
	[ReportImage] [image] NULL,
 CONSTRAINT [PK_ReportTemplates] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_role_permissions]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_role_permissions](
	[RolePermissionId] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[MenuId] [int] NOT NULL,
	[SubMenuId] [int] NULL,
	[PermissionId] [int] NULL,
	[ScopeId] [int] NULL,
 CONSTRAINT [PK_ADS_TBL_role_permissions] PRIMARY KEY CLUSTERED 
(
	[RolePermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_schedule_locations]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_schedule_locations](
	[schedule_location_id] [int] IDENTITY(1,1) NOT NULL,
	[description_arb] [nvarchar](50) NOT NULL,
	[description_eng] [nvarchar](50) NOT NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[last_updated_id] [int] NOT NULL,
	[last_updated_date] [datetime] NOT NULL,
 CONSTRAINT [PK_schedule_location] PRIMARY KEY CLUSTERED 
(
	[schedule_location_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_schedule_monthly_roster]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_schedule_monthly_roster](
	[schedule_roster_id] [int] IDENTITY(1,1) NOT NULL,
	[employee_id] [int] NOT NULL,
	[from_date] [datetime] NOT NULL,
	[to_date] [datetime] NOT NULL,
	[version_no] [int] NOT NULL,
	[D1] [int] NULL,
	[D2] [int] NULL,
	[D3] [int] NULL,
	[D4] [int] NULL,
	[D5] [int] NULL,
	[D6] [int] NULL,
	[D7] [int] NULL,
	[D8] [int] NULL,
	[D9] [int] NULL,
	[D10] [int] NULL,
	[D11] [int] NULL,
	[D12] [int] NULL,
	[D13] [int] NULL,
	[D14] [int] NULL,
	[D15] [int] NULL,
	[D16] [int] NULL,
	[D17] [int] NULL,
	[D18] [int] NULL,
	[D19] [int] NULL,
	[D20] [int] NULL,
	[D21] [int] NULL,
	[D22] [int] NULL,
	[D23] [int] NULL,
	[D24] [int] NULL,
	[D25] [int] NULL,
	[D26] [int] NULL,
	[D27] [int] NULL,
	[D28] [int] NULL,
	[D29] [int] NULL,
	[D30] [int] NULL,
	[D31] [int] NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[last_updated_id] [int] NOT NULL,
	[last_updated_date] [datetime] NOT NULL,
	[manager_id] [int] NULL,
	[finalizeFlag] [int] NOT NULL,
 CONSTRAINT [PK_schedule_roster] PRIMARY KEY CLUSTERED 
(
	[schedule_roster_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_Schedule_Ramadan]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_Schedule_Ramadan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[description_arb] [nvarchar](50) NULL,
	[description_eng] [nvarchar](50) NULL,
	[remarks] [nvarchar](255) NULL,
	[from_date] [datetime] NULL,
	[to_date] [datetime] NULL,
	[process_data_flag] [int] NOT NULL,
	[created_id] [int] NULL,
	[created_date] [datetime] NULL,
	[updated_id] [int] NULL,
	[updated_date] [datetime] NULL,
 CONSTRAINT [PK_Tbl_Ramadan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_schedule_rotational]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_schedule_rotational](
	[schedule_rotational_id] [int] IDENTITY(1,1) NOT NULL,
	[schedule_scope_type_id] [int] NULL,
	[schedule_scope_id] [int] NULL,
	[From_Date] [datetime] NOT NULL,
	[To_Date] [datetime] NULL,
	[created_id] [int] NULL,
	[created_date] [datetime] NULL,
	[last_updated_id] [int] NULL,
	[last_updated_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[schedule_rotational_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_schedule_rotational_details]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_schedule_rotational_details](
	[schedule_rotational_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[schedule_rotational_id] [int] NULL,
	[Day] [int] NOT NULL,
	[schedule_id] [int] NULL,
	[created_id] [int] NULL,
	[created_date] [datetime] NULL,
	[last_updated_id] [int] NULL,
	[last_updated_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[schedule_rotational_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_schedule_scope_type]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_schedule_scope_type](
	[schedule_scope_type_id] [int] IDENTITY(1,1) NOT NULL,
	[description_eng] [nvarchar](500) NOT NULL,
	[description_arb] [nvarchar](500) NULL,
	[schedule_scope_reference_table] [nvarchar](500) NULL,
	[created_id] [int] NULL,
	[created_date] [datetime] NULL,
	[last_updated_id] [int] NULL,
	[last_updated_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[schedule_scope_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_schedule_types]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_schedule_types](
	[schedule_type_id] [int] IDENTITY(1,1) NOT NULL,
	[description_arb] [nvarchar](50) NOT NULL,
	[description_eng] [nvarchar](50) NOT NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL CONSTRAINT [DF_schedule_type_created_date]  DEFAULT (getdate()),
	[last_updated_id] [int] NOT NULL,
	[last_updated_date] [datetime] NOT NULL CONSTRAINT [DF_schedule_type_last_updated_time]  DEFAULT (getdate()),
 CONSTRAINT [PK_schedule_type] PRIMARY KEY CLUSTERED 
(
	[schedule_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_schedules]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADS_TBL_schedules](
	[schedule_id] [int] IDENTITY(1,1) NOT NULL,
	[organization_id] [int] NOT NULL,
	[schedule_code] [nvarchar](50) NOT NULL,
	[in_time1] [datetime] NULL,
	[out_time1] [datetime] NULL,
	[in_time2] [datetime] NULL,
	[out_time2] [datetime] NULL,
	[in_time3] [datetime] NULL,
	[out_time3] [datetime] NULL,
	[flexible_min] [int] NULL,
	[grace_in_min] [int] NULL,
	[grace_out_min] [int] NULL,
	[open_shift] [int] NULL,
	[night_shift] [int] NULL,
	[sch_color] [varchar](10) NULL,
	[schedule_location_id] [int] NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[last_updated_id] [int] NOT NULL,
	[last_updated_date] [datetime] NOT NULL,
	[ramadan_flag] [bit] NOT NULL,
	[sch_parent_id] [int] NULL,
	[required_work_hours] [datetime] NULL,
	[open_shift2] [int] NOT NULL,
	[night_shift2] [int] NOT NULL,
	[required_work_hours2] [datetime] NULL,
	[open_shift3] [int] NOT NULL,
	[night_shift3] [int] NOT NULL,
	[required_work_hours3] [datetime] NULL,
	[Transaction_type] [bit] NULL,
	[notification_type] [bit] NULL,
	[enable_overtime] [bit] NOT NULL,
	[overtime_minutes] [int] NULL,
	[calculate_WorkHours_From_SchStartTime] [bit] NOT NULL,
	[ProcessTransactionForNextDayOrPreviousDay] [bit] NOT NULL,
	[schedule_override] [bit] NULL,
	[enable_break_hours] [bit] NULL,
	[break_hours] [int] NULL,
	[Reduce_Work_Mts] [bit] NOT NULL,
	[inactive_date] [datetime] NULL,
 CONSTRAINT [PK_schedules] PRIMARY KEY CLUSTERED 
(
	[schedule_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADS_TBL_sec_permissions]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_sec_permissions](
	[PermissionId] [int] NOT NULL,
	[Permission] [nvarchar](50) NOT NULL,
	[PermissionEnumVal] [int] NULL,
 CONSTRAINT [PK_ADS_TBL_sec_permissions] PRIMARY KEY CLUSTERED 
(
	[PermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_sec_roles]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_sec_roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](20) NOT NULL,
	[CreatedId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedId] [int] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_sec_roles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_sec_scope]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_sec_scope](
	[ScopeId] [int] NOT NULL,
	[Scope] [nvarchar](50) NOT NULL,
	[ScopeEnumVal] [int] NULL,
 CONSTRAINT [PK_ADS_TBL_sec_scope] PRIMARY KEY CLUSTERED 
(
	[ScopeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_sec_users]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_sec_users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[login] [nvarchar](50) NULL,
	[password] [nvarchar](256) NULL,
	[employee_id] [int] NOT NULL,
	[last_updated_id] [int] NOT NULL,
	[last_updated_time] [datetime] NOT NULL CONSTRAINT [DF_sec_users_last_updated_time]  DEFAULT (getdate()),
 CONSTRAINT [PK_sec_users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_shift_master]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADS_TBL_shift_master](
	[shift_id] [int] NOT NULL,
	[shift_code] [nvarchar](50) NOT NULL,
	[organization_id] [int] NOT NULL,
	[shift_location_id] [int] NULL,
	[dynamic_shift] [int] NULL,
	[shift_color] [varchar](10) NULL,
	[transaction_type] [bit] NULL,
	[notification_type] [bit] NULL,
	[enable_overtime] [bit] NOT NULL,
	[overtime_minutes] [int] NULL,
	[calculate_work_hours_from_start_time] [bit] NOT NULL,
	[process_transaction_for_next_previous_day] [bit] NOT NULL,
	[schedule_override] [bit] NULL,
	[enable_break_hours] [bit] NULL,
	[break_hours] [int] NULL,
	[reduce_work_mts] [bit] NOT NULL,
	[inactive_date] [datetime] NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[last_updated_id] [int] NULL,
	[last_updated_date] [datetime] NULL,
 CONSTRAINT [PK_ADS_TBL_shift_master] PRIMARY KEY CLUSTERED 
(
	[shift_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADS_TBL_shift_nomral_days]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_shift_nomral_days](
	[shift_normal_id] [int] NOT NULL,
	[shift_id] [int] NOT NULL,
	[in_time1] [datetime] NULL,
	[out_time1] [datetime] NULL,
	[open_shift1] [bit] NULL,
	[night_shift1] [bit] NULL,
	[in_time2] [datetime] NULL,
	[out_time2] [datetime] NULL,
	[open_shift2] [bit] NULL,
	[night_shift2] [bit] NULL,
	[flexible_min] [int] NULL,
	[grace_in_min] [int] NULL,
	[grace_out_min] [int] NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[last_updated_id] [int] NULL,
	[last_updated_date] [datetime] NULL,
 CONSTRAINT [PK_ADS_TBL_shift_nomral_days] PRIMARY KEY CLUSTERED 
(
	[shift_normal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_shift_ramadan_days]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_shift_ramadan_days](
	[shift_ramadan_id] [int] NOT NULL,
	[shift_id] [int] NOT NULL,
	[in_time1] [datetime] NULL,
	[out_time1] [datetime] NULL,
	[open_shift1] [bit] NULL,
	[night_shift1] [bit] NULL,
	[in_time2] [datetime] NULL,
	[out_time2] [datetime] NULL,
	[open_shift2] [bit] NULL,
	[night_shift2] [bit] NULL,
	[flexible_min] [int] NULL,
	[grace_in_min] [int] NULL,
	[grace_out_min] [int] NULL,
	[created_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[last_updated_id] [int] NULL,
	[last_updated_date] [datetime] NULL,
 CONSTRAINT [PK_ADS_TBL_shift_ramadan_days] PRIMARY KEY CLUSTERED 
(
	[shift_ramadan_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_Standard_Reports]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_Standard_Reports](
	[ReportID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](10) NULL,
	[ReportName_Eng] [nvarchar](500) NOT NULL,
	[ReportName_Arb] [nvarchar](500) NOT NULL,
	[Description_Eng] [nvarchar](max) NULL,
	[Description_Arb] [nvarchar](max) NULL,
	[Created_date] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[HrOnly] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_submenu_items]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_submenu_items](
	[SubMenuId] [int] IDENTITY(1,1) NOT NULL,
	[MenuId] [int] NOT NULL,
	[SubMenuNameEng] [nvarchar](100) NOT NULL,
	[SubMenuNameArb] [nvarchar](100) NULL,
	[SortOrder] [int] NULL,
	[SubMenuIcon] [nvarchar](50) NULL,
	[SubMenuUrl] [nvarchar](50) NULL,
	[CreatedId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedId] [int] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ADS_TBL_submenu_items] PRIMARY KEY CLUSTERED 
(
	[SubMenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_Sync_Audit_Log]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADS_TBL_Sync_Audit_Log](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Sql_Process_ID] [int] NOT NULL,
	[Sql_Username] [varchar](200) NOT NULL,
	[Sync_Object] [varchar](200) NOT NULL,
	[TAMS_Object] [varchar](200) NOT NULL,
	[Audit_Type] [varchar](50) NOT NULL,
	[Obj_Error_Key] [varchar](200) NULL,
	[Obj_Error_No] [int] NULL,
	[Obj_Error_Severity] [int] NULL,
	[Obj_Error_State] [int] NULL,
	[Obj_Error_Proc] [varchar](200) NULL,
	[Obj_Error_Line] [int] NULL,
	[Obj_Error_Message] [varchar](500) NULL,
	[Sync_Object_Total_Count] [int] NULL,
	[TAMS_Object_New_Record_Count] [int] NULL,
	[TAMS_Object_Update_Record_Count] [int] NULL,
	[TAMS_Object_Failed_Record_Count] [int] NULL,
	[TAMS_Object_Total_Count] [int] NULL,
	[Initiated_Source] [varchar](50) NOT NULL,
	[Initiated_Date] [datetime] NOT NULL,
	[Initiated_By] [varchar](200) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADS_TBL_Sync_Objects]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_Sync_Objects](
	[Obj_Id] [int] IDENTITY(1,1) NOT NULL,
	[SourceObject_Name] [nvarchar](200) NULL,
	[SourceObject_Type] [nvarchar](50) NULL,
	[DestinationObject_Name] [nvarchar](500) NULL,
	[DestinationObject_Type] [nvarchar](50) NULL,
	[Execution_time] [time](7) NULL,
	[Selection_Criteria] [nvarchar](max) NULL,
 CONSTRAINT [PK_Sync_Objects] PRIMARY KEY CLUSTERED 
(
	[Obj_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_Sync_Objects_Details]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_Sync_Objects_Details](
	[Detail_Obj_ID] [int] IDENTITY(1,1) NOT NULL,
	[Source_Column_Name] [nvarchar](50) NULL,
	[Source_Column_Type] [nvarchar](50) NULL,
	[Destination_Column_Name] [nvarchar](50) NULL,
	[Destination_Column_Type] [nvarchar](50) NULL,
	[Obj_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Detail_Obj_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_Sync_Objects_Log]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_Sync_Objects_Log](
	[Log_Id] [int] IDENTITY(1,1) NOT NULL,
	[Obj_Id] [int] NOT NULL,
	[Obj_Name] [nvarchar](200) NULL,
	[Process_Start_time] [time](7) NULL,
	[Process_end_time] [time](7) NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sync_Objects_Log] PRIMARY KEY CLUSTERED 
(
	[Log_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_Sync_Service_Log]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_Sync_Service_Log](
	[log_id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](300) NULL,
	[object] [nvarchar](500) NULL,
	[message] [nvarchar](max) NULL,
	[created_date] [datetime] NULL,
 CONSTRAINT [PK_SVC_LOG] PRIMARY KEY CLUSTERED 
(
	[log_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_System_Patch_Log]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_System_Patch_Log](
	[System_Patch_Log_Id] [int] IDENTITY(1,1) NOT NULL,
	[Ticket_Number] [nvarchar](1000) NULL,
	[Patch_File_Location] [nvarchar](1000) NULL,
	[Patch_Object_Detail] [nvarchar](max) NULL,
	[Detail] [nvarchar](1000) NULL,
	[Created_Id] [int] NOT NULL,
	[Created_Date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[System_Patch_Log_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_Timecheck_Modules]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_Timecheck_Modules](
	[Timecheck_Module_Id] [int] IDENTITY(1,1) NOT NULL,
	[Module_Name_Eng] [nvarchar](max) NULL,
	[Module_Name_Arb] [nvarchar](max) NULL,
	[Created_id] [int] NULL,
	[Created_Date] [datetime] NULL,
	[Last_Updated_Id] [int] NULL,
	[Last_Update_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Timecheck_Module_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_user_in_roles]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_user_in_roles](
	[user_role_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[role_id] [int] NOT NULL,
	[last_updated_id] [int] NOT NULL,
	[last_updated_time] [datetime] NOT NULL CONSTRAINT [DF_sec_user_roles_last_updated_time]  DEFAULT (getdate()),
 CONSTRAINT [PK_sec_user_roles] PRIMARY KEY CLUSTERED 
(
	[user_role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_Workflow_Actions]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_Workflow_Actions](
	[Workflow_Action_Id] [int] IDENTITY(0,1) NOT NULL,
	[Desc_Eng] [nvarchar](max) NOT NULL,
	[Desc_Arb] [nvarchar](max) NOT NULL,
	[Remarks_Eng] [nvarchar](max) NOT NULL,
	[Remarks_Arb] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Workflow_Action_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_Workflow_Category]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_Workflow_Category](
	[workflow_category_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](50) NULL,
	[description_eng] [nvarchar](max) NULL,
	[description_arb] [nvarchar](max) NULL,
	[created_id] [int] NULL,
	[created_datetime] [datetime] NULL,
	[updated_id] [int] NULL,
	[updated_datetime] [datetime] NULL,
 CONSTRAINT [PK_Workflow_Category] PRIMARY KEY CLUSTERED 
(
	[workflow_category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_Workflow_logs]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_Workflow_logs](
	[Workflow_log_Id] [int] IDENTITY(1,1) NOT NULL,
	[Workflow_Id] [int] NULL,
	[Workflow_Step] [int] NULL,
	[Workflow_Action_Id] [int] NULL,
	[Workflow_Action_Employee_Id] [int] NULL,
	[Workflow_Action_Status] [int] NULL,
	[Workflow_Action_Remarks] [nvarchar](max) NULL,
	[Transaction_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Workflow_log_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_Workflow_Type_Steps]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_Workflow_Type_Steps](
	[Workflow_Detail_Id] [int] IDENTITY(1,1) NOT NULL,
	[Workflow_Id] [int] NOT NULL,
	[Step] [int] NOT NULL,
	[Step_Eng] [nvarchar](max) NULL,
	[Step_Arb] [nvarchar](max) NULL,
	[Approved] [nvarchar](10) NULL,
	[Rejected] [nvarchar](10) NULL,
	[Action_Type] [nvarchar](200) NULL,
	[Action_Data] [nvarchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Workflow_Detail_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADS_TBL_Workflow_Types]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADS_TBL_Workflow_Types](
	[Workflow_Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](max) NOT NULL,
	[Category_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Workflow_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[ADS_TBL_app_setting] ([vname], [value], [descr], [tab_no], [deleted], [created_id], [created_date], [updated_id], [updated_date]) VALUES (N'SMTP_SERVER', N'mail.google.com', N'SMTP server Ip or URL', 1, 0, 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime), 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[ADS_TBL_countries] ON 

INSERT [dbo].[ADS_TBL_countries] ([country_id], [code], [description_eng], [description_arb], [created_id], [created_date], [last_updated_id], [last_updated_date]) VALUES (1, N'PAK', N'Pakistan', N'Pakistan', 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime), 1, CAST(N'2021-02-14 17:58:29.237' AS DateTime))
INSERT [dbo].[ADS_TBL_countries] ([country_id], [code], [description_eng], [description_arb], [created_id], [created_date], [last_updated_id], [last_updated_date]) VALUES (9, N'KSA', N'Saudi Arabia', N'Saudi Arabia', 1, CAST(N'2021-02-02 21:32:55.550' AS DateTime), 0, CAST(N'2021-02-03 01:33:08.950' AS DateTime))
INSERT [dbo].[ADS_TBL_countries] ([country_id], [code], [description_eng], [description_arb], [created_id], [created_date], [last_updated_id], [last_updated_date]) VALUES (11, N'USSR', N'RASSIA', N'RASSIA', 1, CAST(N'2021-02-03 02:58:09.053' AS DateTime), 0, CAST(N'2021-02-03 06:58:17.517' AS DateTime))
SET IDENTITY_INSERT [dbo].[ADS_TBL_countries] OFF
SET IDENTITY_INSERT [dbo].[ADS_TBL_designations] ON 

INSERT [dbo].[ADS_TBL_designations] ([designation_id], [code], [description_arb], [description_eng], [vacancy], [remarks], [created_id], [created_date], [last_updated_id], [last_updated_date]) VALUES (1, N'UnKnown', N'Not Defined', N'Not Defined', 0, NULL, 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime), 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[ADS_TBL_designations] OFF
SET IDENTITY_INSERT [dbo].[ADS_TBL_employee_master] ON 

INSERT [dbo].[ADS_TBL_employee_master] ([employee_id], [employee_code], [salutation_eng], [salutation_arb], [name_eng], [name_arb], [card_number], [reader_password], [organization_id], [grade_id], [designation_id], [country_id], [join_date], [inactive_date], [status_flag], [sex_flag], [local_flag], [punch_flag], [shift_flag], [overtime_flag], [on_reports_flag], [schedule_type_id], [remarks], [photo_file_name], [manager_flag], [manager_id], [email], [employee_type_id], [inpayroll], [region_id], [created_id], [created_date], [last_updated_id], [last_updated_date], [share_roaster], [mobile], [active_date], [notify_flag], [include_notifications], [open_shift_flag], [web_punch_flag], [monthly_Missed_hours_flag]) VALUES (3, N'sysadmin', NULL, NULL, N'System Admin', N'System Admin', NULL, NULL, 1, 1, 1, 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime), NULL, 1, 1, 0, 1, 0, 1, 1, 1, NULL, NULL, 0, NULL, NULL, 1, 1, 1, 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime), 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime), 1, NULL, CAST(N'2020-01-01 00:00:00.000' AS DateTime), 1, 1, 0, 1, 0)
INSERT [dbo].[ADS_TBL_employee_master] ([employee_id], [employee_code], [salutation_eng], [salutation_arb], [name_eng], [name_arb], [card_number], [reader_password], [organization_id], [grade_id], [designation_id], [country_id], [join_date], [inactive_date], [status_flag], [sex_flag], [local_flag], [punch_flag], [shift_flag], [overtime_flag], [on_reports_flag], [schedule_type_id], [remarks], [photo_file_name], [manager_flag], [manager_id], [email], [employee_type_id], [inpayroll], [region_id], [created_id], [created_date], [last_updated_id], [last_updated_date], [share_roaster], [mobile], [active_date], [notify_flag], [include_notifications], [open_shift_flag], [web_punch_flag], [monthly_Missed_hours_flag]) VALUES (5, N'EMP1', N'abcd', N'xyz', N'Abdul Hannan', N'Abdul Hannan', N'8441', N'12345', 1, 1, 1, 1, CAST(N'2021-01-21 06:11:18.617' AS DateTime), CAST(N'2021-11-21 06:11:18.617' AS DateTime), 0, 1, 1, 0, 0, 0, 0, 1, N'test Remakrs', N'hannan', 1, 1, N'a.hannan@agiledataint.com', 1, 1, 1, 1, CAST(N'2021-01-21 10:22:26.770' AS DateTime), 0, CAST(N'2021-01-21 10:22:26.770' AS DateTime), 0, N'0331706999', CAST(N'2021-01-21 06:11:18.617' AS DateTime), 1, 1, 0, 1, 0)
SET IDENTITY_INSERT [dbo].[ADS_TBL_employee_master] OFF
SET IDENTITY_INSERT [dbo].[ADS_TBL_employee_type] ON 

INSERT [dbo].[ADS_TBL_employee_type] ([employee_type_id], [employee_type_code], [description_eng], [description_arb], [created_id], [created_date], [last_updated_id], [last_updated_date]) VALUES (1, N'Fulltime', N'Fulltime', N'Fulltime', 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime), 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[ADS_TBL_employee_type] OFF
SET IDENTITY_INSERT [dbo].[ADS_TBL_grades] ON 

INSERT [dbo].[ADS_TBL_grades] ([grade_id], [code], [description_eng], [description_arb], [number_of_CL], [number_of_SL], [number_of_AL], [created_id], [created_date], [last_updated_id], [last_updated_date], [overtime_eligible_flag], [senior_flag]) VALUES (1, N'UnKnown', N'Not Defined', N'Not Defined', 0, 0, 0, 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime), 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime), N'N', N'N')
INSERT [dbo].[ADS_TBL_grades] ([grade_id], [code], [description_eng], [description_arb], [number_of_CL], [number_of_SL], [number_of_AL], [created_id], [created_date], [last_updated_id], [last_updated_date], [overtime_eligible_flag], [senior_flag]) VALUES (5, N'TEST', N'TEST', N'TEST', 1, 1, 1, 1, CAST(N'2021-02-04 10:58:17.540' AS DateTime), 1, CAST(N'2021-02-04 10:58:18.957' AS DateTime), N'N', N'N')
INSERT [dbo].[ADS_TBL_grades] ([grade_id], [code], [description_eng], [description_arb], [number_of_CL], [number_of_SL], [number_of_AL], [created_id], [created_date], [last_updated_id], [last_updated_date], [overtime_eligible_flag], [senior_flag]) VALUES (7, N'TEST4', N'TESTING', N'TESTING', 0, 0, 0, 1, CAST(N'2021-02-16 08:32:48.380' AS DateTime), 1, CAST(N'2021-02-16 08:39:04.647' AS DateTime), N'Y', N'N')
INSERT [dbo].[ADS_TBL_grades] ([grade_id], [code], [description_eng], [description_arb], [number_of_CL], [number_of_SL], [number_of_AL], [created_id], [created_date], [last_updated_id], [last_updated_date], [overtime_eligible_flag], [senior_flag]) VALUES (8, N'TEST5', N'TESTING', N'TESTING', 0, 0, 0, 2, CAST(N'2021-02-16 08:40:09.590' AS DateTime), 2, CAST(N'2021-02-16 08:40:09.590' AS DateTime), N'Y', N'N')
SET IDENTITY_INSERT [dbo].[ADS_TBL_grades] OFF
SET IDENTITY_INSERT [dbo].[ADS_TBL_holidays] ON 

INSERT [dbo].[ADS_TBL_holidays] ([holiday_id], [description_arb], [description_eng], [remarks], [from_date], [to_date], [recurring_flag], [created_id], [created_date], [last_updated_id], [last_updated_time], [info_source_reference], [Public_Holiday]) VALUES (4, N'string', N'string', N'string', CAST(N'2021-01-21 00:00:00.000' AS DateTime), CAST(N'2021-01-21 00:00:00.000' AS DateTime), 0, 1, CAST(N'2021-02-18 06:28:17.263' AS DateTime), 1, CAST(N'2021-02-18 06:28:17.263' AS DateTime), N'string', 0)
INSERT [dbo].[ADS_TBL_holidays] ([holiday_id], [description_arb], [description_eng], [remarks], [from_date], [to_date], [recurring_flag], [created_id], [created_date], [last_updated_id], [last_updated_time], [info_source_reference], [Public_Holiday]) VALUES (5, N'TESTING', N'TESTING', N'TEST3', CAST(N'2021-02-24 00:00:00.000' AS DateTime), CAST(N'2021-02-16 00:00:00.000' AS DateTime), 1, 2, CAST(N'2021-02-18 06:31:16.167' AS DateTime), 2, CAST(N'2021-02-18 06:31:16.167' AS DateTime), N'string', 1)
INSERT [dbo].[ADS_TBL_holidays] ([holiday_id], [description_arb], [description_eng], [remarks], [from_date], [to_date], [recurring_flag], [created_id], [created_date], [last_updated_id], [last_updated_time], [info_source_reference], [Public_Holiday]) VALUES (8, N'TESTING', N'TESTING', N'TEST7', CAST(N'2021-02-23 00:00:00.000' AS DateTime), CAST(N'2021-02-16 00:00:00.000' AS DateTime), 0, 2, CAST(N'2021-02-18 06:38:01.783' AS DateTime), 2, CAST(N'2021-02-18 06:38:01.783' AS DateTime), N'string', NULL)
INSERT [dbo].[ADS_TBL_holidays] ([holiday_id], [description_arb], [description_eng], [remarks], [from_date], [to_date], [recurring_flag], [created_id], [created_date], [last_updated_id], [last_updated_time], [info_source_reference], [Public_Holiday]) VALUES (9, N'UNITED STATES', N'UNITED STATES', N'TEST8', CAST(N'2021-02-16 00:00:00.000' AS DateTime), CAST(N'2021-01-31 00:00:00.000' AS DateTime), 1, 2, CAST(N'2021-02-18 06:41:04.477' AS DateTime), 2, CAST(N'2021-02-18 07:18:48.517' AS DateTime), N'string', NULL)
INSERT [dbo].[ADS_TBL_holidays] ([holiday_id], [description_arb], [description_eng], [remarks], [from_date], [to_date], [recurring_flag], [created_id], [created_date], [last_updated_id], [last_updated_time], [info_source_reference], [Public_Holiday]) VALUES (10, N'TESTING', N'TESTING', N'TEST3', CAST(N'2021-02-17 00:00:00.000' AS DateTime), CAST(N'2021-02-21 00:00:00.000' AS DateTime), 0, 2, CAST(N'2021-02-18 06:41:33.337' AS DateTime), 2, CAST(N'2021-02-18 06:41:33.337' AS DateTime), N'string', NULL)
INSERT [dbo].[ADS_TBL_holidays] ([holiday_id], [description_arb], [description_eng], [remarks], [from_date], [to_date], [recurring_flag], [created_id], [created_date], [last_updated_id], [last_updated_time], [info_source_reference], [Public_Holiday]) VALUES (11, N'TESTING', N'TESTING', N'TEST3', CAST(N'2021-02-23 00:00:00.000' AS DateTime), CAST(N'2021-02-15 00:00:00.000' AS DateTime), 1, 2, CAST(N'2021-02-18 06:42:23.930' AS DateTime), 2, CAST(N'2021-02-18 06:42:23.930' AS DateTime), N'string', 0)
INSERT [dbo].[ADS_TBL_holidays] ([holiday_id], [description_arb], [description_eng], [remarks], [from_date], [to_date], [recurring_flag], [created_id], [created_date], [last_updated_id], [last_updated_time], [info_source_reference], [Public_Holiday]) VALUES (12, N'TESTING', N'TESTING', N'TEST3', CAST(N'2021-02-16 00:00:00.000' AS DateTime), CAST(N'2021-02-12 00:00:00.000' AS DateTime), 0, 2, CAST(N'2021-02-18 06:46:43.837' AS DateTime), 2, CAST(N'2021-02-18 06:46:43.837' AS DateTime), N'string', NULL)
INSERT [dbo].[ADS_TBL_holidays] ([holiday_id], [description_arb], [description_eng], [remarks], [from_date], [to_date], [recurring_flag], [created_id], [created_date], [last_updated_id], [last_updated_time], [info_source_reference], [Public_Holiday]) VALUES (13, N'TESTING', N'TESTING', N'TEST3', CAST(N'2021-02-12 00:00:00.000' AS DateTime), CAST(N'2021-02-16 00:00:00.000' AS DateTime), 0, 2, CAST(N'2021-02-18 06:54:55.660' AS DateTime), 2, CAST(N'2021-02-18 06:54:55.660' AS DateTime), N'string', 0)
INSERT [dbo].[ADS_TBL_holidays] ([holiday_id], [description_arb], [description_eng], [remarks], [from_date], [to_date], [recurring_flag], [created_id], [created_date], [last_updated_id], [last_updated_time], [info_source_reference], [Public_Holiday]) VALUES (14, N'TESTING', N'TESTING', N'TEST4', CAST(N'2021-02-08 00:00:00.000' AS DateTime), CAST(N'2021-02-15 00:00:00.000' AS DateTime), 0, 2, CAST(N'2021-02-18 07:14:37.193' AS DateTime), 2, CAST(N'2021-02-18 07:14:37.193' AS DateTime), N'string', 1)
INSERT [dbo].[ADS_TBL_holidays] ([holiday_id], [description_arb], [description_eng], [remarks], [from_date], [to_date], [recurring_flag], [created_id], [created_date], [last_updated_id], [last_updated_time], [info_source_reference], [Public_Holiday]) VALUES (15, N'TESTING', N'TESTING', N'TEST4', CAST(N'2021-02-08 00:00:00.000' AS DateTime), CAST(N'2021-02-15 00:00:00.000' AS DateTime), 1, 2, CAST(N'2021-02-18 07:15:37.813' AS DateTime), 2, CAST(N'2021-02-18 07:15:37.813' AS DateTime), N'string', 1)
INSERT [dbo].[ADS_TBL_holidays] ([holiday_id], [description_arb], [description_eng], [remarks], [from_date], [to_date], [recurring_flag], [created_id], [created_date], [last_updated_id], [last_updated_time], [info_source_reference], [Public_Holiday]) VALUES (16, N'TESTING', N'TESTING', N'TEST3', CAST(N'2021-02-24 00:00:00.000' AS DateTime), CAST(N'2021-02-16 00:00:00.000' AS DateTime), 1, 2, CAST(N'2021-02-18 07:16:41.817' AS DateTime), 2, CAST(N'2021-02-18 07:16:41.817' AS DateTime), N'string', 0)
INSERT [dbo].[ADS_TBL_holidays] ([holiday_id], [description_arb], [description_eng], [remarks], [from_date], [to_date], [recurring_flag], [created_id], [created_date], [last_updated_id], [last_updated_time], [info_source_reference], [Public_Holiday]) VALUES (17, N'TESTING', N'TESTING', N'TEST3', CAST(N'2021-02-24 00:00:00.000' AS DateTime), CAST(N'2021-02-16 00:00:00.000' AS DateTime), 1, 2, CAST(N'2021-02-18 07:17:02.800' AS DateTime), 2, CAST(N'2021-02-18 07:17:02.800' AS DateTime), N'string', 1)
SET IDENTITY_INSERT [dbo].[ADS_TBL_holidays] OFF
SET IDENTITY_INSERT [dbo].[ADS_TBL_leaves] ON 

INSERT [dbo].[ADS_TBL_leaves] ([leave_id], [code], [description_eng], [description_arb], [approve_need_flag], [created_id], [created_date], [last_updated_id], [last_updated_date], [official_flag], [allow_attachement]) VALUES (1, N'CODE1', N'LEAVETYPE', N'LEAVETYPE ARABIC', 0, 1, CAST(N'2021-03-20 19:21:02.137' AS DateTime), 0, CAST(N'2021-03-20 19:21:13.897' AS DateTime), N'1', 0)
INSERT [dbo].[ADS_TBL_leaves] ([leave_id], [code], [description_eng], [description_arb], [approve_need_flag], [created_id], [created_date], [last_updated_id], [last_updated_date], [official_flag], [allow_attachement]) VALUES (2, N'CODE2', N'LEAVETYPE ENGLISHE', N'LEAVETYPE ARABIC', 0, 1, CAST(N'2021-03-20 19:21:16.257' AS DateTime), 0, CAST(N'2021-03-20 19:21:27.843' AS DateTime), N'1', 0)
SET IDENTITY_INSERT [dbo].[ADS_TBL_leaves] OFF
SET IDENTITY_INSERT [dbo].[ADS_TBL_License] ON 

INSERT [dbo].[ADS_TBL_License] ([ID], [LicenseType], [LicenseValidationEndPoint], [Code], [NameEn], [NameAr], [APIEndpoint], [APIUsername], [APIPassword], [PrimaryLicenseKey], [LicenseId], [DescriptionEn], [DescriptionAr], [DbType], [DbName], [DbUser], [DbPassword], [LogoFile], [ActivationDate], [ExpiryDate], [IsActive], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (1, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'SQL Servers', N'TIMECHECK', N'hannan', N'P@ssw0rd', N'', CAST(N'2020-04-22 22:37:29.073' AS DateTime), CAST(N'2020-04-22 22:37:29.073' AS DateTime), 1, CAST(N'2020-04-22 22:37:29.073' AS DateTime), 1, CAST(N'2020-04-22 22:37:29.073' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[ADS_TBL_License] OFF
SET IDENTITY_INSERT [dbo].[ADS_TBL_locations] ON 

INSERT [dbo].[ADS_TBL_locations] ([location_id], [organization_id], [code], [computer_name], [card_no_length], [polling_retry], [connection_retry], [polling_timeout], [polling_delay], [reconnection_delay], [polling_frequency], [polling_mode_flag], [tcn], [created_id], [created_date], [last_updated_id], [last_updated_date]) VALUES (2, 1, 12, N'ABC', 12, 1, 3, 3000, 3000, 30, 1, 1, 10889542, 1, CAST(N'2021-02-04 11:06:01.397' AS DateTime), 1, CAST(N'2021-02-18 08:21:48.900' AS DateTime))
SET IDENTITY_INSERT [dbo].[ADS_TBL_locations] OFF
SET IDENTITY_INSERT [dbo].[ADS_TBL_menu_items] ON 

INSERT [dbo].[ADS_TBL_menu_items] ([MenuId], [MenuNameEng], [MenuNameArb], [SortOrder], [MenuIcon], [MenuUrl], [CreatedId], [CreatedDate], [UpdatedId], [UpdatedDate]) VALUES (1, N'General Info', N'General Info', 1, NULL, NULL, 1, CAST(N'2021-03-23 09:29:42.430' AS DateTime), NULL, NULL)
INSERT [dbo].[ADS_TBL_menu_items] ([MenuId], [MenuNameEng], [MenuNameArb], [SortOrder], [MenuIcon], [MenuUrl], [CreatedId], [CreatedDate], [UpdatedId], [UpdatedDate]) VALUES (2, N'Organization', N'Organization', 2, NULL, NULL, 1, CAST(N'2021-03-23 09:29:42.430' AS DateTime), NULL, NULL)
INSERT [dbo].[ADS_TBL_menu_items] ([MenuId], [MenuNameEng], [MenuNameArb], [SortOrder], [MenuIcon], [MenuUrl], [CreatedId], [CreatedDate], [UpdatedId], [UpdatedDate]) VALUES (3, N'Reports', N'Reports', 3, NULL, NULL, 1, CAST(N'2021-03-23 09:29:42.430' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[ADS_TBL_menu_items] OFF
SET IDENTITY_INSERT [dbo].[ADS_TBL_organization_types] ON 

INSERT [dbo].[ADS_TBL_organization_types] ([organization_type_id], [description_arb], [description_eng], [created_id], [created_date], [last_updated_id], [last_updated_date]) VALUES (2, N'Division', N'Division', 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime), 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[ADS_TBL_organization_types] ([organization_type_id], [description_arb], [description_eng], [created_id], [created_date], [last_updated_id], [last_updated_date]) VALUES (5, N'TESTING23', N'Test', 1, CAST(N'2021-01-04 10:35:56.853' AS DateTime), 1, CAST(N'2021-02-18 09:49:41.510' AS DateTime))
INSERT [dbo].[ADS_TBL_organization_types] ([organization_type_id], [description_arb], [description_eng], [created_id], [created_date], [last_updated_id], [last_updated_date]) VALUES (6, N'Abdul Hannan', N'Test1', 1, CAST(N'2021-01-04 10:50:30.017' AS DateTime), 1, CAST(N'2021-01-04 10:50:30.017' AS DateTime))
INSERT [dbo].[ADS_TBL_organization_types] ([organization_type_id], [description_arb], [description_eng], [created_id], [created_date], [last_updated_id], [last_updated_date]) VALUES (8, N'TESTING1122', N'TESTING', 2, CAST(N'2021-02-18 09:50:06.870' AS DateTime), 2, CAST(N'2021-02-18 09:50:06.870' AS DateTime))
SET IDENTITY_INSERT [dbo].[ADS_TBL_organization_types] OFF
SET IDENTITY_INSERT [dbo].[ADS_TBL_organizations] ON 

INSERT [dbo].[ADS_TBL_organizations] ([organization_id], [organization_type_id], [code], [description_arb], [description_eng], [parent_id], [created_id], [created_date], [last_updated_id], [last_updated_date], [branch_flag], [open_shift_flag], [inactive_date], [calculate_monthly_missed_hours]) VALUES (1, 6, N'Code', N'Company Name', N'Company Name', 1, 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime), 1, CAST(N'2021-03-20 17:57:22.510' AS DateTime), N'N', 0, CAST(N'2021-02-25 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[ADS_TBL_organizations] ([organization_id], [organization_type_id], [code], [description_arb], [description_eng], [parent_id], [created_id], [created_date], [last_updated_id], [last_updated_date], [branch_flag], [open_shift_flag], [inactive_date], [calculate_monthly_missed_hours]) VALUES (5, 2, N'adfs', N'adsfaf', N'afd', 1, 2, CAST(N'2021-02-23 19:51:18.400' AS DateTime), 2, CAST(N'2021-02-25 07:05:52.327' AS DateTime), N'N', 0, CAST(N'2021-02-10 00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[ADS_TBL_organizations] OFF
SET IDENTITY_INSERT [dbo].[ADS_TBL_preferences] ON 

INSERT [dbo].[ADS_TBL_preferences] ([preference_id], [employee_id], [language], [page_size], [sidebar], [theme], [created_id], [created_date], [updated_id], [updated_date]) VALUES (1, 3, N'EN', 10, N'1', N'Base', 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime), 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[ADS_TBL_preferences] OFF
SET IDENTITY_INSERT [dbo].[ADS_TBL_reader_status] ON 

INSERT [dbo].[ADS_TBL_reader_status] ([ReaderStatusId], [ReaderStatusName]) VALUES (1, N'Online')
INSERT [dbo].[ADS_TBL_reader_status] ([ReaderStatusId], [ReaderStatusName]) VALUES (2, N'Offline')
INSERT [dbo].[ADS_TBL_reader_status] ([ReaderStatusId], [ReaderStatusName]) VALUES (3, N'Disabled')
INSERT [dbo].[ADS_TBL_reader_status] ([ReaderStatusId], [ReaderStatusName]) VALUES (4, N'Restarted')
SET IDENTITY_INSERT [dbo].[ADS_TBL_reader_status] OFF
SET IDENTITY_INSERT [dbo].[ADS_TBL_reader_types] ON 

INSERT [dbo].[ADS_TBL_reader_types] ([reader_type_id], [type_name_eng], [type_name_arb], [driver_name_eng], [driver_name_arb], [load_driver_flag], [description_arb], [description_eng], [created_id], [created_date], [last_updated_id], [last_updated_date]) VALUES (1, N'Reader1', N'Reader1', N'Driver1', N'Driver1', 1, N'null', N'null', 1, CAST(N'2021-03-31 10:10:20.073' AS DateTime), 1, CAST(N'2021-03-31 10:10:20.077' AS DateTime))
SET IDENTITY_INSERT [dbo].[ADS_TBL_reader_types] OFF
SET IDENTITY_INSERT [dbo].[ADS_TBL_readers] ON 

INSERT [dbo].[ADS_TBL_readers] ([ReaderId], [ReaderCode], [ReaderName], [LocationId], [ReaderTypeId], [ReaderIP], [ReaderMAC], [LastCommunicationTime], [PunchTypeId], [StatusId], [IsAuthorized], [License], [IsDeleted], [FP], [Card], [LoginMethod], [PunchMethod], [CreatedId], [CreatedDate], [UpdatedId], [UpdatedDate]) VALUES (1, N'R-1', N'RR1', 1, 1, N'null', N'', NULL, 1, 1, 0, N'', 0, 0, 0, N'', N'null', 1, CAST(N'2021-03-31 10:11:45.057' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[ADS_TBL_readers] OFF
SET IDENTITY_INSERT [dbo].[ADS_TBL_regions] ON 

INSERT [dbo].[ADS_TBL_regions] ([region_id], [region_code], [description_arb], [description_eng], [created_id], [created_date], [last_updated_id], [last_updated_date]) VALUES (1, N'HQ', N'HeadOffice', N'HeadOffice', 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime), 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[ADS_TBL_regions] OFF
SET IDENTITY_INSERT [dbo].[ADS_TBL_role_permissions] ON 

INSERT [dbo].[ADS_TBL_role_permissions] ([RolePermissionId], [RoleId], [MenuId], [SubMenuId], [PermissionId], [ScopeId]) VALUES (1, 5, 1, 1, 1, 0)
INSERT [dbo].[ADS_TBL_role_permissions] ([RolePermissionId], [RoleId], [MenuId], [SubMenuId], [PermissionId], [ScopeId]) VALUES (2, 5, 2, 8, 2, 0)
INSERT [dbo].[ADS_TBL_role_permissions] ([RolePermissionId], [RoleId], [MenuId], [SubMenuId], [PermissionId], [ScopeId]) VALUES (3, 5, 2, 8, 1, 0)
INSERT [dbo].[ADS_TBL_role_permissions] ([RolePermissionId], [RoleId], [MenuId], [SubMenuId], [PermissionId], [ScopeId]) VALUES (4, 5, 2, 7, 4, 0)
INSERT [dbo].[ADS_TBL_role_permissions] ([RolePermissionId], [RoleId], [MenuId], [SubMenuId], [PermissionId], [ScopeId]) VALUES (5, 5, 2, 7, 3, 0)
INSERT [dbo].[ADS_TBL_role_permissions] ([RolePermissionId], [RoleId], [MenuId], [SubMenuId], [PermissionId], [ScopeId]) VALUES (6, 5, 2, 7, 2, 0)
INSERT [dbo].[ADS_TBL_role_permissions] ([RolePermissionId], [RoleId], [MenuId], [SubMenuId], [PermissionId], [ScopeId]) VALUES (7, 5, 2, 7, 1, 0)
INSERT [dbo].[ADS_TBL_role_permissions] ([RolePermissionId], [RoleId], [MenuId], [SubMenuId], [PermissionId], [ScopeId]) VALUES (8, 5, 1, 6, 4, 0)
INSERT [dbo].[ADS_TBL_role_permissions] ([RolePermissionId], [RoleId], [MenuId], [SubMenuId], [PermissionId], [ScopeId]) VALUES (9, 5, 1, 6, 3, 0)
INSERT [dbo].[ADS_TBL_role_permissions] ([RolePermissionId], [RoleId], [MenuId], [SubMenuId], [PermissionId], [ScopeId]) VALUES (10, 5, 1, 6, 2, 0)
INSERT [dbo].[ADS_TBL_role_permissions] ([RolePermissionId], [RoleId], [MenuId], [SubMenuId], [PermissionId], [ScopeId]) VALUES (11, 5, 1, 6, 1, 0)
INSERT [dbo].[ADS_TBL_role_permissions] ([RolePermissionId], [RoleId], [MenuId], [SubMenuId], [PermissionId], [ScopeId]) VALUES (12, 5, 1, 5, 4, 0)
INSERT [dbo].[ADS_TBL_role_permissions] ([RolePermissionId], [RoleId], [MenuId], [SubMenuId], [PermissionId], [ScopeId]) VALUES (13, 5, 1, 5, 3, 0)
INSERT [dbo].[ADS_TBL_role_permissions] ([RolePermissionId], [RoleId], [MenuId], [SubMenuId], [PermissionId], [ScopeId]) VALUES (14, 5, 1, 5, 2, 0)
INSERT [dbo].[ADS_TBL_role_permissions] ([RolePermissionId], [RoleId], [MenuId], [SubMenuId], [PermissionId], [ScopeId]) VALUES (15, 5, 1, 5, 1, 0)
INSERT [dbo].[ADS_TBL_role_permissions] ([RolePermissionId], [RoleId], [MenuId], [SubMenuId], [PermissionId], [ScopeId]) VALUES (16, 5, 1, 4, 4, 0)
INSERT [dbo].[ADS_TBL_role_permissions] ([RolePermissionId], [RoleId], [MenuId], [SubMenuId], [PermissionId], [ScopeId]) VALUES (17, 5, 1, 4, 3, 0)
INSERT [dbo].[ADS_TBL_role_permissions] ([RolePermissionId], [RoleId], [MenuId], [SubMenuId], [PermissionId], [ScopeId]) VALUES (18, 5, 1, 4, 2, 0)
INSERT [dbo].[ADS_TBL_role_permissions] ([RolePermissionId], [RoleId], [MenuId], [SubMenuId], [PermissionId], [ScopeId]) VALUES (19, 5, 1, 4, 1, 0)
INSERT [dbo].[ADS_TBL_role_permissions] ([RolePermissionId], [RoleId], [MenuId], [SubMenuId], [PermissionId], [ScopeId]) VALUES (20, 5, 1, 3, 4, 0)
INSERT [dbo].[ADS_TBL_role_permissions] ([RolePermissionId], [RoleId], [MenuId], [SubMenuId], [PermissionId], [ScopeId]) VALUES (21, 5, 1, 3, 3, 0)
INSERT [dbo].[ADS_TBL_role_permissions] ([RolePermissionId], [RoleId], [MenuId], [SubMenuId], [PermissionId], [ScopeId]) VALUES (22, 5, 1, 3, 2, 0)
INSERT [dbo].[ADS_TBL_role_permissions] ([RolePermissionId], [RoleId], [MenuId], [SubMenuId], [PermissionId], [ScopeId]) VALUES (23, 5, 1, 3, 1, 0)
INSERT [dbo].[ADS_TBL_role_permissions] ([RolePermissionId], [RoleId], [MenuId], [SubMenuId], [PermissionId], [ScopeId]) VALUES (24, 5, 1, 2, 4, 0)
INSERT [dbo].[ADS_TBL_role_permissions] ([RolePermissionId], [RoleId], [MenuId], [SubMenuId], [PermissionId], [ScopeId]) VALUES (25, 5, 1, 2, 3, 0)
INSERT [dbo].[ADS_TBL_role_permissions] ([RolePermissionId], [RoleId], [MenuId], [SubMenuId], [PermissionId], [ScopeId]) VALUES (26, 5, 1, 2, 2, 0)
INSERT [dbo].[ADS_TBL_role_permissions] ([RolePermissionId], [RoleId], [MenuId], [SubMenuId], [PermissionId], [ScopeId]) VALUES (27, 5, 1, 2, 1, 0)
INSERT [dbo].[ADS_TBL_role_permissions] ([RolePermissionId], [RoleId], [MenuId], [SubMenuId], [PermissionId], [ScopeId]) VALUES (28, 5, 1, 1, 4, 0)
INSERT [dbo].[ADS_TBL_role_permissions] ([RolePermissionId], [RoleId], [MenuId], [SubMenuId], [PermissionId], [ScopeId]) VALUES (29, 5, 1, 1, 3, 0)
INSERT [dbo].[ADS_TBL_role_permissions] ([RolePermissionId], [RoleId], [MenuId], [SubMenuId], [PermissionId], [ScopeId]) VALUES (30, 5, 1, 1, 2, 0)
INSERT [dbo].[ADS_TBL_role_permissions] ([RolePermissionId], [RoleId], [MenuId], [SubMenuId], [PermissionId], [ScopeId]) VALUES (31, 5, 2, 8, 3, 0)
INSERT [dbo].[ADS_TBL_role_permissions] ([RolePermissionId], [RoleId], [MenuId], [SubMenuId], [PermissionId], [ScopeId]) VALUES (32, 5, 2, 8, 4, 0)
SET IDENTITY_INSERT [dbo].[ADS_TBL_role_permissions] OFF
SET IDENTITY_INSERT [dbo].[ADS_TBL_schedule_types] ON 

INSERT [dbo].[ADS_TBL_schedule_types] ([schedule_type_id], [description_arb], [description_eng], [created_id], [created_date], [last_updated_id], [last_updated_date]) VALUES (1, N'Weekly', N'Weekly', 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime), 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[ADS_TBL_schedule_types] ([schedule_type_id], [description_arb], [description_eng], [created_id], [created_date], [last_updated_id], [last_updated_date]) VALUES (2, N'Roster', N'Roster', 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime), 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[ADS_TBL_schedule_types] ([schedule_type_id], [description_arb], [description_eng], [created_id], [created_date], [last_updated_id], [last_updated_date]) VALUES (3, N'Rotational', N'Rotational', 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime), 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[ADS_TBL_schedule_types] ([schedule_type_id], [description_arb], [description_eng], [created_id], [created_date], [last_updated_id], [last_updated_date]) VALUES (4, N'Dynamic', N'Dynamic', 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime), 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[ADS_TBL_schedule_types] OFF
INSERT [dbo].[ADS_TBL_sec_permissions] ([PermissionId], [Permission], [PermissionEnumVal]) VALUES (1, N'Add', 0)
INSERT [dbo].[ADS_TBL_sec_permissions] ([PermissionId], [Permission], [PermissionEnumVal]) VALUES (2, N'Edit', 1)
INSERT [dbo].[ADS_TBL_sec_permissions] ([PermissionId], [Permission], [PermissionEnumVal]) VALUES (3, N'Delete', 2)
INSERT [dbo].[ADS_TBL_sec_permissions] ([PermissionId], [Permission], [PermissionEnumVal]) VALUES (4, N'View', 3)
SET IDENTITY_INSERT [dbo].[ADS_TBL_sec_roles] ON 

INSERT [dbo].[ADS_TBL_sec_roles] ([RoleId], [RoleName], [CreatedId], [CreatedDate], [UpdatedId], [UpdatedDate]) VALUES (1, N'ADMIN', 0, CAST(N'1900-01-01 00:00:00.000' AS DateTime), 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[ADS_TBL_sec_roles] ([RoleId], [RoleName], [CreatedId], [CreatedDate], [UpdatedId], [UpdatedDate]) VALUES (5, N'agileAdmin', 1, CAST(N'2021-03-23 08:57:35.693' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[ADS_TBL_sec_roles] OFF
SET IDENTITY_INSERT [dbo].[ADS_TBL_sec_users] ON 

INSERT [dbo].[ADS_TBL_sec_users] ([user_id], [login], [password], [employee_id], [last_updated_id], [last_updated_time]) VALUES (2, N'sysadmin', N'NTQzMjE=', 3, 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[ADS_TBL_sec_users] OFF
SET IDENTITY_INSERT [dbo].[ADS_TBL_submenu_items] ON 

INSERT [dbo].[ADS_TBL_submenu_items] ([SubMenuId], [MenuId], [SubMenuNameEng], [SubMenuNameArb], [SortOrder], [SubMenuIcon], [SubMenuUrl], [CreatedId], [CreatedDate], [UpdatedId], [UpdatedDate]) VALUES (1, 1, N'Nationalities', N'Nationalities', 1, NULL, NULL, 1, CAST(N'2021-03-23 09:33:52.953' AS DateTime), NULL, NULL)
INSERT [dbo].[ADS_TBL_submenu_items] ([SubMenuId], [MenuId], [SubMenuNameEng], [SubMenuNameArb], [SortOrder], [SubMenuIcon], [SubMenuUrl], [CreatedId], [CreatedDate], [UpdatedId], [UpdatedDate]) VALUES (2, 1, N'Readers', N'Readers', 2, NULL, NULL, 1, CAST(N'2021-03-23 09:33:52.953' AS DateTime), NULL, NULL)
INSERT [dbo].[ADS_TBL_submenu_items] ([SubMenuId], [MenuId], [SubMenuNameEng], [SubMenuNameArb], [SortOrder], [SubMenuIcon], [SubMenuUrl], [CreatedId], [CreatedDate], [UpdatedId], [UpdatedDate]) VALUES (3, 1, N'Designation', N'Designation', 3, NULL, NULL, 1, CAST(N'2021-03-23 09:33:52.953' AS DateTime), NULL, NULL)
INSERT [dbo].[ADS_TBL_submenu_items] ([SubMenuId], [MenuId], [SubMenuNameEng], [SubMenuNameArb], [SortOrder], [SubMenuIcon], [SubMenuUrl], [CreatedId], [CreatedDate], [UpdatedId], [UpdatedDate]) VALUES (4, 1, N'Leave Type', N'Leave Type', 4, NULL, NULL, 1, CAST(N'2021-03-23 09:33:52.953' AS DateTime), NULL, NULL)
INSERT [dbo].[ADS_TBL_submenu_items] ([SubMenuId], [MenuId], [SubMenuNameEng], [SubMenuNameArb], [SortOrder], [SubMenuIcon], [SubMenuUrl], [CreatedId], [CreatedDate], [UpdatedId], [UpdatedDate]) VALUES (5, 1, N'Grade', N'Grade', 5, NULL, NULL, 1, CAST(N'2021-03-23 09:33:52.953' AS DateTime), NULL, NULL)
INSERT [dbo].[ADS_TBL_submenu_items] ([SubMenuId], [MenuId], [SubMenuNameEng], [SubMenuNameArb], [SortOrder], [SubMenuIcon], [SubMenuUrl], [CreatedId], [CreatedDate], [UpdatedId], [UpdatedDate]) VALUES (6, 1, N'Holiday', N'Holiday', 6, NULL, NULL, 1, CAST(N'2021-03-23 09:33:52.953' AS DateTime), NULL, NULL)
INSERT [dbo].[ADS_TBL_submenu_items] ([SubMenuId], [MenuId], [SubMenuNameEng], [SubMenuNameArb], [SortOrder], [SubMenuIcon], [SubMenuUrl], [CreatedId], [CreatedDate], [UpdatedId], [UpdatedDate]) VALUES (7, 2, N'Organization Type', N'Organization Type', 1, NULL, NULL, 1, CAST(N'2021-03-23 09:33:52.953' AS DateTime), NULL, NULL)
INSERT [dbo].[ADS_TBL_submenu_items] ([SubMenuId], [MenuId], [SubMenuNameEng], [SubMenuNameArb], [SortOrder], [SubMenuIcon], [SubMenuUrl], [CreatedId], [CreatedDate], [UpdatedId], [UpdatedDate]) VALUES (8, 2, N'Organization', N'Organization', 2, NULL, NULL, 1, CAST(N'2021-03-23 09:33:52.953' AS DateTime), NULL, NULL)
INSERT [dbo].[ADS_TBL_submenu_items] ([SubMenuId], [MenuId], [SubMenuNameEng], [SubMenuNameArb], [SortOrder], [SubMenuIcon], [SubMenuUrl], [CreatedId], [CreatedDate], [UpdatedId], [UpdatedDate]) VALUES (9, 1, N'Employee Types', N'Employee Types', 7, NULL, NULL, 1, CAST(N'2021-03-23 09:33:52.953' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[ADS_TBL_submenu_items] OFF
SET IDENTITY_INSERT [dbo].[ADS_TBL_user_in_roles] ON 

INSERT [dbo].[ADS_TBL_user_in_roles] ([user_role_id], [user_id], [role_id], [last_updated_id], [last_updated_time]) VALUES (1, 2, 1, 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[ADS_TBL_user_in_roles] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [NidxU_countries]    Script Date: 3/31/2021 10:20:04 AM ******/
ALTER TABLE [dbo].[ADS_TBL_countries] ADD  CONSTRAINT [NidxU_countries] UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [NidxU_countries_desc_arb]    Script Date: 3/31/2021 10:20:04 AM ******/
ALTER TABLE [dbo].[ADS_TBL_countries] ADD  CONSTRAINT [NidxU_countries_desc_arb] UNIQUE NONCLUSTERED 
(
	[description_arb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [NidxU_countries_desc_eng]    Script Date: 3/31/2021 10:20:04 AM ******/
ALTER TABLE [dbo].[ADS_TBL_countries] ADD  CONSTRAINT [NidxU_countries_desc_eng] UNIQUE NONCLUSTERED 
(
	[description_eng] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
/****** Object:  Index [IX_employee_readers]    Script Date: 3/31/2021 10:20:04 AM ******/
ALTER TABLE [dbo].[ADS_TBL_employee_readers] ADD  CONSTRAINT [IX_employee_readers] UNIQUE NONCLUSTERED 
(
	[employee_id] ASC,
	[reader_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ_employee_desc_arb]    Script Date: 3/31/2021 10:20:04 AM ******/
ALTER TABLE [dbo].[ADS_TBL_employee_type] ADD  CONSTRAINT [UQ_employee_desc_arb] UNIQUE NONCLUSTERED 
(
	[description_arb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ_employee_desc_eng]    Script Date: 3/31/2021 10:20:04 AM ******/
ALTER TABLE [dbo].[ADS_TBL_employee_type] ADD  CONSTRAINT [UQ_employee_desc_eng] UNIQUE NONCLUSTERED 
(
	[description_eng] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ_employee_type_code]    Script Date: 3/31/2021 10:20:04 AM ******/
ALTER TABLE [dbo].[ADS_TBL_employee_type] ADD  CONSTRAINT [UQ_employee_type_code] UNIQUE NONCLUSTERED 
(
	[employee_type_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
/****** Object:  Index [UQ_ORGSCH_ID_DATE]    Script Date: 3/31/2021 10:20:04 AM ******/
ALTER TABLE [dbo].[ADS_TBL_organization_schedules] ADD  CONSTRAINT [UQ_ORGSCH_ID_DATE] UNIQUE NONCLUSTERED 
(
	[organization_id] ASC,
	[from_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_organizations]    Script Date: 3/31/2021 10:20:04 AM ******/
ALTER TABLE [dbo].[ADS_TBL_organizations] ADD  CONSTRAINT [IX_organizations] UNIQUE NONCLUSTERED 
(
	[organization_type_id] ASC,
	[code] ASC,
	[parent_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ_region_code]    Script Date: 3/31/2021 10:20:04 AM ******/
ALTER TABLE [dbo].[ADS_TBL_regions] ADD  CONSTRAINT [UQ_region_code] UNIQUE NONCLUSTERED 
(
	[region_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ_region_desc_arb]    Script Date: 3/31/2021 10:20:04 AM ******/
ALTER TABLE [dbo].[ADS_TBL_regions] ADD  CONSTRAINT [UQ_region_desc_arb] UNIQUE NONCLUSTERED 
(
	[description_arb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ_region_desc_eng]    Script Date: 3/31/2021 10:20:04 AM ******/
ALTER TABLE [dbo].[ADS_TBL_regions] ADD  CONSTRAINT [UQ_region_desc_eng] UNIQUE NONCLUSTERED 
(
	[description_eng] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
/****** Object:  Index [UQ_schedule_roster]    Script Date: 3/31/2021 10:20:04 AM ******/
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] ADD  CONSTRAINT [UQ_schedule_roster] UNIQUE NONCLUSTERED 
(
	[employee_id] ASC,
	[from_date] ASC,
	[version_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ADS_TBL_daily_EmployeeAttendanceDetails] ADD  CONSTRAINT [DF__daily_Emp__top_m__2057CCD0]  DEFAULT ('N') FOR [top_mgr]
GO
ALTER TABLE [dbo].[ADS_TBL_daily_EmployeeAttendanceDetails] ADD  CONSTRAINT [DF__daily_Emp__holid__214BF109]  DEFAULT ((0)) FOR [holiday]
GO
ALTER TABLE [dbo].[ADS_TBL_daily_EmployeeAttendanceDetails] ADD  CONSTRAINT [DF__daily_Emp__restd__22401542]  DEFAULT ((0)) FOR [restday]
GO
ALTER TABLE [dbo].[ADS_TBL_daily_EmployeeAttendanceDetails] ADD  CONSTRAINT [DF__daily_Emp__leave__2334397B]  DEFAULT ((0)) FOR [leave]
GO
ALTER TABLE [dbo].[ADS_TBL_daily_EmployeeAttendanceDetails] ADD  CONSTRAINT [DF__daily_Emp__absen__24285DB4]  DEFAULT ((0)) FOR [absent]
GO
ALTER TABLE [dbo].[ADS_TBL_daily_EmployeeAttendanceDetails] ADD  CONSTRAINT [DF__daily_Emp__absen__251C81ED]  DEFAULT ((0)) FOR [absent_approved]
GO
ALTER TABLE [dbo].[ADS_TBL_daily_EmployeeAttendanceDetails] ADD  CONSTRAINT [DF__daily_Emp__late___2610A626]  DEFAULT ((0)) FOR [late_approved]
GO
ALTER TABLE [dbo].[ADS_TBL_daily_EmployeeAttendanceDetails] ADD  CONSTRAINT [DF__daily_Emp__early__2704CA5F]  DEFAULT ((0)) FOR [early_approved]
GO
ALTER TABLE [dbo].[ADS_TBL_daily_EmployeeAttendanceDetails] ADD  CONSTRAINT [DF__daily_Emp__fulld__27F8EE98]  DEFAULT ((0)) FOR [fulldaypermission]
GO
ALTER TABLE [dbo].[ADS_TBL_daily_EmployeeAttendanceDetails] ADD  CONSTRAINT [DF__daily_Emp__IN_Of__28ED12D1]  DEFAULT ('N') FOR [IN_OffcialPerm]
GO
ALTER TABLE [dbo].[ADS_TBL_daily_EmployeeAttendanceDetails] ADD  CONSTRAINT [DF__daily_Emp__OUT_O__29E1370A]  DEFAULT ('N') FOR [OUT_OffcialPerm]
GO
ALTER TABLE [dbo].[ADS_TBL_daily_EmployeeAttendanceDetails] ADD  CONSTRAINT [DF__daily_Emp__shift__2AD55B43]  DEFAULT ((0)) FOR [shiftno]
GO
ALTER TABLE [dbo].[ADS_TBL_daily_EmployeeAttendanceDetails] ADD  CONSTRAINT [DF_daily_EmployeeAttendanceDetails_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_daily_EmployeeAttendanceDetails] ADD  CONSTRAINT [DF_daily_EmployeeAttendanceDetails_updated_date]  DEFAULT (getdate()) FOR [last_updated_date]
GO
ALTER TABLE [dbo].[ADS_TBL_daily_EmployeeAttendanceDetails] ADD  CONSTRAINT [DF__daily_Emp__OT1_P__6304A5CD]  DEFAULT ((0)) FOR [OT1_PROCESSED]
GO
ALTER TABLE [dbo].[ADS_TBL_daily_EmployeeAttendanceDetails] ADD  CONSTRAINT [DF__daily_Emp__OT2_P__63F8CA06]  DEFAULT ((0)) FOR [OT2_PROCESSED]
GO
ALTER TABLE [dbo].[ADS_TBL_daily_EmployeeAttendanceDetails] ADD  DEFAULT ((0)) FOR [default_Overtime]
GO
ALTER TABLE [dbo].[ADS_TBL_daily_EmployeeAttendanceDetails] ADD  DEFAULT ((0)) FOR [break_hours]
GO
ALTER TABLE [dbo].[ADS_TBL_device_groups] ADD  CONSTRAINT [DF_device_groups_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_device_groups] ADD  CONSTRAINT [DF_device_groups_last_updated_date]  DEFAULT (getdate()) FOR [last_updated_date]
GO
ALTER TABLE [dbo].[ADS_TBL_email_log] ADD  CONSTRAINT [DF_email_log_created_date]  DEFAULT (getdate()) FOR [log_created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_Emails] ADD  DEFAULT ((0)) FOR [is_complete_violation_email]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_admin_organizations] ADD  CONSTRAINT [DF_dept_admin_organizations_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_admins] ADD  CONSTRAINT [DF_dept_admins_delegation_level]  DEFAULT ((0)) FOR [delegation_level]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_admins] ADD  CONSTRAINT [DF_dept_admins_status]  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_admins] ADD  CONSTRAINT [DF_dept_admins_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_admins] ADD  CONSTRAINT [DF_dept_admins_updated_date]  DEFAULT (getdate()) FOR [updated_date]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_admins] ADD  CONSTRAINT [DF_dept_admins_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_delegates] ADD  CONSTRAINT [DF_delegates_status]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_event_transactions] ADD  CONSTRAINT [DF_employee_event_transactions_user_entry_flag]  DEFAULT ((0)) FOR [user_entry_flag]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_event_transactions] ADD  CONSTRAINT [DF_employee_event_transactions_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_event_transactions] ADD  CONSTRAINT [DF_employee_event_transactions_last_updated_date]  DEFAULT (getdate()) FOR [last_updated_date]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_grace_times] ADD  CONSTRAINT [DF_employee_grace_times_tcn]  DEFAULT (checksum(getdate())) FOR [tcn]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_grace_times] ADD  CONSTRAINT [DF_employee_grace_times_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_grace_times] ADD  CONSTRAINT [DF_employee_grace_times_last_updated_time]  DEFAULT (getdate()) FOR [last_updated_date]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_group_members] ADD  CONSTRAINT [DF_employee_group_members_active_flag]  DEFAULT ((0)) FOR [active_flag]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_group_members] ADD  CONSTRAINT [DF_employee_group_members_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_group_members] ADD  CONSTRAINT [DF_employee_group_members_last_updated_date]  DEFAULT (getdate()) FOR [last_updated_date]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_groups] ADD  CONSTRAINT [DF_employee_groups_schedule_flag]  DEFAULT ((0)) FOR [shift_flag]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_groups] ADD  CONSTRAINT [DF_employee_groups_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_groups] ADD  CONSTRAINT [DF_employee_groups_last_updated_date]  DEFAULT (getdate()) FOR [last_updated_date]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_leaves] ADD  CONSTRAINT [DF_employee_leaves_number_of_leaves]  DEFAULT ((0)) FOR [number_of_leaves]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_leaves] ADD  CONSTRAINT [DF_employee_leaves_approve_reject_flag]  DEFAULT ((0)) FOR [approve_reject_flag]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_leaves] ADD  CONSTRAINT [DF_employee_leaves_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_leaves] ADD  CONSTRAINT [DF_employee_leaves_last_updated_time]  DEFAULT (getdate()) FOR [last_updated_time]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_manual_event_transactions] ADD  CONSTRAINT [DF_employee_manual_event_transactions_approve_reject_flag]  DEFAULT ((0)) FOR [approve_reject_flag]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_manual_event_transactions] ADD  CONSTRAINT [DF_employee_manual_event_transactions_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_manual_event_transactions] ADD  CONSTRAINT [DF_Table_1_last_updated_time]  DEFAULT (getdate()) FOR [updated_date]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_manual_event_transactions] ADD  CONSTRAINT [DF_employee_manual_event_transactions_deleted_flag]  DEFAULT ((0)) FOR [deleted_flag]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_manual_event_transactions] ADD  CONSTRAINT [DF_employee_manual_event_transactions_processed_flag]  DEFAULT ((0)) FOR [processed_flag]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_manual_transactions] ADD  CONSTRAINT [DF_employee_manual_transactions_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_manual_transactions] ADD  CONSTRAINT [DF_employee_manual_transactions_updated_date]  DEFAULT (getdate()) FOR [updated_date]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_master_personal] ADD  CONSTRAINT [DF_employees_marital_status]  DEFAULT ((0)) FOR [marital_status]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_master_personal] ADD  CONSTRAINT [DF_employees_personal_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_master_personal] ADD  CONSTRAINT [DF_employees_personal_last_updated_date]  DEFAULT (getdate()) FOR [last_updated_date]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_missing_transactions] ADD  CONSTRAINT [DF_employee_missing_transactions_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_missing_transactions] ADD  CONSTRAINT [DF_employee_missing_transactions_updated_date]  DEFAULT (getdate()) FOR [updated_date]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_readers] ADD  CONSTRAINT [DF__employee___statu__00750D23]  DEFAULT ('N') FOR [status]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_readers] ADD  CONSTRAINT [DF__employee___creat__0169315C]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_readers] ADD  CONSTRAINT [DF__employee___last___025D5595]  DEFAULT (getdate()) FOR [last_updated_date]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_schedules] ADD  CONSTRAINT [DF_employee_schedules_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_schedules] ADD  CONSTRAINT [DF_employee_schedules_last_updated_time]  DEFAULT (getdate()) FOR [last_updated_time]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_templates] ADD  CONSTRAINT [DF_employee_templates_tcn]  DEFAULT (checksum(getdate())) FOR [tcn]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_templates] ADD  CONSTRAINT [DF_employee_templates_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_templates] ADD  CONSTRAINT [DF_employee_templates_last_updated_date]  DEFAULT (getdate()) FOR [last_updated_date]
GO
ALTER TABLE [dbo].[ADS_TBL_features] ADD  CONSTRAINT [DF_features_status]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[ADS_TBL_group_permission_employees] ADD  CONSTRAINT [DF_group_permission_employees_tcn]  DEFAULT (checksum(getdate())) FOR [tcn]
GO
ALTER TABLE [dbo].[ADS_TBL_group_permission_employees] ADD  CONSTRAINT [DF_group_permission_employees_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_group_permission_employees] ADD  CONSTRAINT [DF_group_permission_employees_last_updated_time]  DEFAULT (getdate()) FOR [last_updated_time]
GO
ALTER TABLE [dbo].[ADS_TBL_group_permissions] ADD  CONSTRAINT [DF_group_permissions_approve_reject_flag]  DEFAULT ((0)) FOR [approve_reject_flag]
GO
ALTER TABLE [dbo].[ADS_TBL_group_permissions] ADD  CONSTRAINT [DF_group_permissions_tcn]  DEFAULT (checksum(getdate())) FOR [tcn]
GO
ALTER TABLE [dbo].[ADS_TBL_group_permissions] ADD  CONSTRAINT [DF_group_permissions_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_group_permissions] ADD  CONSTRAINT [DF_group_permissions_last_updated_time]  DEFAULT (getdate()) FOR [last_updated_time]
GO
ALTER TABLE [dbo].[ADS_TBL_group_schedules] ADD  CONSTRAINT [DF_group_schedules_created_time]  DEFAULT (getdate()) FOR [created_time]
GO
ALTER TABLE [dbo].[ADS_TBL_group_schedules] ADD  CONSTRAINT [DF_group_schedules_last_updated_time]  DEFAULT (getdate()) FOR [last_updated_time]
GO
ALTER TABLE [dbo].[ADS_TBL_month_lock] ADD  CONSTRAINT [DF_month_lock_status]  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[ADS_TBL_month_lock] ADD  CONSTRAINT [DF_month_lock_deleted]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[ADS_TBL_month_lock_audit] ADD  CONSTRAINT [DF_month_lock_audit_deleted]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[ADS_TBL_month_lock_detail] ADD  CONSTRAINT [DF_month_lock_detail_status]  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[ADS_TBL_month_lock_detail] ADD  CONSTRAINT [DF_month_lock_detail_deleted]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[ADS_TBL_month_lock_detail_audit] ADD  CONSTRAINT [DF_month_lock_detail_audit_deleted]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[ADS_TBL_notification_types] ADD  CONSTRAINT [DF_notification_types_active]  DEFAULT ((0)) FOR [active]
GO
ALTER TABLE [dbo].[ADS_TBL_notifications] ADD  CONSTRAINT [DF_notifications_mark_read]  DEFAULT ((0)) FOR [mark_read]
GO
ALTER TABLE [dbo].[ADS_TBL_organization_grace_times] ADD  CONSTRAINT [DF_organization_grace_times_tcn]  DEFAULT (checksum(getdate())) FOR [tcn]
GO
ALTER TABLE [dbo].[ADS_TBL_organization_grace_times] ADD  CONSTRAINT [DF_organization_grace_times_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_organization_grace_times] ADD  CONSTRAINT [DF_organization_grace_times_last_updated_time]  DEFAULT (getdate()) FOR [last_updated_date]
GO
ALTER TABLE [dbo].[ADS_TBL_organization_schedules] ADD  CONSTRAINT [DF_organization_schedules_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_organization_schedules] ADD  CONSTRAINT [DF_organization_schedules_last_updated_time]  DEFAULT (getdate()) FOR [last_updated_date]
GO
ALTER TABLE [dbo].[ADS_TBL_permission_types] ADD  CONSTRAINT [DF_permission_types_group_apply_flag]  DEFAULT ((0)) FOR [group_apply_flag]
GO
ALTER TABLE [dbo].[ADS_TBL_permission_types] ADD  CONSTRAINT [DF_permission_types_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_permission_types] ADD  CONSTRAINT [DF_permission_types_last_updated_time]  DEFAULT (getdate()) FOR [last_updated_time]
GO
ALTER TABLE [dbo].[ADS_TBL_permission_types] ADD  CONSTRAINT [DF__permission_types_offcialflg]  DEFAULT ('N') FOR [official_flag]
GO
ALTER TABLE [dbo].[ADS_TBL_permission_types] ADD  CONSTRAINT [DF_permission_types_hr_only]  DEFAULT ((0)) FOR [hr_only]
GO
ALTER TABLE [dbo].[ADS_TBL_permission_types] ADD  CONSTRAINT [DF_permission_types_allow_attachement]  DEFAULT ((0)) FOR [allow_attachement]
GO
ALTER TABLE [dbo].[ADS_TBL_permission_types] ADD  CONSTRAINT [DF_permission_types_nationality_restrictions]  DEFAULT ((1)) FOR [comments_required]
GO
ALTER TABLE [dbo].[ADS_TBL_permission_types] ADD  CONSTRAINT [DF_permission_types_permission_type]  DEFAULT ((0)) FOR [permission_type]
GO
ALTER TABLE [dbo].[ADS_TBL_permission_types] ADD  CONSTRAINT [DF_permission_types_ramadan_restriction]  DEFAULT ((0)) FOR [ramadan_restriction]
GO
ALTER TABLE [dbo].[ADS_TBL_permission_types] ADD  CONSTRAINT [DF_permission_types_approve_workflow_id]  DEFAULT ((1)) FOR [workflow_id]
GO
ALTER TABLE [dbo].[ADS_TBL_permission_types] ADD  CONSTRAINT [DF_permission_types_medical_pass_attachment]  DEFAULT ((0)) FOR [medical_pass_attachment]
GO
ALTER TABLE [dbo].[ADS_TBL_permissions] ADD  CONSTRAINT [DF_single_permissions_approve_reject_flag]  DEFAULT ((0)) FOR [approve_reject_flag]
GO
ALTER TABLE [dbo].[ADS_TBL_permissions] ADD  CONSTRAINT [DF_single_permissions_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_permissions] ADD  CONSTRAINT [DF_single_permissions_last_updated_time]  DEFAULT (getdate()) FOR [last_updated_time]
GO
ALTER TABLE [dbo].[ADS_TBL_permissions] ADD  CONSTRAINT [DF_single_permissions_category_id]  DEFAULT ((0)) FOR [category_id]
GO
ALTER TABLE [dbo].[ADS_TBL_permissions] ADD  CONSTRAINT [DF_single_permissions_attachment_required]  DEFAULT ((0)) FOR [attachment_required]
GO
ALTER TABLE [dbo].[ADS_TBL_permissions] ADD  CONSTRAINT [DF_single_permissions_attachment_uploaded]  DEFAULT ((0)) FOR [attachment_uploaded]
GO
ALTER TABLE [dbo].[ADS_TBL_permissions_detail] ADD  CONSTRAINT [DF_single_permissions_detail_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_Processed_OverTime_Data] ADD  CONSTRAINT [DF_Processed_OverTime_Data_processed_date]  DEFAULT (getdate()) FOR [processed_date]
GO
ALTER TABLE [dbo].[ADS_TBL_Processed_OverTime_Data] ADD  CONSTRAINT [DF_Processed_OverTime_Data_worked_time]  DEFAULT ((0)) FOR [worked_time]
GO
ALTER TABLE [dbo].[ADS_TBL_Processed_OverTime_Data] ADD  CONSTRAINT [DF_Processed_OverTime_Data_required_time]  DEFAULT ((0)) FOR [required_time]
GO
ALTER TABLE [dbo].[ADS_TBL_Processed_OverTime_Data] ADD  CONSTRAINT [DF_Processed_OverTime_Data_overtime]  DEFAULT ((0)) FOR [overtime]
GO
ALTER TABLE [dbo].[ADS_TBL_reader_prompts] ADD  CONSTRAINT [DF_reader_prompts_tcn]  DEFAULT (checksum(getdate())) FOR [tcn]
GO
ALTER TABLE [dbo].[ADS_TBL_reader_prompts] ADD  CONSTRAINT [DF_reader_prompts_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_reader_prompts] ADD  CONSTRAINT [DF_reader_prompts_last_updated_time]  DEFAULT (getdate()) FOR [last_updated_time]
GO
ALTER TABLE [dbo].[ADS_TBL_reasons] ADD  CONSTRAINT [DF_reasons_reason_mode]  DEFAULT ((0)) FOR [reason_mode]
GO
ALTER TABLE [dbo].[ADS_TBL_reasons] ADD  CONSTRAINT [DF_reasons_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_reasons] ADD  CONSTRAINT [DF_reasons_last_updated_date]  DEFAULT (getdate()) FOR [last_updated_date]
GO
ALTER TABLE [dbo].[ADS_TBL_reasons] ADD  CONSTRAINT [DF__reasons__normal___7073AF84]  DEFAULT ((0)) FOR [normal_in]
GO
ALTER TABLE [dbo].[ADS_TBL_reasons] ADD  CONSTRAINT [DF__reasons__normal___7167D3BD]  DEFAULT ((0)) FOR [normal_out]
GO
ALTER TABLE [dbo].[ADS_TBL_reasons] ADD  CONSTRAINT [DF_reasons_web_punch]  DEFAULT ((0)) FOR [web_punch]
GO
ALTER TABLE [dbo].[ADS_TBL_reasons] ADD  DEFAULT ((0)) FOR [Is_Active]
GO
ALTER TABLE [dbo].[ADS_TBL_report_catagories] ADD  CONSTRAINT [DF_report_catagories_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[ADS_TBL_ReportTemplates] ADD  DEFAULT ((0)) FOR [ApplyGroup]
GO
ALTER TABLE [dbo].[ADS_TBL_ReportTemplates] ADD  CONSTRAINT [DF_TAMSR2_ReportTemplates_TableType]  DEFAULT (N'V') FOR [TableType]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_locations] ADD  CONSTRAINT [DF_schedule_location_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_locations] ADD  CONSTRAINT [DF_schedule_location_last_updated_time]  DEFAULT (getdate()) FOR [last_updated_date]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] ADD  CONSTRAINT [DF__schedule___versi__477199F1]  DEFAULT ((1)) FOR [version_no]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] ADD  CONSTRAINT [DF_schedule_roster_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] ADD  CONSTRAINT [DF_schedule_roster_last_updated_time]  DEFAULT (getdate()) FOR [last_updated_date]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] ADD  CONSTRAINT [DF_schedule_monthly_roster_finalizeFlag]  DEFAULT ((0)) FOR [finalizeFlag]
GO
ALTER TABLE [dbo].[ADS_TBL_Schedule_Ramadan] ADD  CONSTRAINT [DF_Tbl_Ramadan_recurring_flag]  DEFAULT ((0)) FOR [process_data_flag]
GO
ALTER TABLE [dbo].[ADS_TBL_schedules] ADD  CONSTRAINT [DF_schedules_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_schedules] ADD  CONSTRAINT [DF_schedules_last_updated_date]  DEFAULT (getdate()) FOR [last_updated_date]
GO
ALTER TABLE [dbo].[ADS_TBL_schedules] ADD  CONSTRAINT [DF__schedules__ramad__79E80B25]  DEFAULT ((0)) FOR [ramadan_flag]
GO
ALTER TABLE [dbo].[ADS_TBL_schedules] ADD  CONSTRAINT [DF_schedules_open_shoft2]  DEFAULT ((0)) FOR [open_shift2]
GO
ALTER TABLE [dbo].[ADS_TBL_schedules] ADD  CONSTRAINT [DF_schedules_night_shift2]  DEFAULT ((0)) FOR [night_shift2]
GO
ALTER TABLE [dbo].[ADS_TBL_schedules] ADD  CONSTRAINT [DF_schedules_open_shift3]  DEFAULT ((0)) FOR [open_shift3]
GO
ALTER TABLE [dbo].[ADS_TBL_schedules] ADD  CONSTRAINT [DF_schedules_night_shift3]  DEFAULT ((0)) FOR [night_shift3]
GO
ALTER TABLE [dbo].[ADS_TBL_schedules] ADD  CONSTRAINT [DF__ADS_TBL_s__Trans__1F2E9E6D]  DEFAULT ((0)) FOR [Transaction_type]
GO
ALTER TABLE [dbo].[ADS_TBL_schedules] ADD  CONSTRAINT [DF__ADS_TBL_s__notif__2022C2A6]  DEFAULT ((0)) FOR [notification_type]
GO
ALTER TABLE [dbo].[ADS_TBL_schedules] ADD  CONSTRAINT [DF__ADS_TBL_s__enabl__2116E6DF]  DEFAULT ((0)) FOR [enable_overtime]
GO
ALTER TABLE [dbo].[ADS_TBL_schedules] ADD  CONSTRAINT [DF__ADS_TBL_s__overt__220B0B18]  DEFAULT ((0)) FOR [overtime_minutes]
GO
ALTER TABLE [dbo].[ADS_TBL_schedules] ADD  CONSTRAINT [DF__ADS_TBL_s__calcu__22FF2F51]  DEFAULT ((0)) FOR [calculate_WorkHours_From_SchStartTime]
GO
ALTER TABLE [dbo].[ADS_TBL_schedules] ADD  CONSTRAINT [DF__ADS_TBL_s__Proce__23F3538A]  DEFAULT ((0)) FOR [ProcessTransactionForNextDayOrPreviousDay]
GO
ALTER TABLE [dbo].[ADS_TBL_schedules] ADD  CONSTRAINT [DF__ADS_TBL_s__sched__24E777C3]  DEFAULT ((0)) FOR [schedule_override]
GO
ALTER TABLE [dbo].[ADS_TBL_schedules] ADD  CONSTRAINT [DF__ADS_TBL_s__enabl__25DB9BFC]  DEFAULT ((0)) FOR [enable_break_hours]
GO
ALTER TABLE [dbo].[ADS_TBL_schedules] ADD  CONSTRAINT [DF__ADS_TBL_s__break__26CFC035]  DEFAULT ((0)) FOR [break_hours]
GO
ALTER TABLE [dbo].[ADS_TBL_schedules] ADD  CONSTRAINT [DF__ADS_TBL_s__Reduc__27C3E46E]  DEFAULT ((0)) FOR [Reduce_Work_Mts]
GO
ALTER TABLE [dbo].[ADS_TBL_shift_master] ADD  CONSTRAINT [DF_ADS_TBL_shift_master_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_shift_master] ADD  CONSTRAINT [DF_ADS_TBL_shift_master_last_updated_date]  DEFAULT (getdate()) FOR [last_updated_date]
GO
ALTER TABLE [dbo].[ADS_TBL_shift_nomral_days] ADD  CONSTRAINT [DF_ADS_TBL_shift_nomral_days_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_shift_nomral_days] ADD  CONSTRAINT [DF_ADS_TBL_shift_nomral_days_last_updated_date]  DEFAULT (getdate()) FOR [last_updated_date]
GO
ALTER TABLE [dbo].[ADS_TBL_shift_ramadan_days] ADD  CONSTRAINT [DF_ADS_TBL_shift_ramadan_days_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_shift_ramadan_days] ADD  CONSTRAINT [DF_ADS_TBL_shift_ramadan_days_last_updated_date]  DEFAULT (getdate()) FOR [last_updated_date]
GO
ALTER TABLE [dbo].[ADS_TBL_Standard_Reports] ADD  CONSTRAINT [DF_Standard_Reports_Created_date]  DEFAULT (getdate()) FOR [Created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_Standard_Reports] ADD  CONSTRAINT [DF_Standard_Reports_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ADS_TBL_Standard_Reports] ADD  CONSTRAINT [DF_Standard_Reports_HrOnly]  DEFAULT ((0)) FOR [HrOnly]
GO
ALTER TABLE [dbo].[ADS_TBL_Sync_Service_Log] ADD  CONSTRAINT [DF_SVC_LOG_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[ADS_TBL_device_groups]  WITH NOCHECK ADD  CONSTRAINT [FK_device_groups_organizations] FOREIGN KEY([organization_id])
REFERENCES [dbo].[ADS_TBL_organizations] ([organization_id])
GO
ALTER TABLE [dbo].[ADS_TBL_device_groups] CHECK CONSTRAINT [FK_device_groups_organizations]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_admins]  WITH CHECK ADD  CONSTRAINT [FK_dept_admins_employee_master] FOREIGN KEY([employee_id])
REFERENCES [dbo].[ADS_TBL_employee_master] ([employee_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ADS_TBL_employee_admins] CHECK CONSTRAINT [FK_dept_admins_employee_master]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_delegate_features]  WITH CHECK ADD  CONSTRAINT [FK_delegate_features_features] FOREIGN KEY([feature_id])
REFERENCES [dbo].[ADS_TBL_features] ([feature_id])
GO
ALTER TABLE [dbo].[ADS_TBL_employee_delegate_features] CHECK CONSTRAINT [FK_delegate_features_features]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_delegates]  WITH CHECK ADD  CONSTRAINT [FK_delegates_employee_master1] FOREIGN KEY([employee_id])
REFERENCES [dbo].[ADS_TBL_employee_master] ([employee_id])
GO
ALTER TABLE [dbo].[ADS_TBL_employee_delegates] CHECK CONSTRAINT [FK_delegates_employee_master1]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_event_transactions]  WITH CHECK ADD  CONSTRAINT [FK_employee_event_transactions_readers] FOREIGN KEY([reader_id])
REFERENCES [dbo].[ADS_TBL_readers] ([ReaderId])
GO
ALTER TABLE [dbo].[ADS_TBL_employee_event_transactions] CHECK CONSTRAINT [FK_employee_event_transactions_readers]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_event_transactions]  WITH CHECK ADD  CONSTRAINT [FK_employee_move_transactions_employees] FOREIGN KEY([employee_id])
REFERENCES [dbo].[ADS_TBL_employee_master] ([employee_id])
GO
ALTER TABLE [dbo].[ADS_TBL_employee_event_transactions] CHECK CONSTRAINT [FK_employee_move_transactions_employees]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_event_transactions]  WITH CHECK ADD  CONSTRAINT [FK_employee_move_transactions_reasons] FOREIGN KEY([reason_id])
REFERENCES [dbo].[ADS_TBL_reasons] ([reason_id])
GO
ALTER TABLE [dbo].[ADS_TBL_employee_event_transactions] CHECK CONSTRAINT [FK_employee_move_transactions_reasons]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_grace_times]  WITH CHECK ADD  CONSTRAINT [FK_employee_grace_times_employees] FOREIGN KEY([employee_id])
REFERENCES [dbo].[ADS_TBL_employee_master] ([employee_id])
GO
ALTER TABLE [dbo].[ADS_TBL_employee_grace_times] CHECK CONSTRAINT [FK_employee_grace_times_employees]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_group_members]  WITH CHECK ADD  CONSTRAINT [FK_employee_group_members_employee_groups] FOREIGN KEY([employee_group_id])
REFERENCES [dbo].[ADS_TBL_employee_groups] ([employee_group_id])
GO
ALTER TABLE [dbo].[ADS_TBL_employee_group_members] CHECK CONSTRAINT [FK_employee_group_members_employee_groups]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_group_members]  WITH CHECK ADD  CONSTRAINT [FK_employee_group_members_employees] FOREIGN KEY([employee_id])
REFERENCES [dbo].[ADS_TBL_employee_master] ([employee_id])
GO
ALTER TABLE [dbo].[ADS_TBL_employee_group_members] CHECK CONSTRAINT [FK_employee_group_members_employees]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_images]  WITH NOCHECK ADD  CONSTRAINT [FK_employee_images_employee_master] FOREIGN KEY([employee_id])
REFERENCES [dbo].[ADS_TBL_employee_master] ([employee_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ADS_TBL_employee_images] CHECK CONSTRAINT [FK_employee_images_employee_master]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_leaves]  WITH CHECK ADD  CONSTRAINT [FK_employee_leaves_employees] FOREIGN KEY([employee_id])
REFERENCES [dbo].[ADS_TBL_employee_master] ([employee_id])
GO
ALTER TABLE [dbo].[ADS_TBL_employee_leaves] CHECK CONSTRAINT [FK_employee_leaves_employees]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_leaves]  WITH CHECK ADD  CONSTRAINT [FK_employee_leaves_leaves] FOREIGN KEY([leave_id])
REFERENCES [dbo].[ADS_TBL_leaves] ([leave_id])
GO
ALTER TABLE [dbo].[ADS_TBL_employee_leaves] CHECK CONSTRAINT [FK_employee_leaves_leaves]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_manual_transactions]  WITH CHECK ADD  CONSTRAINT [FK_employee_manual_transactions_employee_manual_transactions] FOREIGN KEY([transaction_id])
REFERENCES [dbo].[ADS_TBL_employee_manual_transactions] ([transaction_id])
GO
ALTER TABLE [dbo].[ADS_TBL_employee_manual_transactions] CHECK CONSTRAINT [FK_employee_manual_transactions_employee_manual_transactions]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_master]  WITH CHECK ADD  CONSTRAINT [FK_employee_master_designations] FOREIGN KEY([designation_id])
REFERENCES [dbo].[ADS_TBL_designations] ([designation_id])
GO
ALTER TABLE [dbo].[ADS_TBL_employee_master] CHECK CONSTRAINT [FK_employee_master_designations]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_master]  WITH CHECK ADD  CONSTRAINT [FK_employee_master_grades] FOREIGN KEY([grade_id])
REFERENCES [dbo].[ADS_TBL_grades] ([grade_id])
GO
ALTER TABLE [dbo].[ADS_TBL_employee_master] CHECK CONSTRAINT [FK_employee_master_grades]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_master]  WITH CHECK ADD  CONSTRAINT [FK_employee_sch_type] FOREIGN KEY([schedule_type_id])
REFERENCES [dbo].[ADS_TBL_schedule_types] ([schedule_type_id])
GO
ALTER TABLE [dbo].[ADS_TBL_employee_master] CHECK CONSTRAINT [FK_employee_sch_type]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_master]  WITH NOCHECK ADD  CONSTRAINT [FK_employees_countries] FOREIGN KEY([country_id])
REFERENCES [dbo].[ADS_TBL_countries] ([country_id])
GO
ALTER TABLE [dbo].[ADS_TBL_employee_master] CHECK CONSTRAINT [FK_employees_countries]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_master]  WITH NOCHECK ADD  CONSTRAINT [FK_employees_employee_type] FOREIGN KEY([employee_type_id])
REFERENCES [dbo].[ADS_TBL_employee_type] ([employee_type_id])
GO
ALTER TABLE [dbo].[ADS_TBL_employee_master] CHECK CONSTRAINT [FK_employees_employee_type]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_master]  WITH NOCHECK ADD  CONSTRAINT [FK_employees_organizations] FOREIGN KEY([organization_id])
REFERENCES [dbo].[ADS_TBL_organizations] ([organization_id])
GO
ALTER TABLE [dbo].[ADS_TBL_employee_master] CHECK CONSTRAINT [FK_employees_organizations]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_master]  WITH CHECK ADD  CONSTRAINT [FK_employees_regions] FOREIGN KEY([region_id])
REFERENCES [dbo].[ADS_TBL_regions] ([region_id])
GO
ALTER TABLE [dbo].[ADS_TBL_employee_master] CHECK CONSTRAINT [FK_employees_regions]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_master_personal]  WITH CHECK ADD  CONSTRAINT [FK_employee_personal_empid] FOREIGN KEY([employee_id])
REFERENCES [dbo].[ADS_TBL_employee_master] ([employee_id])
GO
ALTER TABLE [dbo].[ADS_TBL_employee_master_personal] CHECK CONSTRAINT [FK_employee_personal_empid]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_missing_transactions]  WITH CHECK ADD  CONSTRAINT [FK_employee_missing_transactions_employee_missing_transactions] FOREIGN KEY([transaction_id])
REFERENCES [dbo].[ADS_TBL_employee_missing_transactions] ([transaction_id])
GO
ALTER TABLE [dbo].[ADS_TBL_employee_missing_transactions] CHECK CONSTRAINT [FK_employee_missing_transactions_employee_missing_transactions]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_readers]  WITH CHECK ADD  CONSTRAINT [FK_employee_readers_empmaster] FOREIGN KEY([employee_id])
REFERENCES [dbo].[ADS_TBL_employee_master] ([employee_id])
GO
ALTER TABLE [dbo].[ADS_TBL_employee_readers] CHECK CONSTRAINT [FK_employee_readers_empmaster]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_readers]  WITH CHECK ADD  CONSTRAINT [FK_employee_readers_readers] FOREIGN KEY([reader_id])
REFERENCES [dbo].[ADS_TBL_readers] ([ReaderId])
GO
ALTER TABLE [dbo].[ADS_TBL_employee_readers] CHECK CONSTRAINT [FK_employee_readers_readers]
GO
ALTER TABLE [dbo].[ADS_TBL_employee_templates]  WITH CHECK ADD  CONSTRAINT [FK_employee_templates_employees] FOREIGN KEY([employee_id])
REFERENCES [dbo].[ADS_TBL_employee_master] ([employee_id])
GO
ALTER TABLE [dbo].[ADS_TBL_employee_templates] CHECK CONSTRAINT [FK_employee_templates_employees]
GO
ALTER TABLE [dbo].[ADS_TBL_group_permission_employees]  WITH CHECK ADD  CONSTRAINT [FK_group_permission_employees_employees] FOREIGN KEY([employee_id])
REFERENCES [dbo].[ADS_TBL_employee_master] ([employee_id])
GO
ALTER TABLE [dbo].[ADS_TBL_group_permission_employees] CHECK CONSTRAINT [FK_group_permission_employees_employees]
GO
ALTER TABLE [dbo].[ADS_TBL_group_permission_employees]  WITH CHECK ADD  CONSTRAINT [FK_group_permission_employees_group_permissions] FOREIGN KEY([group_permissions_id])
REFERENCES [dbo].[ADS_TBL_group_permissions] ([group_permissions_id])
GO
ALTER TABLE [dbo].[ADS_TBL_group_permission_employees] CHECK CONSTRAINT [FK_group_permission_employees_group_permissions]
GO
ALTER TABLE [dbo].[ADS_TBL_group_permissions]  WITH CHECK ADD  CONSTRAINT [FK_group_permissions_organizations] FOREIGN KEY([organization_id])
REFERENCES [dbo].[ADS_TBL_organizations] ([organization_id])
GO
ALTER TABLE [dbo].[ADS_TBL_group_permissions] CHECK CONSTRAINT [FK_group_permissions_organizations]
GO
ALTER TABLE [dbo].[ADS_TBL_group_schedules]  WITH CHECK ADD  CONSTRAINT [FK_group_schedules_employee_groups] FOREIGN KEY([employee_group_id])
REFERENCES [dbo].[ADS_TBL_employee_groups] ([employee_group_id])
GO
ALTER TABLE [dbo].[ADS_TBL_group_schedules] CHECK CONSTRAINT [FK_group_schedules_employee_groups]
GO
ALTER TABLE [dbo].[ADS_TBL_group_schedules]  WITH CHECK ADD  CONSTRAINT [FK_group_schedules_schedules] FOREIGN KEY([monday_schedule_id])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_group_schedules] CHECK CONSTRAINT [FK_group_schedules_schedules]
GO
ALTER TABLE [dbo].[ADS_TBL_group_schedules]  WITH CHECK ADD  CONSTRAINT [FK_group_schedules_schedules1] FOREIGN KEY([tuesday_schedule_id])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_group_schedules] CHECK CONSTRAINT [FK_group_schedules_schedules1]
GO
ALTER TABLE [dbo].[ADS_TBL_group_schedules]  WITH CHECK ADD  CONSTRAINT [FK_group_schedules_schedules2] FOREIGN KEY([wednesday_schedule_id])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_group_schedules] CHECK CONSTRAINT [FK_group_schedules_schedules2]
GO
ALTER TABLE [dbo].[ADS_TBL_group_schedules]  WITH CHECK ADD  CONSTRAINT [FK_group_schedules_schedules3] FOREIGN KEY([thursday_schedule_id])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_group_schedules] CHECK CONSTRAINT [FK_group_schedules_schedules3]
GO
ALTER TABLE [dbo].[ADS_TBL_group_schedules]  WITH CHECK ADD  CONSTRAINT [FK_group_schedules_schedules4] FOREIGN KEY([friday_schedule_id])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_group_schedules] CHECK CONSTRAINT [FK_group_schedules_schedules4]
GO
ALTER TABLE [dbo].[ADS_TBL_group_schedules]  WITH CHECK ADD  CONSTRAINT [FK_group_schedules_schedules5] FOREIGN KEY([saturday_schedule_id])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_group_schedules] CHECK CONSTRAINT [FK_group_schedules_schedules5]
GO
ALTER TABLE [dbo].[ADS_TBL_group_schedules]  WITH CHECK ADD  CONSTRAINT [FK_group_schedules_schedules6] FOREIGN KEY([sunday_schedule_id])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_group_schedules] CHECK CONSTRAINT [FK_group_schedules_schedules6]
GO
ALTER TABLE [dbo].[ADS_TBL_locations]  WITH NOCHECK ADD  CONSTRAINT [FK_locations_organizations] FOREIGN KEY([organization_id])
REFERENCES [dbo].[ADS_TBL_organizations] ([organization_id])
GO
ALTER TABLE [dbo].[ADS_TBL_locations] CHECK CONSTRAINT [FK_locations_organizations]
GO
ALTER TABLE [dbo].[ADS_TBL_month_lock]  WITH CHECK ADD  CONSTRAINT [FK_Organizations_MonthLock] FOREIGN KEY([organization_id])
REFERENCES [dbo].[ADS_TBL_organizations] ([organization_id])
GO
ALTER TABLE [dbo].[ADS_TBL_month_lock] CHECK CONSTRAINT [FK_Organizations_MonthLock]
GO
ALTER TABLE [dbo].[ADS_TBL_month_lock_detail]  WITH CHECK ADD  CONSTRAINT [FK_month_lock_month_lock_detail] FOREIGN KEY([month_lock_id])
REFERENCES [dbo].[ADS_TBL_month_lock] ([month_lock_id])
GO
ALTER TABLE [dbo].[ADS_TBL_month_lock_detail] CHECK CONSTRAINT [FK_month_lock_month_lock_detail]
GO
ALTER TABLE [dbo].[ADS_TBL_notifications]  WITH CHECK ADD  CONSTRAINT [FK_notifications_employee_master1] FOREIGN KEY([receiver_employee_id])
REFERENCES [dbo].[ADS_TBL_employee_master] ([employee_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ADS_TBL_notifications] CHECK CONSTRAINT [FK_notifications_employee_master1]
GO
ALTER TABLE [dbo].[ADS_TBL_organization_grace_times]  WITH CHECK ADD  CONSTRAINT [FK_organization_grace_times_organizations] FOREIGN KEY([organization_id])
REFERENCES [dbo].[ADS_TBL_organizations] ([organization_id])
GO
ALTER TABLE [dbo].[ADS_TBL_organization_grace_times] CHECK CONSTRAINT [FK_organization_grace_times_organizations]
GO
ALTER TABLE [dbo].[ADS_TBL_organization_schedules]  WITH CHECK ADD  CONSTRAINT [FK_organization_schedules_organizations] FOREIGN KEY([organization_id])
REFERENCES [dbo].[ADS_TBL_organizations] ([organization_id])
GO
ALTER TABLE [dbo].[ADS_TBL_organization_schedules] CHECK CONSTRAINT [FK_organization_schedules_organizations]
GO
ALTER TABLE [dbo].[ADS_TBL_organization_schedules]  WITH CHECK ADD  CONSTRAINT [FK_organization_schedules_schedules] FOREIGN KEY([monday_schedule_id])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_organization_schedules] CHECK CONSTRAINT [FK_organization_schedules_schedules]
GO
ALTER TABLE [dbo].[ADS_TBL_organization_schedules]  WITH CHECK ADD  CONSTRAINT [FK_organization_schedules_schedules1] FOREIGN KEY([tuesday_schedule_id])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_organization_schedules] CHECK CONSTRAINT [FK_organization_schedules_schedules1]
GO
ALTER TABLE [dbo].[ADS_TBL_organization_schedules]  WITH CHECK ADD  CONSTRAINT [FK_organization_schedules_schedules2] FOREIGN KEY([wednesday_schedule_id])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_organization_schedules] CHECK CONSTRAINT [FK_organization_schedules_schedules2]
GO
ALTER TABLE [dbo].[ADS_TBL_organization_schedules]  WITH CHECK ADD  CONSTRAINT [FK_organization_schedules_schedules3] FOREIGN KEY([thursday_schedule_id])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_organization_schedules] CHECK CONSTRAINT [FK_organization_schedules_schedules3]
GO
ALTER TABLE [dbo].[ADS_TBL_organization_schedules]  WITH CHECK ADD  CONSTRAINT [FK_organization_schedules_schedules4] FOREIGN KEY([friday_schedule_id])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_organization_schedules] CHECK CONSTRAINT [FK_organization_schedules_schedules4]
GO
ALTER TABLE [dbo].[ADS_TBL_organization_schedules]  WITH CHECK ADD  CONSTRAINT [FK_organization_schedules_schedules5] FOREIGN KEY([saturday_schedule_id])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_organization_schedules] CHECK CONSTRAINT [FK_organization_schedules_schedules5]
GO
ALTER TABLE [dbo].[ADS_TBL_organization_schedules]  WITH CHECK ADD  CONSTRAINT [FK_organization_schedules_schedules6] FOREIGN KEY([sunday_schedule_id])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_organization_schedules] CHECK CONSTRAINT [FK_organization_schedules_schedules6]
GO
ALTER TABLE [dbo].[ADS_TBL_organizations]  WITH NOCHECK ADD  CONSTRAINT [FK_organizations_organization_types] FOREIGN KEY([organization_type_id])
REFERENCES [dbo].[ADS_TBL_organization_types] ([organization_type_id])
GO
ALTER TABLE [dbo].[ADS_TBL_organizations] CHECK CONSTRAINT [FK_organizations_organization_types]
GO
ALTER TABLE [dbo].[ADS_TBL_organizations]  WITH CHECK ADD  CONSTRAINT [FK_organizations_organizations] FOREIGN KEY([parent_id])
REFERENCES [dbo].[ADS_TBL_organizations] ([organization_id])
GO
ALTER TABLE [dbo].[ADS_TBL_organizations] CHECK CONSTRAINT [FK_organizations_organizations]
GO
ALTER TABLE [dbo].[ADS_TBL_permission_types]  WITH CHECK ADD  CONSTRAINT [FK_permission_types_reason] FOREIGN KEY([reason_id])
REFERENCES [dbo].[ADS_TBL_reasons] ([reason_id])
GO
ALTER TABLE [dbo].[ADS_TBL_permission_types] CHECK CONSTRAINT [FK_permission_types_reason]
GO
ALTER TABLE [dbo].[ADS_TBL_permissions]  WITH CHECK ADD  CONSTRAINT [FK_single_permissions_employees] FOREIGN KEY([employee_id])
REFERENCES [dbo].[ADS_TBL_employee_master] ([employee_id])
GO
ALTER TABLE [dbo].[ADS_TBL_permissions] CHECK CONSTRAINT [FK_single_permissions_employees]
GO
ALTER TABLE [dbo].[ADS_TBL_permissions]  WITH CHECK ADD  CONSTRAINT [FK_single_permissions_permission_types] FOREIGN KEY([permission_type_id])
REFERENCES [dbo].[ADS_TBL_permission_types] ([permission_type_id])
GO
ALTER TABLE [dbo].[ADS_TBL_permissions] CHECK CONSTRAINT [FK_single_permissions_permission_types]
GO
ALTER TABLE [dbo].[ADS_TBL_permissions_detail]  WITH CHECK ADD  CONSTRAINT [FK_single_permissions_single_permissions_detail] FOREIGN KEY([single_permissions_id])
REFERENCES [dbo].[ADS_TBL_permissions] ([single_permissions_id])
GO
ALTER TABLE [dbo].[ADS_TBL_permissions_detail] CHECK CONSTRAINT [FK_single_permissions_single_permissions_detail]
GO
ALTER TABLE [dbo].[ADS_TBL_preferences]  WITH NOCHECK ADD  CONSTRAINT [FK_preferences_employee_master] FOREIGN KEY([employee_id])
REFERENCES [dbo].[ADS_TBL_employee_master] ([employee_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ADS_TBL_preferences] CHECK CONSTRAINT [FK_preferences_employee_master]
GO
ALTER TABLE [dbo].[ADS_TBL_Processed_OverTime_Data]  WITH CHECK ADD  CONSTRAINT [FK_Processed_OverTime_Data_employee_master] FOREIGN KEY([employee_id])
REFERENCES [dbo].[ADS_TBL_employee_master] ([employee_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ADS_TBL_Processed_OverTime_Data] CHECK CONSTRAINT [FK_Processed_OverTime_Data_employee_master]
GO
ALTER TABLE [dbo].[ADS_TBL_readers]  WITH CHECK ADD  CONSTRAINT [FK_readers_reader_types] FOREIGN KEY([ReaderTypeId])
REFERENCES [dbo].[ADS_TBL_reader_types] ([reader_type_id])
GO
ALTER TABLE [dbo].[ADS_TBL_readers] CHECK CONSTRAINT [FK_readers_reader_types]
GO
ALTER TABLE [dbo].[ADS_TBL_role_permissions]  WITH CHECK ADD  CONSTRAINT [FK__menus_role_permissions] FOREIGN KEY([MenuId])
REFERENCES [dbo].[ADS_TBL_menu_items] ([MenuId])
GO
ALTER TABLE [dbo].[ADS_TBL_role_permissions] CHECK CONSTRAINT [FK__menus_role_permissions]
GO
ALTER TABLE [dbo].[ADS_TBL_role_permissions]  WITH CHECK ADD  CONSTRAINT [FK__permission_role_permissions] FOREIGN KEY([PermissionId])
REFERENCES [dbo].[ADS_TBL_sec_permissions] ([PermissionId])
GO
ALTER TABLE [dbo].[ADS_TBL_role_permissions] CHECK CONSTRAINT [FK__permission_role_permissions]
GO
ALTER TABLE [dbo].[ADS_TBL_role_permissions]  WITH CHECK ADD  CONSTRAINT [FK__submenu_role_permissions] FOREIGN KEY([SubMenuId])
REFERENCES [dbo].[ADS_TBL_submenu_items] ([SubMenuId])
GO
ALTER TABLE [dbo].[ADS_TBL_role_permissions] CHECK CONSTRAINT [FK__submenu_role_permissions]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster]  WITH CHECK ADD  CONSTRAINT [FK_D1_ROSTER] FOREIGN KEY([D1])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] CHECK CONSTRAINT [FK_D1_ROSTER]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster]  WITH CHECK ADD  CONSTRAINT [FK_D10_ROSTER] FOREIGN KEY([D10])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] CHECK CONSTRAINT [FK_D10_ROSTER]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster]  WITH CHECK ADD  CONSTRAINT [FK_D11_ROSTER] FOREIGN KEY([D11])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] CHECK CONSTRAINT [FK_D11_ROSTER]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster]  WITH CHECK ADD  CONSTRAINT [FK_D12_ROSTER] FOREIGN KEY([D12])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] CHECK CONSTRAINT [FK_D12_ROSTER]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster]  WITH CHECK ADD  CONSTRAINT [FK_D13_ROSTER] FOREIGN KEY([D13])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] CHECK CONSTRAINT [FK_D13_ROSTER]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster]  WITH CHECK ADD  CONSTRAINT [FK_D14_ROSTER] FOREIGN KEY([D14])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] CHECK CONSTRAINT [FK_D14_ROSTER]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster]  WITH CHECK ADD  CONSTRAINT [FK_D15_ROSTER] FOREIGN KEY([D15])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] CHECK CONSTRAINT [FK_D15_ROSTER]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster]  WITH CHECK ADD  CONSTRAINT [FK_D16_ROSTER] FOREIGN KEY([D16])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] CHECK CONSTRAINT [FK_D16_ROSTER]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster]  WITH CHECK ADD  CONSTRAINT [FK_D17_ROSTER] FOREIGN KEY([D17])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] CHECK CONSTRAINT [FK_D17_ROSTER]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster]  WITH CHECK ADD  CONSTRAINT [FK_D18_ROSTER] FOREIGN KEY([D18])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] CHECK CONSTRAINT [FK_D18_ROSTER]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster]  WITH CHECK ADD  CONSTRAINT [FK_D19_ROSTER] FOREIGN KEY([D19])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] CHECK CONSTRAINT [FK_D19_ROSTER]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster]  WITH CHECK ADD  CONSTRAINT [FK_D2_ROSTER] FOREIGN KEY([D2])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] CHECK CONSTRAINT [FK_D2_ROSTER]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster]  WITH CHECK ADD  CONSTRAINT [FK_D20_ROSTER] FOREIGN KEY([D20])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] CHECK CONSTRAINT [FK_D20_ROSTER]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster]  WITH CHECK ADD  CONSTRAINT [FK_D21_ROSTER] FOREIGN KEY([D21])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] CHECK CONSTRAINT [FK_D21_ROSTER]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster]  WITH CHECK ADD  CONSTRAINT [FK_D22_ROSTER] FOREIGN KEY([D22])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] CHECK CONSTRAINT [FK_D22_ROSTER]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster]  WITH CHECK ADD  CONSTRAINT [FK_D23_ROSTER] FOREIGN KEY([D23])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] CHECK CONSTRAINT [FK_D23_ROSTER]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster]  WITH CHECK ADD  CONSTRAINT [FK_D24_ROSTER] FOREIGN KEY([D24])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] CHECK CONSTRAINT [FK_D24_ROSTER]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster]  WITH CHECK ADD  CONSTRAINT [FK_D25_ROSTER] FOREIGN KEY([D25])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] CHECK CONSTRAINT [FK_D25_ROSTER]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster]  WITH CHECK ADD  CONSTRAINT [FK_D26_ROSTER] FOREIGN KEY([D26])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] CHECK CONSTRAINT [FK_D26_ROSTER]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster]  WITH CHECK ADD  CONSTRAINT [FK_D27_ROSTER] FOREIGN KEY([D27])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] CHECK CONSTRAINT [FK_D27_ROSTER]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster]  WITH CHECK ADD  CONSTRAINT [FK_D28_ROSTER] FOREIGN KEY([D28])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] CHECK CONSTRAINT [FK_D28_ROSTER]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster]  WITH CHECK ADD  CONSTRAINT [FK_D29_ROSTER] FOREIGN KEY([D29])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] CHECK CONSTRAINT [FK_D29_ROSTER]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster]  WITH CHECK ADD  CONSTRAINT [FK_D3_ROSTER] FOREIGN KEY([D3])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] CHECK CONSTRAINT [FK_D3_ROSTER]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster]  WITH CHECK ADD  CONSTRAINT [FK_D30_ROSTER] FOREIGN KEY([D30])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] CHECK CONSTRAINT [FK_D30_ROSTER]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster]  WITH CHECK ADD  CONSTRAINT [FK_D31_ROSTER] FOREIGN KEY([D31])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] CHECK CONSTRAINT [FK_D31_ROSTER]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster]  WITH CHECK ADD  CONSTRAINT [FK_D4_ROSTER] FOREIGN KEY([D4])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] CHECK CONSTRAINT [FK_D4_ROSTER]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster]  WITH CHECK ADD  CONSTRAINT [FK_D5_ROSTER] FOREIGN KEY([D5])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] CHECK CONSTRAINT [FK_D5_ROSTER]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster]  WITH CHECK ADD  CONSTRAINT [FK_D6_ROSTER] FOREIGN KEY([D6])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] CHECK CONSTRAINT [FK_D6_ROSTER]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster]  WITH CHECK ADD  CONSTRAINT [FK_D7_ROSTER] FOREIGN KEY([D7])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] CHECK CONSTRAINT [FK_D7_ROSTER]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster]  WITH CHECK ADD  CONSTRAINT [FK_D8_ROSTER] FOREIGN KEY([D8])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] CHECK CONSTRAINT [FK_D8_ROSTER]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster]  WITH CHECK ADD  CONSTRAINT [FK_D9_ROSTER] FOREIGN KEY([D9])
REFERENCES [dbo].[ADS_TBL_schedules] ([schedule_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] CHECK CONSTRAINT [FK_D9_ROSTER]
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster]  WITH CHECK ADD  CONSTRAINT [FK_schedule_roster] FOREIGN KEY([employee_id])
REFERENCES [dbo].[ADS_TBL_employee_master] ([employee_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedule_monthly_roster] CHECK CONSTRAINT [FK_schedule_roster]
GO
ALTER TABLE [dbo].[ADS_TBL_schedules]  WITH CHECK ADD  CONSTRAINT [FK_schedules_orgid] FOREIGN KEY([organization_id])
REFERENCES [dbo].[ADS_TBL_organizations] ([organization_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedules] CHECK CONSTRAINT [FK_schedules_orgid]
GO
ALTER TABLE [dbo].[ADS_TBL_schedules]  WITH CHECK ADD  CONSTRAINT [FK_schedules_schtype] FOREIGN KEY([schedule_location_id])
REFERENCES [dbo].[ADS_TBL_schedule_locations] ([schedule_location_id])
GO
ALTER TABLE [dbo].[ADS_TBL_schedules] CHECK CONSTRAINT [FK_schedules_schtype]
GO
ALTER TABLE [dbo].[ADS_TBL_sec_users]  WITH NOCHECK ADD  CONSTRAINT [FK_sec_users_employees] FOREIGN KEY([employee_id])
REFERENCES [dbo].[ADS_TBL_employee_master] ([employee_id])
GO
ALTER TABLE [dbo].[ADS_TBL_sec_users] CHECK CONSTRAINT [FK_sec_users_employees]
GO
ALTER TABLE [dbo].[ADS_TBL_Sync_Objects_Details]  WITH CHECK ADD  CONSTRAINT [fk_PerSync_Objects_Details] FOREIGN KEY([Obj_Id])
REFERENCES [dbo].[ADS_TBL_Sync_Objects] ([Obj_Id])
GO
ALTER TABLE [dbo].[ADS_TBL_Sync_Objects_Details] CHECK CONSTRAINT [fk_PerSync_Objects_Details]
GO
ALTER TABLE [dbo].[ADS_TBL_user_in_roles]  WITH CHECK ADD  CONSTRAINT [FK_sec_user_roles_sec_roles] FOREIGN KEY([role_id])
REFERENCES [dbo].[ADS_TBL_sec_roles] ([RoleId])
GO
ALTER TABLE [dbo].[ADS_TBL_user_in_roles] CHECK CONSTRAINT [FK_sec_user_roles_sec_roles]
GO
ALTER TABLE [dbo].[ADS_TBL_user_in_roles]  WITH NOCHECK ADD  CONSTRAINT [FK_sec_user_roles_sec_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[ADS_TBL_sec_users] ([user_id])
GO
ALTER TABLE [dbo].[ADS_TBL_user_in_roles] CHECK CONSTRAINT [FK_sec_user_roles_sec_users]
GO
/****** Object:  StoredProcedure [dbo].[DropAllTablesFromDB]    Script Date: 3/31/2021 10:20:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DropAllTablesFromDB]

AS

BEGIN
	
	DROP TABLE dbo.ADS_TBL_permissions
	DROP TABLE dbo.ADS_TBL_reader_types
	DROP TABLE dbo.ADS_TBL_reasons
	DROP TABLE dbo.ADS_TBL_regions
	DROP TABLE dbo.ADS_TBL_countries
	DROP TABLE dbo.ADS_TBL_schedule_locations
	DROP TABLE dbo.ADS_TBL_designations
	DROP TABLE ADS_TBL_device_groups
	DROP TABLE ADS_TBL_schedule_types
	DROP TABLE ADS_TBL_sec_privilege_groups
	DROP TABLE ADS_TBL_organizations
	DROP TABLE ADS_TBL_organization_types


	DECLARE @sql NVARCHAR(max)=''

	SELECT @sql += ' Drop table ' + QUOTENAME(s.NAME) + '.' + QUOTENAME(t.NAME) + '; '
	FROM   sys.tables t
		   JOIN sys.schemas s
			 ON t.[schema_id] = s.[schema_id]
	WHERE  t.type = 'U'

	Exec sp_executesql @sql

END


GO

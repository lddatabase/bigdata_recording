 CREATE external TABLE `tmp_ods_common_schedule`( ScheduleID STRING,
SubjectID STRING,
CourseID STRING,
TeacherID STRING,
ClassRoomID STRING,
CourseClassID STRING,
ClassID STRING,
GradeID STRING,
DAY TIMESTAMP,
ClassHourNO INT,
ClassHourName STRING,
StartTime STRING,
EndTime STRING,
SysID STRING,
`dataflag` INT,
`creator` string,
`lasteditor` string,
`createtime` timestamp,
`lastedittime` timestamp,
`remark` string,
PRIMARY KEY (ScheduleID) DISABLE NOVALIDATE ) 
 partitioned by (schoolid string,term string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' ;

CREATE external TABLE `tmp_ods_student_active`( EventID string,
StudentID string,
StudentName STRING,
ClassID STRING,
ClassName STRING,
CourseClassID STRING,
CourseClassName STRING,
GradeID STRING,
GradeName STRING,
CourseNo STRING,
CourseName STRING,
ActiveType INT,
ActiveCount INT,
BeginTime TIMESTAMP,
EndTime TIMESTAMP,
SysID STRING,
LessonNo INT,
DayTime DATE,
WeekNo INT,
DayInWeek INT,
`dataflag` INT,
`creator` string,
`lasteditor` string,
`createtime` timestamp,
`lastedittime` timestamp,
`remark` string,
PRIMARY KEY (EventID) DISABLE NOVALIDATE )
 partitioned by (schoolid string,term string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' ;

CREATE external TABLE `tmp_ods_student_allinfo`( EventID string,
GradeID STRING,
GradeName STRING,
AllActiveLength bigint,
AttendanceRate float,
LeaveCount int,
SportTimeLength bigint,
OnlineTimeLength bigint,
InSchoolTimeLength bigint,
SelfStudyTimeLength bigint,
WorkFinishedRate float,
WarningCount int,
StudentCount int,
NoteCount int,
HandsUpCount int,
EatingCount int,
DinnerMoney float,
TeacherHomeworkCount int,
LearnInLibTimeLength bigint,
RewardCount int,
PunishmentCount int,
RecordTime TIMESTAMP,
IsLast INT,
`dataflag` INT,
`creator` string,
`lasteditor` string,
`createtime` timestamp,
`lastedittime` timestamp,
`remark` string,
PRIMARY KEY (EventID) DISABLE NOVALIDATE ) 
 partitioned by (schoolid string,term string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' ;

CREATE external TABLE `tmp_ods_student_allinfo_courseclass_day`( EventID string,
StudentID STRING,
StudentName STRING,
CourseClassID STRING,
CourseClassName STRING,
CourseNo STRING,
CourseName STRING,
AttendanceRate float,
LeaveCount int,
WorkFinishedRate float,
RecordTime TIMESTAMP,
IsLast INT,
`dataflag` INT,
`creator` string,
`lasteditor` string,
`createtime` timestamp,
`lastedittime` timestamp,
`remark` string,
PRIMARY KEY (EventID) DISABLE NOVALIDATE ) 
 partitioned by (schoolid string,term string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' ;

CREATE external TABLE `tmp_ods_student_allinfo_courseclass_day_detail`( EventID string,
StudentID STRING,
StudentName STRING,
CourseClassID STRING,
CourseClassName STRING,
CourseNo STRING,
CourseName STRING,
AttendanceRate float,
AttendanceAllCount INT,
AttendanceCount INT,
AttendanceAbsenceCount INT,
AttendanceComeLateCount INT,
AttendanceLeaveEarlyCount INT,
LeaveCount int,
LeaveTimeMax INT,
LeaveTimeMin INT,
WorkFinishedRate FLOAT,
WorkFinishedCount INT,
WorkNotFinishedCount INT,
WorkWaitFinishedCount INT,
RecordTime TIMESTAMP,
IsLast INT,
`dataflag` INT,
`creator` string,
`lasteditor` string,
`createtime` timestamp,
`lastedittime` timestamp,
`remark` string,
PRIMARY KEY (EventID) DISABLE NOVALIDATE )
partitioned by (schoolid string,term string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' ;

CREATE external TABLE `tmp_ods_student_allinfo_day`( EventID string,
StudentID STRING,
StudentName STRING,
ClassID STRING,
ClassName STRING,
GradeID STRING,
GradeName STRING,
AllActiveLength int,
AttendanceRate decimal(5,2),
LeaveCount int,
SportTimeLength INT,
OnlineTimeLength INT,
InSchoolTimeLength INT,
InSchoolTimeLengthChange INT,
SelfStudyTimeLength INT,
WorkFinishedRate decimal(5,2),
NoteCount INT,
HandsUpCount INT,
EatingCount INT,
DinnerMoney decimal(7,2),
LearnInLibTimeLength int,
RewardCount int,
PunishmentCount int,
RecordTime TIMESTAMP,
IsLast INT,
`dataflag` INT,
`creator` string,
`lasteditor` string,
`createtime` timestamp,
`lastedittime` timestamp,
`remark` string,
PRIMARY KEY (EventID) DISABLE NOVALIDATE ) 
partitioned by (schoolid string,term string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' ;

CREATE external TABLE `tmp_ods_student_allinfo_day_detail`( EventID string,
StudentID STRING,
StudentName STRING,
ClassID STRING,
ClassName STRING,
GradeID STRING,
GradeName STRING,
AllActiveLength int,
AttendanceRate decimal(5,2),
AttendanceAllCount INT,
AttendanceCount INT,
AttendanceAbsenceCount INT,
AttendanceComeLateCount INT,
AttendanceLeaveEarlyCount INT,
LeaveCount int,
LeaveTimeMax INT,
LeaveTimeMin INT,
SportTimeLength INT,
SportTimeMax INT,
SportTimeMin INT,
OnlineTimeLength INT,
OnlineTimeMax INT,
OnlineTimeMin INT,
InSchoolTimeLength INT,
InSchoolTimeLengthChange INT,
InSchoolTimeMax INT,
InSchoolTimeMin INT,
SelfStudyTimeLength INT,
SelfStudyTimeMax INT,
SelfStudyTimeMin INT,
WorkFinishedRate decimal(5,2),
WorkFinishedCount INT,
WorkNotFinishedCount INT,
WorkWaitFinishedCount INT,
NoteCount INT,
HandsUpCount INT,
EatingCount INT,
DinnerMoney decimal(7,2),
LearnInLibTimeLength int,
RewardCount int,
PunishmentCount int,
RecordTime TIMESTAMP,
IsLast INT,
`dataflag` INT,
`creator` string,
`lasteditor` string,
`createtime` timestamp,
`lastedittime` timestamp,
`remark` string,
PRIMARY KEY (EventID) DISABLE NOVALIDATE ) 
partitioned by (schoolid string,term string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' ;

CREATE external TABLE `tmp_ods_student_attendance`( AttendanceID string,
StudentID STRING,
StudentName STRING,
ClassID STRING,
ClassName STRING,
CourseClassID string,
CourseClassName string,
GradeID STRING,
GradeName STRING,
CourseNo string,
CourseName string,
CheckTime TIMESTAMP,
Status INT,
LessonNo INT,
SubjectID STRING,
SubjectName STRING,
SysID STRING,
DayTime DATE,
WeekNo INT,
DayInWeek INT,
dataflag INT,
`creator` STRING,
`lasteditor` STRING,
`createtime` timestamp,
`lastedittime` timestamp,
`remark` string,
PRIMARY KEY (AttendanceID) DISABLE NOVALIDATE )
partitioned by (schoolid string,term string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' ;

CREATE external TABLE `tmp_ods_student_course_leave`( LeaveID string,
StudentName STRING,
StudentID STRING,
CourseClassID string,
CourseClassName string,
CourseNo string,
CourseName string,
TeacherName STRING,
TeacherID STRING,
LeaveType INT,
Description STRING,
RecordTime STRING,
LessonNo INT,
WeekNo INT,
DayInWeek INT,
dataflag INT,
`creator` string,
`lasteditor` string,
`createtime` timestamp,
`lastedittime` timestamp,
`remark` string,
PRIMARY KEY (LeaveID) DISABLE NOVALIDATE ) 
partitioned by (schoolid string,term string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' ;

CREATE external TABLE `tmp_ods_student_courseclass_warning`( WarningID string,
StudentID STRING,
StudentName STRING,
CourseClassID string,
CourseClassName string,
CourseNo string,
CourseName string,
Comment STRING,
DataRange STRING,
TYPE INT,
RecordTime STRING,
WarningStatus INT,
dataflag INT,
`creator` string,
`lasteditor` string,
`createtime` timestamp,
`lastedittime` timestamp,
`remark` string,
PRIMARY KEY (WarningID) DISABLE NOVALIDATE ) 
partitioned by (schoolid string,term string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' ;

CREATE external TABLE `tmp_ods_student_homework`( WorkID string,
TaskID STRING,
TaskName STRING,
StudentID STRING,
StudentName STRING,
ClassID STRING,
ClassName STRING,
CourseClassID string,
CourseClassName string,
GradeID STRING,
GradeName STRING,
CourseNo string,
CourseName string,
DayTime DATE,
BeginTime TIMESTAMP,
EndTime TIMESTAMP,
TimeLength INT,
SubjectID STRING,
TaskSubmitStatus INT,
WeekNo INT,
DayInWeek INT,
dataflag INT,
`creator` string,
`lasteditor` string,
`createtime` timestamp,
`lastedittime` timestamp,
`remark` string,
PRIMARY KEY (WorkID) DISABLE NOVALIDATE ) 
partitioned by (schoolid string,term string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' ;

CREATE external TABLE `tmp_ods_student_homework_main`( TaskID STRING,
TaskName STRING,
PublishTime TIMESTAMP,
BeginTime TIMESTAMP,
EndTime TIMESTAMP,
WorkObject STRING,
WorkObjectType INT,
Status INT,
TYPE INT,
TaskType INT,
HomeworkType INT,
RecommendType INT,
ShareType INT,
ReachStandardTime INT,
IsNeedFinished INT,
SubjectID STRING,
SubjectName STRING,
CourseNo string,
CourseName string,
SysID STRING,
TeacherID STRING,
TeacherName STRING,
GroupID STRING,
GroupName STRING,
WeekNo INT,
DayInWeek INT,
dataflag INT,
`creator` string,
`lasteditor` string,
`createtime` timestamp,
`lastedittime` timestamp,
`remark` string,
PRIMARY KEY (TaskID) DISABLE NOVALIDATE )
partitioned by (schoolid string,term string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' ;

CREATE external TABLE `tmp_ods_student_inschool`( InSchoolEventID STRING,
StudentID STRING,
StudentName STRING,
ClassID STRING,
ClassName STRING,
GradeID STRING,
GradeName STRING,
DayTime DATE,
BeginTime TIMESTAMP,
EndTime TIMESTAMP,
WeekNo INT,
DayInWeek INT,
DataFlag INT,
Creator STRING,
LastEditor STRING,
CreateTime TIMESTAMP,
LastEditTime TIMESTAMP,
Remark STRING,
PRIMARY KEY (InSchoolEventID) DISABLE NOVALIDATE ) 
partitioned by (schoolid string,term string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' ;

CREATE external TABLE `tmp_ods_student_leave`( LeaveID STRING,
StudentName STRING,
StudentID STRING,
ClassID STRING,
ClassName STRING,
GradeID STRING,
GradeName STRING,
DayTime DATE,
BeginTime TIMESTAMP,
EndTime TIMESTAMP,
LeaveType INT,
Description STRING,
WeekNo INT,
DayInWeek INT,
DataFlag INT,
Creator STRING,
LastEditor STRING,
CreateTime TIMESTAMP,
LastEditTime TIMESTAMP,
Remark STRING,
PRIMARY KEY (LeaveID) DISABLE NOVALIDATE ) 
partitioned by (schoolid string,term string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' ;

CREATE external TABLE `tmp_ods_student_meal`( EventID STRING,
StudentID STRING,
StudentName STRING,
ClassID STRING,
ClassName STRING,
GradeID STRING,
GradeName STRING,
MealType INT,
DayTime DATE,
BeginTime TIMESTAMP,
EndTime TIMESTAMP,
Money FLOAT,
WeekNo INT,
DayInWeek INT,
DataFlag INT,
Creator STRING,
LastEditor STRING,
CreateTime TIMESTAMP,
LastEditTime TIMESTAMP,
Remark STRING,
PRIMARY KEY (EventID) DISABLE NOVALIDATE ) 
partitioned by (schoolid string,term string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' ;

CREATE external TABLE `tmp_ods_student_note`( EventID STRING,
NoteID STRING,
TYPE INT,
Status INT,
StudentID STRING,
StudentName STRING,
ClassID STRING,
ClassName STRING,
GradeID STRING,
GradeName STRING,
BeginTime TIMESTAMP,
EndTime TIMESTAMP,
SubjectID STRING,
SubjectName STRING,
SysID STRING,
DayTime DATE,
WeekNo INT,
DayInWeek INT,
DataFlag INT,
Creator STRING,
LastEditor STRING,
CreateTime TIMESTAMP,
LastEditTime TIMESTAMP,
Remark STRING,
PRIMARY KEY (EventID) DISABLE NOVALIDATE ) 
partitioned by (schoolid string,term string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' ;

CREATE external TABLE `tmp_ods_student_online`( OnlineID STRING,
StudentID STRING,
StudentName STRING,
ClassID STRING,
ClassName STRING,
GradeID STRING,
GradeName STRING,
SysID STRING,
DayTime DATE,
BeginTime STRING,
EndTime STRING,
OnlineTimeLength INT,
WeekNo INT,
DayInWeek INT,
DataFlag INT,
Creator STRING,
LastEditor STRING,
CreateTime TIMESTAMP,
LastEditTime TIMESTAMP,
Remark STRING,
PRIMARY KEY (OnlineID) DISABLE NOVALIDATE ) 
partitioned by (schoolid string,term string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' ;

CREATE external TABLE `tmp_ods_student_selfstudydetail`( StudyDetailID string,
ClassRoomID string,
ClassRoomName string,
Count int,
Point string,
RoomStatus int,
DayTime DATE,
DataFlag INT,
Creator STRING,
LastEditor STRING,
CreateTime TIMESTAMP,
LastEditTime TIMESTAMP,
Remark STRING,
PRIMARY KEY (StudyDetailID) DISABLE NOVALIDATE )
partitioned by (schoolid string,term string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' ;

CREATE external TABLE `tmp_ods_student_selfstudytime_day`( StudyID string,
ClassRoomID string,
ClassRoomName string,
StudyTimeLength int,
Count int,
DayTime DATE,
DataFlag INT,
Creator STRING,
LastEditor STRING,
CreateTime TIMESTAMP,
LastEditTime TIMESTAMP,
Remark STRING,
PRIMARY KEY (StudyID) DISABLE NOVALIDATE )
partitioned by (schoolid string,term string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' ;

CREATE external TABLE `tmp_ods_student_sportactivity`( SportID string,
StudentID string,
StudentName string,
ClassID string,
ClassName string,
GradeID string,
GradeName string,
LessonNo int,
SportTimeLength int,
SportDistance int,
DayTime DATE,
BeginTime STRING,
EndTime STRING,
WeekNo int,
DayInWeek int,
DataFlag INT,
Creator STRING,
LastEditor STRING,
CreateTime TIMESTAMP,
LastEditTime TIMESTAMP,
Remark STRING,
PRIMARY KEY (SportID) DISABLE NOVALIDATE ) 
partitioned by (schoolid string,term string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' ;

CREATE external TABLE `tmp_ods_student_warning`( WarningID string,
StudentID string,
StudentName string,
ClassID string,
ClassName string,
GradeID string,
GradeName string,
Comment STRING,
DataRange STRING,
TYPE INT,
RecordTime TIMESTAMP,
WarningStatus INT,
DataFlag INT,
Creator STRING,
LastEditor STRING,
CreateTime TIMESTAMP,
LastEditTime TIMESTAMP,
Remark STRING,
PRIMARY KEY (WarningID) DISABLE NOVALIDATE ) 
partitioned by (schoolid string,term string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' ;

CREATE external TABLE `tmp_ods_student_warning_detail`( DetailID string,
WarningID string,
StudentID string,
DateRange string,
WarningDate TIMESTAMP,
BeginTime TIMESTAMP,
EndTime TIMESTAMP,
DetailComment STRING,
Status STRING,
SubjectName STRING,
SportCount INT,
ActivityLength INT,
RainLength INT,
RecorderLength INT,
LibLearnLength INT,
TYPE INT,
RealValue FLOAT,
LimitValue FLOAT,
WeekNo INT,
DayInWeek INT,
DataFlag INT,
Creator STRING,
LastEditor STRING,
CreateTime TIMESTAMP,
LastEditTime TIMESTAMP,
Remark STRING,
PRIMARY KEY (DetailID) DISABLE NOVALIDATE ) 
partitioned by (schoolid string,term string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' ;

CREATE external TABLE `tmp_ods_student_warning_setting`( SettingID INT,
Rule string,
TYPE INT,
Value STRING,
DataFlag INT,
Creator STRING,
LastEditor STRING,
CreateTime TIMESTAMP,
LastEditTime TIMESTAMP,
Remark STRING,
PRIMARY KEY (SettingID) DISABLE NOVALIDATE ) 
partitioned by (schoolid string,term string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' ;

CREATE EXTERNAL TABLE `tmp_ods_student_moralitycheck`(EventID STRING,
StudentID string,
StudentName string,
ClassID string,
ClassName string,
GradeID string,
GradeName string,
CheckID string,
CheckType int,
CheckTime timestamp,
Score decimal(6,2),
Content string,
CheckTagName string,
SysID string,
WeekNo int,
DataFlag INT,
Creator STRING,
LastEditor STRING,
CreateTime TIMESTAMP,
LastEditTime TIMESTAMP,
Remark STRING,
PRIMARY KEY (EventID) DISABLE NOVALIDATE ) 
partitioned by (schoolid string,term string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t'   ;

create external table `tmp_ods_student_librarylearn`(EventID string,
StudentID STRING,
StudentName STRING,
ClassID STRING,
ClassName STRING,
GradeID STRING,
GradeName STRING,
BeginTime TIMESTAMP,
EndTime TIMESTAMP,
TimeLength INT,
DayTime DATE,
WeekNo INT,
DayInWeek INT,
SysID STRING,
DataFlag TINYINT,
Creator STRING,
LastEditor STRING,
CreateTime TIMESTAMP,
LastEditTime TIMESTAMP,
Remark STRING,
PRIMARY KEY (EventID) DISABLE NOVALIDATE ) 
partitioned by (schoolid string,term string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' ;






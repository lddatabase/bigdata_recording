#!/bin/bash

APP=v53_lgdb_ai_bigdata_center_student
sqoop=/opt/data/software/sqoop/bin/sqoop


import_data(){
$sqoop import \
--connect jdbc:mysql://xxx.xxx.xxx.xxx:3306/$APP?tinyInt1isBit=false \
--username xxxxx \
--password xxxxx \
--target-dir /origin_data/school_student/A/$APP/$1/ \
--query "$2 where \$CONDITIONS" \
--delete-target-dir \
--num-mappers 1 \
--fields-terminated-by '\t' \
--null-string '\\N' \
--null-non-string '\\N'
}

import_common_schedule(){
    import_data common_schedule "select  scheduleid,subjectid,courseid,teacherid,classroomid,courseclassid,classid,gradeid,day,classhourno,classhourname,starttime,endtime,sysid,dataflag,creator,lasteditor,createtime,lastedittime,remark from common_schedule"
}

import_student_active(){
    import_data student_active "select eventid,studentid,studentname,classid,classname,courseclassid,courseclassname,gradeid,gradename,courseno,coursename,activetype,activecount,begintime,endtime,sysid,lessonno,daytime,weekno,dayinweek,dataflag,creator,lasteditor,createtime,lastedittime,remark from student_active"
}

import_student_allinfo(){
    import_data student_allinfo "select eventid,gradeid,gradename,allactivelength,attendancerate,leavecount,sporttimelength,onlinetimelength,inschooltimelength,selfstudytimelength,workfinishedrate,warningcount,studentcount,notecount,handsupcount,eatingcount,dinnermoney,teacherhomeworkcount,learninlibtimelength,rewardcount,punishmentcount,recordtime,islast,dataflag,creator,lasteditor,createtime,lastedittime,remark from student_allinfo"
}

import_student_allinfo_courseclass_day(){
    import_data student_allinfo_courseclass_day "select eventid,studentid,studentname,courseclassid,courseclassname,courseno,coursename,attendancerate,leavecount,workfinishedrate,recordtime,islast,dataflag,creator,lasteditor,createtime,lastedittime,remark from student_allinfo_courseclass_day"
}

import_student_allinfo_courseclass_day_detail(){
    import_data student_allinfo_courseclass_day_detail "select eventid,studentid,studentname,courseclassid,courseclassname,courseno,coursename,attendancerate,attendanceallcount,attendancecount,attendanceabsencecount,attendancecomelatecount,attendanceleaveearlycount,leavecount,leavetimemax,leavetimemin,workfinishedrate,workfinishedcount,worknotfinishedcount,workwaitfinishedcount,recordtime,islast,dataflag,creator,lasteditor,createtime,lastedittime,remark from student_allinfo_courseclass_day_detail"
}

import_student_allinfo_day(){
    import_data student_allinfo_day "select eventid,studentid,studentname,classid,classname,gradeid,gradename,allactivelength,attendancerate,leavecount,sporttimelength,onlinetimelength,inschooltimelengthchange,inschooltimelength,selfstudytimelength,workfinishedrate,notecount,handsupcount,eatingcount,dinnermoney,learninlibtimelength,rewardcount,punishmentcount,recordtime,islast,dataflag,creator,lasteditor,createtime,lastedittime,remark from student_allinfo_day"
}

import_student_allinfo_day_detail(){
    import_data student_allinfo_day_detail "select eventid,studentid,studentname,classid,classname,gradeid,gradename,allactivelength,attendancerate,attendanceallcount,attendancecount,attendanceabsencecount,attendancecomelatecount,attendanceleaveearlycount,leavecount,leavetimemax,leavetimemin,sporttimelength,sporttimemax,sporttimemin,onlinetimelength,onlinetimemax,onlinetimemin,inschooltimelength,inschooltimelengthchange,inschooltimemax,inschooltimemin,selfstudytimelength,selfstudytimemax,selfstudytimemin,workfinishedrate,workfinishedcount,worknotfinishedcount,workwaitfinishedcount,notecount,handsupcount,eatingcount,dinnermoney,learninlibtimelength,rewardcount,punishmentcount,recordtime,islast,dataflag,creator,lasteditor,createtime,lastedittime,remark from student_allinfo_day_detail"
}

import_student_attendance(){
    import_data student_attendance "select attendanceid,studentid,studentname,classid,classname,courseclassid,courseclassname,gradeid,gradename,courseno,coursename,checktime,status,lessonno,subjectid,subjectname,sysid,daytime,weekno,dayinweek,dataflag,creator,lasteditor,createtime,lastedittime,remark from student_attendance"
}

import_student_course_leave(){
    import_data student_course_leave "select leaveid,studentname,studentid,courseclassid,courseclassname,courseno,coursename,teachername,teacherid,leavetype,description,recordtime,lessonno,weekno,dayinweek,dataflag,creator,lasteditor,createtime,lastedittime,remark from student_course_leave"
}

import_student_courseclass_warning(){
    import_data student_courseclass_warning "select warningid,studentid,studentname,courseclassid,courseclassname,courseno,coursename,comment,datarange,type,recordtime,warningstatus,dataflag,creator,lasteditor,createtime,lastedittime,remark from student_courseclass_warning"
}

import_student_homework(){
    import_data student_homework "select workid,taskid,taskname,studentid,studentname,classid,classname,courseclassid,courseclassname,gradeid,gradename,courseno,coursename,daytime,begintime,endtime,timelength,subjectid,tasksubmitstatus,weekno,dayinweek,dataflag,creator,lasteditor,createtime,lastedittime,remark from student_homework"
}

import_student_homework_main(){
    import_data student_homework_main "select taskid,taskname,publishtime,begintime,endtime,workobject,workobjecttype,status,type,tasktype,homeworktype,recommendtype,sharetype,reachstandardtime,isneedfinished,subjectid,subjectname,courseno,coursename,sysid,teacherid,teachername,groupid,groupname,weekno,dayinweek,dataflag,creator,lasteditor,createtime,lastedittime,remark from student_homework_main"
}

import_student_inschool(){
    import_data student_inschool "select inschooleventid,studentid,studentname,classid,classname,gradeid,gradename,daytime,begintime,endtime,weekno,dayinweek,dataflag,creator,lasteditor,createtime,lastedittime,remark from student_inschool"
}

import_student_leave(){
    import_data student_leave "select leaveid,studentname,studentid,classid,classname,gradeid,gradename,daytime,begintime,endtime,leavetype,description,weekno,dayinweek,dataflag,creator,lasteditor,createtime,lastedittime,remark from student_leave"
}

import_student_meal(){
    import_data student_meal "select eventid,studentid,studentname,classid,classname,gradeid,gradename,mealtype,daytime,begintime,endtime,money,weekno,dayinweek,dataflag,creator,lasteditor,createtime,lastedittime,remark from student_meal"
}

import_student_note(){
    import_data student_note "select eventid,noteid,type,status,studentid,studentname,classid,classname,gradeid,gradename,begintime,endtime,subjectid,subjectname,sysid,daytime,weekno,dayinweek,dataflag,creator,lasteditor,createtime,lastedittime,remark from student_note"
}

import_student_online(){
    import_data student_online "select onlineid,studentid,studentname,classid,classname,gradeid,gradename,sysid,daytime,begintime,endtime,onlinetimelength,weekno,dayinweek,dataflag,creator,lasteditor,createtime,lastedittime,remark from student_online"
}

import_student_selfstudydetail(){
    import_data student_selfstudydetail "select studydetailid,classroomid,classroomname,count,point,roomstatus,daytime,dataflag,creator,lasteditor,createtime,lastedittime,remark from student_selfstudydetail"
}

import_student_selfstudytime_day(){
    import_data student_selfstudytime_day "select studyid,classroomid,classroomname,studytimelength,count,daytime,dataflag,creator,lasteditor,createtime,lastedittime,remark  from student_selfstudytime_day"
}

import_student_sportactivity(){
    import_data student_sportactivity "select sportid,studentid,studentname,classid,classname,gradeid,gradename,lessonno,sporttimelength,sportdistance,daytime,begintime,endtime,weekno,dayinweek,dataflag,creator,lasteditor,createtime,lastedittime,remark from student_sportactivity"
}

import_student_warning(){
    import_data student_warning "select warningid,studentid,studentname,classid,classname,gradeid,gradename,comment,datarange,type,recordtime,warningstatus,dataflag,creator,lasteditor,createtime,lastedittime,remark from student_warning"
}

import_student_warning_detail(){
    import_data student_warning_detail "select detailid,warningid,studentid,daterange,warningdate,begintime,endtime,detailcomment,status,subjectname,sportcount,activitylength,rainlength,recorderlength,liblearnlength,type,realvalue,limitvalue,weekno,dayinweek,dataflag,creator,lasteditor,createtime,lastedittime,remark from student_warning_detail"
}

import_student_warning_setting(){
    import_data student_warning_setting "select settingid,rule,type,value,dataflag,creator,lasteditor,createtime,lastedittime,remark from student_warning_setting"
}
import_student_moralitycheck(){
    import_data student_moralitycheck "select * from student_moralitycheck"
}
import_student_librarylearn(){
    import_data student_librarylearn "select * from student_librarylearn"
}


case $1 in
  "common_schedule")
     import_common_schedule
;;
  "student_active")
     import_student_active
;;
  "student_allinfo")
     import_student_allinfo
;;
  "student_allinfo_courseclass_day")
     import_student_allinfo_courseclass_day
;;
  "student_allinfo_courseclass_day_detail")
     import_student_allinfo_courseclass_day_detail
;;
  "student_allinfo_day")
     import_student_allinfo_day
;;
  "student_allinfo_day_detail")
     import_student_allinfo_day_detail
;;
  "student_attendance")
     import_student_attendance
;;
  "student_course_leave")
     import_student_course_leave
;;
  "student_courseclass_warning")
     import_student_courseclass_warning
;;
  "student_homework")
     import_student_homework
;;
  "student_homework_main")
     import_student_homework_main
;;
  "student_inschool")
     import_student_inschool
;;
  "student_leave")
     import_student_leave
;;
  "student_meal")
     import_student_meal
;;
  "student_note")
     import_student_note
;;
  "student_online")
     import_student_online
;;
  "student_selfstudydetail")
     import_student_selfstudydetail
;;
  "student_selfstudytime_day")
     import_student_selfstudytime_day
;;
  "student_sportactivity")
     import_student_sportactivity
;;
  "student_warning")
     import_student_warning
;;
  "student_warning_detail")
     import_student_warning_detail
;;
  "student_warning_setting")
     import_student_warning_setting
;;
  "student_moralitycheck")
     import_student_moralitycheck
;;
  "student_librarylearn")
     import_student_librarylearn

  "first")

	  import_common_schedule
	  import_student_active
	  import_student_allinfo
	  import_student_allinfo_courseclass_day
      import_student_allinfo_courseclass_day_detail
	  import_student_allinfo_day
	  import_student_allinfo_day_detail
	  import_student_attendance
	  import_student_course_leave
	  import_student_courseclass_warning
	  import_student_homework
	  import_student_homework_main
	  import_student_inschool
	  import_student_leave
	  import_student_meal
	  import_student_note
	  import_student_online
	  import_student_selfstudydetail
	  import_student_selfstudytime_day
	  import_student_sportactivity
	  import_student_warning
	  import_student_warning_detail
	  import_student_warning_setting
	  import_student_moralitycheck
	  import_student_librarylearn
;;
esac

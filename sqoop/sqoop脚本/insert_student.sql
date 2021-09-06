load data inpath '/origin_data/school_student/A/v53_lgdb_ai_bigdata_center_student/common_schedule'
overwrite into table tmp_ods_common_schedule partition (SchoolID='S-A001',Term='2020-202102');

insert overwrite  table ods_common_schedule select * from tmp_ods_common_schedule where schoolid='S-A001';

load data inpath '/origin_data/school_student/A/v53_lgdb_ai_bigdata_center_student/student_active'
overwrite into table tmp_ods_student_active partition (SchoolID='S-A001',Term='2020-202102');

insert overwrite table ods_student_active select * from tmp_ods_student_active where schoolid='S-A001';

load data inpath '/origin_data/school_student/A/v53_lgdb_ai_bigdata_center_student/student_allinfo'
overwrite into table tmp_ods_student_allinfo partition (SchoolID='S-A001',Term='2020-202102');

insert overwrite table ods_student_allinfo select * from tmp_ods_student_allinfo where schoolid='S-A001';


load data inpath '/origin_data/school_student/A/v53_lgdb_ai_bigdata_center_student/student_allinfo_courseclass_day'
overwrite into table tmp_ods_student_allinfo_courseclass_day partition (SchoolID='S-A001',Term='2020-202102');

insert overwrite table ods_student_allinfo_courseclass_day select * from tmp_ods_student_allinfo_courseclass_day where schoolid='S-A001';

load data inpath '/origin_data/school_student/A/v53_lgdb_ai_bigdata_center_student/student_allinfo_courseclass_day_detail'
overwrite into table tmp_ods_student_allinfo_courseclass_day_detail partition (SchoolID='S-A001',Term='2020-202102');

insert overwrite table ods_student_allinfo_courseclass_day_detail select * from tmp_ods_student_allinfo_courseclass_day_detail where schoolid='S-A001';

load data inpath '/origin_data/school_student/A/v53_lgdb_ai_bigdata_center_student/student_allinfo_day'
overwrite into table tmp_ods_student_allinfo_day partition (SchoolID='S-A001',Term='2020-202102');

insert overwrite table ods_student_allinfo_day select * from tmp_ods_student_allinfo_day where schoolid='S-A001';

load data inpath '/origin_data/school_student/A/v53_lgdb_ai_bigdata_center_student/student_allinfo_day_detail'
overwrite into table tmp_ods_student_allinfo_day_detail partition (SchoolID='S-A001',Term='2020-202102');

insert overwrite table ods_student_allinfo_day_detail select * from tmp_ods_student_allinfo_day_detail where schoolid='S-A001';

load data inpath '/origin_data/school_student/A/v53_lgdb_ai_bigdata_center_student/student_attendance'
overwrite into table tmp_ods_student_attendance partition (SchoolID='S-A001',Term='2020-202102');

insert overwrite table ods_student_attendance select * from tmp_ods_student_attendance where schoolid='S-A001';

load data inpath '/origin_data/school_student/A/v53_lgdb_ai_bigdata_center_student/student_course_leave'
overwrite into table tmp_ods_student_course_leave partition (SchoolID='S-A001',Term='2020-202102');

insert overwrite table ods_student_course_leave select * from tmp_ods_student_course_leave where schoolid='S-A001';

load data inpath '/origin_data/school_student/A/v53_lgdb_ai_bigdata_center_student/student_courseclass_warning'
overwrite into table tmp_ods_student_courseclass_warning partition (SchoolID='S-A001',Term='2020-202102');

insert overwrite table ods_student_courseclass_warning select * from tmp_ods_student_courseclass_warning where schoolid='S-A001';

load data inpath '/origin_data/school_student/A/v53_lgdb_ai_bigdata_center_student/student_homework'
overwrite into table tmp_ods_student_homework partition (SchoolID='S-A001',Term='2020-202102');

insert overwrite table ods_student_homework select * from tmp_ods_student_homework where schoolid='S-A001';

load data inpath '/origin_data/school_student/A/v53_lgdb_ai_bigdata_center_student/student_homework_main'
overwrite into table tmp_ods_student_homework_main partition (SchoolID='S-A001',Term='2020-202102');

insert overwrite table ods_student_homework_main select * from tmp_ods_student_homework_main where schoolid='S-A001';

load data inpath '/origin_data/school_student/A/v53_lgdb_ai_bigdata_center_student/student_inschool'
overwrite into table tmp_ods_student_inschool partition (SchoolID='S-A001',Term='2020-202102');

insert overwrite table ods_student_inschool select * from tmp_ods_student_inschool where schoolid='S-A001';

load data inpath '/origin_data/school_student/A/v53_lgdb_ai_bigdata_center_student/student_leave'
overwrite into table tmp_ods_student_leave partition (SchoolID='S-A001',Term='2020-202102');

insert overwrite table ods_student_leave select * from tmp_ods_student_leave where schoolid='S-A001';

load data inpath '/origin_data/school_student/A/v53_lgdb_ai_bigdata_center_student/student_meal'
overwrite into table tmp_ods_student_meal partition (SchoolID='S-A001',Term='2020-202102');

insert overwrite table ods_student_meal select * from tmp_ods_student_meal where schoolid='S-A001';

load data inpath '/origin_data/school_student/A/v53_lgdb_ai_bigdata_center_student/student_note'
overwrite into table tmp_ods_student_note partition (SchoolID='S-A001',Term='2020-202102');

insert overwrite table ods_student_note select * from tmp_ods_student_note where schoolid='S-A001';

load data inpath '/origin_data/school_student/A/v53_lgdb_ai_bigdata_center_student/student_online'
overwrite into table tmp_ods_student_online partition (SchoolID='S-A001',Term='2020-202102');

insert overwrite table ods_student_online select * from tmp_ods_student_online where schoolid='S-A001';

load data inpath '/origin_data/school_student/A/v53_lgdb_ai_bigdata_center_student/student_selfstudydetail'
overwrite into table tmp_ods_student_selfstudydetail partition (SchoolID='S-A001',Term='2020-202102');

insert overwrite table ods_student_selfstudydetail select * from tmp_ods_student_selfstudydetail where schoolid='S-A001';

load data inpath '/origin_data/school_student/A/v53_lgdb_ai_bigdata_center_student/student_selfstudytime_day'
overwrite into table tmp_ods_student_selfstudytime_day partition (SchoolID='S-A001',Term='2020-202102');

insert overwrite table ods_student_selfstudytime_day select * from tmp_ods_student_selfstudytime_day where schoolid='S-A001';


load data inpath '/origin_data/school_student/A/v53_lgdb_ai_bigdata_center_student/student_sportactivity'
overwrite into table tmp_ods_student_sportactivity partition (SchoolID='S-A001',Term='2020-202102');

insert overwrite table ods_student_sportactivity select * from tmp_ods_student_sportactivity where schoolid='S-A001';


load data inpath '/origin_data/school_student/A/v53_lgdb_ai_bigdata_center_student/student_warning'
overwrite into table tmp_ods_student_warning partition (SchoolID='S-A001',Term='2020-202102');

insert overwrite table ods_student_warning select * from tmp_ods_student_warning where schoolid='S-A001';

load data inpath '/origin_data/school_student/A/v53_lgdb_ai_bigdata_center_student/student_warning_detail'
overwrite into table tmp_ods_student_warning_detail partition (SchoolID='S-A001',Term='2020-202102');

insert overwrite table ods_student_warning_detail select * from tmp_ods_student_warning_detail where schoolid='S-A001';

load data inpath '/origin_data/school_student/A/v53_lgdb_ai_bigdata_center_student/student_warning_setting'
overwrite into table tmp_ods_student_warning_setting partition (SchoolID='S-A001',Term='2020-202102');

insert overwrite table ods_student_warning_setting select * from tmp_ods_student_warning_setting where schoolid='S-A001';

load data inpath '/origin_data/school_student/A/v53_lgdb_ai_bigdata_center_student/student_moralitycheck'
overwrite into table tmp_ods_student_moralitycheck partition (SchoolID='S-A001',Term='2020-202102');

insert overwrite table ods_student_moralitycheck select * from tmp_ods_student_moralitycheck where schoolid='S-A001';

load data inpath '/origin_data/school_student/A/v53_lgdb_ai_bigdata_center_student/student_librarylearn'
overwrite into table tmp_ods_student_librarylearn partition (SchoolID='S-A001',Term='2020-202102');

insert overwrite table ods_student_librarylearn select * from tmp_ods_student_librarylearn where schoolid='S-A001';
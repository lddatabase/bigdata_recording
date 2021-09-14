### 数据样例：
<!-- {
	"EventID": "4ccc3fee-943f-4d4f-8ced-329394c525f9",
	"StudentID": "aStu001",
	"StudentName": "陈捷",
	"ClassID": "714F9E5E-BB9E-493E-9D10-5B3ED5564AA8",
	"ClassName": "初一(3)班",
	"GradeID": "80C69E51-85AA-47BC-942A-0DD8006D6323",
	"GradeName": "初中一年级",
	"AllActiveLength": 15863,
	"AttendanceRate": 98.33334,
	"LeaveCount": 0,
	"SportTimeLength": 2160,
	"OnlineTimeLength": 13680,
	"InSchoolTimeLength": 537240,
	"InSchoolTimeLengthChange": 0,
	"SelfStudyTimeLength": 23,
	"WorkFinishedRate": 98.21429,
	"NoteCount": 40,
	"HandsUpCount": 126,
	"EatingCount": 24,
	"DinnerMoney": 342.00,
	"LearnInLibTimeLength": 318060,
	"RewardCount": 0,
	"PunishmentCount": 0,
	"MoralityCount": 0,
	"RecordTime": "2021-09-13T00:00:00+08:00",
	"IsLast": 1,
	"DataFlag": 0,
	"Creator": "admin",
	"LastEditor": "admin",
	"CreateTime": "2021-09-02T17:15:15",
	"LastEditTime": "2021-09-12T20:38:21.4600996+08:00",
	"Remark": "49980|40560",
	"SchoolID": "S-A001",
	"Term": "2020-202102"
}, {
	"EventID": "97b23470-86ae-409b-a8a0-0f439d5c4c4a",
	"StudentID": "aStu002",
	"StudentName": "黄林江",
	"ClassID": "714F9E5E-BB9E-493E-9D10-5B3ED5564AA8",
	"ClassName": "初一(3)班",
	"GradeID": "80C69E51-85AA-47BC-942A-0DD8006D6323",
	"GradeName": "初中一年级",
	"AllActiveLength": 12623,
	"AttendanceRate": 97.5,
	"LeaveCount": 0,
	"SportTimeLength": 0,
	"OnlineTimeLength": 12600,
	"InSchoolTimeLength": 524400,
	"InSchoolTimeLengthChange": 0,
	"SelfStudyTimeLength": 23,
	"WorkFinishedRate": 100.0,
	"NoteCount": 46,
	"HandsUpCount": 142,
	"EatingCount": 24,
	"DinnerMoney": 322.00,
	"LearnInLibTimeLength": 318060,
	"RewardCount": 0,
	"PunishmentCount": 0,
	"MoralityCount": 0,
	"RecordTime": "2021-09-13T00:00:00+08:00",
	"IsLast": 1,
	"DataFlag": 0,
	"Creator": "admin",
	"LastEditor": "admin",
	"CreateTime": "2021-09-02T17:15:15",
	"LastEditTime": "2021-09-12T20:38:21.4600996+08:00",
	"Remark": "51420|38940",
	"SchoolID": "S-A001",
	"Term": "2020-202102"
}, {
	"EventID": "3b31da5d-d5d4-4945-94fa-a21996df3858",
	"StudentID": "aStu003",
	"StudentName": "敖思雅",
	"ClassID": "714F9E5E-BB9E-493E-9D10-5B3ED5564AA8",
	"ClassName": "初一(3)班",
	"GradeID": "80C69E51-85AA-47BC-942A-0DD8006D6323",
	"GradeName": "初中一年级",
	"AllActiveLength": 37823,
	"AttendanceRate": 97.5,
	"LeaveCount": 0,
	"SportTimeLength": 3360,
	"OnlineTimeLength": 34440,
	"InSchoolTimeLength": 499200,
	"InSchoolTimeLengthChange": 0,
	"SelfStudyTimeLength": 23,
	"WorkFinishedRate": 96.42857,
	"NoteCount": 26,
	"HandsUpCount": 126,
	"EatingCount": 24,
	"DinnerMoney": 316.00,
	"LearnInLibTimeLength": 318060,
	"RewardCount": 0,
	"PunishmentCount": 0,
	"MoralityCount": 0,
	"RecordTime": "2021-09-13T00:00:00+08:00",
	"IsLast": 1,
	"DataFlag": 0,
	"Creator": "admin",
	"LastEditor": "admin",
	"CreateTime": "2021-09-02T17:15:15",
	"LastEditTime": "2021-09-12T20:38:21.4610996+08:00",
	"Remark": "47460|38820",
	"SchoolID": "S-A001",
	"Term": "2020-202102"
} -->

###   代码解析存入hive，分区且无压缩存为ORC格式 在每次读取完成之后都会删除hdfs对应的目录

package com.carny.json_file

import org.apache.hadoop.fs.Path
import org.apache.log4j.{Level, Logger}
import org.apache.spark.sql.{DataFrame, SaveMode, SparkSession}
import org.apache.spark.sql.functions._
import org.apache.spark.{SparkConf, SparkContext}

/**
  * created by lidong 2021.9.10
  */
object reduce_json {
  Logger.getLogger("org").setLevel(Level.WARN)

  def main(args: Array[String]): Unit = {

    val spark = SparkSession
      .builder()
      //      .master("yarn")
      .master("local[*]")
      .appName("save json to hive")
      .config("spark.sql.warehouse.dir", "hdfs://mycluster/user/hive/warehouse")
      .config("spark.sql.caseSensitive", true)
      .config("spark.debug.maxToStringFields", 300000)
      .config("spark.sql.debug.maxToStringFields", 300000)
      .enableHiveSupport()
      .getOrCreate()

    import spark.implicits._
    //    val data01 = spark.read.option("mode","DROPMALFORMED").format("json").load("hdfs://mycluster/avro/hdfs/test3")
    val df = spark.read.option("mode", "DROPMALFORMED")
      .format("json")
      .load("hdfs://mycluster/avro/hdfs/student_allinfo_day")
      .withColumnRenamed("AllActiveLength", "allactivelength")
      .withColumnRenamed("AttendanceRate", "attendancerate")
      .withColumnRenamed("ClassID", "classid")
      .withColumnRenamed("ClassName", "classname")
      .withColumnRenamed("CreateTime", "createtime")
      .withColumnRenamed("Creator", "creator")
      .withColumnRenamed("DataFlag", "dataflag")
      .withColumnRenamed("DinnerMoney", "dinnermoney")
      .withColumnRenamed("EatingCount", "eatingcount")
      .withColumnRenamed("EventID", "eventid")
      .withColumnRenamed("GradeID", "gradeid")
      .withColumnRenamed("GradeName", "gradename")
      .withColumnRenamed("HandsUpCount", "handsupcount")
      .withColumnRenamed("InSchoolTimeLength", "inschooltimelength")
      .withColumnRenamed("InSchoolTimeLengthChange", "inschooltimelengthchange")
      .withColumnRenamed("IsLast", "islast")
      .withColumnRenamed("LastEditTime", "lastedittime")
      .withColumnRenamed("LastEditor", "lasteditor")
      .withColumnRenamed("LearnInLibTimeLength", "learninlibtimelength")
      .withColumnRenamed("LeaveCount", "leavecount")
      .withColumnRenamed("MoralityCount", "moralitycount")
      .withColumnRenamed("NoteCount", "notecount")
      .withColumnRenamed("OnlineTimeLength", "onlinetimelength")
      .withColumnRenamed("PunishmentCount", "punishmentcount")
      .withColumnRenamed("RecordTime", "recordtime")
      .withColumnRenamed("Remark", "remark")
      .withColumnRenamed("RewardCount", "rewardcount")
      .withColumnRenamed("SchoolID", "schoolid")
      .withColumnRenamed("SelfStudyTimeLength", "selfstudytimelength")
      .withColumnRenamed("SportTimeLength", "sporttimelength")
      .withColumnRenamed("StandingUpCount", "standingupcount")
      .withColumnRenamed("StudentID", "studentid")
      .withColumnRenamed("StudentName", "studentname")
      .withColumnRenamed("Term", "term")
      .withColumnRenamed("WorkFinishedRate", "workfinishedrate")

    df.printSchema()

    import org.apache.spark.sql.functions._

    val df2 = df.
      select("allactivelength", "attendancerate", "classid", "classname",
        "createtime", "creator",
        "dataflag", "dinnermoney", "eatingcount", "eventid", "gradeid",
        "gradename", "handsupcount", "inschooltimelength",
        "inschooltimelengthchange", "islast", "lastedittime",
        "lasteditor", "learninlibtimelength", "leavecount",
        "moralitycount", "notecount", "onlinetimelength", "punishmentcount",
        "recordtime", "remark", "rewardcount",
        "schoolid", "selfstudytimelength", "sporttimelength",
        "standingupcount", "studentid", "studentname", "term", "workfinishedrate")

    println(df2.count())

    println(df2.columns.length)

    df2.createOrReplaceTempView("aaa")

    println(spark.table("aaa").columns.length)

    df2.write.format("orc")

      .mode(SaveMode.Append)

      .partitionBy("schoolid", "term")

      .option("compression", "none")

      .saveAsTable("lg_edu_warehouse.student_allinfo_day_log")

    val hdfsUrl = "hdfs://mycluster"

    var realUrl = ""

    deletePath(spark, "hdfs://mycluster/avro/hdfs/student_allinfo_day")

    def deletePath(spark: SparkSession, path: String): Unit = {

      val file_path = new org.apache.hadoop.fs.Path( path )

      val file_system = file_path.getFileSystem( spark.sparkContext.hadoopConfiguration )


      if (file_system.exists( file_path )) {

        file_system.delete( file_path, true )
      }
    }

    spark.stop()
  }

}








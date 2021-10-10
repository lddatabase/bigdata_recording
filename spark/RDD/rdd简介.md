###   rdd创建方法三种  

第一种： 

sc.textFile("hdfs://lovalhost:9000/input-0")

第二种：

使用sc.parallize将driver端的数组或者集合变成RDD　　　

val rdd1 = sc.parallize(List(1,2,3,4,5),3)   val rdd1 = sc.paallize(Array(1,2,3,4,5,6,7,8,9),3)  ---既可以使用List 也可以使用Aaary,可以使用parallize方法指定分区数 

分区数与并行度相关，分区数越多，相应的并行度也越高   

第三种： 

使用sc.makeRDD方法效果跟parallize相同   

sc.makeRDD(List(("a",1),("b",1)),2)

注意： 

使用sc.textFile(path,minPartitions)   -- 读取HDFS的数据，按照128M,有几个block就有几个分区，若是文件大小不一致，分区数可能不一样,在不指定最小分区数的情况下，最大的文件会逻辑分成两个区，

比如读取hdfs的data目录下的四个文件分别是99B、99B、799B、99B  在读取的时候会有五个分区，799B的文件会被逻辑划分成两个区，分区规则就是将所有的文件大小相加初一默认的最小分区数  也就是1096B

然后在不指定最小分区数的情况下默认是2  那么划分的规则就是 当前文件的大小/548B >= 1.1倍  799B的文件正好被逻辑划分成两个分区0-548B、549-799B ，所以读取data目录下的文件总共有五个分区

分区数与并行度成正比



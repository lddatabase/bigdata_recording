## flume-kafka.conf说明

1.在flume的安装目录下新建一个flume-ng文件夹，用于存放拉取过程的状态信息。


2.本实例中采用的是flume拉取mysql到kafka中，所需要的驱动主要是sql-source和jdbc-connect,下载相应地jar分别放在如下的目录：
flume安装目录/plugins.d/sql-source/libext/mysql-connector-java-5.1.48-bin.jar
flume安装目录/plugins.d/sql-source/lib/flume-ng-sql-source-1.4.3.jar

## sql-source说明

jar包无需编译，直接使用即可

## kafka-hive.conf说明

将hive中lib目录下的几个相应的jar包放在flumelib下，并且hive必须为事务分桶表
相应地jar包如下：
antlr-runtime-3.5.2.jar
hive-cli-3.1.2.jar
hive-exec-3.1.2.jar
hive-hcatalog-core-3.1.2.jar
hive-hcatalog-server-extensions-3.1.2.jar
hive-hcatalog-streaming-3.1.2.jar



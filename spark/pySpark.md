###  pyspark书写wordcount

bin/pyspark --master spark://localhost:7077  
--executor-memory 1g    
--total-executor-cores 10   
sc.textfile("hdfs://localhost:9000/datas")    
.flatmap(lambda line: line.split(" "))    
.map(lambda w : (w,1))  
.reducebykey(lambda x,y : x+y )   
.sortby(lambda t :t[1] , Flase)   
.collect()   

###  生成job流程   

触发action后生成job，根据最后一个RDD往前推，并且根据RDD的依赖关系，如果有shuffle就切分stage，继续往前推，直到最原始的RDD（最原始的RDD没有父RDD，然后递归出去）

### map  
map方法其实就是做映射的，把原来的数据经过一次map变成另外一种形式   
### filter  
filter方法是过滤的，只会改变数据量，不会改变数据的类型和样式   

对于rdd使用map或者filter这些窄依赖方法，本质上是对RDD中的每一个分区调用map或者filter方法，而传入的函数都是作用在分区上，一个分区对应一个task， 

### 重要算子 

#### map

map方法：每处理一条数据就调用传入到map方法中的函数   



















































































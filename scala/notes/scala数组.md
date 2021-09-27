###  scala 数组

scala 中的数组可以按照索引来访问，数组的第一个元素为0，最后一个元素为总数减1

###  声明数组    

val z : Array[String] = new Array[String](3) 或者  val z = new Array[String](3)   ---------表示声明一个数组容量为3的空间   

可以通过z(0) = "Hello Scala!"进行赋值  

我们也可以使用以下方式定义数组：  val z = Array("hello scala", "hadoop","spark")

### 处理数组   
 
数组的元素类型和大小基本是确定的,所以当处理数组元素的时候使用for循环即可

Object Test {

def main(args : Array[String])：Unit = {

var myList = Array(1.9,2.8,2.3)

### 输出所有数组的元素   

for(x <- myList)

println(x)

### 计算所有数组元素的总和  

var total = 0.0   

for( i <- 0 to (myList.Length -1 ))
total += myList[i]   
println("总和为:" + total)

### 输出数组中最大的元素

val max = myList(0)

for(t <- 1 to (myList.length -1 ))

if(myList(t) > max )

max = myList(t)

}
println(max)

}




## 多维数组  

多维数组一个数组中的值可以是另一个数组，另一个数组的值也可以是一个数组。矩阵与表格是我们常见的二维数组。

<!-- 定义二维数组-->
   val myMetrix = Array.ofDim[Int](3,3)

    for (i <- 0 to 2) {
      for ( j <- 0 to 2) {
//        myMetrix(i)(j) = i;
        myMetrix(i)(j) = j;
      }
    }

    for (i <- 0 to 2) {
      for ( j <- 0 to 2) {
//        print(" " + myMetrix(i)(j));
        print(" " + myMetrix(i)(j));
      }
      println();
    }

## 合并数组   
    val myList2 = Array(1.8,3.6,5.7)

    val myList3 = Array(3.4,5.1,3.8)

var max1 = myList2(0)

    for (t1 <- 1 to (myList2.length-1)) {

      if (myList2(t1) > max1)

        max1 = myList2(t1)
    }
    println(max1)

    var max2 = myList3(0)
    for (t1 <- 1 to (myList3.length-1)) {

      if (myList3(t1) > max2)

        max2 = myList3(t1)
    }
    println(max2)

    val t = test(max1, max2)

    println(t)
    
    }
  def test (a :Double, b :Double) : Double = {

    var total = a+ b

    return total

  }

### 创建区间数组   

    import scala.collection.immutable._
    val list1 = Range(12, 24, 4)
    for (x <- list1) {
      println(x)
    }
  }
 
 ### Scala 数组方法
 
 使用前需要使用 import Array._ 引入包
 
 
















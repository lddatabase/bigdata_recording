### scala 基本语法规则 
Java中使用void关键字代表返回类型。scala中使用Unit关键字表示   
scala中声明方法必须使用def关键字  
scala中方法实现赋值给方法声明，因此使用等号连接  
scala是完全面向对象,故并无static、void关键字  

1）static  
scala中使用Object实现类似java的静态方法的功能（类名.方法名）  
class关键字和Java中相同，用来定义一个类  
2）void  
对于无返回值的类型，Scala使用Unit类  

声明方法语法：  
def main(args : Array[String]) : Unit = {

}

### Scala编译过程 
1.源代码test.scala经过编译后生成两个文件  test$.class和test.class   
2.main函数调用test$类中的一个静态对象MODULES$  
3.通过test$.MODULES$,对象是静态的，通过该对象调用test$的main函数  

Scala注释很Java相同  

###  变量和常量   
基本语法:   
val 常量名：常量类型  =  初始值 
var 变量名：变量类型  =  初始值  
能用常量的地方尽量使用常量     
声明变量时,类型可省略，编译器会自动推导  
类型确定后就不能修改，即Scala时强数据类型语言   
变量声明时,必须要有初始值  
val 修饰的变量不可更改，一旦赋值不可改变  
var 修饰的变量可更改，但是注意类型  
Scala命名规则与java基本上是一致的  
### 数据类型
Java中分为基本数据类型和引用数据类型  
基本类型：char、byte、int、short、long、float、double、boolean  
引用类型：character、byte、integer、short、long、float、double、boolean  
Java中的基本类型和引用类型并无共同的祖先  

1.Scala中一切数据都是对象,都是Any的子类  
![images](https://github.com/lddatabase/bigdata_recording/blob/5ed638ee0a4667e41eb318b40b78ed526f558b55/images/scala%E6%95%B0%E6%8D%AE%E7%B1%BB%E5%9E%8B.png)

2.scala中数据类型分为数值类型（Anyval）和引用类型(AnyRef), 不管是值类型还是引用类型都是对象  
3.Scala数据类型仍然遵守：隐式转换 （即低精度的值类型向高精度的值类型的自动转换）  
4.Scala中的StringOps是对Java中的String增强  
5.Unit：是对Java的void，用于方法返回值的位置，表示方法没有返回值


































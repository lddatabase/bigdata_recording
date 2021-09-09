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



































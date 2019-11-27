main() {
//   // 与Java相同的运算符操作

//   int a = 1;
//   ++a;
//   a++;
//   var b = 1;
//   print(a == b); // false
//   print(a * b); // 3
//   bool real = false;
//   real ? print('real') : print('not real'); // not real
//   print(real && a == b); // false
//   print(real || a == 3); // true
//   print(a != 2); // true
//   print(a <= b); // false
//   var c = 9;
//   c += 10;
//   print("c = $c"); // c = 19
//   print(1 << 2); // 4

//   // 与Java不太一样的运算符操作

//   // is运算符用于判断一个变量是不是某个类型的数据
//   // is!则是判断变量不是某个类型的数据
//   var s = "hello";
//   print(s is String); // true
//   var num = 6;
//   print(num is! String); // true

//   // ~/才是取整运算符，如果使用/则是除法运算，不取整
//   int k = 1;
//   int j = 2;
//   print(k / j); // 0.5
//   print(k ~/ j); // 0

//   // as运算符类似于Java中的cast操作，将一个对象强制类型转换
//   // (emp as Person).teach();

//   // ??=运算符 如果 ??= 运算符前面的变量为null，则赋值，否则不赋值
//   var param1 = "hello", param2 = null;
//   param1 ??= "world";
//   param2 ??= "world";
//   print("param1 = $param1"); // param1 = hello
//   print("param2 = $param2"); // param2 = world

//   // ?.运算符
//   var str1 = "hello world";
//   var str2 = null;
//   print(str1?.length); // 11
//   print(str1.length); // 11
//   print(str2?.length); // null
//   // print(str2.length); // 报错
}

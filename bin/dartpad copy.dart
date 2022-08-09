enum MyNum {
  myNum1,
  myNum2,
  myNum3,
}

abstract class Number {
  factory Number(MyNum num) {
    switch (num) {
      case MyNum.myNum1:
        return MyClass(1);

      case MyNum.myNum2:
        return MyClass(2);

      case MyNum.myNum3:
        return MyClass(3);

      default:
        // MyClass(0);

        throw 'Can\'t create $num';
    }
  }
  num get myNumber;
}

class MyClass implements Number {
  final num _number;
  MyClass(this._number);

  @override
  num get myNumber => _number + 3;
}

main(List<String> args) {
  // var num2 = Number('myNum2');
  print(Number(MyNum.myNum1).myNumber);
}
 
 
// or.. 함수로 구현시..
// Number numberFactory(String type) {
//   if (type == 'myNum1') return MyClass1(2);
//   if (type == 'myNum2') return MyClass2(2);
//   throw 'Can\'t create $type';
// }





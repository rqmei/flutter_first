class Person {
  // 类属性声明
  String name;
  int age;
  int sex;

  // 类名构造行数;【用新的语法糖，可简写为 Person(this name, this age, [this sex = 1]);】
  Person(String name, int age, [int sex = 1]) {
    this.name = name;
    this.age = age;
    this.sex = sex;
  }

  // 自定义命名构造函数;【用新的语法糖，可简写为 Person.rqmei(this.name, this.age);】
  Person.rqmei(String name, int age) : sex = 0{
    this.name = name;
    this.age = age;
    print('in Person');
  }

  Person.fromJson(String name) {
    print('in Person');
  }

  // 重定向构造函数，指向主（类名）构造函数，函数体为空
  Person.origin(String name, num age) : this(name, age);

  // 方法声明
  void getInfo() {
    print(
        "My name is ${name}, age is $age,and I am a ${sex == 1 ? 'man' : 'woman'}");
  }

  // 修改类属性
  void changeName(String name) {
    if (name != null) {
      this.name = name;
    }
  }

  // 当用户调用你定义的类中不存在的属性与方法时，可以做出一些响应，通过重写noSuchMethod()
  @override
  noSuchMethod(Invocation invocation) {
    // TODO: implement noSuchMethod
    print('You tried to use a non-existent member: '  +  '${invocation.memberName}');
  }
}

class Employee extends Person {
  // 父类没有无参数的非命名构造函数，必须手动调用一个构造函数
  Employee.fromJson(String name) : super.rqmei(name, 8) {
    print('in Employee');
  }
}

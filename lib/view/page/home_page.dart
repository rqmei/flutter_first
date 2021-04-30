import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import '../../model/Person.dart';
/// 获取其它页面传递过来的参数
class HomePage extends StatefulWidget {
  // 构造函数
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

///
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // ignore: extra_positional_arguments_could_be_named
      appBar: AppBar(title: Text(widget.title)),
      /// 页面显示的内容
      body: _buildSuggestions(),
    );
  }
  // 无限滚动的listView
  final List<WordPair> _suggestions = <WordPair>[];
  final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);
  String str1 = "aa",str2 = "111";



  Widget _buildSuggestions() {
    return new ListView.builder(itemBuilder: (BuildContext _context, int i) {
      // 是否为基数
      if (i.isOdd) {
        return new Divider();
      }
      final int index = i ~/ 2;
      if (index >= _suggestions.length) {
        _suggestions.addAll(generateWordPairs().take(10));
      }
      dynamic a9 = "aababcc1bc23";
      print(a9.length);

      // 调用类名构造函数【Dart的第一个版本实例化对象需要new关键字，但在Dart2.0之后就去掉了new关键字】
      Person person = Person("rqmei", 27,1);
      person?.getInfo();
      person?.changeName("丽丽");
      person?.getInfo();

      // 重定向构造函数使用
      Person p = Person.origin("张三", 6);
      p?.getInfo();

      // 引用父类的构造函数
      Employee e = Employee.fromJson("王五");
      if(e is Person) {
          e.age = 33;
      }
      (e as Person).sex = 0;

      return _buildRow(_suggestions[index]);
    });
  }

  Widget _buildRow(WordPair pair) {
    String str3 = str1 + str2;
    return new ListTile(
        title: new Text(
//          pair.asPascalCase, // 随机生成字符
         "$str3",
          style: _biggerFont,
        ));
  }
}

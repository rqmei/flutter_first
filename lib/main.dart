import 'dart:isolate';

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart'; // 控件库
import 'package:flutter_app/view/page/main_page.dart';

import 'common/component_index.dart';
import 'common/global.dart';
import 'isolate/other_isolate.dart';
import 'util/MTCacheTool.dart';
import 'util/util.dart';
import 'view/page/login_page.dart';

/// 独立的顶层函数（程序的入口）
void main() {
  Global.init(() {
    runApp(MyApp());
    print("main isolate start");
    createIsolate();
    print("main isolate stop");
  });
//  runApp(MyApp());
}

///  这里相当于Android中的Application类，StatelessWidget表示无状态控件f'lu
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return RefreshConfiguration(
        hideFooterWhenNotFull: false, // Viewport不满一屏时,禁用上拉加载更多功能
        enableBallisticLoad: true, // 可以通过惯性滑动触发加载更多
        // 默认头部指示器全局构造器
        headerBuilder: () => MaterialClassicHeader(),
        // 默认尾部指示器全局构造器
        footerBuilder: () => ClassicFooter(),
        // 是否允许通过手势来触发加载更多当没有更多数据的状态
        enableLoadingWhenNoData: false,
        // 当不满一个屏幕时,对于不同状态要不要跟随内容列表,前提hideFooterWhenNotFull = false
        shouldFooterFollowWhenNotFull: (state) {
          return false;
        },
        child: MaterialApp(
          title: 'Flutter Demo',
          // 主题相关配置（这里我们可以配合app整体的主题样式，比如整体颜色，控件默认的样式等）
          theme: ThemeData(
            // 这个地方就类似于Android中的style文件配置，主要就是主题的配置
            primarySwatch: Colors.blue,
            // This makes the visual density adapt to the platform that you run
            // the app on. For desktop platforms, the controls will be smaller and
            // closer together (more dense) than on mobile platforms.
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          // home指定了启动后显示的页面（类似于我们在AndroidManifest中配置启动页面）
          home: MyHomePage(title: 'Flutter Demo Home Page'),
        ));
  }
}

/// 管理自己状态的widget，通过setState更新展示内容
class MyHomePage extends StatefulWidget {
  // 构造函数
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  // _MyHomePageState的构造方法
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

/// 生命周期执行顺序由上到下
class _MyHomePageState extends State<MyHomePage> {
  /// 构造函数
  _MyHomePageState();

  // 判断是否登陆
  bool _ifLogin = false;

  _getLoginState() async {
    _ifLogin = await MTCacheTool.getLoginState();
    bool _token = Util.isLogin();
    print("_ifLogin--- $_ifLogin");
    print("token $_token");
  }

  /// 插入到渲染树时调用，只执行一次。（类似Android Fragment的onCreateView函数）
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 判断是否登陆
    _getLoginState();
  }

  /// 1、在初始化initState后执行； 2、显示/关闭其它widget。 3、可执行多次；
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  /// 上级节点rebuild widget时， 即上级组件状态发生变化时会触发子widget执行didUpdateWidget;
  @override
  void didUpdateWidget(MyHomePage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  /// 渲染页面
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: widget.title,
      home: Util.isLogin() ? MainPage(currentIndex: 1) : LoginPage(),
    );
    //   当调用setState 方法。会重新调用build 进行渲染
    /* return Scaffold(
      /// 应用栏
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),

      /// 页面显示的内容
      body: _buildSuggestions(),
      */ /* body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // 居中
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              // 设置样式
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),*/ /*
      // 点击按钮
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );*/
  }

  /// 当State 对象从渲染树中移除的时候就会调用
  /// 有点像Android的onStop函数， 在打开新的Widget或回到这个widget时会执行； 可执行多次；
  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

  /// 销毁(类似于Android的onDestroy， 在执行Navigator.pop后会调用该办法， 表示组件已销毁；)
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  /// 点击闪电会执行，只用于调试时的hot reload。 release版本不会执行该函数。
  @override
  void reassemble() {
    // TODO: implement reassemble
    super.reassemble();
  }

  // 在 Dart 语言中使用下划线前缀标识符，会强制其变成私有。
  int _counter = 0;

  // 累加_counter的数量
  void _incrementCounter() {
    /// 是去重新渲染变更的内容。Flutter 是增量渲染
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  // 无限滚动的listView
  final List<WordPair> _suggestions = <WordPair>[];
  final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);

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
      return _buildRow(_suggestions[index]);
    });
  }

  Widget _buildRow(WordPair pair) {
    return new ListTile(
        title: new Text(
      pair.asPascalCase, // 随机生成字符
      style: _biggerFont,
    ));
  }
}

createIsolate() async {
  // 两个Isolate要想互相通讯须持有对方的的sendPort
  //  获取mainIsolate的监听器 mainReceivePort
  ReceivePort mainRp = new ReceivePort();
  // 获取 mainIsolate 的 SendPort 并作为参数传递给newIsolate
  // 使 newIsolate 持有 mainSendPort，用于通讯
  // 使 newIsolate 可以通过 mainSendPort 将 newIsolate 的发送消息回 mainIsolate
  SendPort mainSend = mainRp.sendPort;
  // 创建newIsolate 并建立连接
  Isolate newIsolate = await Isolate.spawn(excuter, mainSend);
  // 这里需要得到 newIsolate 的 SendPort，
  // 让 mainIsolate 持有 newSendPort，用于通讯
  // 使 mainIsolate 可以通过 newSendPort 将 mainIsolate 的发送消息回 newIsolate
  // 注意 这里 newSendPort 是 newIsolate中的mainSendPort 发送回来的所以要在监听中获取newSendPort
  SendPort newSendPort;
  // 主接收器(mainReceivePort)开始监听newIsolate中的mainSendPort发送回来的消息
  mainRp.listen((message) {
    print("NewIsolat通过mainSend发送来一条消息 $message ，到主Isolate");
    if (message[0] == 0) {
      newSendPort = message[1] as SendPort;
    } else {
      newSendPort
          ?.send([1, "这条信息是 main isoltate 通过 newSendPort 发送了一条消息到New Isolate"]);
    }
  });
  // 可以在适当的时候，调用以下方法杀死创建的 isolate
  // newIsolate.kill(priority: Isolate.immediate);
}

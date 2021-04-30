import 'package:flutter/material.dart';
import 'home_page.dart';
import 'train_page.dart';

class MainPage extends StatefulWidget {
  // 构造函数
  MainPage({Key key, this.currentIndex}) : super(key: key);

  final int currentIndex;
  @override
  MainPageState createState() => new MainPageState();
}

class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    // 构建页面
    return buildBottomTabScaffold();
  }

  @override
  void initState() {
    // 初始化，这个函数在生命周期中只调用一次
    super.initState();
    currentIndex = widget.currentIndex;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didUpdateWidget(MainPage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  //当前显示页面的
  int currentIndex = 0;

  //底部导航栏显示的内容
  final List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
      // BottomNavigationBarType为shifting时的背景颜色
      backgroundColor: Colors.blue,
      // 要显示的图标控件
      icon: Icon(Icons.home),
      // 要显示的标题控件
      title: Text("首页"),
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.blue[600],
      icon: Icon(Icons.library_books),
      title: Text("培训"),
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.blue[800],
      icon: Icon(Icons.exposure),
      title: Text("考试"),
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.blue[900],
      icon: Icon(Icons.person),
      title: Text("我的"),
    ),
  ];

//点击导航项是要显示的页面
  final pages = [
    HomePage(title: "首页"),
    TrainPage(),
    HomePage(title: "考试"),
    HomePage(title: "我的")
  ];

  Widget buildBottomTabScaffold() {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:Colors.white,
        // 底部导航栏的显示项
        items: bottomNavItems,
        // 当前显示项的下标
        currentIndex: currentIndex,
        //所以一般都是使用fixed模式，此时，导航栏的图标和标题颜色会使用fixedColor指定的颜色，
        // 如果没有指定fixedColor，则使用默认的主题色primaryColor
        type: BottomNavigationBarType.fixed,
        // 底部导航栏type为fixed时导航栏的颜色，如果为空的话默认使用ThemeData.primaryColor
        fixedColor: Colors.blue,
        // 底部菜单点击回掉
        onTap: (index) {
          _changePage(index);
        },
      ),
      body: pages[currentIndex],
    );
  }

  /// 切换界面
  void _changePage(index) {
    if (index != currentIndex) {
      setState(() {
        currentIndex = index;
      });
    }
  }
}

/*class MainPage extends StatelessWidget {
  final List<Tab> _tabs = <Tab>[
    Tab(
      text: "首页",
      icon: Icon(Icons.home),
    ),
    Tab(
      text: "培训",
      icon: Icon(Icons.library_books),
    ),
    Tab(
      text: "考试",
      icon: Icon(Icons.exposure),
    ),
    Tab(
      text: "我的",
      icon: Icon(Icons.person),
    )
  ];

  @override
  Widget build(BuildContext context) {
    Widget bottomTabArea = TabBar(
      tabs: _tabs,
      indicatorColor: Colors.white,
      // 下划线指示器与标签文字等宽,默认为tab与bar等宽
      indicatorSize: TabBarIndicatorSize.label,
      // 标签文字颜色
      labelColor: Colors.blue,
      // 未选中的标签颜色
      unselectedLabelColor: Colors.black26,
    );

    Widget tabBarView = TabBarView(
        children: _tabs.map((tab) {
      return Center(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[Icon(Icons.tab), Text(tab.text)]),
      );
    }).toList());

    return Scaffold(
        backgroundColor: Colors.white,
        body: DefaultTabController(
            length: _tabs.length,
            initialIndex: 1,
            child: Scaffold(
              appBar: AppBar(
                  title: Text(""),
                  //配置顶部导航栏
                  bottom: bottomTabArea),
              body: tabBarView,
            )));
  }
}*/

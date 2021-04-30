import 'dart:ui';

import 'package:flutter/material.dart';

import '../../common/component_index.dart';
import '../widget/search_navigation_widget.dart';

class TrainPage extends StatefulWidget {
  @override
  TrainPageState createState() => TrainPageState();
}

class TrainPageState extends State<TrainPage> {
  String tips = "《安全生产法》规定：接受安全教育培训是从业人员的法定权利及义务。"
      "未经安全生产教育和培训合格的从业人员，不得上岗作业。"
      "  参加企业现场集中培训免费；自愿选择远程网络学习，需缴纳相关费用。";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: SearchNavigationWidget()),
      body: tabArea(),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didUpdateWidget(TrainPage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  /// 组件相关
  /// 顶部图文提示
  Widget tipsArea() {
    return Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Text.rich(TextSpan(children: <InlineSpan>[
          WidgetSpan(
              child: Container(
            child: Image.asset(
              "assets/imgs/plan_page_msg.png",
              width: 26,
              height: 20,
              color: Colors.amber,
            ),
          )),
          TextSpan(text: tips, style: TextStyle(color: Colors.amber)),
        ])));
  }

  /// tab
  Widget tabArea() {
    RefreshController _controller = RefreshController();
    return Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 10),
        child: DefaultTabController(
          length: 4,
          child: Column(
            children: <Widget>[
              tipsArea(),
              Container(
                child: TabBar(
                  isScrollable: false,
                  indicatorWeight: 1,
                  labelColor: Colors.lightBlue,
                  indicatorSize: TabBarIndicatorSize.label,
                  unselectedLabelColor: Colors.grey,
                  tabs: <Widget>[
                    Tab(
                      text: "未完成",
                    ),
                    Tab(
                      text: "已完成",
                    ),
                    Tab(
                      text: "全部",
                    ),
                    Tab(
                      text: "筛选",
                    )
                  ],
                ),
              ),
              Container(height: 1, color: Colors.black12),
              Expanded(
                  flex: 1,
                  child: TabBarView(
                    children: <Widget>[
                      ListViewContnet(),
                      ListViewContnet(),
                      ListViewContnet(),
                      ListViewContnet()
                    ],
                  ))
            ],
          ),
        ));
  }
}

class ListViewContnet extends StatelessWidget {
  ListViewContnet({Key key, RefreshController controller}) : super(key: key);
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  List<String> items = ["1", "2", "3", "4", "5", "6", "7", "8"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SmartRefresher(
        enablePullDown: true,
        enablePullUp: true,
        header: MaterialClassicHeader(),
        footer: ClassicFooter(
          loadStyle: LoadStyle.ShowWhenLoading,
        ),
        controller: _refreshController,
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        child: ListView.builder(
          itemBuilder: (c, i) => Card(child: Center(child: Text(items[i]))),
          itemCount: items.length,
        ),
      ),
    );
  }

  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use loadFailed(),if no data return,use LoadNodata()
    items.add((items.length + 1).toString());
//    if (mounted) setState(() {});
    _refreshController.loadComplete();
  }
}

import 'package:flutter/material.dart';

import '../../common/component_index.dart';

/// 上拉加载更多
typedef void OnLoadMore({bool up});

/// 下拉刷新
typedef OnRefreshCallback = Future<void> Function({bool isReload});

///
/// 上下拉刷新的一个widget封装
///
class RefreshScaffold extends StatefulWidget {
  final Widget child;
  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;
  final OnRefreshCallback onRefresh;
  final OnLoadMore onLoadMore;
  final RefreshController controller;

  const RefreshScaffold({
    Key key,
    this.child,
    this.itemCount,
    this.itemBuilder,
    this.onRefresh,
    this.onLoadMore,
    @required this.controller,
  });

  @override
  RefreshScaffoldState createState() {
    return RefreshScaffoldState();
  }
}

class RefreshScaffoldState extends State<RefreshScaffold> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
        controller: widget.controller,
        onRefresh: widget.onRefresh,
        onLoading: widget.onLoadMore,
        child: widget.child ??
            ListView.builder(
              itemCount: widget.itemCount,
              itemBuilder: widget.itemBuilder,
            ),
      ),
    );
  }
}

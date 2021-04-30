import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgressDialog {
  static bool _isShowing = false;

  /// 展示
  static void showProgress(BuildContext context,
      {Widget child = const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(Colors.red),)}){
    if(!_isShowing) {
      _isShowing = true;
      Navigator.push(context, _PopRoute(
        child: _Progress(
          child: child
        )
      ));
    }
  }

  /// 隐藏
  static void dismiss(BuildContext context) {
    if(_isShowing) {
      /// 关闭路由 这里可以是Route也可以是Dialog, pop都是可以向上一层返回数据的。
      Navigator.of(context).pop();
      _isShowing = false;
    }
  }
}

/// Widget  这个Route是为了点击按钮的时候弹出一个新的页面，这个新页面除了自己定义的child，其他全是透明
class _Progress extends StatelessWidget {
  final Widget child;

  _Progress({
    Key key,
    @required this.child,
  })  : assert(child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.transparent,
        child: Center(
          child: child,
        ));
  }
}
/// Route 弹出透明的布局的抽象Route
class _PopRoute extends PopupRoute {
  final Duration _duration = Duration(milliseconds: 300);
  Widget child;

  _PopRoute({@required this.child});

  @override
  Color get barrierColor => null;

  @override
  bool get barrierDismissible => true;

  @override
  String get barrierLabel => null;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return child;
  }
  ///  需要注意的是transitionDuration不能返回null，否则会报错。
  @override
  Duration get transitionDuration => _duration;
}
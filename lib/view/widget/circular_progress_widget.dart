import 'package:flutter/material.dart';

class CircularProgressWidget extends Dialog {
  double width = 40.0;
  double height = 40.0;
  Color backgroundColor = Colors.yellow;
  Color valueColor = Colors.red;
  bool visible;

  CircularProgressWidget(
      {this.visible,
      this.width,
      this.height,
      this.valueColor,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Material(
        //创建透明层
        type: MaterialType.transparency, //透明类型
        child: Center(
            child: SizedBox(
          // 限制进度条的高度
          height: height,
          // 限制进度条的宽度
          width: width,
          child: CircularProgressIndicator(
            // 0~1的浮点数，用来表示进度多少;如果 value 为 null 或空，则显示一个动画，否则显示一个定值
            value: null,
            // 背景颜色
            backgroundColor: Colors.blueGrey,
            // 进度颜色
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
        )));
  }
}

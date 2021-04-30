import 'package:flutter/material.dart';

class SearchNavigationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
            child: IconButton(
                icon: Image.asset("assets/imgs/defHead.png"),
                onPressed: () {})),
        Expanded(
            child: Container(
          // 修饰背景与圆角
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFBDBDBD), width: 1.0),
            color: Color(0xFFBDBDBD),
            borderRadius: new BorderRadius.all(new Radius.circular(5.0)),
          ),
          height: 32,
          padding: EdgeInsets.only(left: 2.0),
          margin: EdgeInsets.only(left: 10.0, right: 10.0),
          child: TextField(
              //是否隐藏输入
              obscureText: true,
              autofocus: false,
              enabled: true,
              // 点击事件
              onTap: () {
                print("点击搜索框");
              },
              // 输入事件
              onChanged: (String str) {},
              decoration: InputDecoration(
                  hintText: "搜索计划",
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  hintStyle:
                      new TextStyle(fontSize: 14, color: Colors.white30))),
        )),
        Container(
          margin: EdgeInsets.only(right: 0.0),
          child: IconButton(
              icon: Image.asset("assets/imgs/sweep_code.png"),
              onPressed: () {}),
        ),
        IconButton(
            icon: Image.asset("assets/imgs/service.png"), onPressed: () {}),
      ],
    );
  }
}

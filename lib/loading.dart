import 'dart:ui';

import 'package:flutter/material.dart'; //加载程序
import 'dart:async'; // 异步

// 直接继承无状态组件类
class LoadingPage extends StatefulWidget {
  @override
   State<StatefulWidget> createState()=> new _LoadingSate();
}

class _LoadingSate extends State<LoadingPage> {
  // 初始内容
  @override
  void initState() {
    super.initState();
    new Future.delayed(Duration(seconds: 3), () {
      print('微信程序启动中...');
    });
  }

  // 容器覆盖
  Widget build(BuildContext context) {
    return new Container(
      child: Image.asset("images/loading.png",fit: BoxFit.cover,),
      // width: MediaQuery.of(context).size.width, // 屏幕宽度
      // height: MediaQuery.of(context).size.height, // 屏幕高度
      constraints: BoxConstraints.expand(), // 自适应屏幕
    );
  }
}

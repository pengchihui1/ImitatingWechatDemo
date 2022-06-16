import 'package:flutter/material.dart';

// StatefulWidget
// 首先同样也是调用StatefulWidget的 createElement方法，并根据这个widget生成StatefulElement对象，并保留widget引用。
// 将这个StatefulElement挂载到Element树上。
// 根据widget的 createState 方法创建State。
// StatefulElement对象调用state的build方法，并将element自身作为BuildContext传入。
// 所以我们在build函数中所使用的context，正是当前widget所创建的Element对象。

class TouchCallBack extends StatefulWidget {
  final Widget child;
  final VoidCallback onPressed;
  final bool isfeed;
  final Color background;

  TouchCallBack({
    Key? key,
    required this.child,
    required this.onPressed,
    this.isfeed: true,
    this.background: const Color(0xffe8d8d8),
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => new TouchState();
}

class TouchState extends State<TouchCallBack> {
  Color color = Colors.transparent;
  //
  @override
  Widget build(BuildContext context) {
    //BuildContext对象实际上就是Element对象，BuildContext 接口用于阻止对 Element 对象的直接操作。
    return GestureDetector(
        //可以是小控件GestureDetector 默认控件 Scaffold
        child: Container(
          // Container相当于我们常用的div
          color: color,
          child: widget.child,
        ),
        onTap: widget.onPressed, //onTap 手指点击时的回调函数
        onPanDown: (d) {
          //手指按下时的回调函数
          if (widget.isfeed == false)
            return setState(() {
              color = widget.background;
            });
        },
        onTapUp: (d) {}, // 手指松开时的回调函数
        onTapCancel: () {
          setState(() {
            color = Colors.transparent;//Colors.transparent 设置透明
          });
        } // 手指取消点击时的回调函数
        );
  }
}

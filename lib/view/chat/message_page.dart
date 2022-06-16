import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_wechat_demo/constant/style.dart';

import 'package:flutter_wechat_demo/view/chat/message_data.dart';
import 'package:flutter_wechat_demo/view/chat/message_item.dart';

class MessagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MessagePageState();
}

class MessagePageState extends State<MessagePage> {
  // 容器覆盖
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return new MessageItem(messageData[index]);
      },
    ));
  }
}

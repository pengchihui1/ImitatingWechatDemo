import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MainState();
}

class MainState extends State<App> {
  var currentIndex = 0;

  // 容器覆盖
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: new BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: 1,
      onTap: (value) => {},
      items: [
        new BottomNavigationBarItem(
            // ignore: deprecated_member_use
            title: Text('微信',
                textScaleFactor: 1.0,
                style: TextStyle(fontSize: 10.0, color: currentIndex == 0 ? Color(0xff46c01b) : Color(0xff999999))),
            icon: currentIndex == 0
                ? Image.asset(
                    'assets/images/tabbar/tabbar_mainframe_25x23.png',
                    width: 25.0,
                    height: 23.0,
                  )
                : Image.asset('assets/images/tabbar/tabbar_mainframeHL_25x23.png', width: 25.0, height: 23.0)),
        new BottomNavigationBarItem(
            // ignore: deprecated_member_use
            title: Text('通讯录',
                textScaleFactor: 1.0,
                style: TextStyle(fontSize: 10.0, color: currentIndex ==0 ? Color(0xff46c01b) : Color(0xff999999))),
            icon: currentIndex ==0
                ? Image.asset(
                    'assets/images/tabbar/tabbar_contacts_27x23.png',
                    width: 25.0,
                    height: 23.0,
                  )
                : Image.asset('assets/images/tabbar/tabbar_contactsHL_27x23.png', width: 25.0, height: 23.0)),
      ],
    ));
  }
}

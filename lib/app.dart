import 'package:azlistview/azlistview.dart';
import 'package:flutter/material.dart';
import 'constant/constant.dart';

enum ItemType { GroupChat, AddFriends, QrCode, Payments, Help }

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MainState();
}

class MainState extends State<App> {
  // 当前索引
  int _currentIndex = 0;

  _popupMenuItem(String title, {String? imagePath, IconData? icon}) {
    return PopupMenuItem(
        child: Row(
      children: <Widget>[
        imagePath != null
            ? Image.asset(
                imagePath,
                width: 32.0,
                height: 32.0,
              )
            : SizedBox(
                width: 32.0,
                height: 32.0,
                child: Icon(
                  icon,
                  color: Colors.white,
                )),
                Container(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    title,
                    style: TextStyle(color: Colors.white),
                  ),
                )
      ],
    ));
  }

  // 当前页面
  void currentPage() {
    switch (_currentIndex) {
      case 0:
        break;
      case 1:
        break;
      case 2:
        break;
      case 3:
        break;
      default:
        break;
    }
  }

  // page controller 事件
  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  // 容器覆盖
  @override
  Widget build(BuildContext context) {
    var onTap;
    return Scaffold(
        appBar: AppBar(title: Text('微信'), actions: <Widget>[
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'search');
              },
              child: Icon(Icons.search)),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 20.0),
            child: GestureDetector(
              onTap: () {
                showMenu(
                     context: context,
                     position: RelativeRect.fromLTRB(500.0, 76.0, 10.0, 0.0),
                      items: <PopupMenuEntry>[
                        _popupMenuItem("发起群聊",imagePath: Constant.assetsImagesLoading+"loading.png"),
                        _popupMenuItem("添加朋友",imagePath: Constant.assetsImagesLoading+"loading.png"),
                        _popupMenuItem("扫一扫",imagePath: Constant.assetsImagesLoading+"loading.png"),
                        _popupMenuItem("收付款",icon:Icons.crop_free),
                        _popupMenuItem("帮助与反馈",icon:Icons.email),
                      ]);
              },
              child: Icon(Icons.add),
            ),
          )
        ]),
        //  body: PageView(
        //       controller: _pageController,
        //       onPageChanged: _onPageChanged,
        //       children: _pageList,
        //       physics: NeverScrollableScrollPhysics(), // 禁止滑动
        //     ),
        bottomNavigationBar: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 1,
          onTap: ((index) {
            setState(() {
              _currentIndex = index;
            });
          }),
          items: [
            new BottomNavigationBarItem(
                // ignore: deprecated_member_use
                title: Text('微信',
                    textScaleFactor: 1.0,
                    style:
                        TextStyle(fontSize: 10.0, color: _currentIndex != 0 ? Color(0xff46c01b) : Color(0xff999999))),
                icon: _currentIndex != 0
                    ? Image.asset(
                        Constant.assetsImagesTabbar + 'tabbar_mainframe_25x23.png',
                        width: 25.0,
                        height: 23.0,
                      )
                    : Image.asset(Constant.assetsImagesTabbar + 'tabbar_mainframeHL_25x23.png',
                        width: 25.0, height: 23.0)),
            new BottomNavigationBarItem(
                // ignore: deprecated_member_use
                title: Text('通讯录',
                    textScaleFactor: 1.0,
                    style:
                        TextStyle(fontSize: 10.0, color: _currentIndex != 1 ? Color(0xff46c01b) : Color(0xff999999))),
                icon: _currentIndex != 1
                    ? Image.asset(
                        Constant.assetsImagesTabbar + 'tabbar_contacts_27x23.png',
                        width: 25.0,
                        height: 23.0,
                      )
                    : Image.asset(Constant.assetsImagesTabbar + 'tabbar_contactsHL_27x23.png',
                        width: 25.0, height: 23.0)),
            new BottomNavigationBarItem(
                // ignore: deprecated_member_use
                title: Text('发现',
                    textScaleFactor: 1.0,
                    style:
                        TextStyle(fontSize: 10.0, color: _currentIndex != 2 ? Color(0xff46c01b) : Color(0xff999999))),
                icon: _currentIndex != 2
                    ? Image.asset(
                        Constant.assetsImagesTabbar + 'tabbar_discover_23x23.png',
                        width: 25.0,
                        height: 23.0,
                      )
                    : Image.asset(Constant.assetsImagesTabbar + 'tabbar_discoverHL_23x23.png',
                        width: 25.0, height: 23.0)),
            new BottomNavigationBarItem(
                // ignore: deprecated_member_use
                title: Text('我的',
                    textScaleFactor: 1.0,
                    style:
                        TextStyle(fontSize: 10.0, color: _currentIndex != 3 ? Color(0xff46c01b) : Color(0xff999999))),
                icon: _currentIndex != 3
                    ? Image.asset(
                        Constant.assetsImagesTabbar + 'tabbar_me_23x23.png',
                        width: 25.0,
                        height: 23.0,
                      )
                    : Image.asset(Constant.assetsImagesTabbar + 'tabbar_meHL_23x23.png', width: 25.0, height: 23.0))
          ],
        ));
  }
}

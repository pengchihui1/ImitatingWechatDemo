import 'package:flutter/material.dart';
// import './app.dart';
// import 'loading.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wechat',
      theme: ThemeData(
        primaryColor: Color(0xff303030),
        scaffoldBackgroundColor: Color(0xffebebeb),
        cardColor: Color(0xff393a3f)
        // primarySwatch: Colors.blue,
      ),
      routes: <String, WidgetBuilder>{
        '/friends':(_) => new WebviewScaffold(
          url:"https:weixin.qq.com",
          appBar: new AppBar(title: new Text("微信朋友圈"),),
          withZoom: true,
          withLocalStorage: true,
          ),
          // 'search':(BuildContext context)=>new Search(),
        },
      home: MyHomePage(title: 'Flutter Demo Home Page'),
          //  home: new LoadingPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

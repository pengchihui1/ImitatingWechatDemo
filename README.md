## 项目简介
仿照微信的页面实现的简单demo

## 项目技术
开发平台：vscode（自带模拟器）
框架：flutter
flutter使用插件
```
flutter_webview_plugin: "^0.2.1+2"
date_format: "^1.0.4"
```

## 主要文件
assets 主要图片处理
loading.dart 进入时的页面
app.dart 主程序页面
main.dart 项目程序路口
pubspec.yaml 项目包管理及版本设置
.vscode vscode运行下避免报错的配置

## 后期可完善
可添加一个后台用来请求数据
有数据之后，功能上的交互

## vscode下运行
```
flutter run --no-sound-null-safety
或者创建文件.vscode写入内容避免报错
```

## 发送消息 开源服务
极光M
openfier

## 参考资料
```
第一步
Dart 编程语言概览：https://www.dartcn.com/guides/language/language-tour
Dart编程语言中文官网：https://www.dartcn.com/
fltter文章：https://blog.csdn.net/lyabc123456/article/details/108523199

第二步
Flutter 1.12 官方开发文档：https://www.bookstack.cn/read/flutter-1.2-zh/sidenav-8
Flutter API 文档：https://www.bookstack.cn/read/flutter-1.2-zh/20f0e8800ffeea66.md

第三步
后台结合
```


## flutter
在Flutter中Element树才是最终的绘制树，Element树是通过widget树来创建的（通过Widget.createElement()），widget其实就是Element的配置数据。

flutter常见布局：https://www.jianshu.com/p/8687d52007aa
小控件GestureDetector属性讲解：https://www.liujunmin.com/flutter/gesture/gesture_detector.html
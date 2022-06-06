## 项目简介
仿照微信的页面实现的简单demo

## vscode下运行
```
flutter run --no-sound-null-safety
或者创建文件.vscode写入内容
{
        // Use IntelliSense to learn about possible attributes.
        // Hover to view descriptions of existing attributes.
        // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
        "version": "0.2.0",
        "configurations": [
                {
                        "name": "YOUR_PROJECT_NAME",
                        "program": "lib/main.dart",
                        "request": "launch",
                        "type": "dart",
                        "args": [
                                "--no-sound-null-safety"
                            ]
                }
        ]
}
```

## 项目技术
开发平台：vscode（自带模拟器）
框架：flutter
flutter使用插件
```
flutter_webview_plugin: "^0.2.1+2"
date_format: "^1.0.4"

```

## 目录结构
loading.dart 项目打开时的加载

## 后期完善
可添加一个后台
后台做好后可进行交互处理


import 'package:flutter/material.dart';
import './extension/int_extension.dart';
import './extension/adapte.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    JJAdapte.initialize();

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,  
      theme: ThemeData(
        primarySwatch: Colors.blue,splashColor: Colors.transparent
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    final statusH = MediaQuery.of(context).padding.top;
    print("屏幕宽高: $w * $h ");
    print("状态栏的高度: $statusH");
    
    return Scaffold(
      appBar: AppBar(
        title: Text("测试"),
      ),
      body: Center(
        child: Container(
          width:400.px,
          height:400.px,
          color: Colors.orange,
          alignment: Alignment.center,
          child: Text("设备适配", style: TextStyle(fontSize: 20.px)),
        ),
      ),
    );
  }
}
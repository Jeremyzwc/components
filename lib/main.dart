import 'package:components/widget/helloword.dart';
import 'package:components/widget/listview.dart';
import 'package:flutter/material.dart';

void main() {

  runApp( CusMaterialApp());
}

// meterialApp风格定义
class CusMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //去掉屏幕右上角的debug标识
      // home: HelloWord(),
      home: ListViewDemo(),
      theme: ThemeData(
        primarySwatch: Colors.yellow, // 设置主题色
      ),
    );
  }
}

